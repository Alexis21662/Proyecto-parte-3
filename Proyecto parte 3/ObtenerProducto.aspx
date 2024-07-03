<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ObtenerProducto.aspx.vb" Inherits="Proyecto_parte_3.ObtenerProducto" %>

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
		<asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
			<Columns>
				<asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="ObtenerInventarioProducto" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:ControlParameter ControlID="TextBox11" Name="ProductoID" PropertyName="Text" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>
		<p>
			ProductoID
			<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
		</p>
		<p>
			<asp:Button ID="Button4" runat="server" Text="Button" Width="216px" />
		</p>
            <p>
			    <asp:Button ID="Button5" runat="server" Text="Menu" Width="209px" />
		</p>
        </div>
    </form>
</body>
</html>
