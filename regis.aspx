<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="regis.aspx.cs" Inherits="fundManage.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #deco:hover{
            color:brown;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <asp:GridView ID="grid_user" runat="server" AutoGenerateColumns="False" DataKeyNames="uid"
       OnRowDataBound="onRowDataBound" OnRowDeleting="onRowDelete" OnRowCancelingEdit="onRowCancelEdit" 
       OnRowEditing="onRowEdit" OnRowUpdating="onRowUpdate" CellPadding="4" ForeColor="#333333" GridLines="None">
       <AlternatingRowStyle BackColor="White" />
       <Columns>

           
    <asp:TemplateField HeaderText="Username" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblunm" runat="server" Text='<%# Eval("username") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtunm" runat="server" Text='<%# Eval("username") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="FirstName" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblfnm" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtfnm" runat="server" Text='<%# Eval("firstname") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
<asp:TemplateField HeaderText="LastName" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblnm" runat="server" Text='<%# Eval("lastname") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtlnm" runat="server" Text='<%# Eval("lastname") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="mobile_no" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblmob" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtmob" runat="server" Text='<%# Eval("mobile_no") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Email id" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblemail" runat="server" Text='<%# Eval("email_id") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("email_id") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="password" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblpass" runat="server" Text='<%# Eval("password") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtpass" runat="server" Text='<%# Eval("password") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="User Type" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblutype" runat="server" Text='<%# Eval("user_type") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
           <asp:DropDownList ID="ddlut" runat="server">
             <asp:ListItem Text="VISITOR" Value="VISITOR" />
             <asp:ListItem Text="AUTHOUR" Value="AUTHOUR" />
           </asp:DropDownList>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>




    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150">
          
<ItemStyle Width="150px"></ItemStyle>
           </asp:CommandField>
          
       </Columns>               
       <EditRowStyle BackColor="#7C6F57" />
       <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
       <RowStyle BackColor="#E3EAEB" />
       <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#F8FAFA" />
       <SortedAscendingHeaderStyle BackColor="#246B61" />
       <SortedDescendingCellStyle BackColor="#D4DFE1" />
       <SortedDescendingHeaderStyle BackColor="#15524A" />
   </asp:GridView>
     <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
<tr>
    <td style="width: 150px">
        First Name:<br />
        <asp:TextBox ID="textunm" runat="server" Width="80" />
    </td>
    <td style="width: 150px">
        First Name:<br />
        <asp:TextBox ID="textfnm" runat="server" Width="80" />
    </td>
<td style="width: 150px">
        Last Name:<br />
        <asp:TextBox ID="textlnm" runat="server" Width="80" />
    </td>
<td style="width: 150px">
        mobile_no:<br />
        <asp:TextBox ID="textmob" runat="server" Width="80" />
    </td>
<td style="width: 150px">
        Email _Id:<br />
        <asp:TextBox ID="textemail" runat="server" Width="80" />
    </td>
<td style="width: 150px">
        Password:<br />
        <asp:TextBox ID="textpass" TextMode="Password" runat="server" Width="80" />
    </td>
    <td>
        User Type <br />
           <asp:DropDownList ID="listut" runat="server">
             <asp:ListItem Text="VISITOR" Value="VISITOR" />
             <asp:ListItem Text="AUTHOUR" Value="AUTHOUR" />
           </asp:DropDownList>
    </td>

    <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert"/>
    </td>
</tr>
</table>


  </asp:Content>