<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="country.aspx.cs" Inherits="Admin_country" %>

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
                    <h1><font color="000080">Country</font></h1>
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
                                <font color="blue" size="4">Country Name</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_countryname" runat="server" placeholder="Country Name" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="f" Font-Bold="true" ControlToValidate="txt_countryname" runat="server" ErrorMessage="Field is Required !" ForeColor="red"></asp:RequiredFieldValidator>
                        </div>
                        <br />
                        <br />


                        <asp:HiddenField ID="HiddenField1" runat="server" />



                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:Button ID="btn_countryadd" ValidationGroup="f" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btn_countryadd_Click" />

                                <asp:Button ID="btn_countrycancel" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="btn_countrycancel_Click" />
                            </div>
                        </div>


                        <br />







                        <div class="ln_solid"></div>

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2><b>Country</b> </h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>


                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">

                                    <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
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
                                                <asp:GridView ID="gridview_country" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview_country_RowCommand">
                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Id">
                                                            <ItemTemplate>
                                                                <%#Container.DataItemIndex+1 %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="country_nm" HeaderText="country Name " />
                                                        <asp:BoundField DataField="doc" HeaderText="Date_Of_Creation" />
                                                        <asp:BoundField DataField="dom" HeaderText="Date_Of_Modification" />
                                                        <asp:TemplateField HeaderText="Edit">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Editdata_country">Edit</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Delete">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Deletedata_country">Delete</asp:LinkButton>
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

