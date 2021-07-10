<%@ Page Title="" Language="C#" MasterPageFile="~/SiteExample.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MasterPageExample.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 240px;
        }
        .auto-style10 {
            height: 29px;
            color:black;
        }
        .lblattension{
            border-radius: 15px;
            background-color:red ;
            margin:10px;
            padding:15px;
            font-size:15px;

        }
        .auto-style11 {
            width: 319px;
            margin-top: 0px;
        }
        .auto-style13 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblAlert" Class="lblattension" runat="server" Text="Gestion commercial" ForeColor="Black" BackColor="Red" BorderColor="Black" BorderStyle="Solid" CssClass="lblattension" Height="60px" Width="631px"></asp:Label>
            <br />
            <br />
    <br />



    <table align="center" class="auto-style24">
        <tr>
            <td class="auto-style11">
     <asp:Label ID="Label5" runat="server" Text="" CssClass="auto-style13">Numero du catégorie</asp:Label>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID="TextId" runat="server" CssClass="auto-style8" Width="362px" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
              <tr>
            <td class="auto-style11">
     <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style13">Nom catégorie</asp:Label>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID="TextName" runat="server" CssClass="auto-style10" Width="362px" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
                  <tr>
            <td class="auto-style11">
     <asp:Label ID="lbl" runat="server" Text="" CssClass="auto-style13">Descrption</asp:Label>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID="TextDesc" runat="server" CssClass="auto-style10"  Width="362px" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
    
       
    
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style28">

      <asp:Button ID="btnUpdate" runat="server" Text="update" OnClick = "btnUpdate_Click" Class="btn btn-primary" Height="40px" Width="85px"/>
     <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick = "btnSubmit_Click" Class="btn btn-success" Height="40px" Width="85px"/>
      <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick =  "btnDelete_Click" Class="btn btn-secondary" Height="40px" Width="85px"/>
         <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick =  "btnSearch_Click" Class="btn btn-warning" Height="40px" Width="85px"/>
            </td>
        </tr>
    </table>
    <p>

         <asp:GridView ID="grd" runat="server" CssClass="auto-style33" Height="262px" Width="833px" style="margin-top: 13px">
    </asp:GridView>


    
   
    

    <br />
  
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
