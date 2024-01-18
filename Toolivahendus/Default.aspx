<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Toolivahendus._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p>Tere tulemast, veebipood on avatud!</p>
            <p>Toodete haldus</p>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="toodeId" DataSourceID="SqlDataSource1_toode" DefaultMode="Insert" Height="50px" Width="350px">
                    <Fields>
                        <asp:BoundField DataField="toodeId" HeaderText="toodeId" InsertVisible="False" ReadOnly="True" SortExpression="toodeId" />
                        <asp:BoundField DataField="toodeNimi" HeaderText="toodeNimi" SortExpression="toodeNimi" />
                        <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                        <asp:BoundField DataField="toodeKategooriaID" HeaderText="toodeKategooriaID" SortExpression="toodeKategooriaID" />
                        <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1_toode" runat="server" ConnectionString="<%$ ConnectionStrings:ToolivahendusConnectionString1 %>" DeleteCommand="DELETE FROM [toode] WHERE [toodeId] = @toodeId" InsertCommand="INSERT INTO [toode] ([toodeNimi], [kirjeldus], [toodeKategooriaID]) VALUES (@toodeNimi, @kirjeldus, @toodeKategooriaID)" SelectCommand="SELECT * FROM [toode]" UpdateCommand="UPDATE [toode] SET [toodeNimi] = @toodeNimi, [kirjeldus] = @kirjeldus, [toodeKategooriaID] = @toodeKategooriaID WHERE [toodeId] = @toodeId">
                    <DeleteParameters>
                        <asp:Parameter Name="toodeId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="toodeNimi" Type="String" />
                        <asp:Parameter Name="kirjeldus" Type="String" />
                        <asp:Parameter Name="toodeKategooriaID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="toodeNimi" Type="String" />
                        <asp:Parameter Name="kirjeldus" Type="String" />
                        <asp:Parameter Name="toodeKategooriaID" Type="Int32" />
                        <asp:Parameter Name="toodeId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </section>
    </main>

</asp:Content>
