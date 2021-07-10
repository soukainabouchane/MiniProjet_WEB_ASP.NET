<%@ Page Title="" Language="C#" MasterPageFile="~/SiteExample.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MasterPageExample.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style43">
    <asp:Label ID="lblAlert" runat="server" CssClass="lblattension" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" BackColor="Red">Gestion commerciale</asp:Label>
            </p>
<p class="auto-style41">
    

    <table align="center" class="auto-style24">
        <tr>
            <td class="auto-style44">
     <asp:Label ID="Label5" runat="server" Text="" CssClass="auto-style60">Numero de l'article</asp:Label>
            </td>
            <td class="auto-style45">
    <asp:TextBox ID="TextId" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style56">
     <asp:Label ID="Label2" runat="server" Text="" CssClass="auto-style60">Nom </asp:Label>
            </td>
            <td class="auto-style57">
    <asp:TextBox ID="TextName" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style56">
     <asp:Label ID="Label3" runat="server" Text="" CssClass="auto-style60">Prix</asp:Label>
            </td>
            <td class="auto-style57">
    <asp:TextBox ID="TextPrix" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style56">
     <asp:Label ID="Label4" runat="server" Text="" CssClass="auto-style60">Description</asp:Label>
            </td>
            <td class="auto-style57">
    <asp:TextBox ID="TextDesc" runat="server" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style58">
                catégorie</td>
            <td class="auto-style59">
                <asp:DropDownList ID="id_categorie" runat="server" AutoPostBack="True" CssClass="form-control" Width="372px" OnSelectedIndexChanged="id_categorie_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
           <tr>
            <td class="auto-style49">
                &nbsp;</td>
            <td class="auto-style48">
     <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick = "btnSubmit_Click" Class="btn btn-primary" Height="40px" Width="128px"/>
         <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick =  "btnSearch_Click" CssClass="btn btn-success" Height="40px" Width="126px"/>
      <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick =  "btnDelete_Click" Class="btn btn-secondary" Height="40px" Width="145px" style="margin-top: 0px; margin-right: 0px;"/>
      <asp:Button ID="btnUpdate" runat="server" Text="update" OnClick = "btnUpdate_Click" Class="btn btn-warning" Height="40px" Width="132px"/>
            </td>
        </tr>
    

        <br />
    <asp:GridView ID="grd" runat="server" CssClass="auto-style33" Height="262px" Width="596px">
    </asp:GridView>
        <br />
       <br />

       <br />
       <br />
     
     <br />
       <br />
       <br />
       <br />
</p>
<p>
   
    &nbsp;</p>
<p>
    &nbsp;</p>
     <br />
        <br />
    <!--hhhhh-->
   <!-- <form id ="form1">
   <div align ="center">
        <table border ="1" style="box-shadow:1px 1px 6px; font-size: 18pt; text-align:center" class="auto-style14">
            <asp:HiddenField ID="hdnID" runat="server" />
            <tr>
                   <td class="auto-style19">ID<td class="auto-style16"> 
           <td class="auto-style16"> <asp:TextBox ID= "txtId" runat="server" CssClass="auto-style17" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox></td>
             </tr>
        <tr>
              <td class="auto-style20">Name<td> 
  <td> <asp:TextBox ID="txtName" runat="server" CssClass="auto-style17" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox></td>
      </tr>
          <tr>
               <td class="auto-style20">Prix<td> 
    <td class="auto-style15"><asp:TextBox ID="txtPrix" runat="server" CssClass="auto-style18" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox></td>
      </tr>
      <tr>
           <td class="auto-style20">Desc<td> 
    <td><asp:TextBox ID="txtDesc" runat="server" CssClass="auto-style18" OnTextChanged="TextBox1_TextChanged" Width="362px"></asp:TextBox></td>
          </tr>
     
             <tr>
     <td class="auto-style20"><asp:Button ID="btnuepdate" runat="server" Text="modifier" OnClick =  "btnUpdate_Click" CssClass="auto-style9" Height="27px" Width="210px"/></td>
     </tr>

      </asp:HiddenField>
       </table>
      
</div>
         </form>-->
    <!--ffffffffffffffffffffffffff-->
<p>
    &nbsp;</p>


<p>
</p>
<p>
</p>
<p>
</p>
    <script>
    </script>
    <style>
            /* <div align ="center">
    <table border ="1" style="border:1px solid !important; width:20%; font-size: 18pt; text-align:center">
        <asp:Repeater runat="server" ID="rptData">
            <ItemTemplate>
        <tr>
            <td><asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>'></asp:Label></td>
            <td><asp:Label ID="lblName" runat="server" Text='<%# Eval("nom_article") %>'></asp:Label></td>
                   <td><asp:Label ID="lblPrix" runat="server" Text='<%# Eval("prix_unitaire") %>'></asp:Label></td>
                   <td><asp:Label ID="lblDesc" runat="server" Text='<%# Eval("description") %>'></asp:Label></td>
            <td><asp:Button ID="btnEdite" runat="server" Text="Edite"   CssClass="auto-style9" Height="27px" Width="210px" ></asp:Button></td>
           
        </tr>
         </ItemTemplate>
        </asp:Repeater>
    </table>
         </div>  
                */
        .lblattension{
            border-radius: 15px;
            background-color:yellowgreen ;
            margin:10px;
            padding:15px;
            font-size:15px;

        }
        /*ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss*/

        .auto-style24 {
            width: 100%;
        height: 519px;
    }
        .auto-style33 {
            margin-left: 135px;
        margin-right: 0px;
    }
        .auto-style41 {
        width: 766px;
    }
    .auto-style43 {
        text-align: center;
    }
    .auto-style44 {
        width: 392px;
        text-align: center;
        height: 79px;
    }
    .auto-style45 {
        width: 640px;
        text-align: left;
        height: 79px;
    }
        .auto-style48 {
            width: 640px;
        }
        .auto-style49 {
            margin-top: 0px;
            width: 392px;
        }
        .auto-style56 {
            width: 392px;
            text-align: center;
            height: 80px;
        }
        .auto-style57 {
            width: 640px;
            text-align: left;
            height: 80px;
        }
        .auto-style58 {
            width: 392px;
            text-align: center;
            height: 85px;
        font-weight: bold;
        font-size: large;
    }
        .auto-style59 {
            width: 640px;
            text-align: left;
            height: 85px;
        }
    .auto-style60 {
        font-weight: bold;
        font-size: large;
    }
    </style>
</asp:Content>
