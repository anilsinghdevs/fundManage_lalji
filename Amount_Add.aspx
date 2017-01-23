<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Amount_Add.aspx.cs" Inherits="fundManage.Amount_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <fieldset>
            <legend>Adding Amount </legend>
        <table cellpadding="5px" cellspacing="5px" align="center">
            <thead>
                <th align="center" colspan="2"> Adding amount </th>
            </thead>
            <tr>
                <td>Name of Person</td>
                <td><asp:TextBox ID="txtnm" runat="server" placeholder="Enter the person name" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnm" ErrorMessage="Enter name of person" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>Amount</td>
                <td><asp:TextBox ID="txtamount" runat="server" placeholder="Enter the Amount" TextMode="Number" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtamount" ErrorMessage="Enter amount" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td>Message</td>
                <td><asp:TextBox ID="txtmsg" runat="server" placeholder="Enter the Message" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmsg" ErrorMessage="Enter Message" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td colspan="2" align="center"> <asp:Button ID="btnsubmit" runat="server" Text="Add Amount" OnClick="btnsubmit_Click" /></td>
          
            </tr>



        </table>
            <br />
            <br />
            <center>
             <asp:GridView runat="server" ID="grid_amt" AutoGenerateColumns="False" OnRowDelete="onRoeDelete">
           <Columns>
               <asp:TemplateField HeaderText="ID">
                   <ItemTemplate>
                       <asp:Label ID="lblid" runat="server" Text='<%#Eval("ID") %>' />
                   </ItemTemplate>
                   
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Name Of Person">
                   <ItemTemplate>
                       <asp:Label ID="lblnm" runat="server" Text='<%#Eval("name_of_person") %>' />
                   </ItemTemplate>
                   <EditItemTemplate>
                       <asp:TextBox ID="txtnm" runat="server" Text='<%#Eval("name_of_person") %>' />
                    </EditItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Amount">
                   <ItemTemplate>
                       <asp:Label ID="lblamt" runat="server" Text='<%#Eval("amount") %>'/>
                   </ItemTemplate>
                   <EditItemTemplate>
                       <asp:TextBox ID="txtamt" runat="server" Text='<%#("amount") %>'/>
                   </EditItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Messages">
                   <ItemTemplate>
                       <asp:Label ID="lblmsg" runat="server" Text='<%#Eval("message") %>' />
                   </ItemTemplate>
                   <EditItemTemplate>
                       <asp:TextBox ID="txtmsg" runat="server" Text='<%#Eval("message") %>' />
                   </EditItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:Label ID="lbllog" runat="server" Text='<%#Eval("Log") %>' />
                   </ItemTemplate>
                   <EditItemTemplate>
                       <asp:TextBox ID="txtlog" runat="server" Text='<%#Eval("Log") %>' />                   </EditItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Date">
                   <ItemTemplate>
                       <asp:Label ID="lbldate" runat="server" Text='<%#Eval("Date") %>' />
                   </ItemTemplate>
                   <EditItemTemplate>
                       <asp:TextBox ID="txtdate" runat="server" Text='<%#Eval("Date") %>' />
                   </EditItemTemplate>
               </asp:TemplateField>
               <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ShowEditButton="true" ShowCancelButton="true" />
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
            </center>
            </fieldset>
    </div>


</asp:Content>
