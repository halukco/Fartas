<html>
<head>
<%
application("sessionID")=Session.SessionID
application("uploadpath")="../../icerikResimler"
%>
<script type="text/javascript" src="jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="swfobject.js"></script>
<script type="text/javascript" src="jquery.uploadify.v2.1.4.min.js"></script>
<script src="ajaxActions.js"></script>


<html>
<title>Toplu Resim Yükle</title>
<style>
TD, INPUT, SELECT, OPTION
{
font-family:tahoma;
font-size:8pt;
color:#000000;
}
</style>
<head>
<script type="text/javascript">
// <![CDATA[
$(document).ready(function() {
  $('#dosya').uploadify({
    'uploader'  : 'uploadify.swf',
    'script'    : 'uploader.asp?sId=<%=session.sessionID%>',
    'cancelImg' : 'cancel.png',
    'folder'    : '../../icerikResimler',
    'auto'      : true,
    'multi'		: true,
	'fileDesc'		 : 'JPG (*.jpg), JPEG (*.jpeg)',
	'fileExt'		 : '*.jpg;*.jpeg',
		onError: function (a, b, c, d) {
         if (d.status == 404)
            alert('Could not find upload script. Use a path relative to: '+'<?= getcwd() ?>');
         else if (d.type === "HTTP")
            alert('error aaa'+d.type+": "+d.status);
         else if (d.type ==="File Size")
            alert(c.name+' '+d.type+' Limit: '+Math.round(d.sizeLimit/1024)+'KB');
         else
            alert('error '+d.type+": "+d.text);
},
		onComplete		 : function(event, queueID, fileObj, response, data) {
     							var path = escape(fileObj.filePath);
								document.getElementById('resimKucultMesaj').style.visibility = 'visible';
//								$('#filesUploaded').append('<div class=\'uploadifyQueueItem\'><a href='+path+' target=\'_blank\'>'+fileObj.name+'</a></div>');
								$('#filesUploaded').append('<div class=\'uploadifyQueueItem\'></div>');
//							 ajaxSayfa('resimKucult.asp?dosya='+path,'resimKucultDiv');
							document.getElementById('dosyaAdlari').value = document.getElementById('dosyaAdlari').value + path+',';
							}
  });
});
// ]]>
</script>

</head>
<body>
<form id="form1" action="topluResimKucult.asp?id=<% =request("id") %>" method="POST" runat="server">
<div>
<input id="dosya" name="dosya" type="file" />    
<div id="filesUploaded"></div>
<div id="resimKucultDiv"></div>
<input type="hidden" id="dosyaAdlari" name="dosyaAdlari">
<div id="resimKucultMesaj" name="resimKucultMesaj" style="visibility:hidden;"><br><img src="alert.gif">&nbsp;<input type="image" src="rKucult.jpg"></div>
</div>
</form>
</body>
</html>
