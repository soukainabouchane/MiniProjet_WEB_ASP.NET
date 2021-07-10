<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="MasterPageExample.WebForm4" Culture="aa-ET" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            margin-top: 76px;
            margin-left: 258px;
            margin-right: 0px;
            background: rgba(0, 0, 0, 0.5);
            border:solid;
            border-color:white;
            border-width:7px;
          -webkit-box-shadow: 0px 0px 2px 1px rgba(253, 249, 249, 0.75);
    -moz-box-shadow: 0px 0px 2px 1px rgba(253, 249, 249, 0.75);
    box-shadow: 0px 0px 2px 1px rgba(253, 249, 249, 0.75);
    color:#ffffff
        }
        .auto-style2 {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-style: italic;
            font-weight: bold;
            font-size: xx-large;
            color: #000099;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
             background: rgba(0, 0, 0, 0.5);
             padding:10px;
             margin:10px;
             border:solid;
             border-color:khaki;
             border-radius:10px;
                 -webkit-box-shadow: 0px 0px 2px 1px rgba(253, 249, 249, 0.75);
    -moz-box-shadow: 0px 0px 2px 1px rgba(253, 249, 249, 0.75);
    box-shadow: 0px 0px 2px 1px rgba(253, 249, 249, 0.75);
        }
        body{
    padding: 3em 0;
   background: url(../images/pexels-fauxels-3184450.jpg) 0 0 no-repeat;

	background-attachment:fixed;
	background-size:cover;
        }
        .auto-style5 {
            font-style: normal;
            font-size: larger;
            color: #FFFFFF;
        }
        .buttoncss:hover {
    background: #ff4f81;
	border: 3px solid #94a0ae;
}
        .buttoncss{
     transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
    outline: none;
    color: #FFFFFF;
    width: 100%;
    padding: .4em 1em;
	letter-spacing: 1px;
    margin: 1.5em 0 0 0;
    -webkit-appearance: none;
    background: #94a0ae;
    border: 2px solid #2dde98;
    border-radius:10px;
    cursor: pointer;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
	font-family: 'Poppins', sans-serif;
    font-size: 20px;
    border-color:red;
        }
        .lbllogin{
            padding:10px;
            margin:10px;
        }
        .boxstyle {
            background: rgba(0, 0, 0, 0.5);
            color: white;
            border-color: white;
            border: double;
            border-radius:10px;
            padding: 10px;
            margin: 10px;
        }
       
    </style>
</head>
<body> 
     <form id="form1" runat="server">
        <div>
            <div class="auto-style2">
                <span class="auto-style4"><span class="auto-style5">Gestion</span> <span class="auto-style5">Commerciale</span></span><div class="auto-style3">
            <asp:Login ID="Lgn" runat="server" BorderPadding="0" DestinationPageUrl="~/WebForm1.aspx" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="0.8em" Height="462px" OnAuthenticate="Login1_Authenticate" Width="786px" CssClass="auto-style1" RememberMeText="    Mémoriser le mot de passe.">
                <CheckBoxStyle CssClass="lbllogin" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LabelStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" CssClass="lbllogin" />
                <LoginButtonStyle BorderStyle="Solid" Font-Names="Verdana" Font-Size="20px" CssClass="buttoncss" Height="50px" />
                <TextBoxStyle Font-Size="20px" CssClass="boxstyle" />
                <TitleTextStyle Font-Bold="True" Font-Size="30px" ForeColor="White" BorderStyle="None" BackColor="Red" />
            </asp:Login>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
