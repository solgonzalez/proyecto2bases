<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerBeer.aspx.cs" Inherits="registerBeer" %>

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
                        <li class="scroll"><a href="home.aspx">Home</a></li>
                        <li class="scroll"><a href="products.aspx">Products</a></li>
                        <li class="scroll"><a href="purchase.aspx">Purchase</a></li>
                        <li class="scroll"><a href="customers.aspx">Customers</a></li>
                        <li class="scroll"><a href="employees.aspx">Employees</a></li> 
                        <li class="scroll active"><a href="registerBeer.aspx">Register a Beer</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <!--/header-->
           <section id="cta" class="wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                <div class="border" >
                    <h3>Nombre de la cerveza</h3>
                    </div>
                        <div class="col-lg-10">
                                <asp:TextBox ID="nombre" runat="server" placeholder="My beer" CssClass="form-control"></asp:TextBox>
                        </div>
                    
                </div>
                <div class="col-sm-9"style="margin-top: 40px;">
                <div class="border">
                    <h3>Descripción de la cerveza</h3>
                    </div>
                        <div class="col-lg-10">
                                <asp:TextBox ID="descripcion" runat="server" placeholder="My beer is awesome" CssClass="form-control" TextMode="MultiLine" Rows="10">
                                </asp:TextBox>
                        </div>
                    </div>
                <div class="col-sm-9"style="margin-top: 40px;">
                <div class="border">
                    <h3>Tiempo de fermentación</h3>
                    </div>
                        <div class="col-lg-10" style="width:80px;">
                                <asp:TextBox ID="tiempo" runat="server" placeholder="0" CssClass="form-control">
                                </asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="tiempo" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                       
                        </div>
                    <asp:Label ID="labelHoras" runat="server" Text="Horas" CssClass="col-lg-2 control-label"></asp:Label> 
                    </div>
                <div class="col-sm-9"style="margin-top: 40px;">
                <div class="border">
                    <h3>Temperatura de fermentación</h3>
                    </div>
                        <div class="col-lg-10" style="width:80px;">
                                <asp:TextBox ID="temperatura" runat="server" placeholder="0" CssClass="form-control">
                                </asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="temperatura" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                       
                        </div>
                    <asp:Label ID="grados" runat="server" Text="°C" CssClass="col-lg-2 control-label"></asp:Label> 
                    </div>
                <div class="col-sm-9"style="margin-top: 40px;">
                <div class="border">
                    <h3>Precio</h3>
                    </div>
                    <div class="col-lg-10" style="width:5px;">
                        <asp:Label ID="colones" runat="server" Text="₡"></asp:Label> 
                    </div>
                        <div class="col-lg-10" style="width:80px;">
                                <asp:TextBox ID="precio" runat="server" placeholder="0" CssClass="form-control">
                                </asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="precio" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                       
                        </div>
                    </div>
                <div class="col-sm-9"style="margin-top: 40px;">
                <div class="border">
                    <h3>Atributos de la cerveza</h3>
                    </div>
                    
                    <div class="col-lg-10" >
                        <asp:Label ID="fermentacion" runat="server" Text="Tipo de fermentación"></asp:Label>
                        <asp:DropDownList ID="tipoFermentacion" runat="server" style="width:150px; display:inline" CssClass="form-control"></asp:DropDownList>
                         <asp:Label ID="clr" runat="server" Text="Color"></asp:Label>
                        <asp:DropDownList ID="color" runat="server" style="width:150px; display:inline" CssClass="form-control"></asp:DropDownList>
                        <asp:Label ID="estilo" runat="server" Text="Estilo"></asp:Label>
                        <asp:DropDownList ID="estiloC" runat="server" style="width:150px; display:inline" CssClass="form-control"></asp:DropDownList>    
                    </div>
                    <div class="col-lg-10" style="margin-top: 40px;">
                        <asp:Label ID="cuerpo" runat="server" Text="Cuerpo"></asp:Label>
                        <asp:DropDownList ID="cuerpoC" runat="server" style="width:150px; display:inline" CssClass="form-control"></asp:DropDownList>
                        <asp:Label ID="Cat" runat="server" Text="Categoría"></asp:Label>
                        <asp:DropDownList ID="Categoria" runat="server" style="width:150px; display:inline" CssClass="form-control"></asp:DropDownList>
                        <asp:Label ID="subCat" runat="server" Text="SubCategoría"></asp:Label>
                        <asp:DropDownList ID="SubCategoria" runat="server" style="width:150px; display:inline" CssClass="form-control"></asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-primary" style="background-color:#337ab7;"></asp:Button>
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
