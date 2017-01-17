<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passchange.aspx.cs" Inherits="fundManage.passchange" %>

<html>
    <head>
        <title>Password Recovery</title>
    </head>
    <body>

        <form id="myform" runat="server">
    <fieldset>
        <legend>
                Password changing..
        </legend>

        <table cellpadding="5px" cellspacing="5px" align="center">
            <thead>
                <th colspan="2" align="center">Password changeing</th>
            </thead>
           
            <tr>
                <td>New Password</td>
                <td><asp:TextBox ID="txtnpass" runat="server" placeholder="Enter New password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnpass" ErrorMessage="enter new  password" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox ID="txtncpass" runat="server" placeholder="Enter Confirm password" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpass" ControlToValidate="txtncpass" ErrorMessage="password mismatch" ForeColor="#CC0000" SetFocusOnError="True"></asp:CompareValidator>
                 </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><asp:Button ID="btnsubmit" Text="change" runat="server" OnClick="btnsubmit_Click" Height="26px" /></td>
            </tr>

        </table>


    </fieldset>
</form>


</body>
    </html>

