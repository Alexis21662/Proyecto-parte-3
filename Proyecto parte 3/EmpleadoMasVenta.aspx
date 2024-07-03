<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmpleadoMasVenta.aspx.vb" Inherits="Proyecto_parte_3.EmpleadoMasVenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
			<asp:GridView ID="GridView8" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                </Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="ObtenerEmpleadoMasVentas" SelectCommandType="StoredProcedure">
			</asp:SqlDataSource>
		</p>
		<br />
		    Nombre
		<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
		<br />
		<br />
		    Apellido
		<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
		    <br />
            <br />
		<asp:Button ID="Button3" runat="server" Text="Button" Width="216px" />
		    <br />
            <br />
		<asp:Button ID="Button4" runat="server" Text="MENU" Width="216px" />
        </div>
    </form>
</body>
</html>
