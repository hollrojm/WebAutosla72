<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebAutosla72.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
    
<body>
    <style>ul.nav a:hover { color: #FFA500 !important; }</style>
    
    <form id="form1" runat="server">
       <div class="container">
       <nav class="navbar navbar-expand-sm bg-primary navbar-dark ">
           <img src="imagenes/logo72.png" width="125" height="80" />
           <h3>
           Autos La 72
          <small class="text-muted">Home</small>
           </h3>          
  <ul class="navbar-nav">
      <li class="nav-item">
      <a class="nav-link "  href="Automoviles.aspx" >Vehiculos </a>
    </li>
      
    <li class="nav-item">
      <a class="nav-link" href="#">Clientes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Revisiones</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Ventas</a>
    </li>
  </ul>
           
</nav>  
    
           
    </form>
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2" ></li>
  </ol>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="imagenes/benz.jpg" class="d-block w-100" alt="benz"/>
        
 </div>
    <div class="carousel-item ">
      <img src="imagenes/topo.jpg" class="d-block w-100" alt="Volks"/>
        <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
    <div class="carousel-item ">
      <img src="imagenes/promo.jpg" class="d-block w-100" alt="New York"/>
        <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Anterior</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true" ></span>
      <span class="sr-only">Siguiente</span>
  </a>

 </div>

    <!-- Footer -->
<footer class="page-footer font-small bg-dark pt-4">

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase text-white" >Concesionario Autos la 72</h5>
        <p class="text-white">Inventario On-line  y presencia en los principales portales digitales.</p>

      </div>
      
        <!-- Links -->

        <ul class="nav clearfix">
      <li class="nav-item">
      <a class="nav-link text-white"  href="Automoviles.aspx" >Vehiculos </a>
    </li>
      
    <li class="nav-item">
      <a class="nav-link text-white " href="#">Clientes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white " href="#">Revisiones</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-white" href="#">Ventas</a>
    </li>
  </ul>

      </div>
      <!-- Grid column -->

     
      <!-- Grid column -->

    </div>
    <!-- Grid row -->


  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3 text-white ">© 2020 Copyright:
    <a  href="https://github.com/hollrojm/WebAutosla72" target="_blank"><i class="fab fa-github" >hollrojm</i> </a>
  </div>
  <!-- Copyright -->

</footer> <!-- Footer -->
</div><!-- Container -->

</body>
</html>
