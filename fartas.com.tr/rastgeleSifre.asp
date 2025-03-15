<%
Function rastgeleSifre(Uzunluk)
Karakterler = "0123456789abcdefghijkmnoprqstuvyzABCDEFGHJKLMNOPRQSTUVYZ"
Randomize
KarakterBoyu = Len(Karakterler)
For i = 1 To Uzunluk
      KacinciKarakter = Int((KarakterBoyu * Rnd) + 1)
      UretilenSifre = UretilenSifre & Mid(Karakterler,KacinciKarakter,1)
Next
rastgeleSifre = UretilenSifre
End Function

rastgeleSayi = rastgeleSifre(5)
session("rastgeleSayi") = rastgeleSifre(5)
%>