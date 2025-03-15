   <%
   set kurumsal = kayitSeti ("SELECT * from menuler where id = 53")
   set kurumsalKategoriler = kayitSeti ("SELECT * from menuler where menuId LIKE "&kurumsal("id")&" order by sira asc")    
   set ekibimiz = kayitSeti ("SELECT * from menuler where id = 57")
   set ekibimizKisiler = kayitSeti ("SELECT * from menuler where menuId LIKE "&ekibimiz("id")&" order by sira asc")    

   %>
   <section class="page-title-area">
        <div class="container">
            <h1>Kurumsal</h1>
            <ul>
                <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
                <li>Ekibimiz</li>
            </ul>
        </div>
    </section>

    <section class="team-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12">
                    <div class="sidebar">
                        <div class="widget service_list">
                            <ul>
                                <% 
                                while NOT kurumsalKategoriler.eof
                                %>
                                <li><a href="./?sayfa=kurumsal&id=<%=kurumsalKategoriler("id")%>"><%=kurumsalKategoriler("menu_adi")%> <i class="flaticon-right"></i></a></li>
                                <%
                                kurumsalKategoriler.movenext
                                wEnd
                                %>
                                <li><a href="./?sayfa=ekibimiz" class="active">Ekibimiz<i class="flaticon-right"></i></a></li>
                            </ul>
                        </div>
                      
                    </div>
                </div>
                <div class="col-lg-9 col-md-12">
                    <div class="row">
                    <%
                    while NOT ekibimizKisiler.eof
                    set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&ekibimizKisiler("id")&"' order by id asc")
                    
                    %>
                    
                    <div class="col-lg-4 col-sm-6">
                    <div class="single-team-box">
                        <div class="team-img">
                            <a href="./?sayfa=ekibimizDetay&id=<%=ekibimizKisiler("id")%>">
                            <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="image">
                            </a>
                           
                        </div>
                        <div class="team-content">
                            <a href="./?sayfa=ekibimizDetay&id=<%=ekibimizKisiler("id")%>">
                            <h3><%=ekibimizKisiler("menu_adi")%></h3>
                            <span><%=ekibimizKisiler("meslek")%></span>
                            <span><%=ekibimizKisiler("yonetimKurulu")%></span>
                            </a>
                        </div>
                    </div>
                    </div>
                    <%
                    ekibimizKisiler.movenext
                    wEnd
                    %>
                </div>
                </div>
            </div>
        </div>
    </section>