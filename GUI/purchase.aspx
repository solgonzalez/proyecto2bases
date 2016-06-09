<%@ Page Language="C#" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="purchase" %>

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
    <link href="css2/main2.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
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
                <!--<img src="img/logo-navbar.png" alt="logo" style="width:130px; display:inline">-->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar">Full Pint</span>
                        <!--<span class="icon-bar"></span>
                        <span class="icon-bar"></span>-->
                    </button>
                    <a class="navbar-brand" href="home.aspx" style="padding-top:40px">
                        <span style="color:#BD8D46; font-family: 'Fredericka the Great', cursive; font-size:60px">Full Pint</span>
                    </a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll"><a href="home.aspx">Home</a></li>
                        <li class="scroll"><a href="products.aspx">Products</a></li>
                        <li class="scroll active"><a href="purchase.aspx">Purchase</a></li>
                        <li class="scroll"><a href="customers.aspx">Customers</a></li>
                        <li class="scroll"><a href="employees.aspx">Employees</a></li>
                        <li class="scroll"><a href="other.aspx">Other</a></li>             
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <!--/header-->

    <div class="row">
        <div class="col-lg-12 col-md-6 col-sm-6 col-xs-6" style="background-color:#BD8D46">
            <div class="registrationform col-lg-offset-1">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>New Purchase</legend>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Customer" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                            <div class="col-lg-5">
                                <asp:DropDownList ID="custForPurchase" runat="server" CssClass="form-control"></asp:DropDownList>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Beer" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                            <div class="col-lg-5">
                                <asp:DropDownList ID="beerForPurchase" runat="server" CssClass="form-control"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Quantity" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                            <div class="col-lg-5" style="width:100px">
                                <asp:TextBox ID="quantity" runat="server" placeholder="0" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div style="color:red; display:inline">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="quantity" runat="server" ErrorMessage="Error: Only numbers allowed." ValidationExpression="\d+"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-4">
                                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-warning" Text="Add to Shopping Cart"/>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-md-6 col-sm-6 col-xs-6" style="background-color:#732929">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset class="col-lg-offset-2">
                        <legend>Shopping cart</legend>
                    </fieldset>
                    <div class="form-group">
                        <div class="col-lg-6 col-lg-offset-3">
                            <asp:ListBox ID="listCart" runat="server" Rows="5" CssClass="form-control"></asp:ListBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-6" style="margin-left:400px">
                            <img src="img/cart.png" alt="cart" style="width:150px"/>
                            <asp:HyperLink ID="btnCheckout" CssClass="btn btn-2 btn-1d" navigateURL="#checkout" runat="server">Proceed to Checkout</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section ID="checkout">
        <div class="col-lg-12 col-md-6 col-sm-6 col-xs-6" style="background-color:#732929">
            <div class="registrationform">
                <div class="form-horizontal col-lg-offset-4">
                    <fieldset class="col-lg-offset-2">
                        <legend>Checkout</legend>
                    </fieldset>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Total     $" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                        <div class="col-lg-5" style="width:120px">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="0" CssClass="form-control" Enabled="false"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <asp:Button ID="btnPurchase" runat="server" CssClass="btn2 btn-warning2" Text="Complete Purchase" OnClick="btnPurchase_Click"/>
                        </div>
                    </div>
                </div>
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
