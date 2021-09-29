<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demodatetime.aspx.cs" Inherits="MyFinalProject.Demodatetime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Date Time"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
            <br />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TxtDid" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError" runat="server"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="show" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
        </div>
    </form>
</body>
</html>
