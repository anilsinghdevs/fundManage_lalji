<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="ViewAMT.aspx.cs" Inherits="fundManage.ViewAMT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <fieldset title="All Amount"> 
         <legend>Total Amount</legend>

        <center>
            <h3>Total Amount</h3>
        <asp:gridview runat="server" ID="gridamt" AutoGenerateColumns="False" OnRowDelete="onRoeDelete" OnRowEditing="onRowEdit" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
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
               



            </asp:gridview>
            </center>

    </fieldset>

</asp:Content>
