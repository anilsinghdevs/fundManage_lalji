<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="start_up.aspx.cs" Inherits="fundManage.start_up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        body{
              

        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1><%

           start_up_aspx c = new start_up_aspx();
           int bal = c.getAvailableAmount();
           int exp = c.getTotalExpance();
        %> </h1>
     
    <center>
        <fieldset>
            <legend>Summery</legend>
        <div style="align-self:center;height:auto;width:auto">
            <h2>Total Amount Recieved :- <%Response.Write(bal); %></h2>
            <h2>Total Expance money :- <% Response.Write(exp); %> </h2>
            <h2>Total Available Balanc :- <% Response.Write(bal - exp);%></h2>
      <h3>Last 5 Amount Added
      </h3>
         <asp:GridView ID="gridAMT" runat="server" />
            <h3> Last 5 Exapances </h3>
    <asp:GridView ID="gridEXP" runat="server" />

          </div>
       </fieldset>

        </center>
</asp:Content>
