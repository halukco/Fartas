<% If request.cookies("admin") = "True" then %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="tr" lang="tr">

<head>
<meta http-equiv="Content-Language" content="tr" />
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254" />

<title>Resim Yükleme</title>


</head>
<script language="JavaScript">
function ResimEkle(mesaj) {
	formX="form"
		if ( (window.opener==null) || (window.opener.closed)) {
		alert("HATA")
		} else {
		window.opener.document.form.src.value = mesaj;
		window.opener.document.form.alt.value = mesaj;
		window.opener.document.form.src.focus();
		window.opener.document.form.insert.click();
		window.close();
		}
}
</script>
<body>

<div align="center">

<table border="1" width="100%" id="table1" class="Cerceve">
	<tr>
		<td class="myriad_pro_condensed cizgi pad10 baslikFont3" bgcolor="#E9E9E9">Resim Ekleme</td>
	</tr>
<%
if request("img")<>"" then
%>
	<tr>
		<td class="pad5 center">
		<a href="javaScript:ResimEkle('<%=request("img")%>');">
		<img border="0" src="<%=request("img")%>" height="115" class="galerik">
		</a></td>
	</tr>
	<tr>
		<td class="pad10 center fontRegular1">İşlemi tamamlamak için resmin üzerine tıklayınız</td>
	</tr>

<%else%>
<% if request("durum") = "hata" then %>
<tr>
<td colspan="2"><b><font color="#FF0000">Lütfen resim seçiniz !</font></b></td>
</tr>
<% end if %>
	<tr>
		<td class="pad2 fontRegular1">
			<form method="POST" enctype="multipart/form-data" action="aspupload.asp">
			<table border="1" width="100%" id="table2">
				<tr>
					<td class="pad5">Resim seçiniz</td>
					<td class="pad5">
					<input type="file" name="file" size="20"></td>
				</tr>
				<tr>
					<td class="pad5 ">&nbsp;</td>
					<td class="pad5">
					<input type="submit" value="Yükle" name="B1" class="buttonGri"></td>
				</tr>
			</table>
		</form>
		</td>
	</tr>
<%end if%>
</table>

</div>

</body>

</html>

<% End if %>