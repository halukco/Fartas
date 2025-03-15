   <% 
   set kurumsalrequest = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
   set kurumsal = kayitSeti ("SELECT * from menuler where id = 53")
   set kurumsalKategoriler = kayitSeti ("SELECT * from menuler where menuId LIKE "&kurumsal("id")&" order by sira asc")    
   %>
   <section class="page-title-area">
        <div class="container">
            <h1>Kurumsal</h1>
            <ul>
                <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
                <li><%=kurumsalrequest("menu_adi")%></li>
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
                                while NOT kurumsalKategoriler.eof
                                %>
                                <li><a href="./?sayfa=kurumsal&id=<%=kurumsalKategoriler("id")%>" <% if request("id") = cStr(kurumsalKategoriler("id")) then%>class="active" <%end if%>><%=kurumsalKategoriler("menu_adi")%> <i class="flaticon-right"></i></a></li>
                                <%
                                kurumsalKategoriler.movenext
                                wEnd
                                %>
                               
                            </ul>
                        </div>
                      
                    </div>
                </div>
                <% if NOT request("id") = 56 then %>
                <div class="col-lg-9 col-md-12">
                    <div class="about-content">
                        
                        <h3><%=kurumsalrequest("menu_adi")%></h3>
                        <p><%=kurumsalrequest("yazi")%></p>
                        
                    </div>
                </div>
                <%else%>
                <div class="col-lg-9 col-md-12">
                <div>
                    <div class="row justify-content-center">
                        <%
                        
                        set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&guvenlik(request("id"))&"' order by id asc")
                        
                        while NOT icerikResimler.eof
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
                                <div class="projects-content">
                                    <h3><a><%=icerikResimler("aciklama")%></a></h3>
                                   
                                </div>
                            </div>
                        </div>
                        <%
                        icerikResimler.movenext
                        wEnd
                        %>
                    </div>
                </div>
                </div>
                <% end if%>
            </div>
        </div>
    </section>