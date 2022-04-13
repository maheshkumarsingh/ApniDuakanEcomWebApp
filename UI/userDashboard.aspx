<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userDashboard.aspx.cs" Inherits="UI.userDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col-12">
                                <center>
                                    <img src="images/userDashboard.jpg" height="100px" width="100px" />
                                    <h3>User Profile</h3>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <label for="FirstName">First Name</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="SingleLine" ID="TextBoxFirstName" CssClass="form-control" runat="server"
                                        placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="LastName">Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="SingleLine" ID="TextBoxLastName" CssClass="form-control" runat="server"
                                        placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <label for="Email">EmailID</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Email" ID="TextBoxEmail" CssClass="form-control" runat="server"
                                        placeholder="someone@xyz.com"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="Contact">Contact</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Number" ID="TextBoxContact" CssClass="form-control" runat="server"
                                        placeholder="Contact"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <label for="DOB">Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" ID="TextBoxDOB" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="Address">Address</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="MultiLine" ID="TextBoxAddress" CssClass="form-control" runat="server"
                                        placeholder="Address"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <label for="UserID">UserID</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="SingleLine" ID="TextBoxUserID" CssClass="form-control" runat="server"
                                        placeholder="User ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-6">
                                &nbsp;
                                <div class="input-group">
                                    <label for="isValid">IsValid</label>
                                    <div class="form-check">
                                        <asp:CheckBox CssClass="form-check-inline" ID="CheckBox1" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">

                                <label for="createdBy">Created By</label>
                                &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control"
                                            ID="CreatedBy" runat="server" placeholder="Admin ID">
                                        </asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-6">
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
                            <div class="col-6">

                                <label for="modifiedBy">Modified By</label>
                                &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control"
                                            ID="TextBoxModifiedBy" runat="server" placeholder="Admin ID">
                                        </asp:TextBox>
                                    </div>
                            </div>
                            <div class="col-6">
                                <label for="modifiedDate">Modified Date</label>
                                &nbsp;
                                    <div class="form-group">
                                        <asp:TextBox TextMode="Date" CssClass="form-control"
                                            ID="TextBox2" runat="server">
                                        </asp:TextBox>
                                    </div>
                            </div>
                        </div>


                        <div class="row">
                           <div class="col-6">
                                <label for="OldPassword">Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="SingleLine" ID="TextBoxOldPassword" CssClass="form-control" runat="server"
                                        placeholder="old password" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-6">
                                <label for="NewPassword">New Password</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="SingleLine" ID="TextBoxNewPassword" CssClass="form-control" runat="server"
                                        placeholder="New password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <center>
                                <div class="d-grid gap-2 col-4">
                                    <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="ButtonUpdate"
                                        runat="server" Text="Update" />
                                </div>
                            </center>

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
                                    <h4>Your Order History</h4>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-bordered table-striped" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
