<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminHomePage.aspx.cs" Inherits="UI.adminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #content {
            background-color: #ade6f8;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>I am Admin Kumar. I have limited Powers :)</h3><br />
                                </center>

                            </div>
                        </div>
                        <center>
                        <div class="form-group d-grid gap-2">
                            <asp:Button CssClass="btn btn-success btn-lg" ID="ButtonUserManagement" 
                                runat="server" Text="User Management" OnClick="ButtonUserManagement_Click" />
                        </div>
                            <br />
                        <div class="form-group d-grid gap-2">
                            <asp:Button CssClass="btn btn-primary btn-lg" ID="ButtonProductManagement" 
                                runat="server" Text="Product Management" OnClick="ButtonProductManagement_Click" />
                        </div><br />
                            <div class="form-group d-grid gap-2">
                            <asp:Button CssClass="btn btn-warning btn-lg" ID="Button3" 
                                runat="server" Text="My 3rd Power" />
                        </div><br />
                            <div class="form-group d-grid gap-2">
                            <asp:Button CssClass="btn btn-danger btn-lg" ID="Button4" 
                                runat="server" Text="My 4th Power" />
                        </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
