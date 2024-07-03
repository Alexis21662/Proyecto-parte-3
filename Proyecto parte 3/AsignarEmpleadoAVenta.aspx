<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AsignarEmpleadoAVenta.aspx.vb" Inherits="Proyecto_parte_3.AsignarEmpleadoAVenta" %>

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
		<asp:GridView ID="GridView15" runat="server" DataSourceID="SqlDataSource11">
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="AsignarEmpleadoAVenta" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:ControlParameter ControlID="TextBox20" Name="VentaID" PropertyName="Text" Type="Int32" />
				<asp:ControlParameter ControlID="TextBox21" Name="EmpleadoID" PropertyName="Text" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>
		<br />
		VentaID
		<asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
		<br />
		EmpleadoID
		<asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
		    <br />
            <asp:Button ID="Button11" runat="server" Text="Button" Width="224px" />
            <br />
            <br />
            <asp:Button ID="Button12" runat="server" Text="MENU" Width="224px" />
        </div>
    </form>
</body>
</html>
