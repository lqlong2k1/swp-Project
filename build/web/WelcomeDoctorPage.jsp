<%-- 
    Document   : WelcomePage
    Created on : Jun 26, 2022, 5:33:40 PM
    Author     : mitdo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link href="styles/layout.css" rel="stylesheet" type="text/css" media="all">
        <title>Booking care</title>
    </head>
    <body id="top">

        <!-- Top Background Image Wrapper -->
        <div class="bgded banner" style="background-image:url('images/demo/backgrounds/banner.jpg');"> 
            <!-- ################################################################################################ -->
            <div class="wrapper overlay row0">
                <div id="topbar" class="hoc clear">
                    <div class="fl_left"> 
                        <!-- ################################################################################################ -->
                        <ul class="nospace">
                            <li><i class="fas fa-phone rgtspace-5"></i> +00 (123) 456 7890</li>
                            <li><i class="far fa-envelope rgtspace-5"></i> Contact@bookingcare.com</li>
                        </ul>
                        <!-- ################################################################################################ -->
                    </div>
                    <div class="fl_right"> 
                        <!-- ################################################################################################ -->
                        <ul class="nospace">
                            <li><a href="WelcomeDoctorPage.jsp"><i class="fas fa-home"></i></a></li>
                            <li><a href="#" title="Help Centre"><i class="fas fa-life-ring"></i></a></li>
                            <li><a href="loginPage.jsp" title="Log out"><i class="fas fa-sign-in-alt"></i></a></li>
                            <li><a href="registerPage.jsp" title="Sign Up"><i class="fas fa-edit"></i></a></li>
                            <li id="searchform">
                                <div>
                                    <form action="#" method="post">
                                        <fieldset>
                                            <legend>Quick Search:</legend>
                                            <!--                                            <input type="text" placeholder="Enter search term">-->
                                            <input type="date" id="dateapp" name="dateapp" class="box">  
                                            <button type="submit"><i class="fas fa-search"></i></button>
                                        </fieldset>
                                    </form>
                                </div>
                            </li>
                        </ul>
                        <!-- ################################################################################################ -->
                    </div>
                </div>
            </div>
            <!-- ################################################################################################ -->
            <!-- ################################################################################################ -->
            <!-- ################################################################################################ -->
            <div class="wrapper row1">
                <header id="header" class="hoc clear">
                    <div id="logo" class="fl_left"> 
                        <!-- ################################################################################################ -->
                        <a href="WelcomePage.jsp" ><img src="images/demo/logo.svg" class="logoname"></a>
                        <!-- ################################################################################################ -->
                    </div>
                    <nav id="mainav" class="fl_right"> 
                        <!-- ################################################################################################ -->
                        <ul class="clear">
                            <!--                            <li><a class="drop" href="#">Pages</a>
                                     <ul>
                                         <li><a href="pages/gallery.html">Gallery</a></li>
                                         <li><a href="pages/full-width.html">Full Width</a></li>
                                         <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
                                         <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
                                         <li><a href="pages/basic-grid.html">Basic Grid</a></li>
                                         <li><a href="pages/font-icons.html">Font Icons</a></li>
                                     </ul>
                                 </li>-->

                            <li >
                                <a href="WelcomePage.jsp">Specialist</a>
                                <span class="note-func">Find a doctor by specialty</span>
                            </li>

                            <li><a href="#">Health facilities</a>
                                <span class="note-func">Find a doctor by specialty</span>
                            </li>
                            <li><a href="#">Doctor</a>
                                <span class="note-func">Find a doctor by specialty</span>
                            </li>
                            <li><a href="#">Checkup package</a>
                                <span class="note-func">Find a doctor by specialty</span>
                            </li>
                        </ul>
                        <!-- ################################################################################################ -->
                    </nav>
                </header>
            </div>
            <!-- ################################################################################################ -->
            <!-- ################################################################################################ -->
            <!-- ################################################################################################ -->
            <div class="wrapper overlay">
                <div id="pageintro" class="hoc clear"> 
                    <!-- ################################################################################################ -->
                    <article class="content-banner">
                        <p class="title" style="text-shadow: 2px 2px 5px #404040;">Medical background</p>
                        <h3 class="heading" style="text-shadow: 2px 2px 5px #404040;">Comprehensive health care</h3>
                        <p style="text-shadow: 2px 2px 5px #404040;">Fast, smart and convenient appointment booking support</p>
                        <footer>
                            <ul class="nospace inline pushright">
                                <li><a class="btn" href="#">Book an appointment now</a></li>
                            </ul>
                        </footer>
                    </article>
                    <!-- ################################################################################################ -->
                </div>

            </div>
            <!-- ################################################################################################ -->
        </div>
        <!-- End Top Background Image Wrapper -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="wrapper row3">
            <main class="hoc container clear"> 
                <!-- main body -->
                <!-- ################################################################################################ -->
                <section id="introblocks">
                    <ul class="nospace group elements elements-three ">
                        <li class="one_third ">
                            <!--khám chuyên khoa-->
                            <article class="list-services">
                                <footer><a href="#"><img src="images/demo/icons/khamchuyenkhoa.png" class="icons-Services"/></a></footer>
                                <h6 class="heading">Specialist Examination</h6>
                            </article>
                        </li>
                        <li class="one_third">
                            <!--khám từ xa-->
                            <article class="list-services">
                                <footer><a href="#"><img src="images/demo/icons/khamtuxa.png" class="icons-Services"/></a></footer>
                                <h6 class="heading">Remote examination</h6>

                            </article>
                        </li>
                        <li class="one_third">
                            <article class="list-services">
                                <footer><a href="#"><img src="images/demo/icons/khamtongquat.png" class="icons-Services"/></a></footer>
                                <h6 class="heading">Specialist Examination</h6>
                            </article>
                        </li>
                        <li class="one_third" >
                            <article class="list-services">
                                <footer><a href="#"><img src="images/demo/icons/dichvuxetnghiem.png" class="icons-Services"/></a></footer>
                                <h6 class="heading">Specialist Examination</h6>
                            </article>
                        </li>
                        <li class="one_third">
                            <article class="list-services">
                                <footer><a href="#"><img src="images/demo/icons/suckhoetinhthan.png" class="icons-Services"/></a></footer>
                                <h6 class="heading">Specialist Examination</h6>
                            </article>
                        </li>
                        <li class="one_third">
                            <article class="list-services">
                                <footer><a href="#"><img src="images/demo/icons/thietbiyte.png" style="width: 53px;" class="icons-Services"/></a></footer>
                                <h6 class="heading">Specialist Examination</h6>
                            </article>
                        </li>
                    </ul>
                </section>
                <!-- ################################################################################################ -->
                <!-- / main body -->
                <div class="clear"></div>
            </main>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="bgded overlay" style="background-image:url('images/demo/backgrounds/01.png');">
            <section id="services" class="hoc container clear"> 
                <!-- ################################################################################################ -->
                <div class="sectiontitle">
                    <p class="nospace font-xs" style="color: #000000">Lacus ligula tincidunt consectetuer</p>
                    <h6 class="heading font-x2" style="color: #000000">Integer mattis ligula ipsum</h6>
                </div>
                <ul class="nospace group elements elements-three">
                    <li class="one_third">
                        <article>
                            <div>
                                <footer><a href="#"><i class="fas fa-credit-card"></i></a></footer>
                                <h6 class="heading">Donec ullamcorper nisi lectus curabitur</h6>
                            </div>
                            <p>Aliquam id imperdiet nec odio proin luctus consequat est phasellus sed libero vitae turpis dignissim varius nullam eu tellus aenean sit amet risus fusce.</p>
                            <p><a href="#">Varius cursus ante</a></p>
                        </article>
                    </li>
                    <li class="one_third">
                        <article>
                            <div>
                                <footer><a href="#"><i class="fas fa-compress"></i></a></footer>
                                <h6 class="heading">Ultrices posuere cubilia curae feugiat</h6>
                            </div>
                            <p>Sit amet augue lobortis risus imperdiet blandit nullam vitae dui fusce gravida sem ac auctor eleifend sapien dui convallis erat a cursus velit diam et.</p>
                            <p><a href="#">Morbi at lorem ut</a></p>
                        </article>
                    </li>
                    <li class="one_third">
                        <article>
                            <div>
                                <footer><a href="#"><i class="fas fa-futbol"></i></a></footer>
                                <h6 class="heading">Ipsum primis faucibus in orci luctus et</h6>
                            </div>
                            <p>Urna suspendisse suscipit metus vel sem integer porta in hac habitasse platea dictumst aliquam quis nunc aenean augue proin molestie erat in rhoncus.</p>
                            <p><a href="#">Molestie ultricies quam</a></p>
                        </article>
                    </li>
                    <li class="one_third">
                        <article>
                            <div>
                                <footer><a href="#"><i class="fas fa-fire-extinguisher"></i></a></footer>
                                <h6 class="heading">Nec sem donec ut augue vestibulum ante</h6>
                            </div>
                            <p>Posuere nibh quam consectetuer lectus ac vulputate ligula lorem ut dolor morbi ut risus nec orci bibendum commodo integer sem nisl mollis ut ornare eu.</p>
                            <p><a href="#">Aenean tincidunt turpis</a></p>
                        </article>
                    </li>
                    <li class="one_third">
                        <article>
                            <div>
                                <footer><a href="#"><i class="fas fa-medkit"></i></a></footer>
                                <h6 class="heading">Commodo elit eget erat tellus nullam</h6>
                            </div>
                            <p>Lobortis eget ante mauris tempor suspendisse nulla donec tincidunt tellus ac quam in eget risus phasellus faucibus adipiscing velit maecenas volutpat.</p>
                            <p><a href="#">Vel ante donec tortor</a></p>
                        </article>
                    </li>
                    <li class="one_third">
                        <article>
                            <div>
                                <footer><a href="#"><i class="fas fa-recycle"></i></a></footer>
                                <h6 class="heading">Orci nulla sit amet lorem curabitur</h6>
                            </div>
                            <p>Aliquam leo aliquam at odio mauris egestas interdum magna libero vivamus malesuada adipiscing sapien morbi arcu pharetra eu interdum quis blandit ac.</p>
                            <p><a href="#">Neque placerat eget</a></p>
                        </article>
                    </li>
                </ul>
                <!-- ################################################################################################ -->
            </section>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="wrapper row2">
            <section class="hoc container clear"> 
                <!-- ################################################################################################ -->
                <div class="sectiontitle">
                    <p class="nospace font-xs">Dolor a justo ut eget nibh velit</p>
                    <h6 class="heading font-x2">Iaculis cras non urna mauris</h6>
                </div>
                <ul class="pr-charts nospace group center">
                    <li class="pr-chart-ctrl" data-animate="false">
                        <div class="pr-chart" data-percent="25"><i></i></div>
                        <p><a class="btn" href="#">Tristique</a></p>
                    </li>
                    <li class="pr-chart-ctrl" data-animate="false">
                        <div class="pr-chart" data-percent="50"><i></i></div>
                        <p><a class="btn" href="#">Ullamcorper</a></p>
                    </li>
                    <li class="pr-chart-ctrl" data-animate="false">
                        <div class="pr-chart" data-percent="75"><i></i></div>
                        <p><a class="btn" href="#">Curabitur</a></p>
                    </li>
                    <li class="pr-chart-ctrl" data-animate="false">
                        <div class="pr-chart" data-percent="100"><i></i></div>
                        <p><a class="btn" href="#">Ultrices</a></p>
                    </li>
                </ul>
                <!-- ################################################################################################ -->
            </section>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="wrapper row3">
            <section class="hoc container clear shout"> 
                <!-- ################################################################################################ -->
                <div class="sectiontitle">
                    <p class="nospace font-xs">Mollis auctor  non nisl mauris</p>
                    <h6 class="heading font-x2">Vitae viverra nam sodales</h6>
                </div>
                <figure class="one_half first"><img src="images/demo/546x356.png" alt="">
                    <figcaption class="heading"><a href="#">Turpis convallis</a></figcaption>
                </figure>
                <figure class="one_half"><img src="images/demo/546x356.png" alt="">
                    <figcaption class="heading"><a href="#">Quisque dignissim</a></figcaption>
                </figure>
                <!-- ################################################################################################ -->
            </section>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="wrapper coloured">
            <article id="cta" class="hoc container clear"> 
                <!-- ################################################################################################ -->
                <p>Sit amet condimentum</p>
                <h6 class="heading"><span>&ldquo;</span>Integer blandit massa<span>&bdquo;</span></h6>
                <footer><a class="btn" href="#">Consectetuer dapibus</a></footer>
                <!-- ################################################################################################ -->
            </article>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="bgded overlay row4" style="background-image:url('images/demo/backgrounds/01.png');">
            <footer id="footer" class="hoc clear"> 
                <!-- ################################################################################################ -->
                <figure id="ctdetails">
                    <ul class="nospace group">
                        <li class="one_third first">
                            <div class="clear"><a href="#"><i class="fas fa-phone"></i></a> <span><strong>Give us a call:</strong> +00 (123) 456 7890</span></div>
                        </li>
                        <li class="one_third">
                            <div class="clear"><a href="#"><i class="fas fa-envelope"></i></a> <span><strong>Send us a mail:</strong> support@domain.com</span></div>
                        </li>
                        <li class="one_third">
                            <div class="clear"><a href="#"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Come visit us:</strong> Directions to <a href="#">our location</a></span></div>
                        </li>
                    </ul>
                </figure>
                <!-- ################################################################################################ -->
                <div class="one_quarter first">
                    <h1 class="logoname"><a href="index.jsp.html">Sio<span>pp</span></a></h1>
                    <p>Laoreet diam orci elementum urna sed tincidunt lacus sapien pulvinar erat sed aliquet dictum turpis sed sollicitudin felis non sapien praesent blandit mauris vel erat fusce sit amet lacus [<a href="#">&hellip;</a>]</p>
                    <ul class="faico clear">
                        <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
                        <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                        <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
                        <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
                    </ul>
                </div>
                <div class="one_quarter">
                    <h6 class="heading">Molestie massa volutpat</h6>
                    <p class="nospace btmspace-15">Sit amet augue curabitur auctor consequat leo nam quis arcu.</p>
                    <form action="#" method="post">
                        <fieldset>
                            <legend>Newsletter:</legend>
                            <input class="btmspace-15" type="text" value="" placeholder="Name">
                            <input class="btmspace-15" type="text" value="" placeholder="Email">
                            <button class="btn" type="submit" value="submit">Submit</button>
                        </fieldset>
                    </form>
                </div>
                <div class="one_quarter">
                    <h6 class="heading">Tempor pellentesque eget</h6>
                    <ul class="nospace linklist">
                        <li><a href="#">Dolor vitae nisl varius</a></li>
                        <li><a href="#">Blandit in sed neque id</a></li>
                        <li><a href="#">Suspendisse nec risus curabitur</a></li>
                        <li><a href="#">Ac risus donec rutrum justo</a></li>
                        <li><a href="#">At libero in pulvinar nulla</a></li>
                    </ul>
                </div>
                <div class="one_quarter">
                    <h6 class="heading">Libero pretium luctus</h6>
                    <ul class="nospace clear latestimg">
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    </ul>
                </div>
                <!-- ################################################################################################ -->
            </footer>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="wrapper row5">
            <div id="copyright" class="hoc clear"> 
                <!-- ################################################################################################ -->
                <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
                <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
                <!-- ################################################################################################ -->
            </div>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
        <!-- JAVASCRIPTS -->
        <script src="layout/scripts/jquery.min.js"></script>
        <script src="layout/scripts/jquery.backtotop.js"></script>
        <script src="layout/scripts/jquery.mobilemenu.js"></script>
        <!-- Homepage specific -->
        <script src="layout/scripts/jquery.easypiechart.min.js"></script>
        <!-- / Homepage specific -->
    </body>
</html>
