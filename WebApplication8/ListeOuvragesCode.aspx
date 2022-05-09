<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListeOuvragesCode.aspx.cs" Inherits="WebApplication8.ListeOuvragesCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;<asp:TextBox ID="txtRecherche"  runat= "server"></asp:TextBox>
    
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Chercher" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAjouter" runat="server" CssClass="btn btn-success" OnClick="btnAjouter_Click" Text="Ajouter ouvrage" />
&nbsp; 
        
       <a href="ajouterOuvrage.aspx">ajouter</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AjouterOuvrage.aspx">HyperLink</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ajouter</asp:LinkButton>
        
        
        
        <br />
        <div id="lstO" runat="server">
        </div>
    </form>
    <script>
        function AfficherListe() {
            lstO.innerHTML = "bonjour"

        }


    </script>
</body>
</html>
