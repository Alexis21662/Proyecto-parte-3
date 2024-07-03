<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrarDevolucion.aspx.vb" Inherits="Proyecto_parte_3.RegistrarDevolucion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
		<asp:GridView ID="GridView12" runat="server" DataSourceID="SqlDataSource8">
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoParte3ConnectionString %>" SelectCommand="RegistrarDevolucion" SelectCommandType="StoredProcedure">
			<SelectParameters>
				<asp:ControlParameter ControlID="TextBox15" Name="VentaID" PropertyName="Text" Type="Int32" />
				<asp:ControlParameter ControlID="TextBox16" Name="ProductoID" PropertyName="Text" Type="Int32" />
				<asp:ControlParameter ControlID="TextBox17" Name="CantidadDevuelta" PropertyName="Text" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>
		<br />
		VentaID
		<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
		<br />
		ProductoID
		<asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
		<br />
		CantidadDevuelta
		<asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
		    <br />
            <br />
            <asp:Button ID="Button10" runat="server" Text="Button" Width="270px" />
            <br />
            <br />
            <asp:Button ID="Button11" runat="server" Text="MENU" Width="270px" />
            <br />
		    <br />
        </div>
    </form>
</body>
</html>
