<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="measurement.aspx.cs" Inherits="user_measurement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="page-top-md">
        <div class="container">
            <div class="page-top-in">
                <h2><span>Doorstep Measurement</span></h2>
            </div>
        </div>
    </section>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label><asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
    <div class="container">
        <div class="contact-content contact-content-full animation animated fadeInUp" style="opacity: 0;">
            <div class="contact-intro">
                <h3>Tailors  point!</h3>
                <p>Instead of redeeming your hard earned points on a limited number of items, use them to purchase what you want by choosing from Amazon.com's vast selection. Shop with Points is a seamless part of the Amazon.com shopping experience you know and love. Simply choose to apply points at checkout, and you can even set points to apply to all purchases automatically.

              .</p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <h4><i class="fa fa-map-marker"></i>Ahmedabad</h4>
                    <address>14th Pratham Mangal Complex,<br />
                        Near Vasna Bus Stand ,Ahmedabad<br>
                        +079 26602889<br>
                        99957089888<br>
                    </address>
                </div>

            </div>
            <hr class="tall">

            <h3>Doorstep Measurement</h3>
            <div class="row">
					<div class="col-md-7 animation">
						<ul role="tablist" class="nav nav-tabs pro-tabs">
							
                           <li> <asp:LinkButton ID="previous" runat="server"  OnClick="previous_Click" >Previous Measurement</asp:LinkButton>
                           <li> <asp:LinkButton ID="update" runat="server"  OnClick="update_Click1">New<br /> Measurement</asp:LinkButton>
                               <asp:Label ID="Label4" runat="server" Text="There are not any previous data!!" ForeColor="Red" Visible="false"></asp:Label>
						</ul>
                       </div>
                </div>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <div class="row">
                    <div class="col-xs-5 col-sm-4">


                        <div class="form-group">
                            <asp:Label ID="lbl_name" runat="server" Text="Your Name*" placeholder="Your Name" for="name_input"></asp:Label>
                            <asp:TextBox ID="txt_name" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="measur" runat="server" ErrorMessage="Please Put Something here!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_name"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">

                            <asp:Label ID="lbl_subject" runat="server" Text="Mobile No*" for="subject_input"></asp:Label>
                            <asp:TextBox ID="txt_mobile" runat="server" TextMode="Number"  CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="measur" runat="server" ErrorMessage="Please Put Something here!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_mobile"></asp:RequiredFieldValidator>
                        </div>
                        <%--<div class="form-group">
                            <asp:Label ID="lbl_time" runat="server" Text="Date" for="time_input"></asp:Label>

                            <div class="input-group date" id="datetimepicker4">
                                <input type="text" class="form-control" name="time_input" id="time_input">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span>
                                </span>
                            </div>

                        </div>--%>


                    </div>

                    <div class="col-xs-7 col-sm-8">

                        <div class="form-group">
                            <asp:Label ID="lbl_email" runat="server" Textmode="email"  Text="Your Email*" for="email_input"></asp:Label>
                            <asp:TextBox ID="txt_email" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="measur" runat="server" ErrorMessage="Please Put Something here!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lbl_msg" runat="server" Text="Your Address*" for="msg_input"></asp:Label>
                            <asp:TextBox ID="txt_add" runat="server" CssClass="form-control" Rows="5" TextMode="MultiLine"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="measur" runat="server" ErrorMessage="Please Put Something here!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_add"></asp:RequiredFieldValidator>
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                        </div>

                        <div class="form-group">
                            <asp:Button ID="btn_submit" runat="server" Text="Submit" ValidationGroup="measur" CssClass="btn btn-primary" OnClick="btn_submit_Click" />

                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="false"></asp:Label>

        </div>
    </div>
</asp:Content>

