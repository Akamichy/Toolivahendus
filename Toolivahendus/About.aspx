<%@ Page Title="Lisa toode" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Toolivahendus.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="toodeId" DataSourceID="SqlDataSource1_toode" DefaultMode="Insert" Height="50px" Width="312px">
                <Fields>
                    <asp:BoundField DataField="toodeId" HeaderText="toodeId" InsertVisible="False" ReadOnly="True" SortExpression="toodeId" />
                    <asp:BoundField DataField="toodeNimi" HeaderText="toodeNimi" SortExpression="toodeNimi" />
                    <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                    <asp:TemplateField HeaderText="toodeKategooriaID" SortExpression="toodeKategooriaID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("toodeKategooriaID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSource='<%# Eval("toodeKategooriaID") %>' DataSourceID="SqlDataSource1_kategooria" DataTextField="toodeKategooria" DataValueField="toodeKategooriaID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1_kategooria" runat="server" ConnectionString="<%$ ConnectionStrings:ToolivahendusConnectionString1 %>" DeleteCommand="DELETE FROM [toodeKategooria] WHERE [toodeKategooriaID] = @toodeKategooriaID" InsertCommand="INSERT INTO [toodeKategooria] ([toodeKategooria]) VALUES (@toodeKategooria)" SelectCommand="SELECT * FROM [toodeKategooria]" UpdateCommand="UPDATE [toodeKategooria] SET [toodeKategooria] = @toodeKategooria WHERE [toodeKategooriaID] = @toodeKategooriaID">
                                <DeleteParameters>
                                    <asp:Parameter Name="toodeKategooriaID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="toodeKategooria" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="toodeKategooria" Type="String" />
                                    <asp:Parameter Name="toodeKategooriaID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("toodeKategooriaID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True" />
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
    </h2>

    </main>
</asp:Content>
