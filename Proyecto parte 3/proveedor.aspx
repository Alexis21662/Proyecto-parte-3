<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="proveedor.aspx.vb" Inherits="Proyecto_parte_3.proveedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
		<p>
			<asp:GridView ID="GridView7" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="VentaID">
                <Columns>
                    <asp:BoundField DataField="VentaID" HeaderText="VentaID" InsertVisible="False" ReadOnly="True" SortExpression="VentaID" />
                    <asp:BoundField DataField="ClienteID" HeaderText="ClienteID" SortExpression="ClienteID" />
                    <asp:BoundField DataField="FechaVenta" HeaderText="FechaVenta" SortExpression="FechaVenta" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                </Columns>
			</asp:GridView>
			<asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="ClienteID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="ClienteID" HeaderText="ClienteID" InsertVisible="False" ReadOnly="True" SortExpression="ClienteID" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="SELECT [ClienteID], [Nombre] FROM [Clientes]"></asp:SqlDataSource>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="RegistrarVenta" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox6" Name="ClienteID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox7" DbType="Date" Name="FechaVenta" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox8" Name="Total" PropertyName="Text" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
		</p>
		<p>
			Cliente ID
			<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
		</p>
		<p>
			Fecha Venta
			<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
		</p>
		<p>
			Total
			<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
		</p>
		<p>
			<asp:Button ID="Button2" runat="server" Text="Button" Width="210px" />
		</p>
        <p>
			<asp:Button ID="Button3" runat="server" Text="Menu" Width="207px" />
		</p>
    </form>
</body>
</html>
