<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="subadmin_reg.aspx.cs" Inherits="Admin_subadmin_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <style>
        .txt:hover {
            border: 3px solid navy;
        }
    </style>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h1><font color="000080">Registration </font></h1>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">First Name</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_fname" runat="server" placeholder="First Name" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="j" runat="server" ErrorMessage="Field is Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="txt_fname"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Last Name</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_lname" runat="server" placeholder="Last Name" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="j" runat="server" ErrorMessage="Field is Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="txt_lname"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Email-Id</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_email" runat="server" placeholder="Email-Id" CssClass="form-control col-md-7 col-xs-12 txt" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="j" runat="server" ErrorMessage="Field is Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="txt_email"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Password</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_password" runat="server" placeholder="Password" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="j" ErrorMessage="Field is Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />

                        <asp:HiddenField ID="HiddenField3" runat="server" />


                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Confirm Password</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_confirmpwd" runat="server" placeholder="Confirm Password" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="j" ErrorMessage="Field is Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match" ValidationGroup="j" ControlToCompare="txt_password" ControlToValidate="txt_confirmpwd" ForeColor="Red"></asp:CompareValidator>

                            </div>
                        </div>
                        <br />

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Address</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_address" runat="server" placeholder="Address" CssClass="form-control col-md-7 col-xs-12 txt" Rows="3" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="j" ErrorMessage="Field is Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="txt_password"></asp:RequiredFieldValidator>

                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Profile</font>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:FileUpload ID="FileUpload1" runat="server" />


                            </div>
                        </div>

                        <br />

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">User-Type</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:DropDownList ID="drop_usertype" runat="server" CssClass="form-control">
                                    <asp:ListItem>----Select User-Type----</asp:ListItem>
                                    <asp:ListItem Value="1">Admin</asp:ListItem>
                                    <asp:ListItem Value="2">Subadmin</asp:ListItem>



                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="j" runat="server" ErrorMessage="Please Select UserType!" Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="drop_usertype" InitialValue="----Select User-Type----"></asp:RequiredFieldValidator>


                            </div>



                        </div>
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <br />
                        <br />

                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:Button ID="btn_regadd" runat="server" Text="Submit" ValidationGroup="j" CssClass="btn btn-success" OnClick="btn_regadd_Click" />

                                <asp:Button ID="btn_regcancel" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="btn_regcancel_Click" />
                            </div>
                        </div>


                        <br />






                        <div class="ln_solid"></div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2><b>Regestration</b> </h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>


                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">

                                    <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer" style="overflow: scroll; overflow-y: hidden">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="dataTables_length" id="datatable_length"></div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div id="datatable_filter" class="dataTables_filter"></div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <asp:GridView ID="gridview_reg" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview_material_RowCommand">
                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Id">
                                                            <ItemTemplate>
                                                                <%#Container.DataItemIndex+1 %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="fname" HeaderText="First Name" />
                                                        <asp:BoundField DataField="lname" HeaderText="Last Name" />
                                                        <asp:BoundField DataField="email" HeaderText="Email Id" />
                                                        <asp:BoundField DataField="password1" HeaderText="Password" />

                                                        <asp:BoundField DataField="address1" HeaderText="Address" />
                                                        <asp:TemplateField HeaderText="Image">
                                                            <ItemTemplate>
                                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("images/{0}", Eval("image1")) %>' Width="100px" />

                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:BoundField DataField="usertype" HeaderText="User Type" />
                                                        <asp:BoundField DataField="doc" HeaderText="Date_Of_Creation" />
                                                        <asp:BoundField DataField="dom" HeaderText="Date_Of_Modification" />

                                                        <asp:TemplateField HeaderText="Edit">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Editdata_admin">Edit</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:BoundField DataField="isactive" HeaderText="Status" />
                                                        <asp:TemplateField HeaderText="isactive">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="isactivedata">

                                        <i class="glyphicon glyphicon-ok" style="color:limegreen"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="De-active">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="deactivedata">

                                        <i class="glyphicon glyphicon-remove" style="color:darkred"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>

                                                        </asp:TemplateField>

                                                    </Columns>
                                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                                </asp:GridView>

                                            </div>
                                        </div>

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

