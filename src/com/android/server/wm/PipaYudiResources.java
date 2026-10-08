package com.android.server.wm;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Field;

/** Scoped compatibility for unmodified yudi embedding implementations. */
public final class PipaYudiResources {
    private static final String TAG = "PipaYudiCompat";
    private static final String APK = "/system_ext/framework/pipa-yudi-res.apk";
    private static volatile Object preparedService;
    private static Object failedService;
    private static long retryAfter;
    private static boolean loggedError;

    public static void prepare(Object service) {
        // DisplayPolicy calls this on layout; the established service needs no reflection.
        if (service == null || service == preparedService
                || !service.getClass().getName().equals("com.android.server.wm.MiuiEmbeddingWindowService")) return;
        synchronized (PipaYudiResources.class) {
            if (service == preparedService) return;
            // A failed resource initialization must not allocate on every layout.
            // Retry only when a later layout arrives; no timer or background work.
            if (service == failedService && SystemClock.uptimeMillis() < retryAfter) return;
            try {
                Field f = service.getClass().getDeclaredField("mContext");
                f.setAccessible(true);
                Context context = (Context) f.get(service);
                if (context == null) return;
                if (!(context instanceof ScopedContext)) {
                    ScopedContext wrapped = new ScopedContext(context, APK);
                    wrapped.validate();
                    f.set(service, wrapped);
                    Log.i(TAG, "yudi resource contract installed; upstream embedding JAR unchanged");
                }
                preparedService = service;
                failedService = null;
            } catch (Exception | LinkageError e) {
                failedService = service;
                retryAfter = SystemClock.uptimeMillis() + 10000;
                if (!loggedError) { loggedError = true; Log.e(TAG, "Resource compatibility could not initialize", e); }
            }
        }
    }

    public static final class ScopedContext extends ContextWrapper {
        private final ScopedResources resources;
        private LayoutInflater inflater;
        public ScopedContext(Context context, String apk) throws Exception {
            super(context);
            AssetManager assets = AssetManager.class.getDeclaredConstructor().newInstance();
            int cookie = (Integer) AssetManager.class.getMethod("addAssetPath", String.class).invoke(assets, apk);
            if (cookie == 0) throw new IllegalStateException("Cannot load " + apk);
            Resources base = context.getResources();
            Resources isolated = new Resources(assets, base.getDisplayMetrics(), base.getConfiguration());
            resources = new ScopedResources(base, isolated);
        }
        @Override public Resources getResources() { return resources; }
        @Override public Object getSystemService(String name) {
            if (Context.LAYOUT_INFLATER_SERVICE.equals(name)) {
                if (inflater == null) inflater = LayoutInflater.from(getBaseContext()).cloneInContext(this);
                return inflater;
            }
            return super.getSystemService(name);
        }
        public void validate() {
            XmlResourceParser parser = resources.getLayout(0x110c0025);
            parser.close();
            for (int id = 0x1108015b; id <= 0x11080160; id++) resources.getDrawable(id, null);
        }
    }

    public static final class ScopedResources extends Resources {
        private final Resources base;
        private final Resources isolated;
        private final int layout;
        private final Configuration syncedConfiguration;
        private final DisplayMetrics syncedMetrics = new DisplayMetrics();
        private final int[] drawables = new int[6];
        private static final String[] NAMES = {"miui_embedding_center_divider", "miui_embedding_center_divider_dark", "miui_embedding_left_button", "miui_embedding_left_button_dark", "miui_embedding_right_button", "miui_embedding_right_button_dark"};
        public ScopedResources(Resources base, Resources isolated) {
            super(base.getAssets(), base.getDisplayMetrics(), base.getConfiguration());
            this.base = base;
            this.isolated = isolated;
            syncedConfiguration = new Configuration(isolated.getConfiguration());
            syncedMetrics.setTo(isolated.getDisplayMetrics());
            layout = required("miui_embedding_divider", "layout");
            for (int i = 0; i < drawables.length; i++) drawables[i] = required(NAMES[i], "drawable");
        }
        private int required(String name, String type) {
            int id = isolated.getIdentifier(name, type, "local.pipa.yudi");
            if (id == 0) throw new IllegalStateException("Missing resource " + name);
            return id;
        }
        private synchronized void sync() {
            Configuration configuration = base.getConfiguration();
            DisplayMetrics metrics = base.getDisplayMetrics();
            if (!syncedConfiguration.equals(configuration) || !syncedMetrics.equals(metrics)) {
                // Snapshot before applying: base Resources can change on another thread.
                Configuration nextConfiguration = new Configuration(configuration);
                DisplayMetrics nextMetrics = new DisplayMetrics();
                nextMetrics.setTo(metrics);
                isolated.updateConfiguration(nextConfiguration, nextMetrics);
                syncedConfiguration.setTo(nextConfiguration);
                syncedMetrics.setTo(nextMetrics);
            }
        }
        @Override public XmlResourceParser getLayout(int id) {
            if (id == 0x110c0025) { sync(); return isolated.getLayout(layout); }
            return base.getLayout(id);
        }
        @Override public Drawable getDrawable(int id, Theme theme) {
            if (id >= 0x1108015b && id <= 0x11080160) {
                sync(); return isolated.getDrawable(drawables[id - 0x1108015b], null);
            }
            return base.getDrawable(id, theme);
        }
        @Override public Drawable getDrawable(int id) { return getDrawable(id, null); }
        @Override public Drawable getDrawableForDensity(int id, int density, Theme theme) {
            if (id >= 0x1108015b && id <= 0x11080160) {
                sync(); return isolated.getDrawableForDensity(drawables[id - 0x1108015b], density, null);
            }
            return base.getDrawableForDensity(id, density, theme);
        }
        @Override public Drawable getDrawableForDensity(int id, int density) { return getDrawableForDensity(id, density, null); }
        @Override public Configuration getConfiguration() { return base.getConfiguration(); }
        @Override public DisplayMetrics getDisplayMetrics() { return base.getDisplayMetrics(); }
    }

    /** Separate app_process probe; never invokes the embedding/window services. */
    public static void main(String[] args) throws Exception {
        android.os.Looper.prepareMainLooper();
        Object thread = Class.forName("android.app.ActivityThread").getMethod("systemMain").invoke(null);
        Context context = (Context) thread.getClass().getMethod("getSystemContext").invoke(thread);
        String before = context.getResources().getResourceName(0x110c0025);
        ScopedContext scoped = new ScopedContext(context, args[0]);
        scoped.validate();
        View view = LayoutInflater.from(scoped).inflate(0x110c0025, null);
        if (!(view instanceof FrameLayout) || !(view.findViewById(0x110a0044) instanceof FrameLayout) || view.findViewById(0x110a0045) == null) throw new AssertionError("Divider view contract mismatch");
        if (!before.equals(context.getResources().getResourceName(0x110c0025))) throw new AssertionError("Base resources changed");
        System.out.println("BASE=" + before);
        System.out.println("LAYOUT=" + view.getClass().getName() + " IDS=0x110a0044,0x110a0045 DRAWABLES=6");
        System.out.println("RESOURCE_PROBE=PASS");
        System.exit(0);
    }
}
