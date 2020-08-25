<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Automoviles.aspx.cs" Inherits="WebAutosla72.Automoviles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Vehiculos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>
    <style>
        ul.nav a:hover {
            color: #FFA500 !important;
        }
    </style>
   <div class="container">
       <nav class="navbar navbar-expand-sm bg-primary navbar-dark justify-content-between ">
           <div class="row">
            <div class="col-xs-6">
           <img src="imagenes/logo72.png" width="125" height="80" />
            </div>
            <div class="col-xs-6 mt-4">
           <h3>
           Autos La 72
          <small class="text-muted"><i class="fas fa-car"></i></small>
           </h3>
               </div> 
           </div>
  <ul class="navbar-nav  ">
       <li class="nav-item">
      <a class="nav-link " href="home.aspx" ><i class="fas fa-home"></i>Home </a>
    </li>
      <li class="nav-item">
      <a class="nav-link " href="Automoviles.aspx" ><i class="fas fa-car"></i>Vehiculos </a>
    </li>
      
    <li class="nav-item">
      <a class="nav-link" href="Clientes.aspx"><i class="fas fa-users"></i>Clientes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Revisiones.aspx"><i class="fas fa-wrench"></i>Revisiones</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Ventas.aspx"><i class="fas fa-comments-dollar"></i>Ventas</a>
    </li>
  </ul>
           
</nav>  
           <br />
           <p class="h1 text-center "><i class="fas fa-car text-primary"> </i>&nbsp;VEHICULOS&nbsp;<i class="fas fa-car text-primary"></i></p> 
            <br />
       <div class="">
    <form id="form1" runat="server">
      <div class="d-flex">
          <div class="flex-fill">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Matricula" DataSourceID="SqlDataSource1" AllowPaging="True">
            <EditItemTemplate>
                
                <div class="border-bottom border-warning rounded">
                    
                        <asp:Label class="text-secondary" ID="Label1" runat="server" Text="Matricula:"></asp:Label>
                        <asp:Label  class="text-secondary" ID="MatriculaLabel1" runat="server" Text='<%# Eval("Matricula") %>' />

                </div>
                        
                <div class="form-group">        
                      
                        <asp:Label ID="Label2" runat="server" Text="Modelo:"></asp:Label>
                        <asp:TextBox class="form-control" ID="ModeloTextBox" runat="server" Text='<%# Bind("Modelo") %>' />
                        
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Marca:"></asp:Label>
                    <asp:TextBox class="form-control" ID="MarcaTextBox" runat="server" Text='<%# Bind("Marca") %>' />
                </div>

                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Color:"></asp:Label>
                    <asp:TextBox class="form-control" ID="ColorTextBox" runat="server" Text='<%# Bind("Color") %>' />
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Precio:"></asp:Label>
                    <asp:TextBox class="form-control" ID="PrecioTextBox" runat="server" Text='<%# Bind("Precio") %>' />
                </div>

                </div>
                <asp:LinkButton class="btn btn-success" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton class="btn btn-danger" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <div >
                <asp:RequiredFieldValidator runat="server" id="ReqMatri" controltovalidate="MatriculaTextBox" errormessage="* Por favor ingrese Matricula!" ForeColor="Red" />
                
                
                
                </div>
                <form class="was-validated">
                <div class="form-group">
                 <asp:Label ID="Label6" runat="server" Text="Matricula:"></asp:Label>
                <asp:TextBox class="form-control" name="Label6" placeholder="Ingrese Matricula" ID="MatriculaTextBox" runat="server" Text='<%# Bind("Matricula") %>' required="true" />
                </div>
                
                <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Modelo:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator runat="server" id="ReqModelo" controltovalidate="ModeloTextBox" errormessage="* Por favor ingrese Modelo!" ForeColor="Red" />
                <asp:TextBox class="form-control" ID="ModeloTextBox" placeholder="Ingrese Modelo" runat="server" Text='<%# Bind("Modelo") %>' />
                </div>
                <div class="form-group">
                <asp:Label ID="Label8" runat="server" Text="Marca:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator runat="server" id="ReqMarca" controltovalidate="MarcaTextBox" errormessage="* Por favor ingrese Marca del vehiculo!" ForeColor="Red" />
                <asp:TextBox class="form-control" ID="MarcaTextBox" placeholder="Ingrese Marca" runat="server" Text='<%# Bind("Marca") %>' />
                </div>
                <div class="form-group">
                <asp:Label ID="Label9" runat="server" Text="Color:"></asp:Label>
                <asp:TextBox class="form-control" placeholder="Ingrese Color" ID="ColorTextBox" runat="server" Text='<%# Bind("Color") %>' />
                </div>
                <div class="form-group">
                <asp:Label ID="Label10" runat="server" Text="Precio:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator runat="server" id="Reqprecio" controltovalidate="PrecioTextBox" errormessage="* Por favor ingrese Precio del vehiculo!" ForeColor="Red" />
                <asp:TextBox class="form-control" placeholder="Ingrese Precio" ID="PrecioTextBox" runat="server" Text='<%# Bind("Precio") %>' />
                    
                </div>
                <asp:LinkButton class="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton class="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </form>
            </InsertItemTemplate>
            <ItemTemplate>
              
                <div class="border border-secondary rounded">

                Matricula:
                <asp:Label  ID="MatriculaLabel" runat="server" Text='<%# Eval("Matricula") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Modelo:
                <asp:Label ID="ModeloLabel" runat="server" Text='<%# Bind("Modelo") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Marca:
                <asp:Label ID="MarcaLabel" runat="server" Text='<%# Bind("Marca") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Color:
                <asp:Label ID="ColorLabel" runat="server" Text='<%# Bind("Color") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Precio:
                <asp:Label ID="PrecioLabel" runat="server" Text='<%# Bind("Precio") %>' />
                </div>
                <br />
                <asp:LinkButton class="btn btn-warning " ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton class="btn btn-danger" ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton class="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
              </div>
            </ItemTemplate>
        </asp:FormView>
     </div>
     <div class="flex-fill" >
        <asp:GridView class=" table table-striped " pagesize="7" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Matricula" DataSourceID="SqlDataSource1" AllowPaging="True" truepagesize="4" CellPadding="4" Height="372px" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Matricula" HeaderText="Matricula" ReadOnly="True" SortExpression="Matricula" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
 </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"   ConnectionString="<%$ ConnectionStrings:CAutosla72ConnectionString3 %>" DeleteCommand="sp_eliminar_Datos_Automoviles" DeleteCommandType="StoredProcedure" InsertCommand="sp_Insertar_Automoviles" InsertCommandType="StoredProcedure" SelectCommand="sp_consultar_automoviles" SelectCommandType="StoredProcedure" UpdateCommand="sp_modificar_automovil" UpdateCommandType="StoredProcedure">

        </asp:SqlDataSource>
    </form>
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

        <ul class="nav  ">
       <li class="nav-item">
      <a class="nav-link " href="home.aspx" ><i class="fas fa-home"></i>Home </a>
    </li>
      <li class="nav-item">
      <a class="nav-link " href="Automoviles.aspx" ><i class="fas fa-car"></i>Vehiculos </a>
    </li>
      
    <li class="nav-item">
      <a class="nav-link" href="Clientes.aspx"><i class="fas fa-users"></i>Clientes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Revisiones.aspx"><i class="fas fa-wrench"></i>Revisiones</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Ventas.aspx"><i class="fas fa-comments-dollar"></i>Ventas</a>
    </li>
  </ul>

      </div>

    </div>

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3 text-white ">© 2020 Copyright:
    <a  href="https://github.com/hollrojm/WebAutosla72" target="_blank"><i class="fab fa-github" >hollrojm</i> </a>
  </div>
  <!-- Copyright -->

</footer> <!-- Footer -->
    </div>
</body>
</html>
