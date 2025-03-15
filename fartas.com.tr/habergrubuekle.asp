<!--#include file = "style.asp"-->
<%

If Trim(request.Form("haberMail")) = "" Then
if session("dil") = "TR" then
mesajGoster("Lutfen Zorunlu Alanlari Doldurunuz !")
elseif session("dil") = "EN" or session("dil") = "AR" or session("dil") = "RUS" then
mesajGoster("Please Fill in the Required Fields !")
elseif session("dil") = "DE" then
mesajGoster("Füllen Sie die Pflichtfelder aus !")
end ifyaziOku("yaziRus")
end if
else

Set mailOku = kayitSeti("SELECT * from haberGruplari WHERE email LIKE '"&Trim(request.form("haberMail"))&"'")

If NOT mailOku.eof Then
If session("dil") = "TR" then
mesajGoster("Bu mail adresi daha onceden sistemde kayitlidir.\n\Lutfen girdiginiz adresi kontrol ediniz.")
elseIf session("dil") = "EN" Or session("dil") = "AR" Or session("dil") = "RUS" then
mesajGoster("This e-mail address was previously registered on the system.\n\Please check the address you entered.")
elseIf session("dil") = "DE" Then
mesajGoster("Diese E-Mail-Adresse wurde zuvor auf dem System registriert.\n\Bitte überprüfen Sie die von Ihnen eingegebene Adresse.")
End if
else

Set mailEkle = kayitSetiEkle("SELECT * from haberGruplari")

mailEkle.addnew
mailEkle("email") = Trim(request.Form("haberMail"))
mailEkle.update

If session("dil") = "TR" then
response.write mesajYonlendir("Mail adresiniz basariyla sisteme eklenmistir.",".?sayfa=main")
elseIf session("dil") = "EN" Or session("dil") = "AR" Or session("dil") = "RUS" then
response.write mesajYonlendir("Your mail address has been successfully added to the system.\n\Thank You.",".?sayfa=main")
elseIf session("dil") = "DE" Then
response.write mesajYonlendir("Ihre E-Mail-Adresse wurde erfolgreich zum System hinzugefügt.\n\Danke",".?sayfa=main")
End if

End If
End if

%>