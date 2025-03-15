<!--#include file = "style.asp"-->
<% If request.cookies("admin") = "True" then %>
<%
if request("islem") = "menuEkleOkSub" then
call menuEkleOkSub
end if
%>
&nbsp;<p>
<br>
</p>
<script language="javascript">

function focusla()
{
document.getElementById('menu_adi').focus();
}

</script>
<body onload="focusla();">
<form action="menuEkle.asp?islem=menuEkleOkSub&mode=<% =request("mode") %>&menuId=<% =request("menuId") %>" method="POST" onsubmit="addMenu.disabled=true;">
<table border="0" width="100%" cellspacing="1" height="23" align="center">
	<tr>
		<td style="border-bottom: 1px solid #C0C0C0">
		<p align="center">Ýçerik Adý :&nbsp; </td>
		<td style="border-bottom: 1px solid #C0C0C0">
		<input type="text" name="menu_adi" id="menu_adi" size="25"></td>
	</tr>
	<tr>
		<td colspan="2">
		<p align="right">
		<input type="submit" value="  Ekle  " name="addMenu"></td>
	</tr>
</table>
</form>
</body>

<% sub menuEkleOkSub %>
<%

set menuEkleOk = kayitSeti("SELECT * from menuler")
set sonSira = kayitSeti("SELECT TOP 1 sira from menuler WHERE menuId = '"&request("menuId")&"' ORDER BY sira DESC;")

if request.form("menu_adi") = "" then
mesajGoster("Lutfen Alani Bos Birakmayiniz !")
Else

menuEkleOk.addnew
menuEkleOk("menu_adi") = request.form("menu_adi")
menuEkleOk("mode") = request("mode")
menuEkleOk("menuId") = request("menuId")
If sonSira.eof Then
menuEkleOk("sira") = 1
else
menuEkleOk("sira") = sonSira("sira")+1
End if
menuEkleOk.update

popupClose()

end if

%>
<% end sub %>

<% else %>
<!--#include file = "yetki_yok.asp"-->
<% End if %>