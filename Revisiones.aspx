<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Revisiones.aspx.cs" Inherits="WebAutosla72.Revisiones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Revisiones</title>
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
          <small class="text-muted"><i class="fas fa-wrench"></i></small>
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
           <p class="h1 text-center "><i class="fas fa-wrench text-primary"></i>&nbsp;REVISIONES&nbsp;<i class="fas fa-wrench text-primary"></i></p> 
            <br />
       <div class="">
    <form id="form1" runat="server">
      <div class="d-flex">
          <div class="flex-fill">
              <asp:FormView ID="FormView1" runat="server" DataKeyNames="Cod_Revision" DataSourceID="SqlDataSource1" AllowPaging="True">
                  <EditItemTemplate>
                  <div class="border-bottom border-warning rounded">
                      <asp:Label class="text-secondary" ID="Label1" runat="server" Text="Codigo:"></asp:Label>
                      <asp:Label ID="Cod_RevisionLabel1" runat="server" Text='<%# Eval("Cod_Revision") %>' />
                     
                  </div>
                      
                    <div class="form-group">
                      <asp:Label class="text-secondary" ID="Label2" runat="server" Text="Matricula:"></asp:Label>
                      <asp:TextBox class="form-control" ID="Matricula_revTextBox" runat="server" Text='<%# Bind("Matricula_rev") %>' />
                    </div>
                     <div class="form-group">
                      <asp:Label class="text-secondary" ID="Label3" runat="server" Text="Filtro:"></asp:Label>
                      <asp:TextBox  class="form-control" ID="FiltroTextBox" runat="server" Text='<%# Bind("Filtro") %>' />
                        </div>
                      <div class="form-group">
                      <asp:Label class="text-secondary" ID="Label4" runat="server" Text="Freno:"></asp:Label>
                      <asp:TextBox class="form-control" ID="FrenoTextBox" runat="server" Text='<%# Bind("Freno") %>' />
                          </div>
                      <div class="form-group">
                      <asp:Label class="text-secondary" ID="Label5" runat="server" Text="Aceite:"></asp:Label>
                      <asp:TextBox class="form-control" ID="AceiteTextBox" runat="server" Text='<%# Bind("Aceite") %>' />
                          </div>
                     <div class="form-group">
                      <asp:Label class="text-secondary" ID="Label6" runat="server" Text="Otros:"></asp:Label>
                      <asp:TextBox class="form-control" ID="OtrosTextBox" runat="server" Text='<%# Bind("Otros") %>' />
                         </div>
                      <div class="form-group">
                      <asp:Label class="text-secondary" ID="Label7" runat="server" Text="Fecha:"></asp:Label>
                      <asp:TextBox class="form-control" ID="FechaTextBox" runat="server" TextMode="Date" Text='<%# Bind("Fecha") %>' />
                          </div>
                      <br />
                      <asp:LinkButton class="btn btn-success" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                      &nbsp;<asp:LinkButton class="btn btn-danger" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                  </EditItemTemplate>
                  <InsertItemTemplate>
                      <div class="form-group">
                      <asp:Label class="text-secondary" ID="Label8" runat="server" Text="Matricula:"></asp:Label>
                       &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="Matricula_revTextBox" errormessage="* Requerido!" ForeColor="Red" />
                      <asp:TextBox class="form-control" ID="Matricula_revTextBox" runat="server" Text='<%# Bind("Matricula_rev") %>' />
                    </div>
                       <div class="form-group">
                      <asp:Label class="text-secondary" ID="Label9" runat="server" Text="Filtro:"></asp:Label>
                           &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="FiltroTextBox" errormessage="* Requerido!" ForeColor="Red" />
                      <asp:TextBox  class="form-control" ID="FiltroTextBox" runat="server" Text='<%# Bind("Filtro") %>' />
                        </div>
                      <div class="form-group">
                      <asp:Label class="text-secondary" ID="Labe20" runat="server" Text="Freno:"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="FrenoTextBox" errormessage="* Requerido!" ForeColor="Red" />
                      <asp:TextBox class="form-control" ID="FrenoTextBox" runat="server" Text='<%# Bind("Freno") %>' />
                          </div>
                     <div class="form-group">
                      <asp:Label class="text-secondary" ID="Labe21" runat="server" Text="Aceite:"></asp:Label>
                         &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="AceiteTextBox" errormessage="* Requerido!" ForeColor="Red" />
                      <asp:TextBox class="form-control" ID="AceiteTextBox" runat="server" Text='<%# Bind("Aceite") %>' />
                          </div>
                      <div class="form-group">
                      <asp:Label class="text-secondary" ID="Labe22" runat="server" Text="Otros:"></asp:Label>
                          &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" controltovalidate="OtrosTextBox" errormessage="* Requerido!" ForeColor="Red" />
                      <asp:TextBox class="form-control" ID="OtrosTextBox" runat="server" Text='<%# Bind("Otros") %>' />
                         </div>
                      <div class="form-group">
                      <asp:Label class="text-secondary" ID="Labe23" runat="server" Text="Fecha:"></asp:Label>
                          &nbsp;<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6" controltovalidate="FechaTextBox" errormessage="* Requerido!" ForeColor="Red" />
                      <asp:TextBox class="form-control" ID="FechaTextBox" runat="server" TextMode="Date" Text='<%# Bind("Fecha") %>' />
                          </div>
                      
                      <asp:LinkButton class="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                      &nbsp;<asp:LinkButton class="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <div class="form-group">
                      Cod_Revision:
                      <asp:Label class="form-control text-secondary" ID="Cod_RevisionLabel" runat="server" Text='<%# Eval("Cod_Revision") %>' />
                    </div>
                      <div class="form-group">
                      Matricula_rev:
                      <asp:Label class="form-control text-secondary" ID="Matricula_revLabel" runat="server" Text='<%# Bind("Matricula_rev") %>' />
                      </div>
                      <div class="form-group">
                      Filtro:
                      <asp:Label class="form-control text-secondary" ID="FiltroLabel" runat="server" Text='<%# Bind("Filtro") %>' />
                      </div>
                      <div class="form-group">
                      Freno:
                      <asp:Label class="form-control text-secondary" ID="FrenoLabel" runat="server" Text='<%# Bind("Freno") %>' />
                      </div>
                      <div class="form-group">
                      Aceite:
                      <asp:Label class="form-control text-secondary" ID="AceiteLabel" runat="server" Text='<%# Bind("Aceite") %>' />
                      </div>
                    <div class="form-group">
                      Otros:
                      <asp:Label class="form-control text-secondary" ID="OtrosLabel" runat="server" Text='<%# Bind("Otros") %>' />
                      </div>
                    <div class="form-group">
                      Fecha:
                      <asp:Label  class="form-control text-secondary" ID="FechaLabel" runat="server" Text='<%# Bind("Fecha") %>' />
                      </div>
                      <br />
                      <asp:LinkButton class="btn btn-warning " ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                      &nbsp;<asp:LinkButton class="btn btn-danger" ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                      &nbsp;<asp:LinkButton class="btn btn-success" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
                  </ItemTemplate>
              </asp:FormView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAutosla72ConnectionString8 %>" DeleteCommand="sp_eliminar_revision" DeleteCommandType="StoredProcedure" InsertCommand="sp_insertar_revisiones" InsertCommandType="StoredProcedure" SelectCommand="sp_consultar_revisiones" SelectCommandType="StoredProcedure" UpdateCommand="sp_modificar_revision" UpdateCommandType="StoredProcedure">
                  <DeleteParameters>
                      <asp:Parameter Name="Cod_Revision" Type="Int64" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Matricula_rev" Type="String" />
                      <asp:Parameter Name="Filtro" Type="String" />
                      <asp:Parameter Name="Freno" Type="String" />
                      <asp:Parameter Name="Aceite" Type="String" />
                      <asp:Parameter Name="Otros" Type="String" />
                      <asp:Parameter DbType="Date" Name="Fecha" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Cod_Revision" Type="Int64" />
                      <asp:Parameter Name="Matricula_rev" Type="String" />
                      <asp:Parameter Name="Filtro" Type="String" />
                      <asp:Parameter Name="Freno" Type="String" />
                      <asp:Parameter Name="Aceite" Type="String" />
                      <asp:Parameter Name="Otros" Type="String" />
                      <asp:Parameter DbType="Date" Name="Fecha" />
                  </UpdateParameters>
              </asp:SqlDataSource>
     </div>
     <div class="flex-fill" >
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" pagesize="10" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cod_Revision" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="Cod_Revision" HeaderText="Cod_Revision" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Revision" />
                 <asp:BoundField DataField="Matricula_rev" HeaderText="Matricula_rev" SortExpression="Matricula_rev" />
                 <asp:BoundField DataField="Filtro" HeaderText="Filtro" SortExpression="Filtro" />
                 <asp:BoundField DataField="Freno" HeaderText="Freno" SortExpression="Freno" />
                 <asp:BoundField DataField="Aceite" HeaderText="Aceite" SortExpression="Aceite" />
                 <asp:BoundField DataField="Otros" HeaderText="Otros" SortExpression="Otros" />
                 <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
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

