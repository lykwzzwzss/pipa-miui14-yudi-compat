from pathlib import Path
import hashlib,json,zipfile
root=Path(__file__).resolve().parent
mod=root/'module'
forbidden=list(mod.rglob('*.so'))
assert not forbidden, 'This package contains byte changes, not PIF libraries'
for p in mod.rglob('*'):
 if p.is_file() and p.suffix in ('.sh','.prop'):
  p.write_text(p.read_text(encoding='utf-8-sig').replace('\r\n','\n'),encoding='utf-8',newline='\n')
version=dict(l.split('=',1) for l in (mod/'module.prop').read_text(encoding='utf-8').splitlines())['version']
out=root.parent/'dist'/('pif-v4.7-1-inject-s-unmount-compat-'+version+'.zip')
out.parent.mkdir(parents=True,exist_ok=True)
with zipfile.ZipFile(out,'w',zipfile.ZIP_DEFLATED) as z:
 for p in sorted(mod.rglob('*')):
  if p.is_file():
   i=zipfile.ZipInfo(p.relative_to(mod).as_posix(),date_time=(2020,1,1,0,0,0))
   i.create_system=3;i.compress_type=zipfile.ZIP_DEFLATED
   i.external_attr=(0o100755 if p.suffix=='.sh' or p.name=='update-binary' else 0o100644)<<16
   z.writestr(i,p.read_bytes())
print(out.name,hashlib.sha256(out.read_bytes()).hexdigest())
