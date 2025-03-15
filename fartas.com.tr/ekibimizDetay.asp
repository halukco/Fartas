    <%
    set ekibimizDetay = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
    set ekibimizKisiler = kayitSeti ("SELECT * from menuler where menuId LIKE '57' order by sira asc")
    set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&ekibimizDetay("id")&"' order by id asc")
    %>
    <section class="page-title-area">
        <div class="container">
            <h1>Ekibimiz</h1>
            <ul>
                <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
                <li><a href="./?sayfa=ekibimiz">Ekibimiz</a></li>
                <li><%=ekibimizDetay("menu_adi")%></li>
            </ul>
        </div>
    </section>

    <section class="team-details-area ptb-100">
        <div class="container">
            <div class="row h-100 align-items-center">
                <div class="col-lg-3 col-md-12">
                    <div class="sidebar">
                        <div class="widget service_list">
                            <ul>
                                <% 
                                while NOT ekibimizKisiler.eof
                                %>
                                <li><a <% if request("id") = cStr(ekibimizKisiler("id")) then%>class="active" <%end if%>href="./?sayfa=ekibimizDetay&id=<%=ekibimizKisiler("id")%>"><%=ekibimizKisiler("menu_adi")%> <i class="flaticon-right"></i></a></li>
                                <%
                                ekibimizKisiler.movenext
                                wEnd
                                %>
                                
                            </ul>
                        </div>
                      
                    </div>
                </div>
                <div class="col-lg-9 col-md-12">
                    <div class="row">
                <div class="col-lg-4 col-md-4">
                    <div class="team-member-image">
                        <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="image">
                    </div>
                </div>
                <div class="col-lg-8 col-md-8">
                    <div class="team-details-info">
                        <h3><%=ekibimizDetay("menu_adi")%></h3>
                        <span><%=ekibimizDetay("meslek")%> - <%=ekibimizDetay("yonetimKurulu")%></span> 
                        <p><%=ekibimizDetay("yazi")%></p>
                       
                     
                    </div>
                </div>
            </div>
               </div>
            </div>
        </div>
    </section>