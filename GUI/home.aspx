<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="preview_dotnet_templates_bootstrap10_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Full Pint</title>
    <!-- core CSS -->
    <link href="css2/bootstrap.min.css" rel="stylesheet" />
    <link href="css2/font-awesome.min.css" rel="stylesheet" />
    <link href="css2/animate.min.css" rel="stylesheet" />
    <link href="css2/owl.carousel.css" rel="stylesheet" />
    <link href="css2/owl.transitions.css" rel="stylesheet" />
    <link href="css2/prettyPhoto.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Fredericka+the+Great' rel='stylesheet' type='text/css'>
    <link href="css2/main.css" rel="stylesheet" />
    <link href="css2/responsive.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body id="home" class="homepage">
    <form id="form1" runat="server">
    <header id="header">
        <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container" style="height:40px">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar">Full Pint</span>
                    </button>
                    <a class="navbar-brand" href="home.aspx" style="padding-top:40px">
                        <span style="color:#BD8D46; font-family: 'Fredericka the Great', cursive; font-size:60px">Full Pint</span>
                    </a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="home.aspx">Home</a></li>
                        <li class="scroll"><a href="products.aspx">Products</a></li>
                        <li class="scroll"><a href="purchase.aspx">Purchase</a></li>
                        <li class="scroll"><a href="customers.aspx">Customers</a></li>
                        <li class="scroll"><a href="employees.aspx">Employees</a></li> 
                        <li class="scroll"><a href="other.aspx">Other</a></li>                                       
                    </ul>
                    <asp:HyperLink ID="btnSignOut" CssClass="btn btn-2 btn-1d" navigateURL="~/login.aspx" runat="server">Sign Out</asp:HyperLink>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <!--/header-->
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="img/slider/beercans.jpg" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <p style="font-size:60px; line-height:100px; font-weight:bolder; color:white">
                            Life is too short for bad beer</p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="second-slide" src="img/slider/slide2.jpg" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <img src="img/logo-login.png" style="height:300px">
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                    data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                    </span><span class="sr-only">Next</span> </a>
    </div>
    <!-- /.carousel -->
    <section class="wow fadeIn cta2">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                <p style="font-family:'Lato', sans-serif; font-size:30px; color:white; padding-top:20px">
                            Full Pint offers its clients high quality beer at excellent prices</p>
                </div>
             </div>
         </div>
    </section>
    <section id="cta" class="wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                <div class="border">
                    <h3>A brief history of beer</h3>
                    </div>
                    <p>The true origin of beer is shrouded in the mists of antiquity. No one can say for sure just when or how the first beer came into being. It is likely that a bowl of barley was left exposed to the elements and was moistened causing the grain to germinate. Wild air-born yeast then settled on the surface of the resulting liquor and the fermentation process began. No doubt intrigued by the foaming concoction, someone first smelled of it and then ventured a sip. The intoxicating effects of this liquid then went on to change the course of history.
                    </p>
                </div>
                <div class="col-sm-3 text-right">
                    <img src="img/beercrafting1.jpg" style="width:300px" alt="Beercrafting"/>
                </div>
            </div>              
        </div>
    </section>
    <section id="aboutus">
        <section id="cta" class="wow fadeIn">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9 text-right col-sm-offset-3">
                        <div class="border">
                            <h3>About Full Pint</h3>
                        </div>
                        <p> Here at Full Pint, we believe you deserve the best beer at the best price, and that is why, in 2016, our founders decided to consolidate every well-known beer category in one place, so as to make it easier for customers to compare and contrast different products. 
                            Our mission to continue to grow and make beer enthusiast happy with our vast expanse of beer varieties.
                        </p>         
                    </div>
                </div>
            </div>
        </section>
    </section>
    <section id="get-in-touch">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Get in Touch</h2>
                <h4 class="text-center wow fadeInDown"><strong>We are always trying to improve our business, <br /> so if you have any suggestions or complaints <br />please let us know.</strong></h4>
            </div>
        </div>
    </section>
    <!--/#bottom-->
    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                <p>Designed by Full Pint</p>
                </div>
                <div class="col-sm-6">
                    <ul class="social-icons">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-github"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!--/#footer-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mousescroll.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/main.js"></script>
    </form>
</body>
</html>
