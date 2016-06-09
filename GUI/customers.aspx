<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customers.aspx.cs" Inherits="people" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Fredericka+the+Great' rel='stylesheet' type='text/css' />
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
                        <li class="scroll"><a href="home.aspx">Home</a></li>
                        <li class="scroll"><a href="products.aspx">Products</a></li>
                        <li class="scroll"><a href="purchase.aspx">Purchase</a></li>
                        <li class="scroll active"><a href="customers.aspx">Customers</a></li>
                        <li class="scroll"><a href="employees.aspx">Employees</a></li>
                        <li class="scroll"><a href="other.aspx">Other</a></li>              
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
    <section>
        <div class="row">
            <div class="col-lg-12 col-md-6 col-sm-6 col-xs-2" style="background-color:#F6E497">
                <div class="registrationform">
                    <div class="form-horizontal">
                        <fieldset class="col-lg-offset-2">
                            <legend>Register a new customer</legend>
                            <asp:HyperLink ID="btnNewCustomer" CssClass="btn btn-2 btn-1d" navigateURL="~/new-customer.aspx" runat="server">New Customer</asp:HyperLink>
                        </fieldset>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-6 col-sm-6 col-xs-2" style="background-color:#732929">
                <div class="registrationform">
                    <div class="form-horizontal">
                        <fieldset  class="col-lg-offset-4">
                            <legend>Or update some information<i class="fa fa-pencil pull-right"></i></legend>
                            <asp:Label ID="Label2" runat="server" Text="Customer:" CssClass="col-lg-2 col-lg-offset-2 control-label"></asp:Label>
                            <div class="col-lg-4">
                                <asp:DropDownList ID="namesToEdit" runat="server" CssClass="form-control ddl">
                                </asp:DropDownList>                              
                            </div>
                            <asp:Button ID="btnChooseCustToEdit" runat="server" CssClass="col-lg-2 btn2 btn-warning2" Text="Choose" OnClick="btnChooseCustToEdit_Click"/>
                        </fieldset>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-6 col-sm-6 col-xs-4" style="background-color:#BD8D46">
                <div class="registrationform">
                    <div class="form-horizontal">
                        <fieldset class="col-lg-offset-2">
                            <legend>Looking for someone?</legend>
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Search by:" CssClass="col-lg-2 control-label"></asp:Label>
                                <div class="col-lg-4">
                                    <asp:DropDownList ID="searchby" runat="server" CssClass="form-control ddl">
                                        <asp:ListItem>Name</asp:ListItem>
                                        <asp:ListItem>Last Name</asp:ListItem>
                                        <asp:ListItem>ID Number</asp:ListItem>
                                        <asp:ListItem>State/Province</asp:ListItem>
                                        <asp:ListItem>Country</asp:ListItem>
                                    </asp:DropDownList>                              
                                </div>
                                <asp:Button ID="btnChooseSearchBy" runat="server" CssClass="col-lg-2 btn2 btn-warning2" Text="Choose" OnClick="btnChooseSearchBy_Click"/>
                            </div>
                            <!-- Invisible filters until criteria is chosen -->
                            <div class="form-group">
                                <asp:Label ID="lblName" runat="server" Text="Enter name:" CssClass="col-lg-2 control-label" Visible="false"></asp:Label>
                                <asp:Label ID="lblLastName" runat="server" Text="Enter last name:" CssClass="col-lg-2 control-label" Visible="false"></asp:Label>
                                <asp:Label ID="lblIdNum" runat="server" Text="Enter ID number:" CssClass="col-lg-2 control-label" Visible="false"></asp:Label>
                                <asp:Label ID="lblState" runat="server" Text="State/Province:" CssClass="col-lg-2  control-label" Visible="false"></asp:Label>
                                <asp:Label ID="lblCountry" runat="server" Text="Country:" CssClass="col-lg-2  control-label" Visible="false"></asp:Label>
                                <div class="col-lg-4">
                                    <asp:TextBox ID="searchName" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                    <asp:TextBox ID="searchLastName" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                    <asp:TextBox ID="searchIdNum" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                    <asp:DropDownList ID="searchState" runat="server" CssClass="form-control ddl" Visible="false">
                                    </asp:DropDownList>                              
                                    <asp:DropDownList ID="searchCountry" runat="server" CssClass="form-control ddl" Visible="false">
                                    </asp:DropDownList>                              
                                </div>
                            </div>
                            <!-- /Invisible filters until criteria is chosen -->
                            <div class="form-group" style="margin-top:40px">
                                <asp:Button ID="btnSearch" runat="server" CssClass="col-lg-2 col-lg-offset-4 btn2 btn-warning2" Text="Search" Visible="false"/>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Results" CssClass="col-lg-2 control-label" Visible="false"></asp:Label>
                                <div class="col-lg-10">
                                    <asp:TextBox ID="results" runat="server" TextMode="MultiLine" Rows="10" CssClass="form-control2" Visible="false"></asp:TextBox>
                                </div>
                            </div>
                        </fieldset>
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