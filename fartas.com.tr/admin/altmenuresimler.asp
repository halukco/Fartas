<!--#include file = "style.asp"-->
<% If request.cookies("admin") = "True" then %>
<%
Set resimOku = kayitSeti("SELECT * from icerikResimler WHERE menu_id = '"&request("id")&"' ORDER BY id DESC; ")
set menuOku = kayitSeti("SELECT menu_adi from menuler WHERE id = "&request("id")&"")

if request("islem") = "resimSilSub" then
call resimSilSub
end if
%>

<center><h3><% =menuOku("menu_adi") %></h3></center>
<table border="0" width="80%" cellpadding="2" align="center">
	<tr>
		<td width="711">
		<p align="right">
		<b><a href="#" onclick="window.open('topluResimEkleme/topluResimEkle.asp?id=<% =request("id") %>','_blank','width=600 height=320 scrollbars=1');">
		<font color="blue">Toplu Resim Ekle</font></a></b></td>
		<td>
		&nbsp;</td>
		<td width="183">
		&nbsp;<img src="../images/mn_insertunorderedlist.gif" border="0">
		<b><a href="#" onclick="window.open('altMenuResimEkle2.asp?id=<% =request("id") %>','_blank','width=400 height=320');">Yeni Resim Ekle</a></b></td>
	</tr>
	<tr>
		<td width="711">
		&nbsp;</td>
		<td>
		&nbsp;</td>
		<td width="183">
		&nbsp;</td>
	</tr>
</table>


<% if resimOku.eof then %>
<br><center>Kayýtlý Resim Bulunamadý !</center>
<% else %>

<table width="80%" align="center">
<%
While Not resimOku.eof
%>
<tr>
<%
If Not resimOku.eof then
%>
<td align="center" style="border-bottom: 1px solid #C0C0C0">
<a href="../icerikResimler/<% =resimOku("resim_adi") %>" target="_blank">
<img src="../icerikResimler/<% =resimOku("resim_adi") %>" border="0" height="120"></a>
<center><% =resimOku("aciklama") %><br>
<a href="altMenuResimler.asp?islem=resimSilSub&resimId=<% =resimOku("id") %>&id=<% =request("id") %>" onclick="return confirm('Resim Sistemden Silinecektir. Devam Etmek Istiyormusunuz ?');">
<img src="../images/del.gif" border="0"><font color="#FF0000"><b> Sil</b></font></a>&nbsp;&nbsp;
<a href="#" onclick="window.open('altMenuResimDuzenle2.asp?id=<% =resimOku("id") %>','_blank','width=400 height=250');">
<img src="../images/mn_selectall.gif" border="0"> <b><font color="#0000FF">
Düzenle</font></b>
</a>
</center>
</td>
<%
resimOku.movenext
End If
If Not resimOku.eof then
%>
<td align="center" style="border-bottom: 1px solid #C0C0C0">
<a href="../icerikResimler/<% =resimOku("resim_adi") %>" target="_blank">
<img src="../icerikResimler/<% =resimOku("resim_adi") %>" border="0" height="120"></a>
<center><% =resimOku("aciklama") %><br>
<a href="altMenuResimler.asp?islem=resimSilSub&resimId=<% =resimOku("id") %>&id=<% =request("id") %>" onclick="return confirm('Resim Sistemden Silinecektir. Devam Etmek Istiyormusunuz ?');">
<img src="../images/del.gif" border="0"><font color="#FF0000"><b> Sil</b></font></a>&nbsp;&nbsp;
<a href="#" onclick="window.open('altMenuResimDuzenle2.asp?id=<% =resimOku("id") %>','_blank','width=400 height=250');">
<img src="../images/mn_selectall.gif" border="0"> <b><font color="#0000FF">
Düzenle</font></b>
</a>
</center>
</td>
<%
resimOku.movenext
End If
If Not resimOku.eof then
%>
<td align="center" style="border-bottom: 1px solid #C0C0C0">
<a href="../icerikResimler/<% =resimOku("resim_adi") %>" target="_blank">
<img src="../icerikResimler/<% =resimOku("resim_adi") %>" border="0" height="120"></a>
<center><% =resimOku("aciklama") %><br>
<a href="altMenuResimler.asp?islem=resimSilSub&resimId=<% =resimOku("id") %>&id=<% =request("id") %>" onclick="return confirm('Resim Sistemden Silinecektir. Devam Etmek Istiyormusunuz ?');">
<img src="../images/del.gif" border="0"><font color="#FF0000"><b> Sil</b></font></a>&nbsp;&nbsp;
<a href="#" onclick="window.open('altMenuResimDuzenle2.asp?id=<% =resimOku("id") %>','_blank','width=400 height=250');">
<img src="../images/mn_selectall.gif" border="0"> <b><font color="#0000FF">
Düzenle</font></b>
</a>
</center>
</td>
</tr>
<tr>
<td colspan="3">
<br>
</td>
</tr>
<%
resimOku.movenext
End if
wEnd
%>
</table>

<% sub resimSilSub %>
<%

Set resimAdiOku = kayitSeti("SELECT * From icerikResimler WHERE id = "&request("resimId")&" ")
Set resimSilFso = CreateObject("Scripting.FileSystemObject")
If resimSilFso.fileExists(server.mappath("../icerikResimler/"&resimAdiOku("resim_adi"))) then
resimSilFso.deleteFile(server.mappath("../icerikResimler/"&resimAdiOku("resim_adi")))
End if
Set resimSilFso = Nothing

set resimSil = kayitSeti("DELETE from icerikResimler WHERE id = "&request("resimId")&" ")

Response.Redirect "altMenuResimler.asp?id="&request("id")&""

%>
<% end sub %>

<% end if %>

<% else %>
<!--#include file = "yetki_yok.asp"-->
<% End if %>