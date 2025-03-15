<!--#include file = "style.asp"-->
<% If request.cookies("admin") = "True" then %>

<form action="altMenuResimEkle2_UP.asp?id=<% =request("id") %>" method="POST" enctype="multipart/form-data">
<div align="center">
<table border="0" width="90%" cellspacing="3" cellpadding="0">
	<tr>
		<td colspan="2">
		<p align="center">
&nbsp;<p align="center">
&nbsp;</td>
	</tr>
	<tr>
		<td width="50%" style="border-bottom: 1px solid #C0C0C0">Eklemek Ýstediðiniz Resmi Seçiniz :</td>
		<td style="border-bottom: 1px solid #C0C0C0">
		<input type="file" name="resim" size="31" accept=".jpg,.jpeg"></td>
	</tr>
	<tr>
		<td width="50%" style="border-bottom: 1px solid #C0C0C0">Açýklama</td>
		<td style="border-bottom: 1px solid #C0C0C0">
		<input type="text" name="aciklama" size="30"></td>
	</tr>
	<tr>
		<td colspan="2">
		<p align="right">
		<input type="submit" value="  Ekle  " name="upload"></td>
	</tr>
</table>
</div>
</form>

<% else %>
<!--#include file = "yetki_yok.asp"-->
<% End if %>