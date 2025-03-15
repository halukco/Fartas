<!--#include file = "bolumler_baglanti.asp"-->
<%
title = ""
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

Function popupClose()
with response
	.write "<script language=javascript>"
	.write "opener.document.location.reload();"
	.write "</script>"
	.write "<script language=javascript>"
	.write "window.close();"
	.write "</script>"
End with
End Function

Function windowAlertClose(mesaj)
with response
	.write "<script language=javascript>"
	.write "alert('"&mesaj&"');"
	.write "</script>"
	.write "<script language=javascript>"
	.write "window.close();"
	.write "</script>"
End with
End Function

Function mesajYonlendir(mesaj,url)
with response
	.write "<script language=javascript>"
	.write "alert('"&mesaj&"');"
	.write "window.location='"&url&"';"
	.write "</script>"
End with
End Function

function icerikYaziDuzenle(gelenYazi)
gelenYazi = replace(gelenYazi,"../icerikResimler/","icerikResimler")
icerikYaziDuzenle = gelenYazi
end function

%>
