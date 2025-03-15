<% If request("sayfa") = "" Or request("sayfa") = "main" then %>
<!--#include file = "main.asp"-->
<% elseIf request("sayfa") = "kurumsal" then %>
<!--#include file = "kurumsal.asp"-->
<% elseIf request("sayfa") = "ekibimiz" then %>
<!--#include file = "ekibimiz.asp"-->
<% elseIf request("sayfa") = "ekibimizDetay" then %>
<!--#include file = "ekibimizDetay.asp"-->
<% elseIf request("sayfa") = "ekibimizDetay" then %>
<!--#include file = "ekibimizDetay.asp"-->
<% elseIf request("sayfa") = "bizdenHaberler" then %>
<!--#include file = "bizdenHaberler.asp"-->
<% elseIf request("sayfa") = "insaat" then %>
<!--#include file = "insaat.asp"-->
<% elseIf request("sayfa") = "insaatDetay" then %>
<!--#include file = "insaatDetay.asp"-->

<% elseIf request("sayfa") = "hayvancilik" then %>
<!--#include file = "hayvancilik.asp"-->
<% elseIf request("sayfa") = "hayvancilikDetay" then %>
<!--#include file = "hayvancilikDetay.asp"-->

<% elseIf request("sayfa") = "enerji" then %>
<!--#include file = "enerji.asp"-->
<% elseIf request("sayfa") = "enerjiDetay" then %>
<!--#include file = "enerjiDetay.asp"-->
<% elseIf request("sayfa") = "muhendislik" then %>
<!--#include file = "muhendislik.asp"-->
<% elseIf request("sayfa") = "grupSirketleri" then %>
<!--#include file = "grupSirketleri.asp"-->


<% elseIf request("sayfa") = "haberlerDetay" then %>
<!--#include file = "haberlerDetay.asp"-->

<% elseIf request("sayfa") = "iletisim" then %>
<!--#include file = "iletisim.asp"-->
<% End if %>