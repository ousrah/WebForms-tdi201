<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }

        .titre{
            border: medium double #FF0000;
            padding: 20px;
            margin: auto;
            font-size: large;
            color: #224488;
            font-family: Alef;
            font-weight: 300;
            text-decoration: underline;
        }
        .SousTitre {
            font-size: medium;
            color: #800080;
        }

    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
          <div>
            <%for (int i = 1; i < 10; i++)
                {%>
          <h<%=i%>>  ligne dynamique</h<%=i%>>
          
            <%} %>

        </div>
    <form id="form1" runat="server">


        <strong>


        <br class="auto-style1" />
        </strong><span class="auto-style1">Addition </span><br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Addition" OnClick="Button1_Click" />
       
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

  </form>
</body>
</html>
