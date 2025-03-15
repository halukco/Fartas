<%
session.abandon
response.cookies("admin") = ""
response.Cookies("adminId") = ""
response.redirect "default.asp"
%>