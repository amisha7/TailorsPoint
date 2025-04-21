<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="regestration.aspx.cs" Inherits="user_regestration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <div style="background-image: url('images/signup_image.jpg')">  
      <section class="page-top-md" >
				<div class="container">
					<div class="page-top-in">
						<h2><span>Regestation</span></h2>
					</div>
				</div>
			</section> 
    <style>
        .txt:hover {
            border: 3px solid black;
        }
    </style>
     
        
        <br />
        
        <div class="row" >
            <div class="form-horizontal">
                <div class="col-xs-7 col-sm-8">
                    <div class="form-group">
                        <asp:Label ID="lbl_fname" runat="server" Text="First Name" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_fname" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter First Name!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_fname"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_mname" runat="server" Text="Middle Name" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_mname" runat="server" CssClass="form-control" placeholder="Middle Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter Middle Name!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_mname"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_lname" runat="server" Text="Last Name" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_lname" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter Last Name!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_lname"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_gender" runat="server" Text="Gender" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:RadioButtonList ID="rbt_gender" runat="server" CssClass="radio-inline" Font-Bold="True" ForeColor="Black" Font-Size="13pt">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="amisha" runat="server" ErrorMessage="Please Select Gender!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="rbt_gender"></asp:RequiredFieldValidator>

                        </div>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_address" runat="server" Text="Address" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_address" runat="server" CssClass="form-control" placeholder="Address" TextMode="MultiLine" Rows="3"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter Address!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_address"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_country" runat="server" Text="Country" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="13pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="dp_country" runat="server" CssClass="form-control" OnSelectedIndexChanged="dp_country_SelectedIndexChanged" AutoPostBack="true">
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="amisha" InitialValue="--Select Country--" runat="server" ErrorMessage="Please Select Country!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="dp_country"></asp:RequiredFieldValidator>
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_state" runat="server" Text="State" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="dp_state" runat="server" CssClass="form-control" OnSelectedIndexChanged="dp_state_SelectedIndexChanged"  AutoPostBack="true">
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="amisha" InitialValue="--Select State--" runat="server" ErrorMessage="Please Select State!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="dp_state"></asp:RequiredFieldValidator>
                            <asp:HiddenField ID="HiddenField2" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_city" runat="server" Text="City" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="dp_city" runat="server" CssClass="form-control">
                                
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="amisha" InitialValue="--Select City--" runat="server" ErrorMessage="Please Select City!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="dp_city"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_contact" runat="server" Text="Contact No." CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_contact" runat="server" CssClass="form-control"  placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter Contact Number!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_contact"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_email" runat="server" Text="Email Id" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Email Id" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter Email Id!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                            <asp:HiddenField ID="HiddenField3" runat="server" />
                            <asp:HiddenField ID="HiddenField4" runat="server" />
                            <asp:HiddenField ID="HiddenField5" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_password" runat="server" Text="Password" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter  Password!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_password"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbl_confirm" runat="server" Text="Confirm Password" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_confirm" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter Confirm Password!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_password"></asp:RequiredFieldValidator><br />


                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ValidationGroup="amisha" ControlToCompare="txt_password" ControlToValidate="txt_confirm" Font-Bold="True" Font-Size="Small" ForeColor="red"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button ID="btn_submit" runat="server" Text="Sign in" CssClass="btn btn-default" ValidationGroup="amisha" OnClick="btn_submit_Click" />
                            <asp:Button ID="btn_cancle" runat="server" Text="Cancle" CssClass="btn btn-primary" />

                        </div>
                    </div>
                </div>
            </div>

        </div>
             </center>
    </div>
</asp:Content>

