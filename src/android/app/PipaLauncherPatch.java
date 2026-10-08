package android.app;

import android.content.pm.ApplicationInfo;
import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import java.io.FileInputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.util.WeakHashMap;

/** Load the pipa launcher compatibility classes before the application factory. */
public final class PipaLauncherPatch {
    private static final String TAG = "PipaNavCompat";
    private static final String APK_SHA256 = "1ef993a1981919d503e24cfb8be2592977d7cd7f57c9b0abc7cca79f78aeaba2";
    private static final String PATCH = "/system_ext/framework/pipa-home-patch.jar";
    private static WeakHashMap<ClassLoader, Boolean> attempted;
    private PipaLauncherPatch() {}

    public static void install(ApplicationInfo info, ClassLoader loader) {
        if (info == null || !"com.miui.home".equals(info.packageName)
                || !(loader instanceof BaseDexClassLoader)) return;
        installLauncher(info, loader);
    }

    private static synchronized void installLauncher(ApplicationInfo info, ClassLoader loader) {
        // Other app processes do not allocate a launcher tracking map or take this lock.
        if (attempted == null) attempted = new WeakHashMap<>();
        if (attempted.containsKey(loader)) return;
        attempted.put(loader, Boolean.TRUE);
        try {
            if (!APK_SHA256.equals(sha256(info.sourceDir))) {
                Log.w(TAG, "Launcher version changed; navigation patch skipped");
                return;
            }
            Field pathListField = BaseDexClassLoader.class.getDeclaredField("pathList");
            pathListField.setAccessible(true);
            Object targetPathList = pathListField.get(loader);
            DexClassLoader patchLoader = new DexClassLoader(PATCH, null, null, loader);
            Object patchPathList = pathListField.get(patchLoader);
            Field elementsField = targetPathList.getClass().getDeclaredField("dexElements");
            elementsField.setAccessible(true);
            Object original = elementsField.get(targetPathList);
            Object replacement = elementsField.get(patchPathList);
            int patchLength = Array.getLength(replacement);
            if (patchLength == 0) throw new IllegalStateException("Empty navigation patch");
            int originalLength = Array.getLength(original);
            Object combined = Array.newInstance(original.getClass().getComponentType(), patchLength + originalLength);
            System.arraycopy(replacement, 0, combined, 0, patchLength);
            System.arraycopy(original, 0, combined, patchLength, originalLength);
            elementsField.set(targetPathList, combined);
            Log.i(TAG, "1.0.0 launcher navigation switch and Dock geometry patch loaded");
        } catch (Exception | LinkageError e) {
            Log.e(TAG, "Navigation patch unavailable; retaining original launcher", e);
        }
    }

    private static String sha256(String file) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        try (FileInputStream in = new FileInputStream(file)) {
            byte[] buffer = new byte[65536];
            int n;
            while ((n = in.read(buffer)) != -1) digest.update(buffer, 0, n);
        }
        char[] alphabet = "0123456789abcdef".toCharArray();
        byte[] bytes = digest.digest();
        char[] hex = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) {
            hex[i * 2] = alphabet[(bytes[i] >>> 4) & 15];
            hex[i * 2 + 1] = alphabet[bytes[i] & 15];
        }
        return new String(hex);
    }
}
