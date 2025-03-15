<% set alatarimDetay = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
   set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&alatarimDetay("id")&"' order by id asc")
%>
    <section class="page-title-areaalatarim">
        <div class="container">
            <h1>Hayvancýlýk</h1>
            <ul>
                <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
                
                <li><%=alatarimDetay("menu_adi")%></li>
            </ul>
        </div>
    </section>


    <section class="project-details-area ptb-100">
        <div class="container">
            <%=alatarimDetay("yazi2")%>

            <div class="row h-100">
                <div class="col-lg-8 col-md-12">
                    <div class="row">
                    <% while not icerikResimler.eof%>
                    <div class="col-lg-6 col-sm-6 mix petrolium industry">
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
                <div class="col-lg-4 col-md-12">
                    <div class="project-details-info">
                        <ul>
                            <%=alatarimDetay("yazi")%>
                            <li>
                                <Span>Paylaþ:</Span>
                                <ul>
                                    <li><a style="background-color: #3B5998; color: #FFF;" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=http://fartas.com.tr/?sayfa=alatarimDetay&id=<%=request("id")%>','_blank','width=350 height=150');" href="#"><i class="flaticon-facebook"></i></a></li>
                                    <li><a style="background-color: #1c9cea; color: #FFF;" onclick="window.open('https://twitter.com/share?url=http://fartas.com.tr/?sayfa=alatarimDetay&id=<%=request("id")%>&text=Fartas','_blank','width=350 height=150');" href="#"><i class="flaticon-twitter"></i></a></li>
                                    
                                    <li><a style="background-color: #d52681; color: #FFF;" onclick="window.open(' http://www.linkedin.com/shareArticle?url=[http://fartas.com.tr/?sayfa=alatarimDetay&id=<%=request("id")%>]','_blank','width=350 height=150');" href="#"><i class="flaticon-linkedin"></i></a></li>
                                    
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            
        </div>
    </section>