<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="user_myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div  style="background-image: url('images/signup_image.jpg');background-size:2000px;">
     <section class="page-top-md" >
				<div class="container">
					<div class="page-top-in">
						<h2><span>My Profile</span></h2>
					</div>
				</div>
			</section> 
   

       
        <%--<div class="row" >
            
                <div class="col-xs-7 col-sm-8" style="padding-left: 35em;" >

<table >
    <tr>
                    <div class="form-group" style="text-align: center" >
<td style="text-align:left">
                        <asp:Label ID="lbl_fname" runat="server" Text="Name:" CssClass=" control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
</td><td style="text-align:left">
                        <asp:Label ID="txt_name" runat="server" Text="" CssClass=" control-label " Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
</td>
                    </div>
    </tr>
    
        
                    <div class="form-group" style="text-align: center">
                        <tr>
                        <td style="text-align:left" >
                        <asp:Label ID="lbl_gender" runat="server" Text="Gender:" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        </td><td style="text-align:left">
                        <asp:Label ID="txt_gender" runat="server" Text="" CssClass="control-label " Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        </td>
</tr>
                    </div>
    
    <tr>
                    <div class="form-group" style="text-align: center">
                        <td style="text-align:left">
                        <asp:Label ID="lbl_address" runat="server" Text="Address:" CssClass=" control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        </td><td style="text-align:left">
                        <asp:Label ID="txt_address" runat="server" Text="" CssClass=" control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        </td>

                    </div>
    </tr>
    <tr>
                    <div class="form-group" style="text-align: center">
                        <td style="text-align:left">
                        <asp:Label ID="lbl_country" runat="server" Text="Country:" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="13pt"></asp:Label>
                        </td><td style="text-align:left">
                        <asp:Label ID="txt_country" runat="server" Text="" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
</td>

                    </div>
    </tr>
    <tr>
                    <div class="form-group" style="text-align: center">
                        <td style="text-align:left">
                        <asp:Label ID="lbl_state" runat="server" Text="State:" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        </td><td style="text-align:left">
                        <asp:Label ID="txt_state" runat="server" Text="" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        </td>

                    </div>
    </tr>
    <tr>
                    <div class="form-group" style="text-align: center">
                        <td style="text-align:left">
                        <asp:Label ID="lbl_city" runat="server" Text="City:" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        </td><td style="text-align:left">
                        <asp:Label ID="txt_city" runat="server" Text="" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        </td>
                </div>
    </tr>
    <tr>
        <div class="form-group" style="text-align: center">
            <td style="text-align:left">
                    <asp:Label ID="lbl_contact" runat="server" Text="Contact No.:" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
            </td><td style="text-align:left">
                    <asp:Label ID="txt_contact" runat="server" Text="" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
            </td>

                </div>
    </tr>
    <tr>
                
                <div class="form-group" style="text-align: center">
                    <td style="text-align:left">
                    <asp:Label ID="lbl_email" runat="server" Text="Email Id:" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                    </td><td style="text-align:left">
                    <asp:Label ID="txt_email" runat="server" Text="" CssClass="control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                    </td>

                </div>
        </tr>
</table>

            </div>
        

    </div>--%>
  
   

    <div class="container" >
        <div class="row" >
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3><i class="fa fa-user fa-4x"></i></h3>
                                <h2 class="text-center">My Profile</h2>
                               <div class="panel-body">


                                    <fieldset>
                                        <asp:Label ID="lbl_tmp" runat="server" Text="" Visible="false"></asp:Label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon">Name</span>
                                                <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>

                                            </div>
                                            <br />
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon">Gender</span>
                                                    <asp:TextBox ID="txt_gender" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>

                                                </div>
                                           
                                            </div>

                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon">Address</span>
                                                    <asp:TextBox ID="txt_address" runat="server"  CssClass="form-control"  Enabled="false"></asp:TextBox>

                                                </div>

                                            </div>

                                            <div class="form-group">
                                                <div class="input-group">
                                                    <span class="input-group-addon">Country</span>
                                                    <asp:TextBox ID="txt_country" runat="server" CssClass="form-control"  Enabled="false"  ></asp:TextBox>

                                                </div>

                                               
                                            </div>
                                            <div class="form-group">
                                              <div class="input-group">
                                                    <span class="input-group-addon">State</span>
                                                    <asp:TextBox ID="txt_state" runat="server" CssClass="form-control"  Enabled="false"></asp:TextBox>
                                                    </div>
                                            </div>

                                            <div class="form-group">
                                              <div class="input-group">
                                                    <span class="input-group-addon">city</span>
                                                    <asp:TextBox ID="txt_city" runat="server" CssClass="form-control"  Enabled="false" ></asp:TextBox>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                              <div class="input-group">
                                                    <span class="input-group-addon">Contatct No</span>
                                                    <asp:TextBox ID="txt_contact" runat="server"  Enabled="false" CssClass="form-control"  ></asp:TextBox>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                              <div class="input-group">
                                                    <span class="input-group-addon">Emailid</span>
                                                    <asp:TextBox ID="txt_email" runat="server"  Enabled="false" CssClass="form-control"  ></asp:TextBox>
                                                    </div>
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

