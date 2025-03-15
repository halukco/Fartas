<% set enerji = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
set enerjiAlt = kayitSeti ("SELECT * from menuler where menuId LIKE "&enerji("id")&" order by sira asc") 
%>
<section class="page-title-areaenerji">
   <div class="container">
       <h1>Enerji</h1>
       <ul>
           <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
           <li><%=enerji("menu_adi")%></li>
       </ul>
   </div>
</section>
<% if not request ("id") = "68" then%>
<section class="projects-area-two ptb-100">
   <div class="container">

       <div class="shorting">
           <div class="row">
               <%
               while NOT enerjiAlt.eof
               set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&enerjiAlt("id")&"' order by id asc")
               %>
               <div class="col-lg-4 col-sm-6 mix petrolium industry">
                   <div class="single-projects-box">
                       <div class="projects-image">
                           <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="image">
                           <div class="btn-box">
                              
                               <a href="./?sayfa=enerjiDetay&id=<%=enerjiAlt("id")%>" class="link-btn"><i class="flaticon-chain"></i></a>
                           </div>
                       </div>
                       <div class="projects-content">
                           <h3><a href="./?sayfa=enerjiDetay&id=<%=enerjiAlt("id")%>"><%=enerjiAlt("menu_adi")%></a></h3>
                           
                       </div>
                   </div>
               </div>
               <%
               enerjiAlt.movenext
               wEnd
               %>
           </div>
       </div>
       
   </div>
</section>
<%else%>
<section class="projects-area-two ptb-100">

<div class="container">
    <% set hizmetlerimiz = kayitSeti ("SELECT * from menuler where id LIKE "&enerji("id")&" order by sira asc")
    set icerikResimler = kayitSeti ("SELECT * from icerikResimler where id = 206")
     %>
     <div class="section-title">
        <div class="row h-100 align-items-center text-center">
            <div class="col-lg-12 col-md-12">
               
                <h1>Hizmetlerimiz</h1>
             <center><div align="center" class="bar"></div></center>
               <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="">
            </div>
           
        </div>
    </div>
    <div class="row">
        <div class="about-content">
                     
          
            <%=hizmetlerimiz("yazi")%>
            
        </div>
     
    </div>
</div>
</section>
<% end if%>

