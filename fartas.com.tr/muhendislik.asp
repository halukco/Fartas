<% 
set muhendislikrequest = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
set muhendislik = kayitSeti ("SELECT * from menuler where id = 104")
set muhendislikKategoriler = kayitSeti ("SELECT * from menuler where menuId LIKE "&muhendislik("id")&" order by sira asc")

%>
<section class="page-title-areamuhendislik">
     <div class="container">
         <h1>Mühendislik</h1>
         <ul>
             <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
             <li><%=muhendislikrequest("menu_adi")%></li>
         </ul>
     </div>
 </section>

 <section class="about-area ptb-100">
     <div class="container">
       
         <div class="row h-100">
             <div class="col-lg-3 col-md-12">
                 <div class="sidebar">
                     <div class="widget service_list">
                         <ul>
                             <% 
                             while NOT muhendislikKategoriler.eof
                             %>
                             <li><a <% if request("id") = cStr(muhendislikKategoriler("id")) then%>class="active" <% end if%> href="./?sayfa=muhendislik&id=<%=muhendislikKategoriler("id")%>" ><%=muhendislikKategoriler("menu_adi")%> <i class="flaticon-right"></i></a></li>
                             <%
                             muhendislikKategoriler.movenext
                             wEnd
                             %>
                             
                         </ul>
                     </div>
                   
                 </div>
             </div>
          
             <div class="col-lg-9 col-md-12">
                 <div class="about-content">
                     
                     <h3><%=muhendislikrequest("menu_adi")%></h3>
                     <%=muhendislikrequest("yazi")%>
                     
                 </div>
             </div>
          
         </div>
     </div>
 </section>