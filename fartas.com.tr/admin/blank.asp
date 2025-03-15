<!--#include file = "style.asp"-->
<% If request.cookies("admin") = "True" then %>

<table width="100%">
<tr>
<td></td>
</tr>
</table>

<% else %>
<!--#include file = "yetki_yok.asp"-->
<% End if %>