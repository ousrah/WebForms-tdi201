<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="listeEcrivains.aspx.cs" Inherits="WebApplication8.listeEcrivains" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <p>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NUMECR" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1086px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NUMECR" HeaderText="NUMECR" ReadOnly="True" SortExpression="NUMECR" />
            <asp:BoundField DataField="PRENOMECR" HeaderText="PRENOMECR" SortExpression="PRENOMECR" />
            <asp:BoundField DataField="NOMECR" HeaderText="NOMECR" SortExpression="NOMECR" />
            <asp:BoundField DataField="PAYSECR" HeaderText="PAYSECR" SortExpression="PAYSECR" />
            <asp:BoundField DataField="LANGUECR" HeaderText="LANGUECR" SortExpression="LANGUECR" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [ECRIVAIN]"></asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>


</asp:Content>
