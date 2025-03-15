  <% set insaat = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
     set insaatAlt = kayitSeti ("SELECT * from menuler where menuId LIKE "&insaat("id")&" order by sira asc") 
  %>
  <section class="page-title-areainsaat">
        <div class="container">
            <h1>Ýnþaat</h1>
            <ul>
                <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
                <li><%=insaat("menu_adi")%></li>
            </ul>
        </div>
    </section>

    <section class="projects-area-two ptb-100">
        <div class="container">

            <div class="shorting">
                <div class="row">
                    <%
                    while NOT insaatAlt.eof
                    set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&insaatAlt("id")&"' order by id asc")
                    %>
                    <div class="col-lg-4 col-sm-6 mix petrolium industry">
                        <div class="single-projects-box">
                            <div class="projects-image">
                                <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="image">
                                <div class="btn-box">
                                   
                                    <a href="./?sayfa=insaatDetay&id=<%=insaatAlt("id")%>" class="link-btn"><i class="flaticon-chain"></i></a>
                                </div>
                            </div>
                            <div class="projects-content">
                                <h3><a href="./?sayfa=insaatDetay&id=<%=insaatAlt("id")%>"><%=insaatAlt("menu_adi")%></a></h3>
                                
                            </div>
                        </div>
                    </div>
                    <%
                    insaatAlt.movenext
                    wEnd
                    %>
                </div>
            </div>
            
        </div>
    </section>