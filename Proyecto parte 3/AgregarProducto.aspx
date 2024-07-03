<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgregarProducto.aspx.vb" Inherits="Proyecto_parte_3.AgregarProducto" %>

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
			<asp:GridView ID="GridView7" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="VentaID">
                <Columns>
                    <asp:BoundField DataField="VentaID" HeaderText="VentaID" InsertVisible="False" ReadOnly="True" SortExpression="VentaID" />
                    <asp:BoundField DataField="ClienteID" HeaderText="ClienteID" SortExpression="ClienteID" />
                    <asp:BoundField DataField="FechaVenta" HeaderText="FechaVenta" SortExpression="FechaVenta" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                </Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="AgregarProducto" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox6" Name="Nombre" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox7" Name="Descripcion" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox8" Name="Precio" PropertyName="Text" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
		</p>
		<p>
			Nombre <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
		</p>
		<p>
			Descripcion
			<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
		</p>
		<p>
			Precio<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
		</p>
		<p>
			<asp:Button ID="Button2" runat="server" Text="Button" Width="210px" />
		</p>
        <p>
			<asp:Button ID="Button3" runat="server" Text="Menu" Width="207px" />
		</p>
        </div>
    </form>
</body>
</html>
