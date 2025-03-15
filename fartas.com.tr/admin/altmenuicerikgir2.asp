<!--#include file = "style.asp"-->
<%
Set yaziOku = kayitSeti("SELECT * from menuler WHERE id = "&request("id")&"")
set ayarOku = kayitSeti("SELECT TR,EN,DE,AR,RUS from admin WHERE id = 1")

If request("islem") = "kaydet" Then
Call kaydet
End if
%>
<b><% =yaziOku("menu_adi") %></b>
<script type="text/javascript" src="js/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript"> 
	tinyMCE.init({
		// General options
		mode : "textareas",
		height: 400,
		theme : "advanced",
		skin : "o2k7",
		skin_variant : "silver",

		plugins : "safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount",
 
		// Theme options
		theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
		theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
		theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing : false,
 
		// Example content CSS (should be your site CSS)

 
		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "lists/template_list.js",
		external_link_list_url : "lists/link_list.js",
		external_image_list_url : "lists/image_list.js",
		media_external_list_url : "lists/media_list.js",
 
		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User",
			staffid : "991234"
		}
	});
</script>

<br><br>
<form method="POST" action="altMenuIcerikGir2.asp?islem=kaydet&id=<%=request("id")%>" name="form">
<input type="hidden" name="act" value="duzenle" size="20" style="width:98%">
<b>Türkçe</b><br>
<textarea cols="80" id="elm1" name="icerik" class="icerik" rows="10" style="width:50%"><% =Replace(yaziOku("yazi2"),"icerikResimler/","../icerikResimler/") %></textarea>
<% if ayarOku("EN") = "1" then %>
<br>
<b>Ýngilizce</b><br>
<textarea cols="80" id="elm2" name="icerik2" class="icerik" rows="10" style="width:50%"><% =Replace(yaziOku("yaziEng2"),"icerikResimler/","../icerikResimler/") %></textarea>
<% end if %>
<% if ayarOku("DE") = "1" then %>
<br>
<b>Almanca</b><br>
<textarea cols="80" id="elm3" name="icerik3" class="icerik" rows="10" style="width:50%"><% =Replace(yaziOku("yaziGer2"),"icerikResimler/","../icerikResimler/") %></textarea>
<% end if %>
<% if ayarOku("RUS") = "1" then %>
<br>
<b>Rusça</b><br>
<textarea cols="80" id="elm4" name="icerik4" class="icerik" rows="10" style="width:50%"><% =Replace(yaziOku("yaziRus2"),"icerikResimler/","../icerikResimler/") %></textarea>
<% end if %>
<% if ayarOku("AR") = "1" then %>
<br>
<b>Arapça</b><br>
<textarea cols="80" id="elm5" name="icerik5" class="icerik" rows="10" style="width:50%"><% =Replace(yaziOku("yaziArb2"),"icerikResimler/","../icerikResimler/") %></textarea>
<% end if %>
<br><br>
<input type="submit" value="Kaydet" name="B1"></form>

<% Sub kaydet %>
<%

set yaziDuzenleOk = kayitSeti("SELECT * from menuler WHERE id = "&request("id")&"")
yaziDuzenleOk("yazi2") = Replace(Request.form("icerik"),"../icerikResimler","icerikResimler")

if ayarOku("EN") = "1" then
yaziDuzenleOk("yaziEng2") = Replace(Request.form("icerik2"),"../icerikResimler","icerikResimler")
end if

if ayarOku("DE") = "1" then
yaziDuzenleOk("yaziGer2") = Replace(Request.form("icerik3"),"../icerikResimler","icerikResimler")
end if

if ayarOku("RUS") = "1" then
yaziDuzenleOk("yaziRus2") = Replace(Request.form("icerik4"),"../icerikResimler","icerikResimler")
end if

if ayarOku("AR") = "1" then
yaziDuzenleOk("yaziArb2") = Replace(Request.form("icerik5"),"../icerikResimler","icerikResimler")
end if

yaziDuzenleOk.update

response.redirect "ana_menuler.asp"

%>
<% End sub %>