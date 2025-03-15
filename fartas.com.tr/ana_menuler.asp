<!--#include file = "style.asp"-->
<% If request.cookies("admin") = "True" then %>
<%
set solMenuList = kayitSeti("SELECT * from menuler WHERE mode LIKE '1' ORDER BY id ASC;")
set ayarOku = kayitSeti("SELECT TR,EN,DE,AR,RUS from admin WHERE id = 1")

if request("islem") = "menuSil" then
call menuSil
end If

if request("islem") = "menuDuzenleSub" then
call menuDuzenleSub
end if

%>

<table border="0" width="95%" cellpadding="2" align="center">

	<tr>
		<td bgcolor="#efefef" width="50%"><b><font size="4">MENÜLER</font></b></td>
		<td bgcolor="#efefef" width="50%">
		&nbsp;</td>
	</tr>
<%
while NOT solMenuList.eof
%>
	<form action="ana_menuler.asp?islem=menuDuzenleSub&id=<% =solMenuList("id") %>" method="POST">
		<tr onmouseover="this.bgColor='#f7f7f7';" onmouseout="this.bgColor='#ffffff';">
		<td style="border-bottom: 1px solid #C0C0C0" width="30%" colspan="2">&nbsp;<a href="altMenuIcerikGir.asp?id=<% =solMenuList("id") %>"><img src="../images/css.gif" border="0"></a> <a href="altmenuresimler.asp?id=<% =solMenuList("id") %>"><img src="../images/mn_image.gif" border="0"></a> 
				
		<% =solMenuList("menu_adi") %></td>
	</tr>
	</form>

	<%
	solMenuList.movenext
	wEnd
	%>
	</table>
&nbsp;
<table border="0" width="95%" cellpadding="2" align="center">

	<tr>
		<td bgcolor="#efefef" width="50%"><font size="4"><b>HÝZMETLERÝMÝZ</b></font></td>
		<td bgcolor="#efefef" width="50%">
		<b>
		<a href="#" onclick="window.open('menuEkle.asp?mode=2','_blank','width=350 height=150');">
		<font color="#008000">Ana Kategori Ekle</font></a></b></td>
	</tr>
<%
set solMenuList = kayitSeti("SELECT * from menuler WHERE mode LIKE '2' ORDER BY sira ASC;")
while NOT solMenuList.eof
%>
	<form action="ana_menuler.asp?islem=menuDuzenleSub&id=<% =solMenuList("id") %>" method="POST">
		<tr bgcolor="#CECFD3">
		<td style="border-bottom: 1px solid #C0C0C0" width="83%">&nbsp;<a href="ana_menuler.asp?islem=menuSil&id=<% =solMenuList("id") %>" onclick="return confirm('Bu icerigi SILMEK istediginize eminmisiniz ?');"><img src="images/del.gif" border="0"></a>
		<a href="altMenuIcerikGir.asp?id=<% =solMenuList("id") %>"><img src="images/css.gif" border="0"></a>&nbsp;
		<a href="altmenuresimler.asp?id=<% =solMenuList("id") %>"><img src="images/mn_image.gif" border="0"></a> 
		TR:<input type="text" name="menu_adi" size="23" value="<% =solMenuList("menu_adi")  %>" style="font-weight:Bold;"> 
		<% if ayarOku("EN") = "1" then %>EN:<input type="text" name="menu_adiEng" size="16" value="<% =solMenuList("menu_adiEng")  %>" style="font-weight:Bold;"><%end if%>
		<% if ayarOku("DE") = "1" then %> DE:<input type="text" name="menu_adiGer" size="16" value="<% =solMenuList("menu_adiGer")  %>" style="font-weight:Bold;"><%end if%>
		<% if ayarOku("AR") = "1" then %> AR:<input type="text" name="menu_adiArb" size="16" value="<% =solMenuList("menu_adiArb")  %>" style="font-weight:Bold;"><%end if%>
		<% if ayarOku("RUS") = "1" then %> RU:<input type="text" name="menu_adiRus" size="16" value="<% =solMenuList("menu_adiRus")  %>" style="font-weight:Bold;"><%end if%>
		<input type="submit" value="Kaydet" style="cursor:hand;" name="B1"><a name="<% =solMenuList("id") %>"></a><input type="text" name="sira" size="2" value="<% =solmenulist("sira") %>">
		
				<a style="display:none" href="altaltmenuresimler.asp?id=<% =solMenuList("id") %>"><img src="images/mn_image.gif" border="0"></a> 

		</td>
		<td style="border-bottom: 1px solid #C0C0C0" width="16%">
		<div>
		<b>
		<a href="#" onclick="window.open('menuEkle.asp?menuId=<% =solMenuList("id") %>&mode2=1','_blank','width=350 height=150');">
		<font color="navy">Alt Kategori Ekle</font></a></b>
		
		</div>
		</td>
	</tr>
	</form>
	
	<%
	set urunListesi = kayitSeti("SELECT * from menuler WHERE menuId LIKE '"&solMenuList("id")&"' ORDER BY sira ASC;")
	while NOT urunListesi.eof
	%>
		<form action="ana_menuler.asp?islem=menuDuzenleSub&id=<% =urunListesi("id") %>" method="POST">
		<tr bgcolor="#D1DAF9">
		<td style="border-bottom: 1px solid #C0C0C0" width="83%">&nbsp;<a href="ana_menuler.asp?islem=menuSil&id=<% =urunListesi("id") %>" onclick="return confirm('Bu icerigi SILMEK istediginize eminmisiniz ?');"><img src="images/del.gif" border="0"></a>
		<a href="altMenuIcerikGir.asp?id=<% =urunListesi("id") %>" title="Yazý"><img src="images/css.gif" border="0"></a>
		<a href="altmenuresimler.asp?id=<% =urunListesi("id") %>" title="Fotoðraf"><img src="images/mn_image.gif" border="0"></a>&nbsp; 
		TR:<input type="text" name="menu_adi" size="28" value="<% =urunListesi("menu_adi")  %>"> 
		<% if ayarOku("EN") = "1" then %>EN:<input type="text" name="menu_adiEng" size="20" value="<% =urunListesi("menu_adiEng")  %>"><%end if%>
		<% if ayarOku("DE") = "1" then %> DE:<input type="text" name="menu_adiGer" size="20" value="<% =urunListesi("menu_adiGer")  %>"><%end if%>
		<% if ayarOku("AR") = "1" then %> AR:<input type="text" name="menu_adiArb" size="20" value="<% =urunListesi("menu_adiArb")  %>"><%end if%>
		<% if ayarOku("RU") = "1" then %> RU:<input type="text" name="menu_adiRus" size="20" value="<% =urunListesi("menu_adiRus")  %>"><%end if%>
		<input type="submit" value="Kaydet" style="cursor:hand;" name="B1"><a name="<% =urunListesi("id") %>"></a><input type="text" name="sira" size="2" value="<% =urunListesi("sira") %>"></td>
		<td style="border-bottom: 1px solid #C0C0C0" width="16%">
		
		
		</td>
	</tr>
	</form>
	
			
	
	
	<%
	urunListesi.movenext
	wEnd
	%>
	<tr>
	<td colspan="2">&nbsp;</td>
	</tr>

	<%
	solMenuList.movenext
	wEnd
	%>
	</table>
	

	<% sub menuDuzenleSub %><%

set menuDuzenle = kayitSeti("SELECT * from menuler WHERE id="&request("id")&" ")

if request.form("menu_adi") = "" then
mesajGoster("Lutfen Tum Alanlari Doldurunuz !")
else

if NOT request.form("sira") = "" then
menuDuzenle("sira") = request.form("sira")
end if

menuDuzenle("menu_adi") = request.form("menu_adi")

if NOT request.form("menu_adiEng") = "" then
menuDuzenle("menu_adiEng") = request.form("menu_adiEng")
end if

if NOT request.form("menu_adiEng") = "" then
menuDuzenle("menu_adiGer") = request.form("menu_adiGer")
end if

if NOT request.form("menu_adiRus") = "" then
menuDuzenle("menu_adiRus") = request.form("menu_adiRus")
end if

if NOT request.form("menu_adiArb") = "" then
menuDuzenle("menu_adiArb") = request.form("menu_adiArb")
end if

menuDuzenle.update
response.redirect "ana_menuler.asp#"&request("id")&""
end if


%><% end sub %><% sub menuSil %><%

set menuDel = kayitSeti("DELETE * from menuler WHERE id = "&request("id")&"")

response.redirect "ana_menuler.asp"

%><% end sub %><% else %><!--#include file = "yetki_yok.asp"--><% End if %>