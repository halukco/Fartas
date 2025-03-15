<!DOCTYPE html>
<html lang="tr">

<head>
    <!--#include file = "style.asp"-->
    <!--#include file = "guvenlik.asp"-->
    <meta charset="windows-1254">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery.min.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/animate.min.css">

    <link rel="stylesheet" href="css/flaticon.css">

    <link rel="stylesheet" href="css/meanmenu.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="css/odometer.css">

    <link rel="stylesheet" href="css/magnific-popup.min.css">

    <link rel="stylesheet" href="css/nice-select.css">

    <link rel="stylesheet" href="css/fontawesome.min.css">

    <link rel="stylesheet" href="css/style5.css">
    <link rel="stylesheet" href="css/ekstra.css">

    <link rel="stylesheet" href="css/responsive.css">
    
    <title>Fartaş Mühendislik İnşaat Enerji | Denizli Güneş Enerji Panelleri, Denizli Solar Enerji, Denizli Güneş Enerji Santrali</title>
    <link rel="icon" type="image/png" href="images/favicon1.png">
</head>

<body>

    <div class="preloader">
        <div class="spinner">
            <div class="rect1"></div>
            <div class="rect2"></div>
            <div class="rect3"></div>
            <div class="rect4"></div>
            <div class="rect5"></div>
        </div>
    </div>


    <header class="header header-style-three">
        <div class="header-middle">
            <div class="container">
                <div class="row h-100 align-items-center">
                    <div class="col-lg-5">
                        <div class="logo">
                            <a href="./">
                                <img src="images/logo.png" alt="logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="header-information">
                            <ul>
                                <li>
                                    <div class="icon">
                                        <i style="color:#ff4f00" class="flaticon-mail"></i>
                                    </div>
                                    <h5><a style="color: #000;" href="./?sayfa=iletisim#form">E-Mail:</a></h5>
                                    <p><a href="./?sayfa=iletisim#form">info@fartas.com.tr</a></p>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i style="color: #ff4f00;" class="flaticon-phone"></i>
                                    </div>
                                    <h5>Telefon:</h5>
                                    <p><a href="tel:0258 265 39 69">0258 265 39 69</a></p>
                                </li>
                                <li>
                                    <a href="./?sayfa=iletisim" class="btn btn-primary"><i class="flaticon-edit"></i> Bize Ulaşın<i class="flaticon-right"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar-area">
            <div class="induxtro-mobile-nav">
                <div class="logo">
                    <a href="./"><img src="images/logo.png" alt="logo"></a>
                </div>
            </div>
            <div class="induxtro-nav">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a href="./" class="nav-link<% if request("sayfa") = "" Or request("sayfa") = "main" then%> active <% end if%>">Ana Sayfa</a></li>
                                <li class="nav-item"><a href="#" class="nav-link<% if request("sayfa") = "kurumsal" Or request("sayfa") = "ekibimiz" then%> active <% end if%>">Kurumsal </a>
                                    <ul class="dropdown-menu">
                                        <% 
                                           set kurumsal = kayitSeti ("SELECT * from menuler where id = 53")
                                           set kurumsalmenuler = kayitSeti ("SELECT * from menuler where menuId LIKE "&kurumsal("id")&" ORDER BY sira ASC")
                                           while NOT kurumsalmenuler.eof
                                        %>
                                        <li class="nav-item"><a href="./?sayfa=kurumsal&id=<%=kurumsalmenuler("id")%>" class="nav-link"><%=kurumsalmenuler("menu_adi")%></a></li>
                                        <%
                                           kurumsalmenuler.movenext
                                           wEnd
                                        %>
                                       
                                    </ul>
                                </li>
                             
                                <li class="nav-item"><a href="#" class="nav-link<% if request("sayfa") = "muhendislik" then%> active <% end if%>">Mühendislik </a>
                                    <ul class="dropdown-menu">
                                        <% set muhendislik = kayitSeti ("SELECT * from menuler where id = 104")
                                           set muhendislikkategoriler = kayitSeti ("SELECT * from menuler where menuId LIKE "&muhendislik("id")&" order by sira asc")
                                           while not muhendislikkategoriler.eof

                                        %>
                                        <li class="nav-item"><a href="./?sayfa=muhendislik&id=<%=muhendislikkategoriler("id")%>" class="nav-link"><%=muhendislikkategoriler("menu_adi")%></a></li>
                                        <%
                                        muhendislikkategoriler.movenext
                                        wEnd
                                        %>
                                    </ul>
                                </li>
                            
                                <li class="nav-item"><a href="#" class="nav-link<% if request("sayfa") = "enerji"  Or request("sayfa") = "enerjiDetay" then%> active <% end if%>">Enerji </a>
                                    <ul class="dropdown-menu">
                                        <%
                                        SET enerji = kayitSeti ("SELECT * from menuler where mode LIKE '3' ORDER BY sira ASC")
                                        while not enerji.eof
                                        %>
                                        <li class="nav-item"><a href="./?sayfa=enerji&id=<%=enerji("id")%>" class="nav-link"><%=enerji("menu_adi")%></a></li>
                                        <%
                                        enerji.movenext
                                        wEnd
                                        %>
                                    </ul>
                                </li>
                                <li class="nav-item"><a href="#" class="nav-link<% if request("sayfa") = "insaat"  Or request("sayfa") = "insaatDetay" then%> active <% end if%>">İnşaat </a>
                                    <ul class="dropdown-menu">
                                        <%
                                        SET insaat = kayitSeti ("SELECT * from menuler where mode LIKE '4' ORDER BY sira ASC")
                                        while not insaat.eof
                                        %>
                                        <li class="nav-item"><a href="./?sayfa=insaat&id=<%=insaat("id")%>" class="nav-link"><%=insaat("menu_adi")%></a></li>
                                        <%
                                        insaat.movenext
                                        wEnd
                                        %>
                                    </ul>
                                </li>
                                <li class="nav-item"><a href="#" class="nav-link<% if request("sayfa") = "hayvancilik"  Or request("sayfa") = "hayvancilikDetay" then%> active <% end if%>">Hayvancılık </a>
                                    <ul class="dropdown-menu">
                                        <%
                                        SET alatarim = kayitSeti ("SELECT * from menuler where mode LIKE '7' ORDER BY sira ASC")
                                        while not alatarim.eof
                                        %>
                                        <li class="nav-item"><a href="./?sayfa=hayvancilik&id=<%=alatarim("id")%>" class="nav-link"><%=alatarim("menu_adi")%></a></li>
                                        <%
                                        alatarim.movenext
                                        wEnd
                                        %>
                                    </ul>
                                </li>
                                <li class="nav-item"><a href="#" class="nav-link<% if request("sayfa") = "grupSirketleri" then%> active <% end if%>">Grup Şirketleri </a>
                                    <ul class="dropdown-menu">
                                        <%
                                        SET istiraklerimiz = kayitSeti ("SELECT * from menuler where mode LIKE '8' ORDER BY sira ASC")
                                        while not istiraklerimiz.eof
                                        %>
                                        <li class="nav-item"><a href="./?sayfa=grupSirketleri&id=<%=istiraklerimiz("id")%>" class="nav-link"><%=istiraklerimiz("menu_adi")%></a></li>
                                        <%
                                        istiraklerimiz.movenext
                                        wEnd
                                        %>
                                    </ul>
                                </li>
                                <li class="nav-item"><a href="./?sayfa=bizdenHaberler" class="nav-link<% if request("sayfa") = "bizdenHaberler" Or request("sayfa") = "haberlerDetay" then%> active <% end if%>">Bizden Haberler</a></li>
                                <li class="nav-item"><a href="./?sayfa=iletisim" class="nav-link<% if request("sayfa") = "iletisim" then%> active <% end if%>">İletişim</a></li>
                            </ul>
                           
                        </div>
                    </nav>
                </div>
              
            </div>
        </div>
    </header>


<!--#include file = "actions.asp"-->


    <footer class="footer-area ptb-100 pb-0">
        <div class="container">
            <div class="row">
              
                <div class="col-lg-2 col-md-6">
                    <div class="single-footer-widget ml-3">
                        <h3>Mühendislik</h3>
                        <ul class="list">
                            <%
                            set muhendislik = kayitSeti ("SELECT * from menuler where id = 104")
                            set muhendislikAlt = kayitSeti ("SELECT * from menuler where menuId LIKE '"&muhendislik("id")&"' order by sira asc")
                            while not muhendislikAlt.eof
                            %>
                           <li><a href="./?sayfa=muhendislik&id=<%=muhendislikAlt("id")%>"><%=muhendislikAlt("menu_adi")%></a> </li>
                         
                            <%
                            muhendislikAlt.movenext
                            wEnd
                            %>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="single-footer-widget ml-3">
                        <h3>Enerji</h3>
                        <ul class="list">
                            <%
                            set enerji = kayitSeti ("SELECT * from menuler where mode LIKE '3' ORDER BY sira ASC")
                            
                            while not enerji.eof
                            %>
                           <li><a href="./?sayfa=enerji&id=<%=enerji("id")%>"><%=enerji("menu_adi")%></a> </li>
                         
                            <%
                            enerji.movenext
                            wEnd
                            %>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="single-footer-widget ml-3">
                        <h3>İnşaat</h3>
                        <ul class="list">
                            <%
                            set insaat = kayitSeti ("SELECT * from menuler where mode LIKE '4' ORDER BY sira ASC")
                            
                            while not insaat.eof
                            %>
                           <li><a href="./?sayfa=insaat&id=<%=insaat("id")%>"><%=insaat("menu_adi")%></a> </li>
                         
                            <%
                            insaat.movenext
                            wEnd
                            %>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="single-footer-widget ml-3">
                        <h3>Hayvancılık</h3>
                        <ul class="list">
                            <%
                            set hayvancilik = kayitSeti ("SELECT * from menuler where mode LIKE '7' ORDER BY sira ASC")
                            
                            while not hayvancilik.eof
                            %>
                           <li><a href="./?sayfa=hayvancilik&id=<%=hayvancilik("id")%>"><%=hayvancilik("menu_adi")%></a> </li>
                         
                            <%
                            hayvancilik.movenext
                            wEnd
                            %>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="single-footer-widget ml-3">
                        <h3>Grup Şirketleri</h3>
                        <ul class="list">
                            <%
                            set istiraklerimiz = kayitSeti ("SELECT * from menuler where mode LIKE '8' ORDER BY sira ASC")
                            
                            while not istiraklerimiz.eof
                            %>
                           <li><a href="./?sayfa=grupSirketleri&id=<%=istiraklerimiz("id")%>"><%=istiraklerimiz("menu_adi")%></a> </li>
                         
                            <%
                            istiraklerimiz.movenext
                            wEnd
                            %>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="single-footer-widget">
                        <h3>İletişim</h3>
                        <ul class="contact-info">
                            <li><span>Adres:</span><a href="https://www.google.com/maps?ll=37.775604,29.085092&z=16&t=m&hl=tr&gl=TR&mapclient=embed&cid=4800375743927590540" target="_blank"> Sırakapılar Mh. Mimar Sinan Cad.No:6/1 DENİZLİ</a></li>
                            <li><span>E-Mail:</span> <a href="./?sayfa=iletisim#form">info@fartas.com.tr</a>
                            </li>
                            <li><span>Telefon:</span><br> <a href="tel:0258 265 39 69">0258 265 39 69</a><br> <a href="tel:0532 744 10 37">0532 744 10 37</a></li>
                        </ul>
                        <ul class="social">
                            <li><a style="background-color: #3B5998;" href="https://www.facebook.com/Farta%C5%9F-1434786626759040/" target="_blank"><i class="flaticon-facebook"></i></a></li>
                            <li><a style="background-color: #1c9cea;" href="#"><i class="flaticon-twitter"></i></a></li>
                            
                            <li><a style="background-color: #d52681;" href="https://www.instagram.com/fartas.co/" target="_blank"><i class="flaticon-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-area">
            <div class="container">
                <div class="row h-100 align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <p>Web Tasarım & Yazılım <a href="https://www.webkent.com.tr" target="_blank">Webkent Yazılım</a></p>
                    </div>
                   
                </div>
            </div>
        </div>
    </footer>

    <div class="go-top"><i class="flaticon-chevron"></i></div>

    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.meanmenu.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.appear.js"></script>
    <script src="js/odometer.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>