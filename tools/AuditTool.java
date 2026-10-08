import java.io.*;
import java.nio.file.*;
import java.util.*;
import com.android.tools.smali.dexlib2.*;
import com.android.tools.smali.dexlib2.iface.*;
import com.android.tools.smali.dexlib2.iface.instruction.*;
import com.android.tools.smali.dexlib2.iface.reference.*;
public class AuditTool {
 static String sig(MethodReference m) {return m.getName()+"("+String.join("",m.getParameterTypes())+")"+m.getReturnType();}
 public static void main(String[] a)throws Exception {
  PrintWriter out=new PrintWriter(Files.newBufferedWriter(Path.of(a[1])));
  List<Path> jars=new ArrayList<>();
  if(Files.isDirectory(Path.of(a[0]))) try(var walk=Files.walk(Path.of(a[0]))) { walk.filter(p->p.toString().endsWith(".jar")).forEach(jars::add); }
  else jars.add(Path.of(a[0]));
  boolean refs=a.length>2;
  Set<String> selected=a.length>3?new HashSet<>(Files.readAllLines(Path.of(a[3]))):null;
  for(Path jar:jars) {
   try {
    var c=DexFileFactory.loadDexContainer(jar.toFile(),Opcodes.forApi(33));
    for(String n:c.getDexEntryNames()) for(ClassDef cl:c.getEntry(n).getDexFile().getClasses()) {
     out.println("C\t"+cl.getType()+"\t"+cl.getSuperclass()+"\t"+String.join(",",cl.getInterfaces())+"\t"+cl.getAccessFlags()+"\t"+jar+"!"+n);
     for(Field f:cl.getFields())out.println("F\t"+cl.getType()+"\t"+f.getName()+":"+f.getType()+"\t"+f.getAccessFlags());
     for(Method m:cl.getMethods()) {
      out.println("M\t"+cl.getType()+"\t"+sig(m)+"\t"+m.getAccessFlags());
      if(refs && (selected==null || selected.contains(cl.getType())) && m.getImplementation()!=null) for(Instruction ins:m.getImplementation().getInstructions())if(ins instanceof ReferenceInstruction ri) {
       var r=ri.getReference();
       if(r instanceof MethodReference mr)out.println("R\t"+cl.getType()+"\t"+mr.getDefiningClass()+"\t"+sig(mr)+"\t"+ins.getOpcode().name()+"\t"+sig(m));
       else if(r instanceof FieldReference fr)out.println("S\t"+cl.getType()+"\t"+fr.getDefiningClass()+"\t"+fr.getName()+":"+fr.getType()+"\t"+ins.getOpcode().name()+"\t"+sig(m));
       else if(r instanceof TypeReference tr)out.println("T\t"+cl.getType()+"\t"+tr.getType()+"\t"+ins.getOpcode().name());
      }
     }
    }
   } catch(Exception e) {System.err.println(jar+": "+e);}
  }
  out.close();
 }
}
