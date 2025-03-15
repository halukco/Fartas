<% set alatarim = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
set alatarimAlt = kayitSeti ("SELECT * from menuler where menuId LIKE "&alatarim("id")&" order by sira asc") 
%>
<section class="page-title-areaalatarim">
   <div class="container">
       <h1>Hayvancılık</h1>
       <ul>
           <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
           <li><%=alatarim("menu_adi")%></li>
       </ul>
   </div>
</section>

<section class="projects-area-two project-details-area ptb-100">
   <div class="container">

       <div class="shorting">
           <div class="row">
               <%
               if request ("id") = "110" then
               set fotogaleri = kayitSeti ("SELECT * from menuler where id = 110")
               set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&fotogaleri("id")&"' order by id asc")
               while not icerikResimler.eof
               %>
          
               <div class="col-lg-4 col-sm-4 mix petrolium industry">
                <div class="single-projects-box">
                    <div class="projects-image">
                        <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="image">
                        <div class="btn-box">
                            <a href="icerikResimler/<%=icerikResimler("resim_adi")%>" class="popup-btn"><i
                                    class="flaticon-photo-1"></i></a>
                            
                        </div>
                    </div>
                   
                </div>
                </div>
               <%
               icerikResimler.movenext
               wEnd
                
               %>
               <div class="row">
               <div class="col-md-12">
                <div class="row">
                   <div class="col-md-6">
                    <video width="100%" src="images/alatarimvideo1.mp4" controls></video>
                   </div>
                   <div class="col-md-6">
                    <video width="100%" controls src="images/alatarimvideo2.mp4"></video>
                </div>
                </div>
               </div>
            </div>
               <%  else %>
               <% 
               set alatarimAlt = kayitSeti ("SELECT * from menuler where menuId LIKE "&alatarim("id")&" order by sira asc") 
                while not alatarim.eof
               set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&alatarimAlt("id")&"' order by id asc")
              %>
               <div class="col-lg-4 col-sm-6 mix petrolium industry">
                <div class="single-projects-box">
                    <div class="projects-image">
                        <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="image">
                        <div class="btn-box">
                           
                            <a href="./?sayfa=alatarimDetay&id=<%=alatarimAlt("id")%>" class="link-btn"><i class="flaticon-chain"></i></a>
                        </div>
                    </div>
                    <div class="projects-content">
                        <h3><a href="./?sayfa=alatarimDetay&id=<%=alatarimAlt("id")%>"><%=alatarimAlt("menu_adi")%></a></h3>
                        
                    </div>
                </div>
               <% alatarim.movenext
               wEnd
       
               %>
               <% end if%>
           </div>
       </div>
       
   </div>
</section>