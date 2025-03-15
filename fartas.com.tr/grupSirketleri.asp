<% set istiraklerimiz = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
   set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&istiraklerimiz("id")&"' order by id asc")
%>
    <section class="page-title-grupsirketleri">
        <div class="container">
            <h1>Grup Şirketleri</h1>
            <ul>
                <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
                
                <li><%=istiraklerimiz("menu_adi")%></li>
            </ul>
        </div>
    </section>


    <section class="project-details-area ptb-100">
        <div class="container">
            <%=istiraklerimiz("yazi")%>

            <div class="row h-100">
                <div class="col-lg-12 col-md-12">
                    <div class="row">
                    <% while not icerikResimler.eof%>
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
                    <% icerikResimler.movenext
                    wEnd%>
                </div>
                </div>
               
            </div>

            
        </div>
    </section>