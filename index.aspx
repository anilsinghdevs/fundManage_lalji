<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="fundManage.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
       

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellpadding="5px" cellspacing="5px" align="center">
            <thead>
                <th colspan="2" align="center">Login</th>
            </thead>
            <tr>
                <td>Enter Email or mobile no</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            </tr>
              <tr>
                <td>Enter Password</td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnsubmit" runat="server" Text="Login" OnClick="btnsubmit_Click" />&nbsp; <a href="forgetPass.aspx"> Forget Password..</a>
                    </td>
            </tr>

        </table>

    </div>
    </form>
</body>
</html>
