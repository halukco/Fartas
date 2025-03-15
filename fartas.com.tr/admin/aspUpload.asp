<!--#include file="clsUpload.asp"-->
<!--#include file = "style.asp"-->
<%

Dim objUpload2
Dim strFileName2
Dim strPath2
Randomize()
degisken = Int(Rnd()*123456)&".jpg"

Set objUpload2 = New clsUpload

strFileName2 = objUpload2.Fields("file").FileName
strPath2 = Server.MapPath("../icerikResimler") & "\" & session.sessionID&"_"&degisken

If objUpload2.Fields("file").Length < 1024 Then
response.redirect("popResim.asp?durum=hata")
else

objUpload2("file").SaveAs strPath2
resimKucult("../icerikResimler/"&session.sessionID&"_"&degisken)
response.redirect("popresim.asp?img=../icerikResimler/"&session.sessionID&"_"&degisken&"")

end if

%>