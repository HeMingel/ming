<%--
  Created by IntelliJ IDEA.
  User: Ming
  Date: 2017-5-16
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false"%> <!--支持EL表达式，不设的话，EL表达式不会解析-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Home</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/static/images/favicon.ico" media="screen" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- load stylesheets -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">                                  <!-- Bootstrap style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/hero-slider-style.css">                              <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/magnific-popup.css">                                 <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/templatemo-style.css">                               <!-- Templatemo style -->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<!-- load JS files -->
<script src="<%=request.getContextPath()%>/static/js/jquery-1.11.3.min.js"></script> <!-- jQuery (https://jquery.com/download/) -->
<script src="<%=request.getContextPath()%>/static/js/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) -->
<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
<script src="<%=request.getContextPath()%>/static/js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
<script src="<%=request.getContextPath()%>/static/js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->

<body>

<!-- Content -->
<div class="cd-hero">

    <!-- Navigation -->
    <div class="cd-slider-nav">
        <nav class="navbar">

            <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                &#9776;
            </button>
            <div class="collapse navbar-toggleable-sm text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                <ul class="nav navbar-nav">
                    <li class="nav-item active selected">
                        <a class="nav-link" href="#0" data-no="1">Intro <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#0" data-no="2">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#0" data-no="3">Album</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#0" data-no="4">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#0" data-no="5">Contact</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

    <ul class="cd-hero-slider">  <!-- autoplay -->
        <li class="selected">
            <div class="cd-full-width">
                <div class="container-fluid js-tm-page-content tm-page-1" data-page-no="1">

                    <div class="row">

                        <div class="col-xs-12">
                            <i class="fa fa-4x fa-camera tm-icon"></i>
                            <h2 class="tm-site-name">Howdy</h2>
                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">
                                Flat design used <a rel="nofollow" href="https://codyhouse.co/gem/hero-slider/"
                                                     target="_blank">Hero Slider</a> for left and right page transitions.
                                Responsiveness is based on <a rel="nofollow" href="http://getbootstrap.com/" target="_blank">
                                Bootstrap</a> 4 alpha 2. Images are taken from <a rel="nofollow" href="https://unsplash.com/"
                                                                                  target="_blank">Unsplash</a>. This web
                                template is provided by <a href="https://plus.google.com/+templatemo" target="_blank">
                                templatemo</a> for free of charge.</p>
                                <p class="tm-text">Mauris eros lacus, sollicitudin sit amet lacinia et, vehicula bibendum
                                    felis. Pellentesque in quam iaculis erat iaculis lacinia. Donec sagittis sapien odio,
                                    a sodales velit elementum nec.</p>
                            </div>
                        </div>

                    </div>

                </div>
            </div> <!-- .cd-full-width -->
        </li>

        <li>
            <div class="cd-full-width">

                <div class="container-fluid js-tm-page-content" data-page-no="2">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="tm-2-col-container">

                                <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox">
                                    <h2 class="tm-text-title">Lorem ipsum dolor</h2>
                                    <p class="tm-text">Quisque sagittis quam tortor, sit amet posuere justo tempor non. Cras tempus, eros vel ultrices aliquam, velit tortor sodales risus, ac facilisis lectus tortor eget neque.</p>
                                    <p class="tm-text">Nam auctor dui ante. Curabitur tristique nec ligula ac semper. Nunc eu leo sit amet elit condimentum consectetur.</p>
                                </div>

                                <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox">
                                    <h2 class="tm-text-title">联系我</h2>
                                    <p class="tm-text">
                                        Donec sagittis sapien odio, a sodales velit elementum nec. Donec feugiat purus a bibendum hendrerit.</p>
                                    <p class="tm-text">
                                        新浪微博:<a href="http://weibo.com/u/2340219674" >何Mingel</a><br>QQ:247226521
                                    </p>


                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div> <!-- .cd-full-width -->

        </li>

        <!-- Page 3 -->
        <li>

            <div class="cd-full-width">

                <div class="container-fluid js-tm-page-content" data-page-no="3">

                    <div class="row tm-img-gallery">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <a href="<%=request.getContextPath()%>/static/images/tm-img-01-tn.jpg">
                                <img src="<%=request.getContextPath()%>/static/images/tm-img-01-tn.jpg" alt="Image" class="img-fluid tm-img">
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <a href="<%=request.getContextPath()%>/static/images/tm-img-02.jpg">
                                <img src="<%=request.getContextPath()%>/static/images/tm-img-02-tn.jpg" alt="Image" class="img-fluid tm-img">
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <a href="<%=request.getContextPath()%>/static/images/tm-img-03.jpg">
                                <img src="<%=request.getContextPath()%>/static/images/tm-img-03-tn.jpg" alt="Image" class="img-fluid tm-img">
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <a href="<%=request.getContextPath()%>/static/images/tm-img-04.jpg">
                                <img src="<%=request.getContextPath()%>/static/images/tm-img-04-tn.jpg" alt="Image" class="img-fluid tm-img">
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <a href="<%=request.getContextPath()%>/static/images/tm-img-05.jpg">
                                <img src="<%=request.getContextPath()%>/static/images/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <a href="<%=request.getContextPath()%>/static/images/tm-img-06.jpg">
                                <img src="<%=request.getContextPath()%>/static/images/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">
                            </a>
                        </div>
                    </div>
                </div>
                </div>



        </li>

        <li>  <!-- class="cd-bg-video" -->
            <div class="js-tm-page-content" data-page-no="4">

                <div class="cd-bg-video-wrapper" data-video="video/sunset-loop">
                    <!-- video element will be loaded using jQuery -->
                </div> <!-- .cd-bg-video-wrapper -->

            </div>

        </li>

        <li>
            <div class="cd-full-width">

                <div class="container-fluid js-tm-page-content" data-page-no="5">

                    <div class="tm-contact-page">

                        <div class="row">

                            <div class="col-xs-12">

                                <h2 class="tm-section-title">Contact Us</h2>
                                <p class="tm-text tm-font-w-400 m-b-3">Pellentesque in quam iaculis erat iaculis lacinia. Donec sagittis sapien odio, a sodales velit elementum nec. Donec feugiat purus a bibendum hendreit.</p>

                            </div>

                        </div>

                        <!-- contact form -->
                        <div class="row">
                            <form action="index.html" method="post" class="tm-contact-form">

                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                    <div class="form-group">
                                        <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Your Name"  required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Your Email"  required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" id="contact_subject" name="contact_subject" class="form-control" placeholder="Subject"  required/>
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                    <div class="form-group">
                                        <textarea id="contact_message" name="contact_message" class="form-control" rows="5" placeholder="Your message" required></textarea>
                                    </div>
                                </div>

                                <div class="col-xs-12">
                                    <button type="submit" class="pull-xs-right tm-submit-btn">Submit</button>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div> <!-- .cd-full-width -->
        </li>
    </ul> <!-- .cd-hero-slider -->

    <footer class="tm-footer">

        <div class="tm-social-icons-container">
            <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
        </div>

        <p class="tm-copyright-text">Copyright &copy; 2016 Your Company - More Templates <a href="#" target="_blank" title="">test</a>

    </footer>

</div> <!-- .cd-hero -->


<!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
<div id="loader-wrapper">

    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>

</div>

<script>

    function adjustHeightOfPage(pageNo) {

        // Get the page height
        var totalPageHeight = 15 + $('.cd-slider-nav').height()
                + $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height() + 160
                + $('.tm-footer').height();

        // Adjust layout based on page height and window height
        if(totalPageHeight > $(window).height())
        {
            $('.cd-hero-slider').addClass('small-screen');
            $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
        }
        else
        {
            $('.cd-hero-slider').removeClass('small-screen');
            $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
        }

    }

    /*
     Everything is loaded including images.
     */
    $(window).load(function(){

        adjustHeightOfPage(1); // Adjust page height

        /* Gallery pop up
         -----------------------------------------*/
        $('.tm-img-gallery').magnificPopup({
            delegate: 'a', // child items selector, by clicking on it popup will open
            type: 'image',
            gallery:{enabled:true}
        });

        /* Collapse menu after click
         -----------------------------------------*/
        $('#tmNavbar a').click(function(){
            $('#tmNavbar').collapse('hide');

            adjustHeightOfPage($(this).data("no")); // Adjust page height
        });

        /* Browser resized
         -----------------------------------------*/
        $( window ).resize(function() {
            var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");
            adjustHeightOfPage( currentPageNo );
        });

        // Remove preloader
        // https://ihatetomatoes.net/create-custom-preloading-screen/
        $('body').addClass('loaded');

    });

</script>

</body>
</html>

