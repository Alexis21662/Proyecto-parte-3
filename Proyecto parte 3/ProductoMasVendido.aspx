<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ProductoMasVendido.aspx.vb" Inherits="Proyecto_parte_3.ProductoMasVendido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
			<asp:GridView ID="GridView8" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="CantidadVentas" HeaderText="CantidadVentas" SortExpression="CantidadVentas" ReadOnly="True" />
                </Columns>
			</asp:GridView>
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="ObtenerProductoMasVendido" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
		</p>
		    <br />
            Nombre <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style1"></asp:TextBox>
		<br />
		<br />
		    CantidadVentas
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
