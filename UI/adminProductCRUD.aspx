<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminProductCRUD.aspx.cs" Inherits="UI.adminProductCRUD" %>

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
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/products.jpg" width="100px" height="100px" />
                                    <br />
                                    <h3>Product Management</h3>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-5">
                                <label for="ProductName">Product Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="ProductName" runat="server"
                                            placeholder="Product Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <label for="ProductPrice">Product Price</label>
                                <div class="form-group">

                                    <asp:TextBox TextMode="Number" CssClass="form-control" ID="ProductPrice" runat="server"
                                        placeholder="Product Price"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-3">
                                &nbsp;
                                <div class="input-group">
                                    <label for="isValid">IsValid</label>
                                    <div class="form-check">
                                        <asp:CheckBox CssClass="form-check-inline" ID="CheckBox1" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-4">
                                <label for="ProductCategory">Category</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"
                                        ID="ProductCategory" runat="server" placeholder="Food,Home,SmartPhone,Kitchen,Food">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-4">
                                <label for="stock">Stock</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Number" CssClass="form-control"
                                        ID="ProductStock" runat="server" placeholder="Available Stock">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-4">
                                <label for="MFGDate">MFG Date</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control"
                                        ID="ProductMFGDate" runat="server" placeholder="MFG date">
                                    </asp:TextBox>
                                </div>
                            </div>


                        </div>
                        <br />

                        <div class="row">
                            <div class="col-5">

                                <label for="createdBy">Created By</label>
                                &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control"
                                            ID="CreatedBy" runat="server" placeholder="Admin ID">
                                        </asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-5">
                                <label for="createdBy">Created Date</label>
                                &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox TextMode="Date" CssClass="form-control"
                                            ID="CreatedDate" runat="server" placeholder="Admin ID">
                                        </asp:TextBox>
                                    </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-5">

                                <label for="modifiedBy">Modified By</label>
                                &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control"
                                            ID="TextBoxModifiedBy" runat="server" placeholder="Admin ID">
                                        </asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-5">
                                <label for="modifiedDate">Modified Date</label>
                                &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox TextMode="Date" CssClass="form-control"
                                            ID="TextBox2" runat="server">
                                        </asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <br />
                        <div class="row">
                            <div class="col-md-5">
                                <label for="ProductID">Product ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="ProductID"
                                            runat="server" placeholder="ProductID">
                                        </asp:TextBox>&nbsp;
                                        <asp:Button runat="server" CssClass="btn btn-primary" ID="GoButton" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="d-grid gap-2 col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="ButtonAddProduct"
                                    runat="server" Text="Add" />
                            </div>
                            <div class="d-grid gap-2 col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-warning" ID="ButtonUpdateProduct"
                                    runat="server" Text="Update" />
                            </div>
                            <div class="d-grid gap-2 col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="ButtonDeleteProduct"
                                    runat="server" Text="Delete" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Product List</h4>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ApniDukanDBConnectionString %>" 
                                SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-bordered table-striped"
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="1232px">
                                    <Columns>
                                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                        <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                        <asp:BoundField DataField="MFG_Date" HeaderText="MFG_Date" SortExpression="MFG_Date" DataFormatString="{0:dd-MM-yyyy}"/>
                                        <asp:CheckBoxField DataField="Is_Valid" HeaderText="Is_Valid" SortExpression="Is_Valid" />
                                        <asp:BoundField DataField="Created_By" HeaderText="Created_By" SortExpression="Created_By" />
                                        <asp:BoundField DataField="Created_Date" HeaderText="Created_Date" SortExpression="Created_Date" DataFormatString="{0:dd-MM-yyyy}"/>
                                        <asp:BoundField DataField="Modified_By" HeaderText="Modified_By" SortExpression="Modified_By" />
                                        <asp:BoundField DataField="Modified_Date" HeaderText="Modified_Date" SortExpression="Modified_Date" DataFormatString="{0:dd-MM-yyyy}"/>
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
