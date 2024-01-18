<%@ Page Title="Tooted" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Toolivahendus.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <h2 id="title"><%: Title %>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="toodeId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="toodeId" HeaderText="toodeId" ReadOnly="True" SortExpression="toodeId" />
                    <asp:BoundField DataField="toodeNimi" HeaderText="toodeNimi" SortExpression="toodeNimi" />
                    <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                    <asp:BoundField DataField="toodeKategooriaID" HeaderText="toodeKategooriaID" SortExpression="toodeKategooriaID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ToolivahendusConnectionString1 %>" DeleteCommand="DELETE FROM [toode] WHERE [toodeId] = @toodeId" InsertCommand="INSERT INTO [toode] ([toodeNimi], [kirjeldus], [toodeKategooriaID]) VALUES (@toodeNimi, @kirjeldus, @toodeKategooriaID)" ProviderName="<%$ ConnectionStrings:ToolivahendusConnectionString1.ProviderName %>" SelectCommand="SELECT [toodeId], [toodeNimi], [kirjeldus], [toodeKategooriaID] FROM [toode]" UpdateCommand="UPDATE [toode] SET [toodeNimi] = @toodeNimi, [kirjeldus] = @kirjeldus, [toodeKategooriaID] = @toodeKategooriaID WHERE [toodeId] = @toodeId">
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
        </h2>
        
</asp:Content>
