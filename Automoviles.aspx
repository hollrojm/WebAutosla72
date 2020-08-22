<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Automoviles.aspx.cs" Inherits="WebAutosla72.Automoviles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>
<body>
   <div class="container">
       <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
           <h3>
           Autos La 72
          <small class="text-muted">Vehiculos</small>
           </h3>          
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Link 1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Link 2</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Link 3</a>
    </li>
  </ul>

</nav>  
       <br />
       <br />
       <div class="">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Matricula" DataSourceID="SqlDataSource1" AllowPaging="True">
            <EditItemTemplate>
                <div class="">
                <div class="form-check-label">
                    
                        <asp:Label  ID="Label1" runat="server" Text="Matricula:"></asp:Label>
                        <asp:Label  ID="MatriculaLabel1" runat="server" Text='<%# Eval("Matricula") %>' />

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
                <asp:RequiredFieldValidator runat="server" id="ReqModelo" controltovalidate="ModeloTextBox" errormessage="* Por favor ingrese Modelo!" ForeColor="Red" />
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
                Matricula:
                <asp:Label ID="MatriculaLabel" runat="server" Text='<%# Eval("Matricula") %>' />
                <br />
                Modelo:
                <asp:Label ID="ModeloLabel" runat="server" Text='<%# Bind("Modelo") %>' />
                <br />
                Marca:
                <asp:Label ID="MarcaLabel" runat="server" Text='<%# Bind("Marca") %>' />
                <br />
                Color:
                <asp:Label ID="ColorLabel" runat="server" Text='<%# Bind("Color") %>' />
                <br />
                Precio:
                <asp:Label ID="PrecioLabel" runat="server" Text='<%# Bind("Precio") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
        </asp:FormView>
        <asp:GridView class=" table table-dark " ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Matricula" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Matricula" HeaderText="Matricula" ReadOnly="True" SortExpression="Matricula" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAutosla72ConnectionString3 %>" DeleteCommand="sp_eliminar_Datos_Automoviles" DeleteCommandType="StoredProcedure" InsertCommand="sp_Insertar_Automoviles" InsertCommandType="StoredProcedure" SelectCommand="sp_consultar_automoviles" SelectCommandType="StoredProcedure" UpdateCommand="sp_modificar_automovil" UpdateCommandType="StoredProcedure">

        </asp:SqlDataSource>
    </form>
   </div>
    </div>
</body>
</html>
