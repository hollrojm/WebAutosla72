<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="WebAutosla72.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Clientes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>
    <style>ul.nav a:hover { color: #FFA500 !important; }</style>
   <div class="container">
       <nav class="navbar navbar-expand-sm bg-primary navbar-dark justify-content-between ">
           <div class="row">
            <div class="col-xs-6">
           <img src="imagenes/logo72.png" width="125" height="80" />
            </div>
            <div class="col-xs-6 mt-4">
           <h3>
           Autos La 72
          <small class="text-muted"><i class="fas fa-users"></i></small>
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
           <p class="h1 text-center "><i class="fas fa-user-edit text-primary"></i>&nbsp;CLIENTES&nbsp;<i class="fas fa-user-edit text-primary"></i></p> 
            <br />
       <div class="">
    <form id="form1" runat="server">
      <div class="d-flex">
          <div class="flex-fill">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Identificacion" DataSourceID="SqlDataSource2" AllowPaging="True">
            <EditItemTemplate>
             <div class="border-bottom border-warning rounded">
                <asp:Label class="text-secondary" ID="Label1" runat="server" Text="Codigo Cliente:"></asp:Label>
                <asp:Label class="text-secondary" ID="Cod_ClienteLabel1" runat="server" Text='<%# Eval("Cod_Cliente") %>' />
                 <br />
                <asp:Label class="text-secondary" ID="Label2" runat="server" Text="Identificacion:"></asp:Label>
                <asp:Label class="text-secondary" ID="IdentificacionLabel1" runat="server" Text='<%# Eval("Identificacion") %>' />
             </div>

             <div class="form-group"> 
                <asp:Label ID="Label3" runat="server" Text="Nombre:"></asp:Label>
                <asp:TextBox class="form-control" ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
             </div>
             <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Dirección:"></asp:Label>
                <asp:TextBox class="form-control" ID="DireccionTextBox" runat="server" Text='<%# Bind("Direccion") %>' />
             </div
             <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Teléfono:"></asp:Label>
                <asp:TextBox class="form-control" ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
             </div>
                <asp:Label ID="Label6" runat="server" Text="Ciudad:"></asp:Label>
                <asp:TextBox class="form-control" ID="CiudadTextBox" runat="server" Text='<%# Bind("Ciudad") %>' />
                <br />
                <asp:LinkButton class="btn btn-success" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton class="btn btn-danger" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
               <div class="form-group">  
                <asp:Label class="text-secondary" ID="Label2" runat="server" Text="Identificación:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator runat="server" id="ReqModelo" controltovalidate="IdentificacionTextBox" errormessage="* Requerido!" ForeColor="Red" />
                <asp:TextBox class="form-control" ID="IdentificacionTextBox" runat="server" Text='<%# Bind("Identificacion") %>' />
               </div>
               <div class="form-group"> 
               <asp:Label ID="Label3" runat="server" Text="Nombre:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="NombreTextBox" errormessage="* Requerido!" ForeColor="Red" />
                <asp:TextBox  class="form-control" ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
               </div>
               <div class="form-group">  
                <asp:Label ID="Label4" runat="server" Text="Dirección:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="DireccionTextBox" errormessage="* Requerido!" ForeColor="Red" />
                <asp:TextBox class="form-control" ID="DireccionTextBox" runat="server" Text='<%# Bind("Direccion") %>' />
               </div>
                <div class="form-group"> 
                <asp:Label ID="Label5" runat="server" Text="Teléfono:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="TelefonoTextBox" errormessage="* Requerido!" ForeColor="Red" />
                <asp:TextBox class="form-control" ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                </div>
                <div class="form-group"> 
                <asp:Label ID="Label6" runat="server" Text="Ciudad:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="CiudadTextBox" errormessage="* Requerido!" ForeColor="Red" />
                <asp:TextBox class="form-control" ID="CiudadTextBox" runat="server" Text='<%# Bind("Ciudad") %>' />
                </div>
                <asp:LinkButton class="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Guardar" />
                &nbsp;<asp:LinkButton class="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                <div class="border border-secondary rounded">
                Cod_Cliente:
                <asp:Label ID="Cod_ClienteLabel" runat="server" Text='<%# Eval("Cod_Cliente") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Identificacion:
                <asp:Label ID="IdentificacionLabel" runat="server" Text='<%# Eval("Identificacion") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Bind("Nombre") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Direccion:
                <asp:Label ID="DireccionLabel" runat="server" Text='<%# Bind("Direccion") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Telefono:
                <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Bind("Telefono") %>' />
                </div>
                <br />
                <div class="border border-secondary rounded">
                Ciudad:
                <asp:Label ID="CiudadLabel" runat="server" Text='<%# Bind("Ciudad") %>' />
                </div>
                <br />
                <asp:LinkButton class="btn btn-warning" ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton class="btn btn-danger"  ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton class="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
        </asp:FormView>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CAutosla72ConnectionString9 %>" DeleteCommand="sp_eliminar_cliente" DeleteCommandType="StoredProcedure" InsertCommand="sp_insertar_cliente" InsertCommandType="StoredProcedure" SelectCommand="sp_consulta_clientes" SelectCommandType="StoredProcedure" UpdateCommand="sp_modificar_cliente" UpdateCommandType="StoredProcedure">
                  <DeleteParameters>
                      <asp:Parameter Name="Identificacion" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Identificacion" Type="String" />
                      <asp:Parameter Name="Nombre" Type="String" />
                      <asp:Parameter Name="Direccion" Type="String" />
                      <asp:Parameter Name="Telefono" Type="String" />
                      <asp:Parameter Name="Ciudad" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Identificacion" Type="String" />
                      <asp:Parameter Name="Nombre" Type="String" />
                      <asp:Parameter Name="Direccion" Type="String" />
                      <asp:Parameter Name="Telefono" Type="String" />
                      <asp:Parameter Name="Ciudad" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
     </div>
     <div class="flex-fill" >
        <asp:GridView class=" table table-striped " pagesize="7" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Identificacion" DataSourceID="SqlDataSource2" AllowPaging="True" truepagesize="4" CellPadding="4" Height="372px" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Cod_Cliente" HeaderText="Cod_Cliente" ReadOnly="True" SortExpression="Cod_Cliente" InsertVisible="False" />
                <asp:BoundField DataField="Identificacion" HeaderText="Identificacion" SortExpression="Identificacion" ReadOnly="True" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
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

