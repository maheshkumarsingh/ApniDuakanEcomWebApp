<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminProductManagementPage.aspx.cs" Inherits="UI.adminProductManagementPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Choose where to navigate</h4>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-success btn-lg" ID="ButtonUserManagement"
                                        runat="server" Text="User Management" OnClick="ButtonUserManagement_Click" />
                                </div>
                                <br />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-primary btn-lg" ID="ButtonProductManagement"
                                        runat="server" Text="Product Management" />
                                </div>
                                <br />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-warning btn-lg" ID="ButtonMy3rdPower"
                                        runat="server" Text="My 3rd Power" />
                                </div>

                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-danger btn-lg" ID="ButtonMy4thPower"
                                        runat="server" Text="My 4th Power" />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Actions on Product List!</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-outline-primary" ID="ButtonAddProduct"
                                        runat="server" Text="Add Product" OnClick="ButtonAddProduct_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-outline-warning" ID="ButtonUpdateProduct"
                                        runat="server" Text="Update Product" OnClick="ButtonUpdateProduct_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button CssClass="btn btn-outline-danger" ID="ButtonDeleteProduct"
                                        runat="server" Text="Delete Product" OnClick="ButtonDeleteProduct_Click" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <center>
                                    <h3>Products Inventory</h3>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApniDukanDBConnectionString %>"
                                SelectCommand="SELECT [Name], [Price], [Stock], [Category], [MFG_Date] FROM [Product]"></asp:SqlDataSource>

                            <div class="col">
                                <asp:GridView class="table table-bordered table-striped"
                                    ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" Width="1025px">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                        <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                        <asp:BoundField DataField="MFG_Date" HeaderText="MFG_Date" SortExpression="MFG_Date" DataFormatString="{0:dd-MM-yyyy}" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
