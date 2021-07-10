<%@ Page Title="" Language="C#" MasterPageFile="~/SiteExample.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MasterPageExample.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 48px;
        }
        .auto-style9 {
            height: 48px;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="lblAlert" runat="server" CssClass="lblattension" Text="Gestion commercial" BorderColor="Black" BorderStyle="Solid"></asp:Label>
       </p>
     <table align="center" class="auto-style24">
        <tr>
            <td class="auto-style15">
     <asp:Label ID="Label5" runat="server" Text="" CssClass="auto-style20">Numero de la commande</asp:Label>
            </td>
            <td class="auto-style13">
    <asp:TextBox ID= "TextId" runat="server" CssClass="auto-style19"  Width="363px"></asp:TextBox>
            </td>
        </tr>
              <tr>
            <td class="auto-style15">
     <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style20">Nom </asp:Label>
            </td>
            <td class="auto-style8">
    <asp:TextBox ID="TextName" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox>
            </td>
        </tr>
    
        <tr>
            <td class="auto-style16">
     <asp:Label ID="Label3" runat="server" Text="" CssClass="auto-style17">quantité de l'article</asp:Label>
            </td>
            <td class="auto-style9">
    <asp:TextBox ID="TextQtt" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style18">
                Numéro de l'article</td>
            <td class="auto-style10">
                <asp:DropDownList ID="id_article" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="365px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style28">
      <asp:Button ID="btnUpdate" runat="server" Text="update" OnClick = "btnUpdate_Click" CssClass="btn btn-primary" Height="40px" Width="85px"/>
     <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick = "btnSubmit_Click" CssClass="btn btn-success" Height="40px" Width="85px"/>
      <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick =  "btnDelete_Click" CssClass="btn btn-secondary" Height="40px" Width="85px"/>
         <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick =  "btnSearch_Click" CssClass="btn btn-warning" Height="40px" Width="85px"/>
            </td>
        </tr>
    </table>
    <p>

         <asp:GridView ID="grd" runat="server" CssClass="auto-style33" Height="262px" Width="833px">
    </asp:GridView>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <style>
        .lblattension{
            border-radius: 15px;
            background-color:red ;
            margin:10px;
            padding:15px;
            font-size:15px;

        }
    .auto-style13 {
        height: 48px;
        color: white;
        font-weight: bold;
        font-size: x-large;
        margin-top: 0px;
    }
    .auto-style15 {
        height: 48px;
        color: white;
        font-weight: bold;
        font-size: x-large;
        width: 198px;
        margin-top: 0px;
    }
    .auto-style16 {
        height: 63px;
        width: 198px;
        margin-top: 0px;
    }
    .auto-style17 {
        font-weight: bold;
        font-size: medium;
    }
    .auto-style18 {
        height: 63px;
        width: 198px;
        font-weight: bold;
        font-size: medium;
        margin-top: 0px;
    }
    .auto-style19 {
        display: block;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        background-clip: padding-box;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: 0.25rem;
        transition: none;
        border: 1px solid #ced4da;
        margin-left: 8;
        background-color: #fff;
    }
    .auto-style20 {
        font-size: medium;
        color: black;
    }
    </style>
</asp:Content>
