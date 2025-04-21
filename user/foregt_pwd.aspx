<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="foregt_pwd.aspx.cs" Inherits="user_foregt_pwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div style="background-image: url('images/111885949.jpg');background-size:700px;">  
       <br />
      
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Forgot Password?</h2>
                          <p>You can reset your password here.</p>
                            <div class="panel-body">
                              
                              
                                <fieldset>

                                  <div class="form-group">
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                        <asp:TextBox ID="txt_email" runat="server" placeholder="Email address" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                       
                                    </div>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email Address !" ValidationGroup="a" ControlToValidate="txt_email" Font-Bold="True" Font-Size="Small" ForeColor="red"></asp:RequiredFieldValidator>
                                  </div>
                                  <div class="form-group">
                                      <asp:Button ID="btn_submit" runat="server" Text="Send My Password" CssClass="btn btn-lg btn-primary btn-block" ValidationGroup="a" onclick="btn_submit_Click" />                                   
                                  </div>
                                </fieldset>
                              
                                <asp:HiddenField ID="HiddenField1" runat="server" />            
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

