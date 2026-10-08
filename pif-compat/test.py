from pathlib import Path
import argparse,hashlib,json,subprocess,tempfile
parser=argparse.ArgumentParser()
parser.add_argument('--patched-dir',type=Path,required=True)
parser.add_argument('--shell',default='bash')
parser.add_argument('--log',type=Path)
a=parser.parse_args()
root=Path(__file__).resolve().parent
local=root.parent/'.local';local.mkdir(exist_ok=True)
manifest=json.loads((root/'module/manifest.json').read_text(encoding='utf-8'))
with tempfile.TemporaryDirectory(prefix='pif-test-',dir=local) as temp:
 t=Path(temp);assert t.resolve().is_relative_to(local.resolve())
 (t/'samples').mkdir();(t/'mod').mkdir()
 for e in manifest['files']:
  data=(a.patched_dir/e['name']).read_bytes()
  assert hashlib.sha256(data).hexdigest()==e['patched_sha256']
  offset=int(e['file_offset'],16);old=bytes.fromhex(e['old']);new=bytes.fromhex(e['new'])
  assert data[offset:offset+len(new)]==new
  original=data[:offset]+old+data[offset+len(new):]
  assert hashlib.sha256(original).hexdigest()==e['original_sha256']
  (t/'samples'/e['name']).write_bytes(original)
  (t/'samples'/(e['name']+'.patched')).write_bytes(data)
 source=(root/'module/common.sh').read_text(encoding='utf-8').replace('/data/adb/','$T/adb/')
 (t/'common.sh').write_text(source,encoding='utf-8',newline='\n')
 p=subprocess.run([a.shell,'--noprofile','--norc',(root/'test_fixture.sh').as_posix(),t.as_posix()],capture_output=True,text=True,encoding='utf-8',errors='replace')
 if a.log:a.log.write_text(p.stdout+p.stderr,encoding='utf-8')
 print(p.stdout,p.stderr);assert p.returncode==0,p.returncode
 for f in (root/'module').glob('*.sh'):
  q=subprocess.run([a.shell,'-n',f.as_posix()],capture_output=True,text=True)
  assert q.returncode==0,q.stderr
print('PIF_ADDON_REGRESSION_AND_SYNTAX=PASS')
