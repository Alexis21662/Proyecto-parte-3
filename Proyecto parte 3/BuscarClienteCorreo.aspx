<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BuscarClienteCorreo.aspx.vb" Inherits="Proyecto_parte_3.BuscarClienteCorreo" %>

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
		<asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataKeyNames="ClienteID" DataSourceID="SqlDataSource7">
			<Columns>
				<asp:BoundField DataField="ClienteID" HeaderText="ClienteID" InsertVisible="False" ReadOnly="True" SortExpression="ClienteID" />
				<asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
				<asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="BuscarClientePorCorreo" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:ControlParameter ControlID="TextBox14" Name="CorreoElectronico" PropertyName="Text" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>
		<br />
		CorreoElectronico
		<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Button ID="Button7" runat="server" style="margin-bottom: 0px" Text="Button" Width="216px" />
            <br />
            <br />
		<asp:Button ID="Button8" runat="server" style="margin-bottom: 0px" Text="Button" Width="216px" />
        </div>
    </form>
</body>
</html>
