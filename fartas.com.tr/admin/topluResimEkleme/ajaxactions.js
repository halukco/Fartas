var ajaxYuko=null;
try
{
ajaxYuko=new XMLHttpRequest();
}
catch (e)
{
try
{
ajaxYuko=new ActiveXObject("Msxml2.XMLHTTP");
}
catch (e)
{
ajaxYuko=new ActiveXObject("Microsoft.XMLHTTP");
}
}


function ajaxSayfa(gelenSayfa,gelenDiv)
{
var d = new Date();
var time = d.getTime();
ajaxYuko.open('GET',gelenSayfa+'&time='+time,true);
ajaxYuko.onreadystatechange = function() {ajaxSayfaIslem(gelenDiv)}
ajaxYuko.send(null);
}

function ajaxSayfaIslem(gelenDiv)
{
if (ajaxYuko.readyState ==1)
{
//document.getElementById(gelenDiv).innerHTML = '<br>Sayfa Yükleniyor...';
}
if (ajaxYuko.readyState == 4)
{
document.getElementById(gelenDiv).innerHTML = ajaxYuko.responseText;
}
}