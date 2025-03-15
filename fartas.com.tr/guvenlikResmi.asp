<%
Function guvenlikResmi(gelenSayi)
yazi = ""
For i = 1 To Len(gelenSayi)
yazi = yazi + Mid(gelenSayi,i,1)&" "
next
Set Jpeg = Server.CreateObject("Persits.Jpeg")
Path = Server.MapPath("images/guvenlikResmi.jpg")
Jpeg.Open Path
Jpeg.Canvas.Font.Color = &000000
Jpeg.Canvas.Font.Size = "21"
Jpeg.Canvas.Font.Family = "arial"
Jpeg.Canvas.Font.Bold = true
Jpeg.Canvas.Print 13, 0, yazi
Jpeg.Canvas.Pen.Color = &000000
Jpeg.Canvas.Pen.Width = 0
Jpeg.Canvas.Brush.Solid = False
'Jpeg.Canvas.Bar 1, 1, Jpeg.Width, Jpeg.Height
Jpeg.SendBinary
guvenlikResmi = gelenSayi
End Function

response.write guvenlikResmi(session("rastgeleSayi"))
%>