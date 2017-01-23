<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetPass.aspx.cs" Inherits="fundManage.forgetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table cellpadding="5px" cellspacing="5px" align="center">
                <thead>
                    <th colspan="2" align="center">Password Forget..</th>
                </thead>
                <tr>

                    <td>Enter Email id</td>
                    <td><asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email id" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><asp:Button ID="btncheck" runat="server" Text="get Password." OnClick="btncheck_Click" /></td>
                </tr>

            </table>
    </div>
    </form>
</body>
</html>
