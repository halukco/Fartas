<!--#include file="clsUpload.asp"-->
<!--#include file = "style.asp"-->
<!--#include file="formEnter.asp"-->
<%

If request.cookies("admin") = "True" then

id=request("id")
Dim objUpload2
Dim strFileName2
Dim strPath2
Randomize()
degisken = Int(Rnd()*123456)&".jpg"

Set objUpload2 = New clsUpload


strFileName2 = objUpload2.Fields("resim").FileName


strPath2 = Server.MapPath("../icerikResimler") & "\" & id & "_" & session.sessionID&"_"&degisken


If objUpload2.Fields("resim").Length < 1024 Then
mesajGoster("Lutfen resim seciniz !")
else

objUpload2("resim").SaveAs strPath2


set kayitGir = kayitSeti("SELECT * from icerikResimler")
kayitGir.addnew
kayitGir("menu_id") = id
kayitGir("resim_adi") = id & "_" & session.sessionID&"_"&degisken
kayitGir("aciklama") = objUpload2.Fields("aciklama").value
resimKucult(kayitGir("resim_adi"))
kayitGir.update
'response.write "<center>Resim Baþarýyla Deðiþtirilmiþtir !</center>"
popupClose()

end if



else

%>

<!--#include file = "yetki_yok.asp"-->
<% end if %>