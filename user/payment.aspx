<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="user_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="page-top-md">
        <div class="container">
            <div class="page-top-in">
                <h2><span>Payment Details</span></h2>
            </div>
        </div>
    </section>
    <div class="row">

        <br />


    </div>

    <div class="col-md-7 animation animated fadeInUp" style="opacity: 0; margin-left: 330px;">
        <div class="alert alert-danger">
            <asp:LinkButton ID="Payment_opt" runat="server" OnClick="Payment_opt_Click">Payment Options</asp:LinkButton>
        </div>

    </div>


    <asp:Panel ID="Panel2" runat="server">
        <div class="row">
            <div class="col-md-9 animation animated fadeInUp" style="opacity: 0; margin-left: 330px;">
                <div class="col-md-3">
                    <asp:Button ID="btn_credit" runat="server" Text="Credit Card" CssClass="btn btn-primary btn-lg" OnClick="btn_credit_Click" />

                </div>

                <div class="col-md-3">
                    <asp:Button ID="btn_debit" runat="server" Text="Debit Card" CssClass="btn btn-primary btn-lg" OnClick="btn_debit_Click" />

                </div>

                <div class="col-md-3">
                    <asp:Button ID="btn_cash" runat="server" Text="Cash On Delivery" CssClass="btn btn-primary btn-lg" OnClick="btn_cash_Click" />

                </div>

            </div>
        </div>
    </asp:Panel>
    <br />
    <br />

    <asp:Panel ID="Panel3" runat="server">
        <div class="row">
            <div class="col-md-9 animation animated fadeInUp" style="opacity: 0; margin-left: 330px;">
                <div class="col-xs-7 col-sm-8">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Card No" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_card" runat="server" CssClass="form-control" placeholder="Card Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter First Name!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_card"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Expiry Date" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_mm" runat="server" CssClass="form-control" placeholder="mm/dd/yy"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter First Name!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_mm"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Cvv" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_cvv" runat="server" CssClass="form-control" placeholder="Cvv Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter First Name!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_cvv"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Name Of Card" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Name Of Card"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter First Name!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_name"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Address" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txt_add" runat="server" CssClass="form-control" Rows="5" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="amisha" runat="server" ErrorMessage="Please Enter Address!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_add"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-10" style="margin-left: 200px;">
                            <asp:Button ID="btn_creditsubmit" runat="server" Text="Place Order" CssClass="btn btn-primary btn-lg" OnClick="btn_creditsubmit_Click" ValidationGroup="amisha" />
                        </div>
                    </div>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </div>
            </div>
        </div>

    </asp:Panel>
    <br />

    <asp:Panel ID="Panel4" runat="server">
        <div class="row">
            <div class="col-md-9 animation animated fadeInUp" style="opacity: 0; margin-left: 330px;">
                <div class="col-xs-7 col-sm-8">
                    <div class="form-group">
                        <div class="col-sm-10" style="margin-left: 200px;">
                            <asp:LinkButton ID="link_prev" runat="server" OnClick="link_prev_Click" ForeColor="Lime" Font-Size="Large" Font-Italic="True">Take My  Previous Address</asp:LinkButton>
                        </div>
                        <br />
                        <br />
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="Address" CssClass="col-sm-2 control-label" Font-Bold="True" ForeColor="Black" Font-Size="12pt"></asp:Label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_cash_add" runat="server" CssClass="form-control" Rows="5" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="amisha1" runat="server" ErrorMessage="Please Enter Address!" Font-Bold="True" Font-Size="Small" ForeColor="red" ControlToValidate="txt_cash_add"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10" style="margin-left: 200px;">
                                <asp:Button ID="btn_pay" runat="server" Text="Place Order" CssClass="btn btn-primary btn-lg" OnClick="btn_pay_Click1" ValidationGroup="amisha1" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </asp:Panel>
    <br />

    <div class="row">
        <asp:Image ID="Image1" runat="server" ImageUrl="images/stitchesbanner.png"  Width="1500px" CssClass="img-responsive"></asp:Image>

    </div>


</asp:Content>

