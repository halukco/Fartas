<!--#include file = "style.asp"-->
<% If NOT request.cookies("admin") = "True" then %>

<script language="javascript">

function focusla()
{
document.getElementById('kullanici_adi').focus();
}

</script>

<body onload="focusla();">
<form action="admin_giris.asp" method="POST" onsubmit="entrance_system.disabled=true;">
<table width="100%" height="100%" border="0">
<tr>
<td align="center">
<font color="#008000"><b>Yönetim Paneli</b></font><br><br>
<table border="0" width="350" cellspacing="1" cellpadding="0" height="21" style="border:solid 1px #c0c0c0;">
	<tr>
		<td height="10" colspan="3">
		<p align="center">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</td>
	</tr>
	<tr>
		<td height="10">
		<p align="right">
		Kullanýcý Adý: </td>
		<td height="10" width="9%">
		<input type="text" name="kullanici_adi" size="20" autocomplete="off"></td>
		<td height="10" width="40%">
		</td>
	</tr>
	<tr>
		<td height="5">
		<p align="right">
		Þifre : </td>
		<td height="5" width="9%">
		<input type="password" name="sifre" size="20" autocomplete="off"></td>
		<td height="5" width="40%">
		</td>
	</tr>
	<tr>
		<td height="4"></td>
		<td height="4" width="9%">
		<p align="right">
		<input type="submit" value=" Giriþ" name="entrance_system"></td>
		<td height="4" width="40%">
		</td>
	</tr>
</table>
</td>
</tr>
</table>
</form>
</body>

<% else %>

<frameset cols="249,*" framespacing="0" border="0" frameborder="0">
  <frame name="contents" target="main" src="sol.asp">
  <frame name="main" scrolling="yes" src="ana_menuler.asp">
  <noframes>
  <body>
  <p>This page uses frames, but your browser doesn't support them.</p>
  </body>
  </noframes>
</frameset>

<% End if %>