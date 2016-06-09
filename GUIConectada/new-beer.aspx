<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new-beer.aspx.cs" Inherits="registerBeer" %>

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
                        <li class="scroll active"><a href="products.aspx">Products</a></li>
                        <li class="scroll"><a href="purchase.aspx">Purchase</a></li>
                        <li class="scroll"><a href="customers.aspx">Customers</a></li>
                        <li class="scroll"><a href="employees.aspx">Employees</a></li>                   
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <!--/header-->




    <section>
        <div class="row">
            <div class="col-lg-12 col-md-6 col-sm-6 col-xs-6" style="background-color:#BD8D46">
                <div class="registrationform col-lg-offset-1">
                    <div class="form-horizontal">
                        <fieldset>
                            <legend>New Beer <i class="fa fa-pencil pull-right"></i></legend>
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Name" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:TextBox ID="newName" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Description" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5" style="width:450px">
                                    <asp:TextBox ID="newDescription" runat="server" TextMode="MultiLine" Rows="1" CssClass="form-control2"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server" Text="Fermentation Time" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5" style="width:80px;">
                                    <asp:TextBox ID="newFerTime" runat="server" placeholder="0" CssClass="form-control"></asp:TextBox>                             
                                </div>
                                <asp:Label ID="label2" runat="server" Text="Hours" CssClass="control-label"></asp:Label>
                                <div style="color:red; display:inline">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="newFerTime" runat="server" ErrorMessage="      Error: Only numbers allowed." ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label10" runat="server" Text="Fermentation Type" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="newFerType" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Temperature" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5" style="width:80px;">
                                    <asp:TextBox ID="newTemp" runat="server" placeholder="0" CssClass="form-control"></asp:TextBox>                             
                                </div>
                                <asp:Label ID="label4" runat="server" Text="°C" CssClass="control-label"></asp:Label>
                                <div style="color:red; display:inline">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="newTemp" runat="server" ErrorMessage="Error: Only numbers allowed." ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="Price" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5" style="width:80px;">
                                    <asp:TextBox ID="newPrice" runat="server" placeholder="0" CssClass="form-control"></asp:TextBox>                             
                                </div>
                                <asp:Label ID="label7" runat="server" Text="$" CssClass="control-label"></asp:Label>
                                <div style="color:red; display:inline">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="newPrice" runat="server" ErrorMessage="Error: Only numbers allowed." ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label9" runat="server" Text="Color" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="newColor" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label11" runat="server" Text="Style" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="newStyle" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label12" runat="server" Text="Body" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="newBody" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label13" runat="server" Text="Subcategory" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="newSubCat" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label14" runat="server" Text="Category" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="newCat" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-8 col-lg-offset-4">
                                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-warning" Text="Submit" OnClick="registrarCerveza"/>
                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" OnClick="btnCancel_Click"/>                              
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
