olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Hoax.MSExcel.BadJoke.Formatter-911e029a119c461b219ae1fd5aede10e1f1fd4d3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Hoax.MSExcel.BadJoke.Formatter-911e029a119c461b219ae1fd5aede10e1f1fd4d3 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Explicit

Sub AUTO_OPEN()
Attribute AUTO_OPEN.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim USER_INPUT As String
    Do
        USER_INPUT = InputBox("WARNING !!!" & Chr(13) & "An error has occurred in module EXCEL.EXE" & Chr(13) & "Do you want to correct the error ?" & Chr(13) & "Please enter YES/NO")
        If USER_INPUT = "yes" Then Exit Do
        If USER_INPUT = "no" Then MsgBox "It is strongly advised to correct the error"
    Loop
        MsgBox "Microsoft will now proceed to FORMAT your hard disk" & Chr(13) & "All data on   c:\   will be permanently deleted" & Chr(13) & ("Do you wish to proceed ?"), vbYesNo
        USER_INPUT = InputBox("You answered NO ! , this is contrary to your previous request  !!" & Chr(13) & "Once again, do you wish to proceed ?" & Chr(13) & "Please enter your request - YES/NO")
        MsgBox "FUCK YOU PAL - YOUR HARD DISK WILL BE FORMATTED ANYWAY!!" & Chr(13) & Chr(13) & "I am the VIRUS, you are the victum", vbExclamation
    
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Module
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTO_OPEN           |Runs when the Excel Workbook is opened       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|IOC       |EXCEL.EXE           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

