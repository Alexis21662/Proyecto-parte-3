<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ActualizarProducto.aspx.vb" Inherits="Proyecto_parte_3.ActualizarProducto" %>

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
			<asp:GridView ID="GridView8" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" DataKeyNames="ProductoID">
                <Columns>
                    <asp:BoundField DataField="ProductoID" HeaderText="ProductoID" InsertVisible="False" ReadOnly="True" SortExpression="ProductoID" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                </Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="ActualizarDescripcionProducto" SelectCommandType="StoredProcedure">
				<SelectParameters>
					<asp:ControlParameter ControlID="TextBox9" Name="ProductoID" PropertyName="Text" Type="Int32" />
					<asp:ControlParameter ControlID="TextBox10" Name="NuevaDescripcion" PropertyName="Text" Type="String" />
				</SelectParameters>
			</asp:SqlDataSource>
		</p>
		<br />
		ProductoID
		<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
		<br />
		<br />
		NuevaDescripcion
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
