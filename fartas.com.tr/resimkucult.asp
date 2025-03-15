<%

dosyaAdi = request("dosya")
gelenSizeTuru = request("boyut")
gelenDeger = request("size")

dosyaYolu = Server.MapPath(dosyaAdi)
Set jpeg = Server.CreateObject("Persits.Jpeg")
Jpeg.open(dosyaYolu)

'// GENISLIK
if gelenSizeTuru = "w" then

L = cInt(gelenDeger)

if Jpeg.OriginalWidth > cInt(L) then
Jpeg.Width = L
Jpeg.Height = Jpeg.OriginalHeight * L / Jpeg.OriginalWidth
end if

if (Jpeg.OriginalHeight * L / Jpeg.OriginalWidth) > cInt(L) then
Jpeg.Height = L
Jpeg.Width = Jpeg.OriginalWidth * L / Jpeg.OriginalHeight
end if

end if
'// genislik END


'// YUKSEKLIK
if gelenSizeTuru = "h" then

L = cInt(gelenDeger)

'if Jpeg.OriginalHeight > cInt(L) then
Jpeg.Height = L
Jpeg.Width = Jpeg.OriginalWidth * L / Jpeg.OriginalHeight
'end if

'if (Jpeg.OriginalWidth * L / Jpeg.OriginalHeight) < cInt(L) then
'Jpeg.Width = L
'Jpeg.Height = Jpeg.OriginalHeight * L / Jpeg.OriginalWidth
'end if

end if
'// yukseklik END
jpeg.quality = 100
Jpeg.sendbinary
Jpeg.close
Set Jpeg = nothing

%>


