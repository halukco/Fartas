<!--#include file = "style.asp"-->
<!--#include file = "editEnter.asp"-->
<% If request.cookies("admin") = "True" then %>

<%
set resimOku = kayitSeti("SELECT * from icerikResimler WHERE id = "&request("id")&"")
%>

<form action="altMenuResim2_UP.asp?id=<% =request("id") %>" method="POST" enctype="multipart/form-data">
<div align="center">
<table border="0" width="90%" cellspacing="3" cellpadding="0">
	<tr>
		<td colspan="2">
		<p align="center">
<a href="../icerikResimler/<% =resimOku("resim_adi") %>" target="_blank">
<img src="../icerikResimler/<% =resimOku("resim_adi") %>" border="0" width="150" height="100"></a><p align="center">
&nbsp;</td>
	</tr>
	<tr>
		<td width="50%" style="border-bottom: 1px solid #C0C0C0">Deðiþtirmek Ýstediðiniz Resmi Seçiniz :</td>
		<td style="border-bottom: 1px solid #C0C0C0"><input type="file" name="resim" size="31" accept=".jpg,.jpeg"></td>
	</tr>
	<tr>
		<td width="50%" style="border-bottom: 1px solid #C0C0C0">Açýklama</td>
		<td style="border-bottom: 1px solid #C0C0C0">
		<input type="text" name="aciklama" size="30" value="<% =resimOku("aciklama") %>"></td>
	</tr>
	<tr>
		<td colspan="2">
		<p align="right">
		<input type="submit" value="  Güncelle  " name="upload"></td>
	</tr>
</table>
</div>
</form>

<% else %>
<!--#include file = "yetki_yok.asp"-->
<% End if %>