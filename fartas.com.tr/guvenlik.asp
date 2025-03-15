<%

function guvenlik(degistir)
degistir = replace(degistir,chr(13),"")
degistir = replace(degistir,",","")
degistir = replace(degistir,"/","")
degistir = replace(degistir,"\","")
degistir = replace(degistir,"?","")
degistir = replace(degistir,"*","")
degistir = replace(degistir,"'","")
'degistir = replace(degistir,""","")
'degistir = replace(degistir,"OR","")
'degistir = replace(degistir,"AND","")
degistir = replace(degistir,"%","")
degistir = replace(degistir,"&","")
degistir = replace(degistir,"<","")
degistir = replace(degistir,">","")
degistir = replace(degistir,"=","")
guvenlik = degistir
end function

%>