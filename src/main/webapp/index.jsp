<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trips_2</title>
    <link rel="stylesheet" href="resources/css/swiper.min.css">
    <script src="https://unpkg.com/swiper/js/swiper.js"></script>
    <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/common.css">
    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/jquery-3.4.1.min.js"></script>
</head>
<body>
    <div class="shadow"></div>
    <header>
        <div class="container">
            <div class="header">
                <img src="resources/img/logo.png" class="logo" alt="logo">
                <nav class="menu-list">
                    <a href="index.jsp" class="menu-link">Home</a>
                    <a href="about.html" class="menu-link">ABOUT US</a>
                    <a href="#" class="menu-link">BLOG</a>
                    <a href="portfolio.html" class="menu-link">PORTFOLIO</a>
                    <a href="contactus.html" class="menu-link">CONTACT US</a>
                    <input class="sign-button menu-link" type="button" value="SIGN IN" onclick="disp(document.getElementById('form'))" />
                </nav>
            </div>
        </div>
    </header>

    <main>
        <div class="container">
            <div class="main-content">
                <div id="formAsd">
                    <form id="form" method="post" style="display:none;">
                        <input type="text" name="user" class="input-form login dws-input" placeholder="login">
                        <input type="password" name="pwd" class="input-form password dws-input" placeholder="password">
                        <p id="update" style="color:red;"></p>
                        <input type="submit" class="submit-btn sign-in" value="Sign in" formaction="login">
                        <input type="submit" class="submit-btn sign-up" value="Sign up" formaction="registration.html">

                    </form>
                </div>
                <!-- Slider main container -->
                <div class="swiper-container gallery-top">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        <div class="swiper-slide">
                            <div class="slide-content">
                                <div class="slide-info">
                                    <h2 class="slide-caption">SLIDE ONE</h2>
                                <p class="slide-description">Lorem ipsum dolor sit amet,
                                     malorum recteque reprehendunt ea vel. Urbanitas
                                     adolescens vim te, per at tritani aperiri. Adhuc
                                     invenire convenire his ea. </p>
                                </div>
                            </div>
                            <img src="resources/img/slider-1.png" class="slide-img" alt="">
                        </div>
                        <div class="swiper-slide">
                            <div class="slide-content">
                                <div class="slide-info">
                                    <h2 class="slide-caption">SLIDE TWO</h2>
                                    <p class="slide-description">Lorem ipsum dolor sit amet,
                                        malorum recteque reprehendunt ea vel. Urbanitas
                                        adolescens vim te, per at tritani aperiri. Adhuc
                                        invenire convenire his ea. </p>
                                </div>
                            </div>
                            <img src="resources/img/slide-2.jpg" class="slide-img" alt="">
                        </div>
                        <div class="swiper-slide">
                            <div class="slide-content">
                                <div class="slide-info">
                                    <h2 class="slide-caption">SLIDE THREE</h2>
                                    <p class="slide-description">Lorem ipsum dolor sit amet,
                                        malorum recteque reprehendunt ea vel. Urbanitas
                                        adolescens vim te, per at tritani aperiri. Adhuc
                                        invenire convenire his ea. </p>
                                </div>
                            </div>

                            <img src="resources/img/slide-3.jpg" class="slide-img" alt="">
                        </div>

                    </div>

                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>

                </div>
                <div class="swiper-container gallery-thumbs">
                    <div class="swiper-wrapper">
                      <div class="swiper-slide"><img src="resources/img/slider-1.png" class="slide-img" alt=""></div>
                      <div class="swiper-slide"><img src="resources/img/slide-2.jpg" class="slide-img" alt="">  </div>
                      <div class="swiper-slide"><img src="resources/img/slide-3.jpg" class="slide-img" alt=""> </div>
                    </div>
                  </div>


                <div class="more-info-links">
                    <div class="more-info-block">
                        <div class="block-header">
                            <img class="block-img" src="resources/img/gear.png" alt="">
                            <h2 class="block-caption">CHECK OUT MY LATEST PORTFOLIO ITEMS</h2>
                        </div>
                        <p class="block-info">Maecenas ipsum metus, semper hendrerit varius mattis,
                             congue sit amet tellus. Aliquam ullamcorper dui sed magna
                              posue re ut elementum enim rutrum. Nam mi erat, porta id
                              ultrices nec, pellentesque vel nunc. Cras varius fermentum
                               iaculis. Aenean sodales nibh non lectus tempor a interdum
                               justo ultricies.
                        </p>
                        <button class="more-button">More</button>
                    </div>
                    <div class="more-info-block">
                        <div class="block-header">
                            <img class="block-img" src="resources/img/checkMark.png" alt="">
                            <h2 class="block-caption">CHECK OUT MY LATEST PORTFOLIO ITEMS</h2>
                        </div>
                        <p class="block-info">Maecenas ipsum metus, semper hendrerit varius mattis,
                             congue sit amet tellus. Aliquam ullamcorper dui sed magna
                              posue re ut elementum enim rutrum. Nam mi erat, porta id
                              ultrices nec, pellentesque vel nunc. Cras varius fermentum
                               iaculis. Aenean sodales nibh non lectus tempor a interdum
                               justo ultricies.
                        </p>
                        <button class="more-button">More</button>
                    </div>
                    <div class="more-info-block">
                        <div class="block-header">
                            <img class="block-img" src="resources/img/acc.png" alt="">
                            <h2 class="block-caption">CHECK OUT MY LATEST PORTFOLIO ITEMS</h2>
                        </div>
                        <p class="block-info">Maecenas ipsum metus, semper hendrerit varius mattis,
                             congue sit amet tellus. Aliquam ullamcorper dui sed magna
                              posue re ut elementum enim rutrum. Nam mi erat, porta id
                              ultrices nec, pellentesque vel nunc. Cras varius fermentum
                               iaculis. Aenean sodales nibh non lectus tempor a interdum
                               justo ultricies.
                        </p>
                        <button class="more-button">More</button>
                    </div>
                </div>
                <div class="recent-articles">
                    <p class="resent-articles-caption">
                        RECENT articles
                        <img class="separate-line" src="resources/img/Line.png" alt="">
                    </p>
                    <div class="articles">
                        <div class="article-row">
                            <div class="article">
                                <img src="resources/img/fstWork.png" alt="" class="article-preview">
                                <div class="article-info">
                                    <h3 class="article-name">Brochure design</h3>
                                    <p class="article-date">June 15, 2017</p>
                                </div>
                            </div>
                            <div class="article">
                                <img src="resources/img/sndWork.png" alt="" class="article-preview">
                                <div class="article-info">
                                    <h3 class="article-name">Brochure design</h3>
                                    <p class="article-date">June 15, 2017</p>
                                </div>

                            </div>
                            <div class="article">
                                <img src="resources/img/thrdWork.png" alt="" class="article-preview">
                                <div class="article-info">
                                    <h3 class="article-name">Brochure design</h3>
                                    <p class="article-date">June 15, 2017</p>
                                </div>
                            </div>
                            <div class="article">
                                <img src="resources/img/fourthWork.png" alt="" class="article-preview">
                                <div class="article-info">
                                    <h3 class="article-name">Brochure design</h3>
                                    <p class="article-date">June 15, 2017</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="info-block">
                    <h3 class="info-block-title">ABOUT JETRO</h3>
                    <p class="info-block-text">Lorem ipsum dolor sit amet,
                         malorum recteque reprehendunt ea vel. Urbanitas
                         adolescens vim te, per at tritani aperiri. Adhuc
                         invenire convenire his ea. Id mei vitae denique,
                          in eam commodo veritus disputando.

                        Pro et erant delicata, eu vim essent imperdiet
                        accommodare, dictas deseruisse ius an. Solet everti
                         definitionem id ius, sonet oporteat cu vim.
                    </p>
                </div>
                <div class="info-block">
                    <h3 class="info-block-title">ABOUT JETRO</h3>
                    <p class="info-block-text">Lorem ipsum dolor sit amet,
                         malorum recteque reprehendunt ea vel. Urbanitas
                         adolescens vim te, per at tritani aperiri.<br><br> Adhuc
                         invenire convenire his ea. Id mei vitae denique,
                          in eam commodo veritus disputando.<br><br>
                        Pro et erant delicata, eu vim essent imperdiet
                        accommodare, dictas deseruisse ius an. Solet everti
                         definitionem id ius, sonet oporteat cu vim.
                    </p>
                </div>
                <div class="info-block">
                    <h3 class="info-block-title">ABOUT JETRO</h3>
                    <p class="info-block-text">Lorem ipsum dolor sit amet,
                         malorum recteque reprehendunt ea vel. Urbanitas
                         adolescens vim te, per at tritani aperiri. Adhuc
                         invenire convenire his ea.<br> <br>
                        Pro et erant delicata, eu vim essent imperdiet
                        accommodare, dictas deseruisse ius an..
                    </p>
                    <div class="social">
                        <a href="#" class="social-link">
                            <img src="resources/img/facebook.png" alt="" class="social-img">
                        </a>
                        <a href="#" class="social-link">
                            <img src="resources/img/twitter.png" alt="" class="social-img">
                        </a>
                        <a href="#" class="social-link">
                            <img src="resources/img/email.png" alt="" class="social-img">
                        </a>
                        <a href="#" class="social-link">
                            <img src="resources/img/rss.png" alt="" class="social-img">
                        </a>
                        <a href="#" class="social-link">
                            <img src="resources/img/vimeo.png" alt="" class="social-img">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
    <script src="resources/js/swiper.min.js"></script>
    <script src="resources/js/script.js"></script>
    <script src="resources/js/form.js"></script>
</html>