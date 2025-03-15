<META http-equiv="Content-Type" content="text/html" charset="windows-1254">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html" charset="ISO-8859-9">
<META http-equiv="content-language" content="TR">
<%

'Dim yol,baglanti
yol = server.mappath("../../db/siteDb.mdb")
baglanti = "provider=microsoft.jet.oledb.4.0; data source="&yol&";"
bag = baglanti

Function kayitSeti(SQL)
session.lcID = 1055
session.codepage = 1254
Set kayitSet = server.CreateObject("adodb.recordset")
kayitSet.open SQL,baglanti,1,3
Set kayitSeti = kayitSet

End Function

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

Function virgulDegistir(gelenVirgul)
gelenVirgul = replace(gelenVirgul,".",",")
virgulDegistir = gelenVirgul
End Function

Function resimKucult(gelenResim)
dosyaYolu = Server.MapPath("../../icerikResimler/" & gelenResim)
Set jpeg = Server.CreateObject("Persits.Jpeg")
Jpeg.open(dosyaYolu)
jpeg.quality = 100
L = 900
Jpeg.Width = L
Jpeg.Height = Jpeg.OriginalHeight * L / Jpeg.OriginalWidth
If Not Jpeg.OriginalWidth < L then
Jpeg.save(dosyaYolu)
End if
resimKucult = gelenResim
End Function

%>