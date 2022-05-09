<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterOuvrage.aspx.cs" Inherits="WebApplication8.AjouterOuvrage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        

        #shadowBox1{
            width:100%;
            height:100%;
            position:absolute;
            top:0;
            left:0;
          background-color:rgba(255,255,255,0);
          display:none;


        }
        #messageShadowBox{
            border: solid  2px black;
            padding:20px;
            margin:auto;
            width:300px;
            height:300px;
            background-color:white;
            box-shadow: 12px 12px 12px black;

        }

    </style>
</head>
<body>

    <div id="shadowBox1" runat ="server">
        <br /> <br /> <br /> <br />
        <div id="messageShadowBox">
            Enregistrement effectuée avec succes
        </div>

    </div>


    <form id="form1" runat="server">
        <div>
            <h1>Nouvel ouvrage</h1>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <table style="width:100%;">
                    <tr>
                        <td>Numero</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="lblErrNum" runat="server" ForeColor="#FF3300" Text="Numero ouvrage existant" Visible="False"></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="le numéro est obligatoire" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Titre</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Le titre est obligatoire" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Année</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="l'année est numérique" ForeColor="#FF3300" ValidationExpression="(D-)?\d{4}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Classification</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Editeur</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnValider" runat="server" CssClass="btn btn-success" Text="Valider" OnClick="btnValider_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnAnnuler" runat="server" CssClass="btn btn-default" Text="Annuler" OnClick="btnAnnuler_Click" />
                        </td>
                    </tr>
                </table>
            </p>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
