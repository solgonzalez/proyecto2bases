<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new-customer.aspx.cs" Inherits="people" %>

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
                        <li class="scroll"><a href="products.aspx">Products</a></li>
                        <li class="scroll"><a href="purchase.aspx">Purchase</a></li>
                        <li class="scroll active"><a href="customers.aspx">Customers</a></li>
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
                            <legend>Customer Registration <i class="fa fa-pencil pull-right"></i></legend>
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Name" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:TextBox ID="newName" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Last Name" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:TextBox ID="newLastName" runat="server" placeholder="Last Name" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server" Text="ID Number" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:TextBox ID="newIdNumber" runat="server" placeholder="ID Number" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Address" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:TextBox ID="newAddress" runat="server" TextMode="MultiLine" Rows="1" CssClass="form-control2"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <div class="radio">
                                        <label>
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="Country" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>                          
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="countryDD" runat="server" CssClass="form-control ddl">
                                        <asp:ListItem>India</asp:ListItem>
                                        <asp:ListItem>United States</asp:ListItem>
                                        <asp:ListItem>United Kingdom</asp:ListItem>
                                    </asp:DropDownList>                              
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="State/Province" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>                          
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="provinceDD" runat="server" CssClass="form-control ddl">
                                        <asp:ListItem>Mumbai</asp:ListItem>
                                        <asp:ListItem>California</asp:ListItem>
                                        <asp:ListItem>London</asp:ListItem>
                                    </asp:DropDownList>                              
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="Picture" CssClass="col-lg-2 control-label col-lg-offset-2"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:FileUpload ID="newPicture" runat="server" CssClass="form-control" />
                                    <asp:RegularExpressionValidator ID="validator" runat="server" ControlToValidate="newPicture" 
                                        ErrorMessage="Error: File extension not supported. File will not be uploaded." 
                                        ValidationExpression="(.+\.([Jj][Pp][Gg])|.+\.([Pp][Nn][Gg])|.+\.([Tt][Ii][Ff])|.+\.([Tt][Ii][Ff][Ff])|.+\.([Gg][Ii][Ff])|.+\.([Pp][Dd][Ff]))">
                                    </asp:RegularExpressionValidator>
                                </div>             
                            </div>
                            <div class="form-group">
                                <div class="col-lg-8 col-lg-offset-4">
                                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-warning" Text="Submit"/>
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