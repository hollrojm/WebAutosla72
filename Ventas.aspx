<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="WebAutosla72.Ventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ventas</title>
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
          <small class="text-muted"><i class="fas fa-comments-dollar"></i></small>
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
           <p class="h1 text-center "><i class="fas fa-dollar-sign text-primary"></i>&nbsp;VENTAS&nbsp;<i class="fas fa-dollar-sign text-primary"></i></p> 
            <br />
       <div class="">
    <form id="form1" runat="server">
      <div class="d-flex">
          <div class="flex-fill">
              <asp:FormView ID="FormView1"  runat="server" DataKeyNames="Factura_id" DataSourceID="SqlDataSource1">
                  <EditItemTemplate>
                    <div class="form-group">
                      Factura:
                      <asp:Label class="form-control text-secondary" ID="Factura_idLabel1" runat="server" Text='<%# Eval("Factura_id") %>' />
                     </div>
                      <div class="form-group">
                      Matricula:
                      <asp:TextBox class="form-control" ID="Matricula_Auto_ventaTextBox" runat="server" Text='<%# Bind("Matricula_Auto_venta") %>' />
                          </div>
                      <div class="form-group">
                      Identificacion Cliente:
                      <asp:TextBox class="form-control" ID="Identificacion_Cli_ventaTextBox" runat="server" Text='<%# Bind("Identificacion_Cli_venta") %>' />
                          </div>
                      <br />
                      <asp:LinkButton class="btn btn-success" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                      &nbsp;<asp:LinkButton class="btn btn-danger" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <div class="form-group">
                      <asp:Label ID="Labe31" runat="server" Text="Matricula:"></asp:Label>
                          &nbsp;<asp:RequiredFieldValidator runat="server" id="ReqModelo" controltovalidate="Matricula_Auto_ventaTextBox" errormessage="* Requerido!" ForeColor="Red" />
                      <asp:TextBox class="form-control" ID="Matricula_Auto_ventaTextBox" runat="server" Text='<%# Bind("Matricula_Auto_venta") %>' />
                      </div>
                      <div class="form-group">
                      <asp:Label ID="Label1" runat="server" Text="Identificacion Cliente:"></asp:Label>
                      &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="Identificacion_Cli_ventaTextBox" errormessage="* Requerido!" ForeColor="Red" />
                      <asp:TextBox class="form-control" ID="Identificacion_Cli_ventaTextBox" runat="server" Text='<%# Bind("Identificacion_Cli_venta") %>' />
                      </div>
                      <asp:LinkButton class="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                      &nbsp;<asp:LinkButton class="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <div class="form-group">
                      Factura:
                      <asp:Label class="form-control text-secondary" ID="Factura_idLabel" runat="server" Text='<%# Eval("Factura_id") %>' />
                          </div>
                      <div class="form-group">
                      Matricula:
                      <asp:Label class="form-control text-secondary" ID="Matricula_Auto_ventaLabel" runat="server" Text='<%# Bind("Matricula_Auto_venta") %>' />
                          </div>
                      <div class="form-group">
                      Identificacion Cliente:
                      <asp:Label class="form-control text-secondary" ID="Identificacion_Cli_ventaLabel" runat="server" Text='<%# Bind("Identificacion_Cli_venta") %>' />
                          </div>
                      <br />
                      <asp:LinkButton class="btn btn-warning " ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                      &nbsp;<asp:LinkButton class="btn btn-danger" ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                      &nbsp;<asp:LinkButton class="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
                  </ItemTemplate>
              </asp:FormView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAutosla72ConnectionString10 %>" DeleteCommand="sp_eliminar_Venta" DeleteCommandType="StoredProcedure" InsertCommand="sp_ingresar_venta" InsertCommandType="StoredProcedure" SelectCommand="sp_consulta_ventas" SelectCommandType="StoredProcedure" UpdateCommand="sp_modificar_venta" UpdateCommandType="StoredProcedure">
                  <DeleteParameters>
                      <asp:Parameter Name="Matricula_Auto_venta" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Matricula_Auto_venta" Type="String" />
                      <asp:Parameter Name="Identificacion_Cli_venta" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Factura_id" Type="Int64" />
                      <asp:Parameter Name="Matricula_Auto_venta" Type="String" />
                      <asp:Parameter Name="Identificacion_Cli_venta" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
     </div>
     <div class="flex-fill" >
         <asp:GridView ID="GridView1" pagesize="5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Factura_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="Factura_id" HeaderText="Factura" InsertVisible="False" ReadOnly="True" SortExpression="Factura_id" />
                 <asp:BoundField DataField="Matricula_Auto_venta" HeaderText="Matricula" SortExpression="Matricula_Auto_venta" />
                 <asp:BoundField DataField="Identificacion_Cli_venta" HeaderText="Identificacion Cliente" SortExpression="Identificacion_Cli_venta" />
             </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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
       <br />
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

