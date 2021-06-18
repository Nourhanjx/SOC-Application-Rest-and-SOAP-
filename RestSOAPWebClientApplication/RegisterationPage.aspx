<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegisterationPage.aspx.vb" Inherits="RestSOAPWebClientApplication.RegisterationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                        <br />

            Firsrt Name: <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 10px" Width="279px"></asp:TextBox>
                 <br />
            Last Name: <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 20px" Width="283px"></asp:TextBox>
                 <br />
            Age: <asp:TextBox ID="TextBox3" runat="server" Width="50px" style="margin-left: 74px"></asp:TextBox>
                 <br />
            <asp:Button ID="Generator" runat="server" Text="Generate Password and LoginID" style="margin-bottom: 0px; margin-left: 107px;" Width="275px" />

            <br />

                        <br />

            <asp:Label ID="LoginID" runat="server" Text="LoginID"></asp:Label>
                <br />
                 <br />
                 <br />

            <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                <br />
                 <br />
                 <br />


        </div>
    </form>
 
</body>
</html>
