<!-- #include file="uploaderCLS.asp" -->
<%
'security
on error resume next
if application("sessionID")<>request.querystring("sId") then response.end
if application("sessionID")="" then response.end
if request.querystring("sId")="" then response.end
if err.number<>0 then response.end 
on error goto 0

dim UploadiFyPath,UploadiFyFolder,UploadifyObject

UploadiFyPath = Request.ServerVariables("PATH_TRANSLATED")
UploadiFyPath = Replace(UploadiFyPath,"uploader.asp","",1,-1,1)

UploadiFyFolder=application("uploadpath")

Set UploadifyObject = New Uploader
UploadifyObject.Save(Server.MapPath(UploadiFyFolder))

'resimKucult(resimYolu)
'response.redirect "x"
'response.write "xxxxxx"

Response.Write("<HTML><HEAD></HEAD><BODY>xx</BODY></HTML>")

%>