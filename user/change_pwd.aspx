<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="change_pwd.aspx.cs" Inherits="user_change_pwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image: url('images/choice-fashion-clothes-different-colors-wooden-hangers-29999720.jpg'); ">  

     <section class="page-top-md" >
				<div class="container">
					<div class="page-top-in">
						<h2><span>Change Password</span></h2>
					</div>
				</div>
			</section>
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3><i class="fa fa-lock fa-4x"></i></h3>
                                <h2 class="text-center">Change Password?</h2>
                                <p>You can reset your password here.</p>
                                <asp:Label id="lblerrormsg" runat="server" Text="Your Current Password doesn't match!!" Visible="false" ForeColor="Red"></asp:Label>
                                <div class="panel-body">


                                    <fieldset>
                                        <asp:Label ID="lbl_tmp" runat="server" Text="" Visible="false"></asp:Label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">Emailid</span>
                                                <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>

                                            </div>
                                            <br />
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon">Recent Password</span>
                                                    <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" CssClass="form-control" ></asp:TextBox>

                                                </div>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Font-Bold="True" Font-Size="Small" ForeColor="Red" runat="server" ErrorMessage="Please Put here !" ControlToValidate="txt_pwd" ValidationGroup="change"></asp:RequiredFieldValidator>

                                            </div>

                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon">New Password</span>
                                                    <asp:TextBox ID="txt_new" runat="server" TextMode="Password" CssClass="form-control" ></asp:TextBox>

                                                </div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Put here !"  Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="txt_new" ValidationGroup="change"></asp:RequiredFieldValidator>

                                            </div>

                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon">Re-type Password</span>
                                                    <asp:TextBox ID="txt_re" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>

                                                </div>

                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Font-Bold="True" Font-Size="Small" ForeColor="Red"  runat="server" ErrorMessage="Please Put here !" ControlToValidate="txt_re" ValidationGroup="change"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password has no Match !" ControlToValidate="txt_re" ControlToCompare="txt_new"></asp:CompareValidator>
                                            </div>
                                            <div class="form-group">
                                                <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-lg btn-primary btn-block" ValidationGroup="change" OnClick="btn_submit_Click"/>
                                            </div>
                                    </fieldset>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>

</asp:Content>

