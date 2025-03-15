<!--#include file = "bolumler_baglanti.asp"-->
<%

session.lcid = 1055
session.codepage = 1254
on error resume next
'response.flush

Function mesajGoster(mesaj)
with response
	.write "<script language=javascript>"
	.write "alert('"&mesaj&"');"
	.write "</script>"
	.write "<script language=javascript>"
	.write "history.go(-1)"
	.write "</script>"
End with
End Function

Function mesajGoster2(mesaj3)
with response
	.write "<script language=javascript>"
	.write "alert('"&mesaj3&"');"
	.write "</script>"
End with
End Function

Function mesajYonlendir(mesaj,url)
with response
	.write "<script language=javascript>"
	.write "alert('"&mesaj&"');"
	.write "</script>"
	.write "<script language=javascript>"
	.write "window.location='"&url&"';"
	.write "</script>"
End with
End Function

Function popupClose()
with response
	.write "<script language=javascript>"
	.write "opener.document.location.reload();"
	.write "</script>"
	.write "<script language=javascript>"
	.write "window.close();"
	.write "</script>"
End with
End function

%>
<title>Yönetim Paneli</title>

<style>

BODY
{
font-family:tahoma;
font-size:8pt;
margin-top:0px;
margin-left:0px;
margin-right:0px;
}

TD, INPUT, SELECT, OPTION
{
font-family:tahoma;
font-size:8pt;
color:#000000;
}

TEXTAREA
{
font-family:tahoma;
font-size:8pt;
color:#000000;
}

A
{
text-decoration:none;
color:#000000;
}

A:HOVER
{
text-decoration:underline;
color:green;
}

INPUT(type=button), INPUT(type=submit)
{
cursor:hand;
}
</style>