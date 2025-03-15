<%
yol = server.mappath("db/siteDb.mdb")
Set baglanti = server.createobject("adodb.connection")
baglanti.open = "provider=microsoft.jet.oledb.4.0; data source="&yol&";"

Function kayitSetiEkle(SQL)
Set kayitSet = server.CreateObject("adodb.recordset")
kayitSet.open SQL,baglanti,1,3
Set kayitSetiEkle = kayitSet
End Function

Function kayitSeti(SQL)
session.lcID = 1055
session.codepage = 1254
Set kayitSeti = baglanti.execute(SQL)
End Function
%>