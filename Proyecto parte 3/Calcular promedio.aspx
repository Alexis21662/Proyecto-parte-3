<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Calcular promedio.aspx.vb" Inherits="Proyecto_parte_3.Calcular_promedio" %>

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
		<asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
			<Columns>
				<asp:BoundField DataField="PromedioPrecio" HeaderText="PromedioPrecio" ReadOnly="True" SortExpression="PromedioPrecio" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="CalcularPromedioPrecioCategoria" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:ControlParameter ControlID="TextBox13" Name="CategoriaID" PropertyName="Text" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>
		<br />
		CategoriaID
		<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Button ID="Button6" runat="server" Text="Button" Width="216px" />
            <br />
            <br />
		<asp:Button ID="Button7" runat="server" Text="Menu" Width="216px" />
            <br />
        </div>
    </form>
</body>
</html>
