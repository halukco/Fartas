<!--#include file = "guvenlik.asp"-->
<%
Set resimOku = kayitSeti("SELECT * from icerikResimler WHERE menu_id = '"&guvenlik(request("id"))&"' ORDER BY id DESC; ")
set menuOku = kayitSeti("SELECT id,menu_adi,menu_adiEng,menu_adiGer,menu_adiArb,menu_adiRus,yazi,yaziEng,yaziGer,yaziArb,yaziRus from menuler WHERE id = "&guvenlik(request("id"))&" ")

if session("dil") = "TR" then
menuAdi = menuOku("menu_adi")
yazi = menuOku("yazi")
elseif session("dil") = "EN" then
menuAdi = menuOku("menu_adiEng")
yazi = menuOku("yaziEng")
elseif session("dil") = "DE" then
menuAdi = menuOku("menu_adiGer")
yazi = menuOku("yaziGer")
elseif session("dil") = "AR" then
menuAdi = menuOku("menu_adiArb")
yazi = menuOku("yaziArb")
elseif session("dil") = "RUS" then
menuAdi = menuOku("menu_adiRus")
yazi = menuOku("yaziRus")
end if
%>

<script type="text/javascript" src="js/fresco.js"></script>

<head>
<link rel="stylesheet" type="text/css" href="css/fresco/fresco.css" />
<link rel="stylesheet" type="text/css" href="css/frescostyle.css" />

</head>

<div id="baslik"><% =menuAdi %></div>

<% =icerikYaziDuzenle(yazi) %>
<br>
<%
while NOT resimOku.eof
%>
<div class="icerikResimler"><a href="icerikResimler/<% =resimOku("resim_adi") %>" class="fresco" data-fresco-group="example" data-fresco-caption="<% =resimOku("aciklama") %>"><img src="resimKucult.asp?dosya=icerikResimler/<% =resimOku("resim_adi") %>&boyut=w&size=245"></a></div>
<%
resimOku.movenext
wEnd
%>
<div class="clear"></div>