<!--#include file = "style.asp"-->
<% If request.cookies("admin") = "True" then %>

<%
set mailListesi = kayitSeti("SELECT * from habergruplari ORDER BY email ASC;")
set mailListesi2 = kayitSeti("SELECT * from habergruplari ORDER BY id DESC;")

if request("islem") = "mailSil" then
call mailSil
end if
%>

<table width="100%">
<tr>
<td>
<textarea rows="9" name="S1" cols="37">
<%
while NOT mailListesi.eof
response.write mailListesi("email")&"; "
mailListesi.movenext
wEnd
%>
</textarea>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</table>

<%
while NOT mailListesi2.eof
%>
<a href="maillistesi.asp?islem=mailSil&id=<% =mailListesi2("id") %>" onclick="return confirm('Bu maili listeden silmek istediginize emin misiniz ?');"><img border="0" src="images/del.gif"></a>&nbsp;<% =mailListesi2("email") %><br>
<%
mailListesi2.movenext
wEnd
%><% sub mailSil %><%

set mailDel = kayitSeti("DELETE * from haberGruplari WHERE id = "&request("id")&"")
response.redirect "maillistesi.asp"

%>
<% end sub %>

<% else %><!--#include file = "yetki_yok.asp"--><% end if %>