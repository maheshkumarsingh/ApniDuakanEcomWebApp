<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ApniDukanEcommerceApplication.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #content {
            background-color:#ade6f8;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        #heading:hover {
            color: palevioletred;
        }

        #homeWords {
            text-align: left;
            color: #000000;
        }
        #cardOne{
            background-color:#daa1a1;
        }
    </style>
<script type="text/javascript">
    $(document).ready(function () {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="container">
        <div class="row">
            <div class="col-12">
                <center>
                    <h3 id="heading"><b>Welcome to ApniDukan Web Application.</b></h3>
                </center>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                <div id="cardOne" class="card">
                    <div class="card-body">
                        <h4>what you will get here:-</h4>
                        <br />
                        <p id="homeWords">
                            -Top brands for Phones and Electronics.
                            <br />
                            -Latest trends in Fashion.<br />
                            -Free Shipping Available*
                            <br />
                            -No Cost EMI Available.
                            <br />
                            -Great Offers.
                            <br />
                            -Low Prices.
                            <br />
                            -Huge Selection.
                            <br />
                            -Easy & Fast Delivery.
                            <br />
                            -Best Deals.
                            <br />
                            -Top Brands.<br />
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <center>
                                    <h4>We have Following Products in ApniDukan:-</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApniDukanDBConnectionString %>" SelectCommand="SELECT [Name], [price], [stock], [category], [mfg_date] FROM [Product]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-bordered table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="765px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                        <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                        <asp:BoundField DataField="mfg_date" HeaderText="mfg_date" SortExpression="mfg_date" DataFormatString="{0:dd-MM-yyyy}"/>
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
