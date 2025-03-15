<!--#include file = "guvenlik.asp"-->
<%
If request("mode") = "2" Then
mode = "2"
if session("dil") = "TR" then
baslik = "Kurumsal"
elseif session("dil") = "EN" then
baslik = "Kurumsal"
elseif session("dil") = "DE" then
baslik = "Kurumsal"
elseif session("dil") = "AR" then
baslik = "Kurumsal"
elseif session("dil") = "RUS" then
baslik = "Kurumsal"
end if
End if

If request("mode") = "3" Then
mode = "3"
End if

set kategoriler = kayitSeti("SELECT id,menu_adi,menu_adiEng,menu_adiGer,menu_adiRus,menu_adiArb from menuler WHERE mode LIKE '"&mode&"' ORDER BY sira ASC;")
Set resimOku = kayitSeti("SELECT * from icerikResimler WHERE menu_id = '"&guvenlik(request("id"))&"' ORDER BY id DESC; ")
set menuOku = kayitSeti("SELECT id,menu_adi,menu_adiEng,menu_adiGer,menu_adiRus,menu_adiGer,yazi,yaziEng,yaziGer,yaziRus,yaziArb from menuler WHERE id = "&guvenlik(request("id"))&" ")

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
menuAdi = menuOku("menu_adiGer")
yazi = menuOku("yaziGer")
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

<div id="sayfaBaslik"><% =baslik %></div>
<div class="icMenuler">
<table width="100%" cellspacing="3" cellpadding="0">
<tr>
<td height="33" class="buttonBgActive ok2"><% =menuAdi %></td>
</tr>
</table>
</div>
<div class="icerik1">
<table width="100%" cellspacing="3" cellpadding="0">
<%
while NOT kategoriler.eof

if session("dil") = "TR" then
kategoriAdi = kategoriler("menu_adi")
elseif session("dil") = "EN" then
kategoriAdi = kategoriler("menu_adiEng")
elseif session("dil") = "DE" then
kategoriAdi = kategoriler("menu_adiGer")
elseif session("dil") = "AR" then
kategoriAdi = kategoriler("menu_adiArb")
elseif session("dil") = "RUS" then
kategoriAdi = kategoriler("menu_adiRus")
end if
%>
<tr>
<td height="33" <% if cInt(request("id")) = kategoriler("id") then %>class="buttonBgActive"<% else %>class="buttonBg"<% end if %> onclick="window.location='.?sayfa=icerikSayfa&mode=<% =mode %>&id=<% =kategoriler("id") %>';"><% =kategoriAdi %></td>
</tr>
<%
kategoriler.movenext
wEnd
%>
<tr>
<td height="33" class="buttonBg" onclick="window.location='.?sayfa=fuarlar';"><% =fuar %></td>
</tr>
<tr>
<td height="33" class="buttonBg" onclick="window.location='.?sayfa=basindaBiz';"><% =basin %></td>
</tr>
</table>
</div>
<div class="icerik2">&nbsp;</div>
<div class="icerik3">
<% if NOT yazi = "" then %><% =icerikYaziDuzenle(yazi) %>
<br>
<% end if %>
<%
while NOT resimOku.eof
%>
<div class="icerikResimler"><a href="icerikResimler/<% =resimOku("resim_adi") %>" class="fresco" data-fresco-group="example" data-fresco-caption="<% =resimOku("aciklama") %>"><img src="resimKucult.asp?dosya=icerikResimler/<% =resimOku("resim_adi") %>&boyut=w&size=245"></a></div>
<%
resimOku.movenext
wEnd
%>
</div>
<div class="clear"></div>