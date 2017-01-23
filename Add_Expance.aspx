<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Add_Expance.aspx.cs" Inherits="fundManage.Add_Expance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
         <fieldset>
             <legend>Adding Expances</legend>
         
        <table cellpadding="5px" cellspacing="5px" align="center">
            <thead>
                <th align="center" colspan="2"> Adding amount </th>
            </thead>
            <tr>
                <td>type of expance</td>
                <td><asp:TextBox ID="txtex" runat="server" placeholder="Enter the type of expance" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtex" ErrorMessage="Enter name of person" ForeColor="#CC0000" SetFocusOnError="True"></asp:RequiredFieldValidator>
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
            <td colspan="2" align="center"> <asp:Button ID="btnsubmit" runat="server" Text="Add expance" OnClick="btnsubmit_Click" /></td>
          
            </tr>



        </table>
             </fieldset>
    </div>

    <div>
         <fieldset>
             <legend>ALL Exapances</legend>

             <center>
             <asp:GridView ID="grid_expance" runat="server" OnRowUpdating="onRowUpdate" DataKeyNames="ID" OnRowCancelingEdit="onEditCancel" OnRowDeleting="onRowDelete" OnRowEditing="onRowEdit" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblid" runat="server" Text='<%# Eval("ID") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <%#Eval("ID") %>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DATE">
                        <ItemTemplate>
                            <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Type of Expance">
                        <ItemTemplate>
                            <asp:Label ID="lblexp" runat="server" Text='<%# Eval("type_of_expance") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txttype" runat="server" Text='<%# Eval("type_of_expance") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label ID="lblamt" runat="server" Text='<%# Eval("amount") %>' />
                        </ItemTemplate> 
                        <EditItemTemplate>
                             <asp:TextBox ID="txtamt" runat="server" Text='<%#Eval("amount") %>' />
                        </EditItemTemplate>                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Message">
                        <ItemTemplate>
                            <asp:Label ID="lblmsg" runat="server" Text='<%# Eval("message") %>' />
                        </ItemTemplate> 
                        <EditItemTemplate>
                             <asp:TextBox ID="txtmsg" runat="server" Text='<%#Eval("message") %>' />
                        </EditItemTemplate>                        
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Log">
                        <ItemTemplate>
                            <asp:Label ID="lbllog" runat="server" Text='<%#Eval("Log") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtlog" runat="server" Text='<%#Eval("Log") %>' />
                         </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
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
