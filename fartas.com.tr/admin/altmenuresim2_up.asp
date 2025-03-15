<!--#include file="clsUpload.asp"-->
<!--#include file = "style.asp"-->
<!--#include file="formEnter.asp"-->
<%

If request.cookies("admin") = "True" then

id=request("id")
Dim objUpload
Dim strFileName
Dim strPath
Randomize()
degisken = Int(Rnd()*123456)&".jpg"

Set objUpload = New clsUpload


strFileName = objUpload.Fields("resim").FileName
strPath = Server.MapPath("../icerikResimler") & "\" & id & "_" & session.sessionID&"_"&degisken

set kayitGir = kayitSeti("SELECT * from icerikResimler WHERE id = "&id&"")
kayitGir("aciklama") = objUpload.Fields("aciklama").value

If objUpload.Fields("resim").Length > 1024 Then

Set resimAdiOku = kayitSeti("SELECT * From icerikResimler WHERE id = "&id&" ")
Set resimSilFso = CreateObject("Scripting.FileSystemObject")
If resimSilFso.fileExists(server.mappath("../icerikResimler/"&resimAdiOku("resim_adi"))) then
resimSilFso.deleteFile(server.mappath("../icerikResimler/"&resimAdiOku("resim_adi")))
End if
Set resimSilFso = Nothing

kayitGir("resim_adi") = id & "_" & session.sessionID&"_"&degisken
objUpload("resim").SaveAs strPath
resimKucult(kayitGir("resim_adi"))
End If
kayitGir.update

popupClose()

else

%>

<!--#include file = "yetki_yok.asp"-->
<% end if %>