import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;
import com.android.tools.smali.dexlib2.*;
import com.android.tools.smali.dexlib2.iface.*;
import com.android.tools.smali.dexlib2.immutable.ImmutableDexFile;
import com.android.tools.smali.baksmali.*;
import com.android.tools.smali.smali.*;

public class DexTool {
 public static void main(String[] a) throws Exception {
  if(a[0].equals("dis")) {
   var c=DexFileFactory.loadDexContainer(new File(a[1]),Opcodes.forApi(33));
   Pattern pat=Pattern.compile(a.length>3?a[3]:".*");
   for(String n:c.getDexEntryNames()) {
    var d=c.getEntry(n).getDexFile();
    List<String> names=new ArrayList<>();
    for(ClassDef cl:d.getClasses()) if(pat.matcher(cl.getType()).find()) names.add(cl.getType());
    var opt=new BaksmaliOptions(); opt.debugInfo=false; opt.localsDirective=true;
    if(!Baksmali.disassembleDexFile(d,new File(a[2],new File(n).getName()),4,opt,names)) throw new Exception("disassemble failed");
    System.out.println(n+" selected="+names.size());
   }
  } else if(a[0].equals("asm")) {
   var o=new SmaliOptions();o.apiLevel=33;o.jobs=4;o.outputDexFile=a[2];o.verboseErrors=true;
   if(!Smali.assemble(o,a[1])) throw new Exception("assemble failed");
  } else if(a[0].equals("merge")) {
   var c=DexFileFactory.loadDexContainer(new File(a[1]),Opcodes.forApi(33));
   var r=DexFileFactory.loadDexFile(a[2],Opcodes.forApi(33));
   Map<String,ClassDef> replace=new LinkedHashMap<>();
   for(ClassDef cl:r.getClasses()) replace.put(cl.getType(),cl);
   Files.createDirectories(Path.of(a[3]));
   List<String> entries=c.getDexEntryNames();
   for(int i=0;i<entries.size();i++) {
    String n=entries.get(i); var d=c.getEntry(n).getDexFile();
    List<ClassDef> classes=new ArrayList<>(); int changed=0;
    for(ClassDef cl:d.getClasses()) { var rc=replace.remove(cl.getType());classes.add(rc!=null?rc:cl);if(rc!=null)changed++; }
    if(i==entries.size()-1) {changed+=replace.size();classes.addAll(replace.values());replace.clear();}
    if(changed>0) DexFileFactory.writeDexFile(Path.of(a[3],n).toString(),new ImmutableDexFile(Opcodes.forApi(33),classes));
    System.out.println(n+" changed="+changed);
   }
  }
 }
}
