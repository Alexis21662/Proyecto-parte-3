<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Calcularventascliente.aspx.vb" Inherits="Proyecto_parte_3.Calcularventascliente" %>

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
		<asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10">
			<Columns>
				<asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
				<asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
				<asp:BoundField DataField="TotalVentas" HeaderText="TotalVentas" ReadOnly="True" SortExpression="TotalVentas" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="CalcularTotalVentasPorCliente" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:ControlParameter ControlID="TextBox19" Name="ClienteID" PropertyName="Text" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>
		<br />
		ClienteID <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
		    <br />
		    <br />
            <asp:Button ID="Button10" runat="server" Text="Button" Width="224px" />
            <br />
            <br />
            <asp:Button ID="Button11" runat="server" Text="MENU" Width="224px" />
        </div>
    </form>
</body>
</html>
