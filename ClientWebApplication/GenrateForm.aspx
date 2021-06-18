<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenrateForm.aspx.cs" Inherits="ClientWebApplication.GenrateForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
                        <br />

            Firsrt Name: <asp:TextBox ID="firstname" runat="server" style="margin-left: 10px" Width="279px"></asp:TextBox>
                 <br />
            Last Name: <asp:TextBox ID="lastname" runat="server" style="margin-left: 20px" Width="283px"></asp:TextBox>
                 <br />
            Age: <asp:TextBox ID="age" runat="server" Width="50px" style="margin-left: 74px"></asp:TextBox>
                 <br />
            <asp:Button ID="Generator" runat="server" Text="Generate Data Rest" style="margin-bottom: 0px; margin-left: 107px;" Width="275px" OnClick="Generator_Click" />
            <asp:Button ID="GeneratorSOAP" runat="server" Text="Generate Data SOAP" style="margin-bottom: 0px; margin-left: 107px;" Width="275px" OnClick="Generator_SOAP" />
            <br />
            <br />

           


            <asp:Label ID="LoginID" runat="server" Text="LoginID"></asp:Label>
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
