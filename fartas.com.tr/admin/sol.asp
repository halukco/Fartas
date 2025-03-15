<!--#include file = "style.asp"-->
<% If request.cookies("admin") = "True" then %>

<head>
<base target="main">
</head>


<table border="0" width="100%" cellspacing="3" cellpadding="3" height="21">
	<tr bgcolor="#c0c0c0">
		<td><b>Yönetim Paneli </b></td>
	</tr>
	<tr bgcolor="#efefef">
		<td style="border-bottom: 1px solid #C0C0C0"><b>ADMiN</b></td>
	</tr>
	<tr>
		<td style="border-bottom: 1px solid #C0C0C0">
		<img src="../images/ok_3.gif"> 
		<a href="sifre_degistir.asp">Þifre Deðiþtir</a></td>
	</tr>
	<tr>
		<td style="border-bottom: 1px solid #C0C0C0">
		<img src="../images/ok_3.gif"> 
		<a href="ana_menuler.asp">Ýçerikler</a></td>
	</tr>
		</table>

	<table width="150" align="center" cellpadding="1" cellspacing="1">
	<tr style="cursor:hand;" bgcolor="#efefef">
	<a href="logout.asp" target="_top"><td align="center" style="border:1px #000000 dashed;"><a href="logout.asp" target="_top"><b>ÇIKIÞ</b></a></td></a>
	</tr>
	</table>

<% else %>
<!--#include file ="yetki_yok.asp"-->
<% end if %>