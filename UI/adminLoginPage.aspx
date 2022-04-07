<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminLoginPage.aspx.cs" Inherits="UI.adminLoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/adminuser.png" width="150px"/>
                                    <br />
                                    <h3>Admin Login</h3>
                                    <br />
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="AdminEmail"> Admin ID</label>
                                    <asp:TextBox CssClass="form-control" ID="textAdminID" runat="server"
                                        placeholder="Admin ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        &nbsp;
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="AdminPassword"> Admin Password</label>
                                    <asp:TextBox CssClass="form-control" ID="textAdminPassword" runat="server"
                                        placeholder="Enter Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="form-group d-grid gap-2">
                            <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" 
                                Text="LogIn" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
