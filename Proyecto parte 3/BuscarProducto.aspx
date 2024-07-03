<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BuscarProducto.aspx.vb" Inherits="Proyecto_parte_3.BuscarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
		<br />
		<br />
		<asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductoID" DataSourceID="SqlDataSource12">
			<Columns>
				<asp:BoundField DataField="ProductoID" HeaderText="ProductoID" InsertVisible="False" ReadOnly="True" SortExpression="ProductoID" />
				<asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="BuscarProductoPorDescripcion" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:ControlParameter ControlID="TextBox22" Name="Descripcion" PropertyName="Text" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>
		<br />
		Descripcion
		<asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button12" runat="server" Text="Button" Width="224px" />
            <br />
            <br />
            <asp:Button ID="Button13" runat="server" Text="Menu" Width="224px" />
        </div>
    </form>
</body>
</html>
