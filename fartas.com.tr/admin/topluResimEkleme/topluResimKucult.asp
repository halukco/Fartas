<!--#include file = "style.asp"-->
<%
Function adDegistir(kaynak,hedef)
set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.GetFile(server.mappath(kaynak))
file.name = hedef
set file = nothing 
set fso = nothing 
End Function

Function uzantiSil(gelenDeger)
gelenDeger = Replace(gelenDeger,".jpg","")
gelenDeger = Replace(gelenDeger,".jpeg","")
uzantiSil = gelenDeger
End function

id = request("id")
set kayitGir = kayitSeti("SELECT * from icerikResimler")
dosyaYollari = Split(request.Form("dosyaAdlari"),",")

For i = 0 To UBound(dosyaYollari)-1
Randomize()
degisken = Int(Rnd()*123456)&".jpg"
dosyaAdi = Split(dosyaYollari(i),"/")
resimAdi = dosyaAdi(UBound(dosyaAdi))

response.write adDegistir("../../icerikResimler/"&resimAdi,id & "_" & session.sessionID&"_"&degisken)

resimAdi = id & "_" & session.sessionID&"_"&degisken

kayitGir.addnew
kayitGir("menu_id") = request("id")
kayitGir("resim_adi") = resimAdi
'kayitGir("aciklama") = uzantiSil(dosyaAdi(UBound(dosyaAdi)))
resimKucult(resimAdi)
kayitGir.update

Next
popupClose()
%>