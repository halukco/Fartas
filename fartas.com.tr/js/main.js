(function($) {
    "use strict";
    jQuery('.mean-menu').meanmenu({
        meanScreenWidth: "991"
    });
    $(window).on('scroll', function() {
        if ($(this).scrollTop() > 120) {
            $('.induxtro-nav').addClass("is-sticky");
        } else {
            $('.induxtro-nav').removeClass("is-sticky");
        }
    });
    $('.home-slides').owlCarousel({
        loop: true,
        nav: false,
        dots: false,
        items: 1,
        smartSpeed: 2000,
        animateOut: 'slideOutUp',
        autoplayHoverPause: true,
        animateIn: 'fadeInUp',
        autoplay: true,
    });
    $(".home-slides").on("translate.owl.carousel", function() {
        $(".main-banner h1").removeClass("animated fadeInUp").css("opacity", "0");
        $(".main-banner p").removeClass("animated zoomIn").css("opacity", "0");
        $(".main-banner .learn-more-btn").removeClass("animated fadeInDown").css("opacity", "0");
        $(".main-banner .banner-image").removeClass("animated fadeInUp").css("opacity", "0");
    });
    $(".home-slides").on("translated.owl.carousel", function() {
        $(".main-banner h1").addClass("animated fadeInUp").css("opacity", "1");
        $(".main-banner p").addClass("animated zoomIn").css("opacity", "1");
        $(".main-banner .learn-more-btn").addClass("animated fadeInDown").css("opacity", "1");
        $(".main-banner .banner-image").addClass("animated fadeInUp").css("opacity", "1");
    });
    $(".search-popup-icon").on('click', function() {
        $('.searchBoxTop').toggleClass('active');
    });
    $(".searchClose").on('click', function() {
        $('.searchBoxTop').removeClass('active');
    });
    $('.testimonials-slides').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        margin: 30,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        autoplay: true,
        navText: ["<i class='flaticon-back'></i>", "<i class='flaticon-right-arrow'></i>"],
        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 1
            },
            1024: {
                items: 2
            },
            1200: {
                items: 2
            }
        }
    });
    $('.testimonials-slider').owlCarousel({
        loop: true,
        nav: false,
        dots: false,
        margin: 30,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        autoplay: true,
        navText: ["<i class='flaticon-back'></i>", "<i class='flaticon-right-arrow'></i>"],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1200: {
                items: 2
            }
        }
    });
    $('.popup-youtube').magnificPopup({
        disableOn: 320,
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,
        fixedContentPos: false
    });
    $('.projects-slides').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        margin: 30,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        autoplay: true,
        navText: ["<i class='flaticon-back'></i>", "<i class='flaticon-right-arrow'></i>"],
        responsive: {
            0: {
                items: 1
            },
            576: {
                items: 2
            },
            768: {
                items: 2
            },
            1200: {
                items: 4
            }
        }
    });
    $('.team-slider').owlCarousel({
        loop: true,
        nav: false,
        dots: false,
        margin: 30,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        autoplay: true,
        navText: ["<i class='flaticon-back'></i>", "<i class='flaticon-right-arrow'></i>"],
        responsive: {
            0: {
                items: 1
            },
            576: {
                items: 2
            },
            768: {
                items: 2
            },
            1024: {
                items: 3
            },
            1200: {
                items: 5
            }
        }
    });
    $('.popup-btn').magnificPopup({
        type: 'image',
        gallery: {
            enabled: true
        }
    });
    $('.partner-slides').owlCarousel({
        loop: true,
        nav: false,
        dots: false,
        margin: 30,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        autoplay: true,
        navText: ["<i class='flaticon-back'></i>", "<i class='flaticon-right-arrow'></i>"],
        responsive: {
            0: {
                items: 2
            },
            475: {
                items: 3
            },
            576: {
                items: 4
            },
            1024: {
                items: 5
            }
        }
    });
    $('.team-slides').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        margin: 30,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        autoplay: true,
        navText: ["<i class='flaticon-back'></i>", "<i class='flaticon-right-arrow'></i>"],
        responsive: {
            0: {
                items: 1
            },
            576: {
                items: 2
            },
            768: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    });
    $(function() {
        $('.accordion').find('.accordion-title').on('click', function() {
            $(this).toggleClass('active');
            $(this).next().slideToggle('fast');
            $('.accordion-content').not($(this).next()).slideUp('fast');
            $('.accordion-title').not($(this)).removeClass('active');
        });
    });
    $('.blog-slides').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        margin: 30,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        autoplay: true,
        navText: ["<i class='flaticon-back'></i>", "<i class='flaticon-right-arrow'></i>"],
        responsive: {
            0: {
                items: 1
            },
            576: {
                items: 2
            },
            768: {
                items: 2
            },
            1200: {
                items: 4
            }
        }
    });
    $('.services-image-slides').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        items: 1,
        smartSpeed: 2000,
        autoplayHoverPause: true,
        autoplay: true,
    });
    if ($('.progress-line').length) {
        $('.progress-line').appear(function() {
            var el = $(this);
            var percent = el.data('width');
            $(el).css('width', percent + '%');
        }, {
            accY: 0
        });
    }
    if ($('.count-box').length) {
        $('.count-box').appear(function() {
            var $t = $(this),
                n = $t.find(".count-text").attr("data-stop"),
                r = parseInt($t.find(".count-text").attr("data-speed"), 10);
            if (!$t.hasClass("counted")) {
                $t.addClass("counted");
                $({
                    countNum: $t.find(".count-text").text()
                }).animate({
                    countNum: n
                }, {
                    duration: r,
                    easing: "linear",
                    step: function() {
                        $t.find(".count-text").text(Math.floor(this.countNum));
                    },
                    complete: function() {
                        $t.find(".count-text").text(this.countNum);
                    }
                });
            }
        }, {
            accY: 0
        });
    }
    $("#tabs li").on("click", function() {
        var tab = $(this).attr("id");
        if ($(this).hasClass("inactive")) {
            $(this).removeClass("inactive");
            $(this).addClass("active");
            $(this).siblings().removeClass("active").addClass("inactive");
            $("#" + tab + "_content").addClass("show");
            $("#" + tab + "_content").siblings("div").removeClass("show");
        }
    });
    $(".product-img-slides").owlCarousel({
        items: 1,
        nav: false,
        dots: true,
        touchDrag: false,
        mouseDrag: true,
        autoplay: true,
        smartSpeed: 500,
        loop: true,
        autoplayHoverPause: true,
        navText: ["<i class='flaticon-back'></i>", "<i class='flaticon-right-arrow'></i>"],
    });
    $('select').niceSelect();
    $(function() {
        $(window).on('scroll', function() {
            var scrolled = $(window).scrollTop();
            if (scrolled > 300) $('.go-top').fadeIn('slow');
            if (scrolled < 300) $('.go-top').fadeOut('slow');
        });
        $('.go-top').on('click', function() {
            $("html, body").animate({
                scrollTop: "0"
            }, 100);
        });
    });
    $(function() {
        $('.shorting').mixItUp();
    });

    function makeTimer() {
        var endTime = new Date("April 26, 2025 17:00:00 PDT");
        var endTime = (Date.parse(endTime)) / 1000;
        var now = new Date();
        var now = (Date.parse(now) / 1000);
        var timeLeft = endTime - now;
        var days = Math.floor(timeLeft / 86400);
        var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
        var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600)) / 60);
        var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));
        if (hours < "10") {
            hours = "0" + hours;
        }
        if (minutes < "10") {
            minutes = "0" + minutes;
        }
        if (seconds < "10") {
            seconds = "0" + seconds;
        }
        $("#days").html(days + "<span>Days</span>");
        $("#hours").html(hours + "<span>Hours</span>");
        $("#minutes").html(minutes + "<span>Minutes</span>");
        $("#seconds").html(seconds + "<span>Seconds</span>");
    }
    setInterval(function() {
        makeTimer();
    }, 1000);
    $(".newsletter-form").validator().on("submit", function(event) {
        if (event.isDefaultPrevented()) {
            formErrorSub();
            submitMSGSub(false, "Please enter your email correctly.");
        } else {
            event.preventDefault();
        }
    });

    function callbackFunction(resp) {
        if (resp.result === "success") {
            formSuccessSub();
        } else {
            formErrorSub();
        }
    }

    function formSuccessSub() {
        $(".newsletter-form")[0].reset();
        submitMSGSub(true, "Thank you for subscribing!");
        setTimeout(function() {
            $("#validator-newsletter").addClass('hide');
        }, 4000)
    }

    function formErrorSub() {
        $(".newsletter-form").addClass("animated shake");
        setTimeout(function() {
            $(".newsletter-form").removeClass("animated shake");
        }, 1000)
    }

    function submitMSGSub(valid, msg) {
        if (valid) {
            var msgClasses = "validation-success";
        } else {
            var msgClasses = "validation-danger";
        }
        $("#validator-newsletter").removeClass().addClass(msgClasses).text(msg);
    }
    $(".newsletter-form").ajaxChimp({
        url: "https://envytheme.us20.list-manage.com/subscribe/post?u=60e1ffe2e8a68ce1204cd39a5&amp;id=42d6d188d9",
        callback: callbackFunction
    });
    $('.odometer').appear(function(e) {
        var odo = $(".odometer");
        odo.each(function() {
            var countNumber = $(this).attr("data-count");
            $(this).html(countNumber);
        });
    });
    jQuery(window).on('load', function() {
        $('.preloader').fadeOut();
    });
}(jQuery));