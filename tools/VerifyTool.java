import java.io.*;
import java.nio.file.*;
import java.util.*;
import com.android.tools.smali.dexlib2.*;
import com.android.tools.smali.dexlib2.iface.*;
import com.android.tools.smali.dexlib2.analysis.*;
public class VerifyTool {
 public static void main(String[] a) throws Exception {
  List<ClassProvider> providers=new ArrayList<>(); List<DexFile> patches=new ArrayList<>();
  for(int i=0;i<3;i++) {
   try(var paths=Files.walk(Path.of(a[i]))) {
    for(Path p:paths.filter(p->p.toString().endsWith(".jar")||p.toString().endsWith(".dex")).toList()) {
     try {
      var cont=DexFileFactory.loadDexContainer(p.toFile(),Opcodes.forApi(33));
      for(String n:cont.getDexEntryNames()) {var d=cont.getEntry(n).getDexFile();providers.add(new DexClassProvider(d));if(i==0)patches.add(d);}
     } catch(com.android.tools.smali.dexlib2.DexFileFactory.DexFileNotFoundException e) {}
    }
   }
  }
  var cp=new ClassPath(providers,false,ClassPath.NOT_SPECIFIED);int count=0,bad=0;
  try(var out=new PrintWriter(a[3],"UTF-8")) {
   for(var d:patches) for(var c:d.getClasses()) for(var m:c.getMethods()) if(m.getImplementation()!=null) {
    count++;
    try {var x=new MethodAnalyzer(cp,m,null,false);if(x.getAnalysisException()!=null)throw x.getAnalysisException();}
    catch(Exception e){bad++;out.println(c.getType()+"->"+m.getName()+m.getParameterTypes()+m.getReturnType()+"\t"+e);}
   }
   out.println("METHODS="+count+" ERRORS="+bad);
  }
  System.out.println("METHODS="+count+" ERRORS="+bad);
 }
}
