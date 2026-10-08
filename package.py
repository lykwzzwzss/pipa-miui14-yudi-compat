from pathlib import Path
import json,zipfile,hashlib
root=Path(__file__).resolve().parent;mod=root/'module'
assert (mod/'使用说明.md').is_file()
entries=json.loads((mod/'manifest.json').read_text(encoding='utf-8'))
s=(root/'customize.template.sh').read_text(encoding='utf-8')
for e in entries:
 s=s.replace('@CANDIDATE_'+e['component'].upper()+'@',e['sha256'])
assert '@CANDIDATE_' not in s
(mod/'customize.sh').write_text(s,encoding='utf-8')
for p in mod.rglob('*'):
 if p.is_file() and p.suffix in ['.sh','.prop','.txt']:p.write_text(p.read_text(encoding='utf-8-sig').replace('\r\n','\n'),encoding='utf-8',newline='\n')
assert not list(mod.rglob('miui-embedding-window.jar'))
version=dict(line.split('=',1) for line in (mod/'module.prop').read_text(encoding='utf-8').splitlines() if '=' in line)['version']
out=root/'dist'/('pipa-miui14-yudi-compat-'+version+'.zip')
out.parent.mkdir(parents=True,exist_ok=True)
for entry in entries:
 assert hashlib.sha256((mod/entry['output']).read_bytes()).hexdigest()==entry['sha256'],entry['output']
with zipfile.ZipFile(out,'w',zipfile.ZIP_DEFLATED) as z:
 for p in sorted(mod.rglob('*')):
  if p.is_file():
   name=p.relative_to(mod).as_posix()
   item=zipfile.ZipInfo(name,date_time=(2020,1,1,0,0,0))
   item.create_system=3
   item.compress_type=zipfile.ZIP_DEFLATED
   item.external_attr=(0o100755 if p.suffix=='.sh' or p.name=='update-binary' else 0o100644)<<16
   z.writestr(item,p.read_bytes())
info={'path':str(out),'sha256':hashlib.sha256(out.read_bytes()).hexdigest(),'size':out.stat().st_size,'payload':entries}
(root/'dist'/(out.stem+'.json')).write_text(json.dumps(info,indent=2),encoding='utf-8')
print(out.name,info['sha256'])
