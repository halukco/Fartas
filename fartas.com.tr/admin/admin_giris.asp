<!--#include file = "style.asp"-->
<!--#include file = "guvenlik.asp"-->
<meta charset="windows-1254">
<%
session.lcID = 1055
session.codepage = 1254

set adminSorgu = server.createobject("adodb.recordset")
adminSorgu_S = ("SELECT * from admin WHERE kullanici_adi = '"&guvenlik(request.form("kullanici_adi"))&"' and sifre = '"&guvenlik(request.form("sifre"))&"' ")
adminSorgu.open adminSorgu_S,baglanti,1,3

if adminSorgu.eof Then
response.write "<br><center><font color=red>Hatalı Kullanıcı Adı Yada Şifre Girdiniz..</font><br><br><a href=javascript:history.go(-1)><<< Geri Dön</a></center>"
else

session.timeout = "60"
response.Cookies("adminId") = adminSorgu("id")
response.Cookies("admin") = True

response.redirect "default.asp"

end If
'End If
'End if

%>