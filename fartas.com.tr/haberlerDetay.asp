<% 
set haberlerDetay = kayitSeti ("SELECT * from menuler where id = "&guvenlik(request("id"))&"")
set icerikResimler = kayitSeti ("SELECT * from icerikResimler where menu_id LIKE '"&cStr(haberlerDetay("id"))&"'")
%>
<style>
    .topleft
   {
       position: absolute; 
       top: 45%;
       left: 49%;
   }
@media(max-width:480px)
{
   .topleft
   {
       position: absolute; 
       top: 38%;
       left: 42%;
   }
}
</style>
    <section class="page-title-areailetisim">
        <div class="container">
            <h1>Bizden Haberler</h1>
            <ul>
                <li><a href="./"><i class="flaticon-grid"></i> Ana Sayfa</a></li>
                <li><a href="./?sayfa=bizdenHaberler">Bizden Haberler</a></li>
                <li><%=haberlerDetay("menu_adi")%></li>
            </ul>
        </div>
    </section>

    <% if haberlerDetay("bizdenHaberlervideo") = "0" then%>
    <section class="blog-details-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="blog-details">
                        <div class="article-content">
                           
                            <h3><%=haberlerDetay("menu_adi")%></h3>
                            
                            <p><%=haberlerDetay("yazi")%></p>
                            <br>
                           <center> <a href="icerikResimler/<%=icerikResimler("resim_adi")%>" class="popup-btn">
                            <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="">
                            </a>
                        </center>
                        </div>
                    </div>
               
                </div>
              
            </div>
        </div>
    </section>
<% else %>
    <section class="blog-details-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="blog-details">
                        <div class="article-content">
                           
                            <h3><%=haberlerDetay("menu_adi")%></h3>
                            
                            <p><%=haberlerDetay("yazi")%></p>
                            <br>
                            <div style="position: relative;" class="video-btn">
                                <img src="icerikResimler/<%=icerikResimler("resim_adi")%>" alt="">
                                <a href="https://www.youtube.com/watch?v=<%=haberlerDetay("videoLink")%>" class="popup-youtube topleft">
                                    <i class="flaticon-circular"></i></a>
                                </div>
                        </div>
                    </div>
               
                </div>
              
            </div>
        </div>
    </section>
    <% end if%>
