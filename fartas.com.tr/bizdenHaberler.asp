<section class="page-title-areailetisim">
    <div class="container">
        <h1>Bizden Haberler</h1>
        <ul>
            <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
            <li>Bizden Haberler</li>
        </ul>
    </div>
</section>
<section class="blog-area ptb-100 pb-0 bg-style">
    <div class="container">
        <div class="section-title">
            <div class="row h-100 align-items-center text-center">
                <div class="col-lg-12 col-md-12">
                   
                    <h2>Bizden Haberler</h2>
                  <center>  <div class="bar"></div></center>
                </div>
               
            </div>
        </div>
        <div class="row">
            <% set bizdenhaberler = kayitSeti ("SELECT * from menuler where mode LIKE '5' ORDER BY sira ASC")
            while NOT bizdenhaberler.eof
            set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&bizdenhaberler("id")&"'")

            %>
            <div class="col-lg-4 col-md-6">
                <div class="single-blog-post-box">
                    <div class="blog-image">
                        <a href="./?sayfa=haberlerDetay&id=<%=bizdenhaberler("id")%>">
                            <img src="icerikResimler/<%=icerikResimler("resim_adi")%>"></a>
                    </div>
                    <div class="blog-post-content">
                        
                        <h3><a href="./?sayfa=haberlerDetay&id=<%=bizdenhaberler("id")%>"><%=bizdenhaberler("menu_adi")%></a></h3>
                       
                    </div>
                </div>
            </div>
            <%
            bizdenhaberler.movenext
            wEnd
            %>
        </div>
    </div>
</section>